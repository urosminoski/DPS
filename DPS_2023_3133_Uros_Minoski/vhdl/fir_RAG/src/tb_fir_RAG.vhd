library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
use std.textio.all;

entity tb_poly_decimation is
end entity;

architecture tb of tb_poly_decimation is

	constant C_CLK_FREQ		: integer := 150_000_000;
	constant C_CLK_PERIOD 	: time := 1 sec / C_CLK_FREQ;

	constant C_INPUT_WIDTH	: integer := 8;
	constant C_COEFF_WIDTH	: integer := 8;
	constant C_OUTPUT_WIDTH	: integer := 16;

	signal clk			: std_logic := '0';
	signal rst 			: std_logic := '1';
	signal xin_en_0		: std_logic := '0';
	signal xin_en_1		: std_logic := '0';
	signal xout_en		: std_logic := '0';
	signal xin_0		: std_logic_vector(C_INPUT_WIDTH-1 downto 0) := (others =>'0');
	signal xout_0		: std_logic_vector(C_OUTPUT_WIDTH-1 downto 0) := (others =>'0');
	signal xin_1		: std_logic_vector(C_INPUT_WIDTH-1 downto 0) := (others =>'0');
	signal xout_1		: std_logic_vector(C_OUTPUT_WIDTH-1 downto 0) := (others =>'0');
	
	signal out_ready_0 : std_logic := '0';
	signal out_ready_1 : std_logic := '0';
	-- "C:\Users\Korisnik\Desktop\FAKS\DPS\projekat\moj_rad\fir_direct\data\xin.txt"
	file input_file_0 	: text open read_mode is "C:\Users\Korisnik\Desktop\FAKS\DPS\projekat\DPS\DPS_2023_3133_Uros_Minoski\vhdl\fir_RAG\data\xin_q1n_phase1.txt";
	file output_file_0 	: text open write_mode is "C:\Users\Korisnik\Desktop\FAKS\DPS\projekat\DPS\DPS_2023_3133_Uros_Minoski\vhdl\fir_RAG\data\xout_phase0.txt";
	
	file input_file_1 	: text open read_mode is "C:\Users\Korisnik\Desktop\FAKS\DPS\projekat\DPS\DPS_2023_3133_Uros_Minoski\vhdl\fir_RAG\data\xin_q1n_phase0.txt";
	file output_file_1 	: text open write_mode is "C:\Users\Korisnik\Desktop\FAKS\DPS\projekat\DPS\DPS_2023_3133_Uros_Minoski\vhdl\fir_RAG\data\xout_phase1.txt";
	
begin
	xout_en <= '1';
	
	uut_0: entity work.fir_phase0_RAG
		generic map (
			C_INPUT_WIDTH => C_INPUT_WIDTH, 
			C_COEFF_WIDTH => C_COEFF_WIDTH, 
			C_OUTPUT_WIDTH => C_OUTPUT_WIDTH
		)
		port map (
			clk		=> clk,
			rst		=> rst,
			xin_en	=> xin_en_0,
			-- xout_en	=> xout_en,
			xin		=> xin_0,
			xout	=> xout_0
		);
	
	uut_1: entity work.fir_phase1_RAG
		generic map (
			C_INPUT_WIDTH => C_INPUT_WIDTH, 
			C_COEFF_WIDTH => C_COEFF_WIDTH, 
			C_OUTPUT_WIDTH => C_OUTPUT_WIDTH
		)
		port map (
			clk		=> clk,
			rst		=> rst,
			xin_en	=> xin_en_1,
			-- xout_en	=> xout_en,
			xin		=> xin_1,
			xout	=> xout_1
		);
		
	clk <= not clk after C_CLK_PERIOD/2;
	rst	<= '1', '1' after 100 ns, '0' after 503 ns;
	
	read_file : process(clk)
		variable input_line_0, input_line_1 : line;
		variable input_v_0, input_v_1		: integer;
	begin
		if rising_edge(clk) then
			if rst = '1' then
				xin_0 		<= (others => '0');
				xin_1 		<= (others => '0');
				xin_en_0 	<= '0';
				xin_en_1 	<= '0';
				out_ready_0	<= '0';
				out_ready_1	<= '0';
			else
				readline(input_file_0, input_line_0);
				read(input_line_0, input_v_0);
				xin_0 		<= std_logic_vector(to_signed(input_v_0, C_INPUT_WIDTH));
				out_ready_0 <= '1';
				xin_en_0	<= '1';
				
				readline(input_file_1, input_line_1);
				read(input_line_1, input_v_1);
				xin_1 		<= std_logic_vector(to_signed(input_v_1, C_INPUT_WIDTH));
				out_ready_1 <= '1';
				xin_en_1	<= '1';
			end if;
		end if;
	end process read_file;
	
	write_file : process(clk)
		variable output_line_0, output_line_1 : line;
	begin
		if falling_edge(clk) then
			if out_ready_0 = '1' and xout_en = '1' then
				write(output_line_0, to_integer(signed(xout_0)));
				writeline(output_file_0, output_line_0);
			end if;
			
			if out_ready_1 = '1' and xout_en = '1' then
				write(output_line_1, to_integer(signed(xout_1)));
				writeline(output_file_1, output_line_1);
			end if;
		end if;
	end process write_file;

end architecture;