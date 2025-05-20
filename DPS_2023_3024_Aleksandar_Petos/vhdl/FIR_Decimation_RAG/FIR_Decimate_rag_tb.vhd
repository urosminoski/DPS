Library IEEE;  
USE IEEE.std_logic_1164.all;    
USE IEEE.numeric_std.all;  
Use STD.TEXTIO.all;  

entity FIR_Decimate_tb is  
end FIR_Decimate_tb; 

architecture behavioral of FIR_Decimate_tb is  
    component FIR_Decimate_rag is  
        generic (  
            INPUT_WIDTH     : integer   :=8;   
            OUTPUT_WIDTH    : integer   :=16; 
            COEF_WIDTH      : integer   :=8;  
            NUM_TAPS        : integer := 16); 
        port(  
            clk     : in    std_logic;              
            reset   : in    std_logic;               
            Din     : in    std_logic_vector(INPUT_WIDTH-1 downto 0); 
			Dout    : out   std_logic_vector(OUTPUT_WIDTH-1 downto 0));
    end component;  
    signal Din  : std_logic_vector(7 downto 0);  
    signal clk, clk_slow  : std_logic:='0';  
    signal reset : std_logic:='1';       
    signal output_ready : std_logic:='0';                                
	signal Dout : std_logic_vector(15 downto 0);  
    file my_input : TEXT open READ_MODE is "C:/Users/aleks/Desktop/DPS/vjezbe/v5/vhdl/input_signal_integer_for_vhdl.txt";  
    file my_output : TEXT open WRITE_MODE is "C:/Users/aleks/Desktop/Workspace_ALTERA/output_signal_decimate_rag_vhdl_post.txt";  
begin  
    FIR_inst : FIR_Decimate_rag
	   generic map (  
            INPUT_WIDTH => 8,  
            OUTPUT_WIDTH => 16,  
            COEF_WIDTH  => 8,  
            NUM_TAPS    => 16)  
	   port map (  
            Din => Din,  
            clk => clk,  
            reset => reset,  
			Dout=> Dout);  
	     
    clk <= not clk after 10 ns;   
    reset <= '1', '1' after 100 ns, '0' after 503 ns; 
    
	process (clk)
	begin
		if reset = '1' then
			clk_slow <= '0';
		elsif (rising_edge(clk)) then
			clk_slow <= not clk_slow;
		end if;
	end process;
	
    process(clk)  
        variable my_input_line : LINE;  
        variable input1: integer;  
    begin  
        if reset ='1' then  
             Din <= (others=> '0');  
             output_ready <= '0';  
        elsif rising_edge(clk) then                      
             readline(my_input, my_input_line);  
             read(my_input_line,input1);  
             Din <= std_logic_vector(to_signed(input1, 8)); 
             output_ready <= '1';  
        end if;  
    end process;                      
    
    process(clk_slow)  
        variable my_output_line : LINE;   
		variable guard : integer := 0;
    begin  
		
        if falling_edge(clk_slow) then  
            if (output_ready = '1') then
				write(my_output_line, to_integer(signed(Dout)));	
				writeline(my_output,my_output_line);  
			end if;
        end if;  
    end process;   
							
end behavioral; 