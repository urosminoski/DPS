#include <stdlib.h>
#include <stdio.h>
#include "tistdtypes.h"
#include "polyDec2.h"


/* Define DSP system memory map */
#pragma DATA_SECTION(h, ".const:fir");
#pragma DATA_SECTION(w, ".bss:fir");

// #define blkSizeMax 	80

Int16 w[NUM_TAPS];
Int16 h[NUM_TAPS];
void main() {
    // Open the file for writing in binary mode
    FILE *xin_file, *h_file, *xout_file;
    Int16 xin[NUM_DATA],  	// Input data
		  xout[NUM_DATA];  	// Output data
    Int16 num_values, i, index;
	Int16 temp[NUM_DATA];
	// Int16 blkSize;


	// Open the file for reading input samples
	xin_file = fopen("..\\data\\xin_q1n.txt", "r");
	if (!xin_file) { perror("open xin_file"); exit(1); }

	h_file = fopen("..\\data\\firCoeff_q1n.txt", "r");
	if (!h_file) { perror("open h_file"); exit(1); }

	xout_file = fopen("..\\data\\xout_q1n.txt", "w");
	if (!xout_file) { perror("open xout_file"); exit(1); }


	num_values = 0;
	while (num_values < NUM_TAPS && fscanf(h_file, "%d", &h[num_values]) == 1) {
        num_values++;
    }
	
    // Initialize for filtering process
    // for (i=0; i<NUM_TAPS; i++)
    // {
        // w[i] = 0;
    // }
    // index = 0;
	
	// for(;;) {
		// blkSize = 0;
		
		// while (blkSize < blkSizeMax) {
			// int r = fscanf(xin_file, "%d", &xin[blkSize]);
			// if (r == 1) {
				// blkSize++;
			// } else if (r == EOF || r == 0) {
				// break;
			// } else {
				// perror("Error reading input file");
				// exit(EXIT_FAILURE);
			// }
		// }
		
		// if (blkSize == 0) {
			// break;
		// }
		
		// polyDec2(xin, blkSize, h, NUM_TAPS, xout, w, &index);
		
		// for (i=0; i<blkSize/2; i++) {
			// fprintf(xout_file, "%d\n", xout[i]);
		// }
	// }
	
	while (fscanf(xin_file, "%d", &temp[0]) == 1) {
		// Read the remaining elements of the block
		for (i = 1; i < NUM_DATA; i++) {
		    if (fscanf(xin_file, "%d", &temp[i]) != 1) {
				perror("Error reading input file");
		        exit(0);
		    }
		}
		
		// Process the data in blocks of NUM_DATA
		for (i = 0; i < NUM_DATA; i++) {
		    xin[i] = temp[i];
		}
		
		polyDec2(xin, NUM_DATA, h, NUM_TAPS, xout, w, &index);
		
		for (i=0; i<NUM_DATA_OUTPUT; i++) {
			fprintf(xout_file, "%d\n", xout[i]);
		}
		break;    
	}
	

	fclose(xin_file);
	fclose(h_file);
	fclose(xout_file);
    printf("\nExp --- completed\n");
}

