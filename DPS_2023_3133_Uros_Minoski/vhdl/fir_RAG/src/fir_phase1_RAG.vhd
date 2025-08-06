library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity fir_phase1_RAG is
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


architecture behavioral of fir_phase1_RAG is

	constant C_NUM_TAMPS	: integer := 11;
	constant C_MAC_WIDTH	: integer := C_INPUT_WIDTH+C_COEFF_WIDTH;
	constant C_OUT_SHIFT	: integer := C_MAC_WIDTH-C_OUTPUT_WIDTH;

	type mul_out_type is array (0 to C_NUM_TAMPS-1) of std_logic_vector(C_MAC_WIDTH-1 downto 0);
	signal mul_out : mul_out_type;
	signal w1, w1_n, w3, w3_n, w4, w8, w9, w36 : signed(C_MAC_WIDTH-1 downto 0); 
	signal w1_reg, w1_n_reg, w3_reg, w3_n_reg, w4_reg, w8_reg, w9_reg, w36_reg : signed(C_MAC_WIDTH-1 downto 0); 
								
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
			w3 		<= w4 - w1;
			w9 		<= w1 + w8;
			w1_n 	<= not w1 + 1;
		end if;
	end process;
	
	w1 		<= resize(signed(xin_reg), C_MAC_WIDTH);
	-- w1_n 	<= not w1 + 1;
	w4 		<= sla_manual(w1, 2, C_MAC_WIDTH);
	-- w3 		<= w4 - w1;
	w3_n	<= not w3 + 1;
	w8		<= sla_manual(w1, 3, C_MAC_WIDTH);
	-- w9 		<= w1 + w8;
	w36 	<= sla_manual(w9, 2, C_MAC_WIDTH);
	
	process(clk)
	begin
		if rising_edge(clk) then
			mul_out(0) 	<= std_logic_vector(w1_n);
			mul_out(1) 	<= std_logic_vector(w3);
			mul_out(2) 	<= std_logic_vector(w3_n);
			mul_out(3) 	<= std_logic_vector(w3_n);
			mul_out(4) 	<= std_logic_vector(w36);
			mul_out(5) 	<= std_logic_vector(w36);
			mul_out(6) 	<= std_logic_vector(w3_n);
			mul_out(7) 	<= std_logic_vector(w3_n);
			mul_out(8) 	<= std_logic_vector(w3);
			mul_out(9) 	<= std_logic_vector(w1_n);	
			mul_out(10) <= (others => '0');
		end if;
	end process;
	
	-- gen_mul : for i in 0 to C_NUM_TAMPS-1 generate
	-- begin
		-- mul_out(i) <= coeff(i) * xin_reg;
	-- end generate;
	
	process(clk)
	begin
		if rising_edge(clk) then
			for i in 0 to C_NUM_TAMPS-2 loop
				add_out(i) <= shift_reg(i) + mul_out(i);
			end loop;
			add_out(C_NUM_TAMPS-1) <= mul_out(C_NUM_TAMPS-1);
		end if;
	end process;
	
	-- process(clk)
	-- begin
		-- if rising_edge(clk) then
			-- add_out_reg <= add_out;
		-- end if;
	-- end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				shift_reg <= (others => (others => '0'));
			else
				for i in 0 to C_NUM_TAMPS-3 loop
					shift_reg(i) <= add_out(i+1); --shift_reg(i+1) + mul_out(i+1);
				end loop;
				shift_reg(C_NUM_TAMPS-2) <= add_out(C_NUM_TAMPS-1);
			end if;
		end if;
	end process;
	
	acc <= add_out(0);
	-- acc <= shift_reg(0) + mul_out(0);
	
	process(clk)
	begin
		if rising_edge(clk) then
			xout <= acc;
		end if;
	end process;
	
end architecture;