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
		if rising_edge(clk) then
			if rst = '1' then
				mul_out <= (others => (others => '0'));
			elsif xin_en = '1' then
				mul_out(0) 	<= std_logic_vector(w1_n);
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
			end if;
		end if;
	end process;
	
	-- process(clk)
	-- begin
		-- if rising_edge(clk) then
			-- for i in 0 to C_NUM_TAMPS-2 loop
				-- add_out(i) <= shift_reg(i) + mul_out(i);
			-- end loop;
			-- add_out(C_NUM_TAMPS-1) <= mul_out(C_NUM_TAMPS-1);
		-- end if;
	-- end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				shift_reg <= (others => (others => '0'));
			else
				if xin_en = '1' then
					for i in 0 to C_NUM_TAMPS-3 loop
						shift_reg(i) <= shift_reg(i+1) + mul_out(i+1); --add_out(i+1); 
					end loop;
					shift_reg(C_NUM_TAMPS-2) <= mul_out(C_NUM_TAMPS-1); --add_out(C_NUM_TAMPS-1)
				end if;
			end if;
		end if;
	end process;

	acc <= shift_reg(0) + mul_out(0); -- add_out(0);
	
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				xout <= (others => '0');
			elsif xin_en = '1' then
				xout <= acc;
			end if;
		end if;
	end process;
	
end architecture;



-- library ieee;
-- use ieee.std_logic_1164.all;
-- use ieee.numeric_std.all;

-- ... entity isti ...

-- architecture rtl of fir_phase0_RAG is
  -- constant C_NUM_TAMPS  : integer := 11;
  -- constant C_MAC_WIDTH  : integer := C_INPUT_WIDTH + C_COEFF_WIDTH;

  -- subtype T is signed(C_MAC_WIDTH-1 downto 0);

  -- S0: registrovani ulaz
  -- signal w1_s0   : T;

  -- S1: jeftini shiftovi/negacija
  -- signal w1_s1   : T;
  -- signal w2_s1   : T;
  -- signal w8_s1   : T;
  -- signal w16_s1  : T;
  -- signal w1n_s1  : T;

  -- S2: prva suma/razlika
  -- signal w15_s2  : T;
  -- signal w2_s2   : T;
  -- signal w8_s2   : T;
  -- signal w1n_s2  : T;

  -- S3: druga suma
  -- signal w23_s3  : T;
  -- signal w2_s3   : T;
  -- signal w8_s3   : T;   -- (korisno za -w8 kasnije)
  -- signal w1n_s3  : T;

  -- S4: završni shift i poravnanja za mul_out
  -- signal w46_s4  : T;
  -- signal w15_s4  : T;   -- poravnanje (2 takta od S2 do S4)
  -- signal w8n_s4  : T;
  -- signal w2_s4   : T;
  -- signal w1n_s4  : T;

  -- signal xin_reg : std_logic_vector(C_INPUT_WIDTH-1 downto 0);

  -- type mul_out_type is array (0 to C_NUM_TAMPS-1) of std_logic_vector(C_MAC_WIDTH-1 downto 0);
  -- signal mul_out : mul_out_type;

