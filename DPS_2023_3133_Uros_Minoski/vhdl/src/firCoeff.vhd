-- File: fir_coeffs.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package firCoeff is

    -- FIR_COEFFS_BEGIN
    type coeff_array_t is array (0 to 88) of integer;
    constant NUM_TAPS : integer := 89;
    constant creg_s : coeff_array_t := (32, 0, -32, 0, 32, 0, -64, -32, 96, 64, -96, -96, 96, 192, -64, -256, 32, 320, 0, -416, -128, 448, 288, -480, -480, 480, 736, -384, -992, 224, 1280, 32, -1568, -480, 1856, 1088, -2112, -2048, 2336, 3648, -2496, -6976, 2592, 22368, 32768, 22368, 2592, -6976, -2496, 3648, 2336, -2048, -2112, 1088, 1856, -480, -1568, 32, 1280, 224, -992, -384, 736, 480, -480, -480, 288, 448, -128, -416, 0, 320, 32, -256, -64, 192, 96, -96, -96, 64, 96, -32, -64, 0, 32, 0, -32, 0, 32);
    -- FIR_COEFFS_END

end package;
