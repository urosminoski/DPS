library IEEE;  
use IEEE.std_logic_1164.all;   
use IEEE.std_logic_signed.all;   
use IEEE.numeric_std.all;
 
entity FIR_Decimate_rag is  -- VHDL projects
	generic	(  
			INPUT_WIDTH	: integer :=8;		-- input width defined by user  
			OUTPUT_WIDTH	: integer :=16;	-- output width defined by user  
			COEF_WIDTH	: integer :=8;		-- coefficient width defined by user  
			NUM_TAPS		: integer :=16		-- filter order
			); 	
	port (
			clk	: 		in	std_logic; 
			reset : 	in	std_logic;	
			Din	: 		in	std_logic_vector(INPUT_WIDTH-1 downto 0);	-- input data 
			Dout : 		out	std_logic_vector(OUTPUT_WIDTH-1 downto 0)	-- output data 
		); 
end FIR_Decimate_rag;  
 
architecture behavioral of FIR_Decimate_rag is  
	constant CONVERSION_FACTOR : integer := 2;
	constant  TAPS_PER_PHASE : integer := 8;	
	
	-- ctrl+shift+K uncomment, ctrl + K comment									
----------------------------------------------------------------------------------------------                                     
	 
	signal Din0_reg, Din1_reg : std_logic_vector(INPUT_WIDTH-1 downto 0);
	type multipliers_out_type is array (0 to TAPS_PER_PHASE-1) of std_logic_vector(INPUT_WIDTH+COEF_WIDTH-1 downto 0); 
	signal multipliers_out0, multipliers_out1 : multipliers_out_type;  
	type adders_out_type is array (0 to TAPS_PER_PHASE-1) of std_logic_vector(INPUT_WIDTH+COEF_WIDTH-1 downto 0);  
	signal adders_out0, adders_out1, adders_in0, adders_in1, adders_in0_reg, adders_in1_reg : adders_out_type;
	signal adders_out0_reg, adders_out1_reg : adders_out_type;
	signal multipliers_out0_reg, multipliers_out1_reg : multipliers_out_type;  
	-----------------------------------------------------------------------
	signal phase_counter : integer := 0;
	signal y0 : std_logic_vector(OUTPUT_WIDTH-1 downto 0) := (others => '0');
	signal y1 : std_logic_vector(OUTPUT_WIDTH-1 downto 0) := (others => '0');
	
	-----------------------------------------------------------------------
	signal w1_0, w2_0, w2n_0, w3_0, w4_0, w61_0, w64_0 : std_logic_vector(INPUT_WIDTH+COEF_WIDTH-1 downto 0):=(others => '0'); 
	signal w1_1, w2_1, w2n_1, w3_1, w4_1, w5_1, w6_1, w12_1, w12n_1, w40_1 : std_logic_vector(INPUT_WIDTH+COEF_WIDTH-1 downto 0):=(others => '0'); 
	-----------------------------------------------------------------------
	signal w1_0_reg, w3_0_reg, w2_0_reg, w2n_0_reg, w4_0_reg, w64_0_reg, w61_0_reg, w1_1_reg, w2_1_reg, w4_1_reg : std_logic_vector(INPUT_WIDTH+COEF_WIDTH-1 downto 0):=(others => '0');
	signal w3_1_reg, w5_1_reg, w2n_1_reg : std_logic_vector(INPUT_WIDTH+COEF_WIDTH-1 downto 0):=(others => '0'); 	
	-----------------------------------------------------------------------
	constant SHIFT_0: integer := 0;
	constant SHIFT_1: integer := 1;
	constant SHIFT_2: integer := 2;
	constant SHIFT_3: integer := 3;
	constant SHIFT_4: integer := 4;
	constant SHIFT_5: integer := 5;
	constant SHIFT_6: integer := 6;

	-----------------------------------------------------------------------

