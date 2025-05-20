#include <stdlib.h>
#include <stdio.h>
#include "tistdtypes.h"
#include "polyphaseDecimate.h"


/* Define DSP system memory map */
#pragma DATA_SECTION(h, ".const:fir");
#pragma DATA_SECTION(w, ".bss:fir");



Int16 w[NUM_TAPS];
Int16 h[NUM_TAPS];
void main()
{


    // Open the file for writing in binary mode
    FILE *test_data_file;
    FILE *input_file, *coefficients_file;
    FILE *output_file;
    Int16 i,num_values,
		  index;        // Delay line index
    Int16 x[NUM_DATA],  // Input data
		  y[NUM_DATA];  // Output data
    Int16  temp[NUM_DATA];
    


	// Open the file for reading input samples
	test_data_file = fopen("..\\data\\input_data.dat", "w");
    input_file = fopen("..\\data\\input_signal_integer_for_asm.txt", "r");
	coefficients_file = fopen("..\\data\\coefficients_integer_for_asm.txt", "r");
	output_file = fopen("..\\data\\output_signal_decimate_asm.txt", "w");
	
	

	num_values = 0;
	while (num_values < NUM_TAPS && fscanf(coefficients_file, "%d", &h[num_values]) == 1) {
        num_values++;
    }
    // Initialize for filtering process
    for (i=0; i<NUM_TAPS; i++)
    {
        w[i] = 0;
    }
    index = 0;

	while (fscanf(input_file, "%d", &temp[0]) == 1) {
		// Read the remaining elements of the block
		for (i = 1; i < NUM_DATA; i++) {
		    if (fscanf(input_file, "%d", &temp[i]) != 1) {
				perror("Error reading input file");
		        exit(0);
		    }
		}
		
		// Process the data in blocks of NUM_DATA
		for (i = 0; i < NUM_DATA; i++) {
		    x[i] = temp[i];
		}
		
		polyphaseDecimation(x, NUM_DATA, h, NUM_TAPS, y, w, &index);
		fprintf(test_data_file,"\tInt16 input_data[FFT_PTS]={\t\n");
		for (i=0; i<NUM_DATA_OUTPUT; i++)
		{
		    fprintf(output_file, "%d\n", y[i]);
		    if(i == NUM_DATA_OUTPUT-1){
		    	fprintf(test_data_file, "0x%x\n", y[i]);
		    }
		    else{
		    	fprintf(test_data_file, "0x%x,\n", y[i]);
		    }
		     
		}
		fprintf(test_data_file, "\t};\t");
		break;    
	}
	

	fclose(input_file);
	fclose(coefficients_file);
	fclose(output_file);
	fclose(test_data_file);
    printf("\nExp --- completed\n");
}

