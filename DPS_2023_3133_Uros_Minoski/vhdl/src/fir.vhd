use work.coeff_utils.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity fir is
    generic (
        C_COEFFS        : work.coeff_utils.real_vector := (0.1, -0.1, 0.2);
        C_COEFF_WIDTH   : integer range 8 to 50 := 16;  -- Q15 fits in 16 bits
        C_INPUT_WIDTH   : integer range 8 to 25 := 12;
        C_OUTPUT_WIDTH  : integer range 8 to 25 := 12
    );
    port (
        clk, rst        : in std_logic;
        enable          : in std_logic;
        xin             : in std_logic_vector(C_INPUT_WIDTH - 1 downto 0);
        xout            : out std_logic_vector(C_OUTPUT_WIDTH - 1 downto 0)
    );
end entity;

architecture behavioral of fir is

    attribute use_dsp : string;
    attribute use_dsp of behavioral : architecture is "yes";

    constant C_FIR_TAPS  : integer := C_COEFFS'length;
    constant C_MAC_WIDTH : integer := C_COEFF_WIDTH + C_INPUT_WIDTH;

    type shift_registers is array(0 to C_FIR_TAPS-1) of signed(C_MAC_WIDTH-1 downto 0);
    signal shift_reg : shift_registers := (others => (others => '0'));

    signal xin_d : signed(C_MAC_WIDTH-1 downto 0);

    constant SCALED_COEFFS : integer_vector := normalize_and_quantize_q15(C_COEFFS);

begin

    -- Output: lower bits from accumulated result
    xout <= std_logic_vector(shift_reg(0)(C_MAC_WIDTH-1 downto C_MAC_WIDTH - C_OUTPUT_WIDTH));

    core_logic : process(clk, rst)
    begin
        if rst = '1' then
            xin_d      <= (others => '0');
            shift_reg  <= (others => (others => '0'));
        elsif rising_edge(clk) then
            xin_d <= resize(signed(xin), C_MAC_WIDTH);

            -- Last tap
            shift_reg(C_FIR_TAPS-1) <= xin_d * to_signed(SCALED_COEFFS(C_FIR_TAPS-1), C_MAC_WIDTH);

            -- Other taps: transposed accumulation
            for i in C_FIR_TAPS-2 downto 0 loop
                shift_reg(i) <= xin_d * to_signed(SCALED_COEFFS(i), C_MAC_WIDTH) + shift_reg(i+1);
            end loop;
        end if;
    end process;

end architecture;