begin  
	------------------------------------------------------------------------
	-- DIRECT TRANSPOSED DECIMATOR
	------------------------------------------------------------------------
	-- MULTIPLIER BLOCK
	-- COEFFICIENTS
	-- w1 <= Din; 			
	-- w4 <= w1 sll 2; 
	-- w5 <= w4 + w1;
	-- w3 <= w4 - w1;  				
	-- w6 <= w3 sll 1; 			
	-- w12 <= w3 sll 2; 		 	
	-- w40 <= w5 sll 3;	
	-- w2 <= w1 sll 1; 		
	-- w2_ <= -w2; 			
	-- w12_ <= -w12; 		
	-- w64 <= w1 sll 6; 	
	-- w61 <= w64 - w3;		
	-- 15 elements for calculating
	-----------------------------------------------------------------------
	-- MAPPING ELEMENTS
	-- FILTER 0														FILTER 1
	-- Y0 <= w3_0; 		w3_0							 			Y1 <= w2_; 		w2n_1 
	-- Y2 <= w2_; 		w2n_0 										Y3 <= w6; 		w6_1 
	-- Y4 <= w3_0; 		w3_0 										Y5 <= w12_; 	w12n_1 
	-- Y6 <= w61_0; 	w61_0 										Y7 <= w40; 		w40_1 
	-- Y8 <= w3_0; 		w3_0 										Y9 <= w40; 		w40_1 
	-- Y11 <= w2_; 		w2n_0 										Y11 <= w12_; 	w12n_1 									
	-- Y12 <= w3_0; 	w3_0 										Y13 <= w6; 		w6_1 
	-- Y14 <= w2_; 		w2n_0 	 									Y15 <= w2_; 	w2n_1 

	-----------------------------------------------------------------------
	w1_0_reg((w1_0_reg'length - 1) downto (Din0_reg'length + SHIFT_0)) <= ((w1_0_reg'length - 1) downto (Din0_reg'length + SHIFT_0) => Din0_reg(Din0_reg'length - 1));
	w1_0_reg(Din0_reg'length -1 + SHIFT_0 downto SHIFT_0)<= Din0_reg;
	
	w2_0_reg((w2_0_reg'length - 1) downto (Din0_reg'length + SHIFT_1)) <= ((w2_0_reg'length - 1) downto (Din0_reg'length + SHIFT_1) => Din0_reg(Din0_reg'length - 1));
	w2_0_reg(Din0_reg'length -1 + SHIFT_1 downto SHIFT_1)<= Din0_reg;
	
	w4_0_reg((w4_0_reg'length - 1) downto (Din0_reg'length + SHIFT_2)) <= ((w4_0_reg'length - 1) downto (Din0_reg'length + SHIFT_2) => Din0_reg(Din0_reg'length - 1));
	w4_0_reg(Din0_reg'length -1 + SHIFT_2 downto SHIFT_2)<= Din0_reg;
	
	w64_0_reg((w64_0_reg'length - 1) downto (Din0_reg'length + SHIFT_6)) <= ((w64_0_reg'length - 1) downto (Din0_reg'length + SHIFT_6) => Din0_reg(Din0_reg'length - 1));
	w64_0_reg(Din0_reg'length -1 + SHIFT_6 downto SHIFT_6)<= Din0_reg;
	
	w2n_0_reg <= not(w2_0) + x"0001";
	
	w3_0_reg <= w4_0 - w1_0;

	w61_0_reg <= w64_0 - w3_0;
	 
	 
	-----------------------------------------------------------------------
	w1_1_reg((w1_1_reg'length - 1) downto (Din1_reg'length + SHIFT_0)) <= ((w1_1_reg'length - 1) downto (Din1_reg'length + SHIFT_0) => Din1_reg(Din1_reg'length - 1));
	w1_1_reg(Din1_reg'length -1 + SHIFT_0 downto SHIFT_0)<= Din1_reg;
	
	w2_1_reg((w2_1_reg'length - 1) downto (Din1_reg'length + SHIFT_1)) <= ((w2_1_reg'length - 1) downto (Din1_reg'length + SHIFT_1) => Din1_reg(Din1_reg'length - 1));
	w2_1_reg(Din1_reg'length -1 + SHIFT_1 downto SHIFT_1)<= Din1_reg;
			
	w4_1_reg((w4_1_reg'length - 1) downto (Din1_reg'length + SHIFT_2)) <= ((w4_1_reg'length - 1) downto (Din1_reg'length + SHIFT_2) => Din1_reg(Din1_reg'length - 1));
	w4_1_reg(Din1_reg'length -1 + SHIFT_2 downto SHIFT_2)<= Din1_reg;	
	
	
	w2n_1_reg <= not(w2_1) + x"0001";
	w3_1_reg <= w4_1 - w1_1;
	w5_1_reg <= w4_1 + w1_1;
	w12n_1 <= not(w12_1) + x"0001";
	
	w40_1((w40_1'length - 1) downto SHIFT_3) <= w5_1((w5_1'length - 1 - SHIFT_3) downto 0);
	w40_1(SHIFT_3 - 1 downto 0) <= "000";
	
	w6_1((w6_1'length - 1) downto SHIFT_1) <= w3_1((w3_1'length - 1 - SHIFT_1) downto 0);
	w6_1(SHIFT_1 - 1 downto 0) <= "0";
	
	w12_1((w12_1'length - 1) downto SHIFT_2) <= w3_1((w3_1'length - 1 - SHIFT_2) downto 0);
	w12_1(SHIFT_2 - 1 downto 0) <= "00";
	
	-----------------------------------------------------------------------
	-- FILTER 0 MAPPING
	-- COEFF 7
	multipliers_out0(0) <= w3_0;
	adders_in0(0) <= multipliers_out0_reg(0);
	
	-- COEFF 6
	multipliers_out0(1) <= w2n_0;
	adders_in0(1) <= multipliers_out0_reg(1) + adders_out0(0) ;
	
	-- COEFF 5
	multipliers_out0(2) <= w3_0;
	adders_in0(2) <= multipliers_out0_reg(2) + adders_out0(1);
	
	-- COEFF 4
	multipliers_out0(3) <= w61_0;
	adders_in0(3) <= multipliers_out0_reg(3) + adders_out0(2);
	
	-- COEFF 3
	multipliers_out0(4) <= w3_0;
	adders_in0(4) <= multipliers_out0_reg(4) + adders_out0(3);
	
	-- COEFF 2
	multipliers_out0(5) <= w2n_0;
	adders_in0(5) <= multipliers_out0_reg(5) + adders_out0(4);
	
	-- COEFF 1
	multipliers_out0(6) <= w3_0;
	adders_in0(6) <= multipliers_out0_reg(6) + adders_out0(5);
	
	-- COEFF 0
	multipliers_out0(7) <= w2n_0;
	adders_in0(7) <= multipliers_out0_reg(7) + adders_out0(6);
	
	
	-- FILTER 1 MAPPING
	-- COEFF 7
	multipliers_out1(0) <= w2n_1;
	adders_in1(0) <= multipliers_out1_reg(0);
	
	-- COEFF 6
	multipliers_out1(1) <= w6_1;
	adders_in1(1) <= multipliers_out1_reg(1) + adders_out1(0);
	
	-- COEFF 5
	multipliers_out1(2) <= w12n_1;
	adders_in1(2) <= multipliers_out1_reg(2) + adders_out1(1);
	
	-- COEFF 4
	multipliers_out1(3) <= w40_1;
	adders_in1(3) <= multipliers_out1_reg(3) + adders_out1(2);

	-- COEFF 3
	multipliers_out1(4) <= w40_1;
	adders_in1(4) <= multipliers_out1_reg(4) + adders_out1(3);

	-- COEFF 2
	multipliers_out1(5) <= w12n_1;
	adders_in1(5) <= multipliers_out1_reg(5) + adders_out1(4);

	-- COEFF 1
	multipliers_out1(6) <= w6_1;
	adders_in1(6) <= multipliers_out1_reg(6) + adders_out1(5);
	
	-- COEFF 0
	multipliers_out1(7) <= w2n_1;
	adders_in1(7) <= multipliers_out1_reg(7) + adders_out1(6);
	
	
	phase_counter_process: process (reset,clk)
	begin
		if (reset = '1') then
			phase_counter<= 0;
		elsif (rising_edge(clk)) then
			if phase_counter > 0 then
				phase_counter <= phase_counter - 1;        
			else
				phase_counter <= CONVERSION_FACTOR-1;
			end if; 

		end if;
	end process phase_counter_process;

	
	shift_reg_proc: process (reset,clk)
	begin
		if (reset = '1') then
			Din0_reg<= (others => '0');
			Din1_reg<= (others => '0');
			adders_out0 <= (others => (others => '0'));
			adders_out1 <= (others => (others => '0'));
			multipliers_out1_reg <= (others => (others => '0'));
			multipliers_out0_reg<= (others => (others => '0'));
		elsif (rising_edge(clk)) then
			
			if (phase_counter = 1) then
				
				Din0_reg <= Din;
				for i in 0 to (TAPS_PER_PHASE-1) loop
					adders_out0(i) <= adders_in0_reg(i);	
				end loop;
				for i in 0 to (TAPS_PER_PHASE-1) loop
					multipliers_out0_reg(i) <= multipliers_out0(i);	
				end loop;
			else
				Din1_reg <= Din;
				for i in 0 to (TAPS_PER_PHASE-1) loop
					adders_out1(i) <= adders_in1_reg(i);	
				end loop;
				for i in 0 to (TAPS_PER_PHASE-1) loop
					multipliers_out1_reg(i) <= multipliers_out1(i);	
				end loop;
			end if;
		end if;
	end process shift_reg_proc;

    output_proc: process(clk)
	begin
		if(rising_edge(clk)) then
			if (phase_counter = 1) then
				Dout <= y0 + y1;
			end if;
		end if;
	end process output_proc;
	
	reg_proc: process(clk) 
	begin
		
		if(rising_edge(clk)) then
			y1<= adders_out1(TAPS_PER_PHASE-1);
			y0 <= adders_out0(TAPS_PER_PHASE-1);
			w1_1 <= w1_1_reg;
			w2_1 <= w2_1_reg;
			w4_1 <= w4_1_reg;
			w1_0 <= w1_0_reg;
			w2_0 <= w2_0_reg;
			w4_0 <= w4_0_reg;
			w2n_0 <= w2n_0_reg;
			w64_0<=w64_0_reg;
			w61_0 <=w61_0_reg;
			w3_0 <= w3_0_reg;
			w3_1 <= w3_1_reg;
			w5_1<=w5_1_reg;
			w2n_1 <= w2n_1_reg;
			
			for i in 0 to (TAPS_PER_PHASE-1) loop
				adders_in0_reg(i) <= adders_in0(i);	
			end loop;
			for i in 0 to (TAPS_PER_PHASE-1) loop
				adders_in1_reg(i) <= adders_in1(i);	
			end loop;
	
		end if;
	end process reg_proc;

	
 end behavioral;
	
 
 