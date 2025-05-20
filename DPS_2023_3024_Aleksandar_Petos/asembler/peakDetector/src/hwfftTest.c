
#include <stdio.h>
#include <stdlib.h>
#include "tistdtypes.h"

struct cmpx						/* Q15 format */
{
	Int16 re;
	Int16 im;
};
typedef struct cmpx complex;

struct element_pair						/* Q15 format */
{
	Int16 value;
	Int16 position;
};
typedef struct element_pair pair;

#define FFT_FLAG        0		/* HWA to perform FFT */
#define IFFT_FLAG       1		/* HWA to perform IFFT */
#define SCALE_FLAG      0		/* HWA to scale butterfly output */
#define NOSCALE_FLAG    1		/* HWA not to scale butterfly output */

#define	FFT_PTS 1024			/* This is for 128 FFT case */
#define F1 60000
#define F0 20000
#define T 0.01
#define BETA (F1-F0)/T
#define C 1500
#define FS 200000

#pragma DATA_SECTION(X, "data_br_buf");
#pragma DATA_ALIGN(X, 2*FFT_PTS);	/* Align for hwafft_br() */
complex X[FFT_PTS];

#pragma DATA_SECTION(temp, "scratch_buf");
#pragma DATA_ALIGN(temp, 2*FFT_PTS); /* Align for hwafft_br() */
complex temp[FFT_PTS];

#pragma DATA_SECTION(output, ".data:output");
Int16 output[FFT_PTS];		/* FFT - IFFT final output */


#pragma DATA_SECTION(input_data, ".const:input_data");
//#include "input_data.dat"			/* Integer FFT test data file, sweep frequency */


extern   Uint16 hwafft_1024pts(Int32 *, Int32 *, Int16, Int16);
extern   Uint16 hwafft_br(Int32 *, Int32 *, Int16);

Int16 input_data[FFT_PTS];
void main()
{
	FILE *input_data_file_from_asm;
    Int16  i,j,num_values;
    Int16  *inDataPtr;
    
	pair sorted_array[FFT_PTS/2];
	pair distances[10];
	Int16 temp_value;
	Int16 temp_position;
    printf("Exp --- started\n");
    /* Start FFT test */
    inDataPtr = input_data;

	input_data_file_from_asm = fopen("..\\data\\output_signal_decimate_asm.txt", "r");
	
	num_values = 0;
	while (num_values < FFT_PTS && fscanf(input_data_file_from_asm, "%d", &input_data[num_values]) == 1) {
        num_values++;
    }
    for (i=0; i<FFT_PTS; i++)
    {
        X[i].re = *inDataPtr++;
        X[i].im = 0;
	}

    /* Start FFT */
    hwafft_br((Int32 *)X, (Int32 *)temp, FFT_PTS); /* Arrange X[] in bit reversal order and store in temp */
    hwafft_1024pts((Int32 *)temp, (Int32 *)X, FFT_FLAG, SCALE_FLAG);


    

	for (i = 0; i < FFT_PTS/2; i++) {
		sorted_array[i].value = X[i].re;
		sorted_array[i].position = i;	
	}

	for (i = 0; i < FFT_PTS/2-1; i++) {
        for (j = 0; j < FFT_PTS/2-i-1; j++) {
            if (sorted_array[j].value < sorted_array[j+1].value) {
                // Swap the elements
                temp_value = sorted_array[j].value;
                temp_position = sorted_array[j].position;
                
                sorted_array[j].value = sorted_array[j+1].value;
                sorted_array[j].position = sorted_array[j+1].position;
                sorted_array[j+1].value = temp_value;
                sorted_array[j+1].position = temp_position;
            }
        }
    }
    j=0;
    for (i = 0; i < 10; i++) {
    	if((sorted_array[i].value - sorted_array[i+1].value) > 50 && 
    	abs(sorted_array[i].position - sorted_array[i+1].position)>10){
    		if(sorted_array[i].value == 0 || sorted_array[i].position ==0){
    			break;
    		}
    		else{
	    		distances[j].value = sorted_array[i].value;
	    		distances[j].position = sorted_array[i].position;
	    		j++;
    		}
    		
    	}
        
    }
    for(i = 0; i<j; i++){
    	printf("Found distances are: %f\n",(float)distances[i].position*FS/2/FFT_PTS*C/(2*BETA));
    }

    
    printf("Exp --- completed\n");

}
