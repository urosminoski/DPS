library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity fir_phase0_RAG is
	generic(
		C_INPUT_WIDTH	: integer := 8;
		C_COEFF_WIDTH	: integer := 8;
		C_OUTPUT_WIDTH	: integer := 16
	);
	port(
		clk		: in std_logic;
		rst 	: in std_logic;
		xin_en	: in std_logic;
		xin		: in std_logic_vector(C_INPUT_WIDTH-1 downto 0);
		xout	: out std_logic_vector(C_OUTPUT_WIDTH-1 downto 0)
	);
end entity;


architecture behavioral of fir_phase0_RAG is

	constant C_NUM_TAMPS	: integer := 11;
	constant C_MAC_WIDTH	: integer := C_INPUT_WIDTH+C_COEFF_WIDTH;
	constant C_OUT_SHIFT	: integer := C_MAC_WIDTH-C_OUTPUT_WIDTH;

	type mul_out_type is array (0 to C_NUM_TAMPS-1) of std_logic_vector(C_MAC_WIDTH-1 downto 0);
	signal mul_out : mul_out_type;
	signal w1, w1_n, w2, w8, w8_n, w15, w16, w23, w46 : signed(C_MAC_WIDTH-1 downto 0); 
	signal w15_reg, w2_reg, w1_n_reg, w8_reg : signed(C_MAC_WIDTH-1 downto 0);
								
	type shift_reg_type is array (0 to C_NUM_TAMPS-2) of std_logic_vector(C_MAC_WIDTH-1 downto 0);
	signal shift_reg : shift_reg_type;
	
	type add_out_type is array (0 to C_NUM_TAMPS-1) of std_logic_vector(C_MAC_WIDTH-1 downto 0);
	signal add_out : add_out_type;
	signal add_out_reg : add_out_type;
	
	signal acc : std_logic_vector(C_MAC_WIDTH-1 downto 0);
	
	signal xin_reg : std_logic_vector(C_INPUT_WIDTH-1 downto 0) := (others => '0');
	
	-- Arithmetic shift left for signed std_logic_vector with sign extension
	function sla_manual(
		 x   : signed;
		 sh  : natural;
		 w   : natural
	) return signed is
		 variable result : signed(w - 1 downto 0) := (others => '0');
		 variable xtemp  : signed(w - 1 downto 0);
	begin
		 -- Sign-extend x to match output width
		 xtemp := resize(x, w);

		 -- Shift left if possible
		 if sh < w then
			  result := xtemp sll sh;
		 else
			  -- If shift exceeds width, return all zeros or sign-extended MSB
			  result := (others => x(x'high));
		 end if;

		 return result;
	end function;

	
begin

	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				xin_reg <= (others => '0');
			elsif xin_en = '1' then
				xin_reg <= xin;
			end if;
		end if;
	end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			w15		<= w16 - w1;
			w8 		<= sla_manual(w1, 3, C_MAC_WIDTH);
			w1_n 	<= not w1 + 1;
			w2 		<= sla_manual(w1, 1, C_MAC_WIDTH);
		end if;
	end process;
	
	w1 	<= resize(signed(xin_reg), C_MAC_WIDTH);
	-- w2 	<= sla_manual(w1, 1, C_MAC_WIDTH);
	w16 <= sla_manual(w1, 4, C_MAC_WIDTH);
	-- w15	<= w16 - w1;
	-- w8 	<= sla_manual(w1, 3, C_MAC_WIDTH);
	w8_n <= not w8 + 1;
	w23 <= w15 + w8;
	-- w1_n <= not w1 + 1;
	w46 <= sla_manual(w23, 1, C_MAC_WIDTH);
	
	process(clk)
	begin
		mul_out(0) <= std_logic_vector(w1_n);
		mul_out(1) 	<= (others => '0');
		mul_out(2) 	<= std_logic_vector(w2);
		mul_out(3) 	<= std_logic_vector(w8_n);
		mul_out(4) 	<= std_logic_vector(w15);
		mul_out(5) 	<= std_logic_vector(w46);
		mul_out(6) 	<= std_logic_vector(w15);
		mul_out(7) 	<= std_logic_vector(w8_n);
		mul_out(8) 	<= std_logic_vector(w2);
		mul_out(9) 	<= (others => '0');
		mul_out(10) <= std_logic_vector(w1_n);
	end process;
	
	-- gen_mul : for i in 0 to C_NUM_TAMPS-1 generate
	-- begin
		-- mul_out(i) <= coeff(i) * xin_reg;
	-- end generate;
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				shift_reg <= (others => (others => '0'));
			else
				for i in 0 to C_NUM_TAMPS-3 loop
					shift_reg(i) <= shift_reg(i+1) + mul_out(i+1);
				end loop;
				shift_reg(C_NUM_TAMPS-2) <= mul_out(C_NUM_TAMPS-1);
			end if;
		end if;
	end process;
	
	acc <= shift_reg(0) + mul_out(0);
	
	process(clk)
	begin
		if rising_edge(clk) then
			xout <= acc;
		end if;
	end process;
	
end architecture;