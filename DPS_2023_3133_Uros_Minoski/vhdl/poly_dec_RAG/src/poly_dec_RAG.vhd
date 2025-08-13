-- =============================================================
-- File: poly_decimation.vhd
-- Parallel Polyphase Decimator with M FIR branches and rotating input distribution
-- =============================================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;

entity poly_dec_RAG is
    generic (
        C_INPUT_WIDTH  : integer := 8;
        C_COEFF_WIDTH  : integer := 8;
        C_OUTPUT_WIDTH : integer := 16
    );
    port (
        clk      	: in  std_logic;
        rst      	: in  std_logic;
        xin      	: in  std_logic_vector(C_INPUT_WIDTH-1 downto 0);
        xin_en   	: in  std_logic;
        xout     	: out std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
        xout_0     	: out std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
        xout_1     	: out std_logic_vector(C_OUTPUT_WIDTH-1 downto 0);
        xout_en  	: out std_logic
    );
end entity;

architecture rtl of poly_dec_RAG is
 
    constant MAC_W      : integer := C_INPUT_WIDTH + C_COEFF_WIDTH;
	
	signal phase_cnt  : integer range 0 to 1 := 0;
	
	signal phase0_en : std_logic := '0';
	signal phase1_en : std_logic := '0';
	
	signal xin_phase0, xin_phase1 : std_logic_vector(C_INPUT_WIDTH-1 downto 0);
	
	signal xout_phase0 : std_logic_vector(MAC_W-1 downto 0) := (others => '0');
	signal xout_phase1 : std_logic_vector(MAC_W-1 downto 0) := (others => '0');
	
	-- signal xin_d 		: std_logic_vector(C_INPUT_WIDTH-1 downto 0);
	signal phase_cnt_d 	: integer range 0 to 1 := 0;

begin

    -- Input rotation buffer logic
    phase_counter: process(clk, rst)
    begin
        if rst = '1' then
            phase_cnt <= 0;
        elsif rising_edge(clk) then
            if xin_en = '1' then
                if phase_cnt = 1 then
                    phase_cnt <= 0;
                else
                    phase_cnt <= phase_cnt + 1;
                end if;
            end if;
        end if;
    end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				xin_phase0 <= (others => '0');
				xin_phase1 <= (others => '0');
			else
				if phase_cnt = 0 then
					xin_phase0 <= xin;
				elsif phase_cnt = 1 then
					xin_phase1 <= xin;
				end if;
			end if;
		end if;
	end process;
	
	phase0_gen : entity work.fir_phase0_RAG
		generic map (
			C_INPUT_WIDTH	=> C_INPUT_WIDTH,
			C_COEFF_WIDTH	=> C_COEFF_WIDTH,
			C_OUTPUT_WIDTH	=> MAC_W
		)
		port map (
			clk		=> clk,
		    rst		=> rst,
		    xin_en	=> '1',
		    xin		=> xin_phase0,
		    xout	=> xout_phase0
		);
		
	phase1_gen : entity work.fir_phase1_RAG
		generic map (
			C_INPUT_WIDTH	=> C_INPUT_WIDTH,
			C_COEFF_WIDTH	=> C_COEFF_WIDTH,
			C_OUTPUT_WIDTH	=> MAC_W
		)
		port map (
			clk		=> clk,
		    rst		=> rst,
		    xin_en	=> '1',
		    xin		=> xin_phase0,
		    xout	=> xout_phase1
		);
		
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				xout <= (others => '0');
			else
				if phase_cnt = 1 then
					xout_1 	<= xout_phase1;
					xout 	<= xout_phase0 + xout_phase1;
				else
					xout_0 	<= xout_phase0;
				end if;
			end if;
		end if;
	end process;
	
	
	
	
	-- process(clk)
	-- begin
		-- if rising_edge(clk) then
			-- phase_cnt_d <= phase_cnt;
		-- end if;
	-- end process;
	-- phase_cnt_d <= phase_cnt;
	
	-- phase0_en <= '1' when (phase_cnt_d = 0 and xin_en = '1') else '0';
	-- phase1_en <= '1' when (phase_cnt_d = 1 and xin_en = '1') else '0';
	
	-- phase0_gen : entity work.fir_phase0_RAG
		-- generic map (
			-- C_INPUT_WIDTH	=> C_INPUT_WIDTH,
			-- C_COEFF_WIDTH	=> C_COEFF_WIDTH,
			-- C_OUTPUT_WIDTH	=> MAC_W
		-- )
		-- port map (
			-- clk		=> clk,
		    -- rst		=> rst,
		    -- xin_en	=> phase0_en,
		    -- xin		=> xin,
		    -- xout	=> xout_phase0
		-- );
		
	-- phase1_gen : entity work.fir_phase1_RAG
		-- generic map (
			-- C_INPUT_WIDTH	=> C_INPUT_WIDTH,
			-- C_COEFF_WIDTH	=> C_COEFF_WIDTH,
			-- C_OUTPUT_WIDTH	=> MAC_W
		-- )
		-- port map (
			-- clk		=> clk,
		    -- rst		=> rst,
		    -- xin_en	=> phase1_en,
		    -- xin		=> xin,
		    -- xout	=> xout_phase1
		-- );
	
	
	-- acumulator: process(clk, rst)
		-- variable acc_v 		: std_logic_vector(MAC_W-1 downto 0) := (others => '0');
		-- variable phase_v 	: std_logic_vector(MAC_W-1 downto 0) := (others => '0');
	-- begin
		-- if rst = '1' then
			-- xout_en <= '0';
			-- xout 	<= (others => '0');
			-- acc_v 	:= (others => '0');
			
		-- elsif rising_edge(clk) then
			-- if phase_cnt_d = 1 then
				-- acc_v 	:= xout_phase0 + xout_phase1;
				-- xout 	<= acc_v(acc_V'length-1 downto acc_V'length-C_OUTPUT_WIDTH);
				-- xout <= xout_phase0 + xout_phase1;
				-- xout_0 <= xout_phase0;
				-- xout_1 <= xout_phase1;
				-- xout_en <= '1';
			-- else
				-- xout_en <= '0';
			-- end if;
		-- end if;
	-- end process;

end architecture;
