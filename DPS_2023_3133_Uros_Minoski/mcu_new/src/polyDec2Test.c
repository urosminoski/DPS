#include <stdio.h>
#include <stdlib.h>
#include <string.h>   /* strerror */
#include <errno.h>    /* errno */
#include "tistdtypes.h"
#include "polyDec2.h"

/* ---- Coeffs/state must be at file scope if you want to place them via pragma ---- */
#pragma DATA_SECTION(w, ".bss:fir");
Int16 w[NUM_TAPS];

int main(void)
{
    /* ---- Declarations FIRST (C89) ---- */
    const char *inFile    = "..\\data\\mixChirp_q1n.txt";
	const char *coeffFile = "..\\data\\coefficients_integer_for_asm.txt";
    const char *outFile   = "..\\data\\mixChirpDec_q1n.txt";

    FILE *fpIn;
    FILE *fpCoeff;
    FILE *fpOut;

    Int16 x[NUM_DATA];       	/* input */
    Int16 y[OUT_NUM_DATA];   	/* output (decimated) */
    Int16 h[NUM_TAPS];   		/* coeffitients */
    Int16 index;             	/* delay-line index */
    Int16 i;
    int nIn;

    /* ---- Now statements ---- */
    fpIn = fopen(inFile, "r");
    if (!fpIn) {
        fprintf(stderr, "Error opening input file '%s': %s\n", inFile, strerror(errno));
        return 1;
    }

    fpCoeff = fopen(coeffFile, "r");
    if (!fpCoeff) {
        fprintf(stderr, "Error opening coefficient file '%s': %s\n", coeffFile, strerror(errno));
        fclose(fpIn);
        return 1;
    }

    fpOut = fopen(outFile, "w");
    if (!fpOut) {
        fprintf(stderr, "Error opening output file '%s': %s\n", outFile, strerror(errno));
        fclose(fpIn);
        fclose(fpCoeff);
        return 1;
    }

    /* Read coefficients into global h[] */
    for (i = 0; i < NUM_TAPS; i++) {
        if (fscanf(fpCoeff, "%hd", &h[i]) != 1) {
            fprintf(stderr, "Error reading coefficient %d from '%s'\n", (int)i, coeffFile);
            fclose(fpIn); fclose(fpCoeff); fclose(fpOut);
            return 1;
        }
    }

    // /* Init state and index */
    // for (i = 0; i < NUM_TAPS; i++) w[i] = 0;
    // index = 0;

    // /* Read input samples */
    // nIn = 0;
    // while (nIn < NUM_DATA && fscanf(fpIn, "%hd", &x[nIn]) == 1) {
        // nIn++;
    // }
    // if (nIn == 0) {
        // fprintf(stderr, "No input samples read from '%s'\n", inFile);
        // fclose(fpIn); fclose(fpCoeff); fclose(fpOut);
        // return 1;
    // }

    // /* Run processing (adjust signature if yours differs) */
    // polyDec2(x, (Int16)nIn, h, NUM_TAPS, y, w, &index);

    // /* Write output */
    // for (i = 0; i < OUT_NUM_DATA; i++) {
        // if (fprintf(fpOut, "%hd\n", y[i]) < 0) {
            // fprintf(stderr, "Error writing output at index %d to '%s'\n", (int)i, outFile);
            // fclose(fpIn); fclose(fpCoeff); fclose(fpOut);
            // return 1;
        // }
    // }

    fclose(fpIn);
    fclose(fpCoeff);
    fclose(fpOut);
    printf("\nExp --- completed\n");
    return 0;
}
