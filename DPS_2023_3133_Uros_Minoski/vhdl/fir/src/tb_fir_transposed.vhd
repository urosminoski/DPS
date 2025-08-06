library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
use std.textio.all;

entity tb_fir_transposed is
end entity;

architecture tb of tb_fir_transposed is

	constant C_CLK_FREQ		: integer := 150_000_000;
	constant C_CLK_PERIOD 	: time := 1 sec / C_CLK_FREQ;

	constant C_INPUT_WIDTH	: integer := 8;
	constant C_COEFF_WIDTH	: integer := 8;
	constant C_OUTPUT_WIDTH	: integer := 16;

	signal clk		: std_logic := '0';
	signal rst 		: std_logic := '1';
	signal xin_en	: std_logic := '0';
	signal xin		: std_logic_vector(C_INPUT_WIDTH-1 downto 0) := (others =>'0');
	signal xout		: std_logic_vector(C_OUTPUT_WIDTH-1 downto 0) := (others =>'0');
	
	signal out_ready : std_logic := '0';
	-- "C:\Users\Korisnik\Desktop\FAKS\DPS\projekat\moj_rad\fir_direct\data\xin.txt"
	file input_file 	: text open read_mode is "C:\Users\Korisnik\Desktop\FAKS\DPS\projekat\DPS\DPS_2023_3133_Uros_Minoski\vhdl\fir_RAG\data\xin_q1n_phase1.txt";
	file output_file 	: text open write_mode is "C:\Users\Korisnik\Desktop\FAKS\DPS\projekat\DPS\DPS_2023_3133_Uros_Minoski\vhdl\fir_RAG\data\xout_phase0.txt";
	
	-- file input_file 	: text open read_mode is "C:\Users\Korisnik\Desktop\FAKS\DPS\projekat\DPS\DPS_2023_3133_Uros_Minoski\vhdl\fir_RAG\data\xin_q1n_phase0.txt";
	-- file output_file 	: text open write_mode is "C:\Users\Korisnik\Desktop\FAKS\DPS\projekat\DPS\DPS_2023_3133_Uros_Minoski\vhdl\fir_RAG\data\xout_phase1.txt";
	
begin
	
	uut: entity work.fir_transposed
		generic map (
			C_INPUT_WIDTH => C_INPUT_WIDTH, 
			C_COEFF_WIDTH => C_COEFF_WIDTH, 
			C_OUTPUT_WIDTH => C_OUTPUT_WIDTH
		)
		port map (
			clk		=> clk,
			rst		=> rst,
			xin_en	=> xin_en,
			xin		=> xin,
			xout	=> xout
		);
		
	clk <= not clk after C_CLK_PERIOD/2;
	rst	<= '1', '1' after 100 ns, '0' after 503 ns;
	
	read_file : process(clk)
		variable input_line : line;
		variable input_v	: integer;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				xin 		<= (others => '0');
				xin_en 		<= '0';
				out_ready	<= '0';
			else
				readline(input_file, input_line);
				read(input_line, input_v);
				xin 		<= std_logic_vector(to_signed(input_v, C_INPUT_WIDTH));
				xin_en		<= '1';
				out_ready 	<= '1';
			end if;
		end if;
	end process read_file;
	
	write_file : process(clk)
		variable output_line : line;
	begin
		if falling_edge(clk) then
			if out_ready = '1' then
				write(output_line, to_integer(signed(xout)));
				writeline(output_file, output_line);
			end if;
		end if;
	end process write_file;

end architecture;