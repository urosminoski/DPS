def update_vhdl_section_with_coeffs(
    vhdl_file_path,
    coeffs,
    word_length=16,
    start_tag="-- FIR_COEFFS_BEGIN",
    end_tag="-- FIR_COEFFS_END",
    array_name="COEFFS",
    taps_constant="NUM_TAPS",
    type_name="coeff_array_t",
    indent="    "
):
    """
    Replaces content between start_tag and end_tag in a VHDL file with:
      - type definition
      - constant NUM_TAPS
      - constant COEFFS
    """

    with open(vhdl_file_path, 'r') as f:
        lines = f.readlines()

    start_idx = None
    end_idx = None

    for i, line in enumerate(lines):
        if start_tag in line:
            start_idx = i
        if end_tag in line:
            end_idx = i

    if None in [start_idx, end_idx] or start_idx >= end_idx:
        raise ValueError("Start or end tag not found or out of order.")

    # Scale coefficients for fixed-point
    scale_factor = 2 ** (word_length - 1)
    scaled_coeffs = [int(round(c * scale_factor)) for c in coeffs]
    coeff_array_str = ", ".join(map(str, scaled_coeffs))
    num_taps = len(scaled_coeffs)

    # VHDL block to insert
    vhdl_lines = [
        f"{indent}{start_tag}\n",
        f"{indent}type {type_name} is array (0 to {num_taps - 1}) of integer;\n",
        f"{indent}constant {taps_constant} : integer := {num_taps};\n",
        f"{indent}constant {array_name} : {type_name} := ({coeff_array_str});\n",
        f"{indent}{end_tag}\n"
    ]

    # Replace old section with new
    new_lines = lines[:start_idx] + vhdl_lines + lines[end_idx + 1:]

    with open(vhdl_file_path, 'w') as f:
        f.writelines(new_lines)

def load_coefficients_from_txt(txt_path):
    """Load coefficients from space- or line-separated text file"""
    with open(txt_path, 'r') as f:
        return [float(val) for line in f for val in line.strip().split()]

if __name__ == "__main__":
    # Configuration
    VHDL_FILE = "firCoeff.vhd"
    COEFF_FILE = "../data/firCoeff.txt"
    WORD_LENGTH = 16  # For fixed-point scaling (Q15)

    START_TAG = "-- FIR_COEFFS_BEGIN"
    END_TAG = "-- FIR_COEFFS_END"
    ARRAY_NAME = "COEFFS"
    TAPS_CONSTANT = "NUM_TAPS"
    TYPE_NAME = "coeff_array_t"
    INDENT = "    "

    coeffs = load_coefficients_from_txt(COEFF_FILE)
    update_vhdl_section_with_coeffs(
        vhdl_file_path=VHDL_FILE,
        coeffs=coeffs,
        word_length=WORD_LENGTH,
        start_tag=START_TAG,
        end_tag=END_TAG,
        array_name=ARRAY_NAME,
        taps_constant=TAPS_CONSTANT,
        type_name=TYPE_NAME,
        indent=INDENT
    )

    print(f"Updated '{VHDL_FILE}' with FIR definition: {len(coeffs)} taps.")