-- begin
  -------------------------------------------------------------------------
  -- S0: ulazni registar
  -------------------------------------------------------------------------
  -- process(clk)
  -- begin
    -- if rising_edge(clk) then
      -- if rst='1' then
        -- xin_reg <= (others=>'0');
      -- elsif xin_en='1' then
        -- xin_reg <= xin;
      -- end if;
    -- end if;
  -- end process;

  -- w1_s0 <= resize(signed(xin_reg), C_MAC_WIDTH);

  -------------------------------------------------------------------------
  -- S1: jeftini shiftovi i negacija (sve registrovano)
  -------------------------------------------------------------------------
  -- process(clk)
  -- begin
    -- if rising_edge(clk) then
      -- if rst='1' then
        -- w1_s1  <= (others=>'0');
        -- w2_s1  <= (others=>'0');
        -- w8_s1  <= (others=>'0');
        -- w16_s1 <= (others=>'0');
        -- w1n_s1 <= (others=>'0');
      -- elsif xin_en='1' then
        -- w1_s1  <= w1_s0;
        -- w2_s1  <= shift_left(w1_s0, 1);  -- w1<<1
        -- w8_s1  <= shift_left(w1_s0, 3);  -- w1<<3
        -- w16_s1 <= shift_left(w1_s0, 4);  -- w1<<4
        -- w1n_s1 <= -w1_s0;                -- not w1 + 1
      -- end if;
    -- end if;
  -- end process;

  -------------------------------------------------------------------------
  -- S2: prva suma/razlika (registrovano) + poravnanja
  -------------------------------------------------------------------------
  -- process(clk)
  -- begin
    -- if rising_edge(clk) then
      -- if rst='1' then
        -- w15_s2 <= (others=>'0');
        -- w2_s2  <= (others=>'0');
        -- w8_s2  <= (others=>'0');
        -- w1n_s2 <= (others=>'0');
      -- elsif xin_en='1' then
        -- w15_s2 <= w16_s1 - w1_s1;  -- 16 - 1
        -- w2_s2  <= w2_s1;
        -- w8_s2  <= w8_s1;
        -- w1n_s2 <= w1n_s1;
      -- end if;
    -- end if;
  -- end process;

  -------------------------------------------------------------------------
  -- S3: druga suma (registrovano) + poravnanja
  -------------------------------------------------------------------------
  -- process(clk)
  -- begin
    -- if rising_edge(clk) then
      -- if rst='1' then
        -- w23_s3 <= (others=>'0');
        -- w2_s3  <= (others=>'0');
        -- w8_s3  <= (others=>'0');
        -- w1n_s3 <= (others=>'0');
      -- elsif xin_en='1' then
        -- w23_s3 <= w15_s2 + w8_s2;  -- 15 + 8
        -- w2_s3  <= w2_s2;
        -- w8_s3  <= w8_s2;           -- čuvamo +w8 da lako napravimo -w8 u S4
        -- w1n_s3 <= w1n_s2;
      -- end if;
    -- end if;
  -- end process;

  -------------------------------------------------------------------------
  -- S4: završni shift i negacija (registrovano) + upis u mul_out
  -------------------------------------------------------------------------
  -- process(clk)
  -- begin
    -- if rising_edge(clk) then
      -- if rst='1' then
        -- w46_s4 <= (others=>'0');
        -- w15_s4 <= (others=>'0');
        -- w8n_s4 <= (others=>'0');
        -- w2_s4  <= (others=>'0');
        -- w1n_s4 <= (others=>'0');
        -- mul_out <= (others=>(others=>'0'));
      -- elsif xin_en='1' then
        -- w46_s4 <= shift_left(w23_s3, 1); -- (15+8)<<1 = 46
        -- w15_s4 <= w15_s2;                -- poravnanje (S2 -> S4)
        -- w8n_s4 <= -w8_s3;                -- -(+8)
        -- w2_s4  <= w2_s3;
        -- w1n_s4 <= w1n_s3;

        -- svi mul_out iz S4 registara (iste dužine putanje)
        -- mul_out(0)  <= std_logic_vector(w1n_s4);
        -- mul_out(1)  <= (others=>'0');
        -- mul_out(2)  <= std_logic_vector(w2_s4);
        -- mul_out(3)  <= std_logic_vector(w8n_s4);
        -- mul_out(4)  <= std_logic_vector(w15_s4);
        -- mul_out(5)  <= std_logic_vector(w46_s4);
        -- mul_out(6)  <= std_logic_vector(w15_s4);
        -- mul_out(7)  <= std_logic_vector(w8n_s4);
        -- mul_out(8)  <= std_logic_vector(w2_s4);
        -- mul_out(9)  <= (others=>'0');
        -- mul_out(10) <= std_logic_vector(w1n_s4);
      -- end if;
    -- end if;
  -- end process;

  -- tvoj ostatak (shift_reg, acc, xout) ostaje, ali računaj da je latencija +4 takta
-- end architecture;
