library ieee;
use ieee.math_real.all;
-- use work.standard_additions.all;

package coeff_utils is
	type real_vector is array (natural range <>) of real;
	type integer_vector is array (natural range <>) of integer;
	 
    function normalize_and_quantize_q15(coeffs_in : real_vector) return integer_vector;
end package;

package body coeff_utils is
    function normalize_and_quantize(coeffs_in : real_vector) return integer_vector is
        variable result    : integer_vector(coeffs_in'range);
        variable max_abs   : real := 0.0;
        constant scale_max : real := 2.0**15 - 1.0;
    begin
        for i in coeffs_in'range loop
            if abs(coeffs_in(i)) > max_abs then
                max_abs := abs(coeffs_in(i));
            end if;
        end loop;

        for i in coeffs_in'range loop
            if max_abs > 0.0 then
                result(i) := integer(coeffs_in(i) / max_abs * scale_max);
            else
                result(i) := 0;
            end if;
        end loop;

        return result;
    end function;
end package body;
