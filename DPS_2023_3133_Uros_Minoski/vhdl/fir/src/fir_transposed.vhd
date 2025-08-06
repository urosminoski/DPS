library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity fir_transposed is
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

architecture behavioral of fir_transposed is

	constant C_NUM_TAMPS	: integer := 11;
	constant C_MAC_WIDTH	: integer := C_INPUT_WIDTH+C_COEFF_WIDTH;
	constant C_OUT_SHIFT	: integer := C_MAC_WIDTH-C_OUTPUT_WIDTH;

	type coeff_type is array (0 to C_NUM_TAMPS-1) of std_logic_vector(C_COEFF_WIDTH-1 downto 0);
	-- constant coeff : coeff_type := (
								-- std_logic_vector(to_signed(-1, C_COEFF_WIDTH)),
								-- std_logic_vector(to_signed(0, C_COEFF_WIDTH)),
								-- std_logic_vector(to_signed(2, C_COEFF_WIDTH)),
								-- std_logic_vector(to_signed(-8, C_COEFF_WIDTH)),
								-- std_logic_vector(to_signed(15, C_COEFF_WIDTH)),
								-- std_logic_vector(to_signed(46, C_COEFF_WIDTH)),
								-- std_logic_vector(to_signed(15, C_COEFF_WIDTH)),
								-- std_logic_vector(to_signed(-8, C_COEFF_WIDTH)),
								-- std_logic_vector(to_signed(2, C_COEFF_WIDTH)),
								-- std_logic_vector(to_signed(0, C_COEFF_WIDTH)),
								-- std_logic_vector(to_signed(-1, C_COEFF_WIDTH))
								-- );
								
	constant coeff : coeff_type := (
								std_logic_vector(to_signed(-1, C_COEFF_WIDTH)),
								std_logic_vector(to_signed(3, C_COEFF_WIDTH)),
								std_logic_vector(to_signed(-3, C_COEFF_WIDTH)),
								std_logic_vector(to_signed(-3, C_COEFF_WIDTH)),
								std_logic_vector(to_signed(36, C_COEFF_WIDTH)),
								std_logic_vector(to_signed(36, C_COEFF_WIDTH)),
								std_logic_vector(to_signed(-3, C_COEFF_WIDTH)),
								std_logic_vector(to_signed(-3, C_COEFF_WIDTH)),
								std_logic_vector(to_signed(3, C_COEFF_WIDTH)),
								std_logic_vector(to_signed(-1, C_COEFF_WIDTH)),
								std_logic_vector(to_signed(0, C_COEFF_WIDTH))
								);
								
	type shift_reg_type is array (0 to C_NUM_TAMPS-1) of std_logic_vector(C_MAC_WIDTH-1 downto 0);
	signal shift_reg : shift_reg_type;
	
	type mul_out_type is array (0 to C_NUM_TAMPS-1) of std_logic_vector(C_MAC_WIDTH-1 downto 0);
	signal mul_out : mul_out_type;
	signal mul_reg : mul_out_type;
	
	type add_out_type is array (0 to C_NUM_TAMPS-1) of std_logic_vector(C_MAC_WIDTH-1 downto 0);
	signal add_out : add_out_type;
	
	signal acc : std_logic_vector(C_MAC_WIDTH-1 downto 0);
	
	signal xin_reg : std_logic_vector(C_INPUT_WIDTH-1 downto 0);
	
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
	
	gen_mul : for i in 0 to C_NUM_TAMPS-1 generate
	begin
		mul_out(i) <= coeff(i) * xin_reg;
	end generate;
	
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

	-- mul_out(0) <= xin_reg * coeff(C_NUM_TAMPS-1);
	-- add_out(0) <= mul_reg(0);
	
	-- gen_mul : for i in 1 to C_NUM_TAMPS-1 generate
	-- begin
		-- mul_out(i) 	<= xin_reg * coeff(C_NUM_TAMPS-1-i);
		-- add_out(i)	<= shift_reg(i) + mul_reg(i);
	-- end generate gen_mul;
	
	-- shift_reg_process : process(clk)
	-- begin
		-- if rising_edge(clk) then
			-- if rst = '1' then
				-- shift_reg <= (others => (others => '0'));
			-- elsif xin_en = '1' then
				-- for i in 1 to C_NUM_TAMPS-1 loop
					-- shift_reg(i) <= add_out(i-1);
				-- end loop;
				-- shift_reg(0) <= add_out(0);
			-- end if;
		-- end if;
	-- end process shift_reg_process;
	
	-- reg : process(clk)
	-- begin
		-- if rising_edge(clk) then
			-- xin_reg <= xin;
			-- xout 	<= add_out(C_NUM_TAMPS-1);
			
			-- mul_reg <= mul_out;
		-- end if;
	-- end process;
	
end architecture;