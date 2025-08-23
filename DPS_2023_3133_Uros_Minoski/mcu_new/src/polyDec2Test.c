#include <stdio.h>
#include <stdlib.h>
#include <string.h>   /* strerror */
#include <errno.h>    /* errno */
#include "tistdtypes.h"
#include "polyDec2.h"

struct cmpx						/* Q15 format */
{
	Int16 re;
	Int16 im;
};
typedef struct cmpx complex;

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

/* ---- Coeffs/state must be at file scope if you want to place them via pragma ---- */
#pragma DATA_SECTION(w, ".bss:fir");
#pragma DATA_SECTION(h, ".const:fir");
#pragma DATA_SECTION(xblk, ".bss:fir");
#pragma DATA_SECTION(y, ".bss:fir");
#pragma DATA_SECTION(yFFT, ".bss:fir");

Int16 w[NUM_TAPS];
Int16 h[NUM_TAPS];
Int16 xblk[BLK_SIZE];
Int16 y[OUT_NUM_DATA];

Int16 yFFT[OUT_NUM_DATA];

extern 	Uint16 hwafft_1024pts(Int32 *, Int32 *, Int16, Int16);
extern 	Uint16 hwafft_br(Int32 *, Int32 *, Int16);
static 	Int16 abs16_sat(Int16 a);
int top2_nms_abs(const complex *x, int n, int radius,
                 int *i1, Int16 *v1, int *i2, Int16 *v2);

int main(void)
{
    /* ---- Declarations FIRST (C89) ---- */
    const char *inFile    	= "..\\data\\mixChirp_q15.txt";
	const char *coeffFile 	= "..\\data\\firCoeff_q15.txt";
    const char *outFile   	= "..\\data\\mixChirpDec_q15.txt";
	const char *outFFTFile  = "..\\data\\mixChirpDecFFT_q15.txt";

    FILE *fpIn;
    FILE *fpCoeff;
    FILE *fpOut;
	FILE *fpOutFFT;

    Int16 index;             	/* delay-line index */
    Int16 i;
    int n_read;
    int out_this;          /* broj izlaza iz trenutnog bloka */
    long total_in = 0;
    long total_out = 0;    /* koliko smo popunili u y[] */
	
	Int16 val1, val2;
	int idx1, idx2;
	int found;
	
	const float factor = 0.0183125;

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
        if (fscanf(fpCoeff, "%d", &h[i]) != 1) {
            fprintf(stderr, "Error reading coefficient %d from '%s'\n", (int)i, coeffFile);
            fclose(fpIn); fclose(fpCoeff); fclose(fpOut);
            return 1;
        }
    }
	
	fclose(fpCoeff);

    /* Init state and index */
    for (i = 0; i < NUM_TAPS; i++) w[i] = 0;
    index = 0;

    // /* Read input samples */
    // nIn = 0;
    // while (nIn < NUM_DATA && fscanf(fpIn, "%hd", &x[nIn]) == 1) {
        // nIn++;
    // }
    // if (nIn == 0 || nIn < NUM_DATA) {
        // fprintf(stderr, "No input samples read from '%s'\n", inFile);
        // fclose(fpIn); fclose(fpCoeff); fclose(fpOut);
        // return 1;
    // }

    // /* Run processing (adjust signature if yours differs) */
    // polyDec2(x, (Int16)nIn, h, NUM_TAPS, y, w, &index);
	
	/* čitaj i obrađuj po blokovima do EOF */
    for (;;) {
        n_read = 0;
        while (n_read < BLK_SIZE && fscanf(fpIn, "%d", &xblk[n_read]) == 1) {
            n_read++;
        }
        if (n_read == 0) break;  /* EOF */

        polyDec2(xblk, (Int16)n_read, h, NUM_TAPS, &y[total_out], w, &index);
        out_this = n_read / DECIM;

        /* zaštita od prelivanja izlaznog bafera */
        if (total_out + out_this > OUT_NUM_DATA) {
            out_this = (int)(OUT_NUM_DATA - total_out);
        }

        total_in  += n_read;
        total_out += out_this;

        if (total_out >= OUT_NUM_DATA) {
            break;  /* popunili smo ceo y */
        }
    }

    /* Write output */
    for (i = 0; i < OUT_NUM_DATA; i++) {
        if (fprintf(fpOut, "%d\n", y[i]) < 0) {
            fprintf(stderr, "Error writing output at index %d to '%s'\n", (int)i, outFile);
            fclose(fpIn); fclose(fpCoeff); fclose(fpOut);
            return 1;
        }
    }

    fclose(fpIn);
    fclose(fpOut);
	
	fpOutFFT = fopen(outFFTFile, "w");
    if (!fpOutFFT) {
        fprintf(stderr, "Error opening input file '%s': %s\n", outFFTFile, strerror(errno));
        return 1;
    }
	
	for (i=0; i<FFT_PTS; i++) {
        X[i].re = y[i];
        X[i].im = 0;
	}

    /* Start FFT */
    hwafft_br((Int32 *)X, (Int32 *)temp, FFT_PTS); /* Arrange X[] in bit reversal order and store in temp */
    hwafft_1024pts((Int32 *)temp, (Int32 *)X, FFT_FLAG, SCALE_FLAG);
	
	for (i = 0; i < OUT_NUM_DATA; i++) {
        if (fprintf(fpOutFFT, "%hd %hd\n", X[i].re, X[i].im) < 0) {
            fprintf(stderr, "Error writing output at index %d to '%s'\n", (int)i, outFFTFile);
            fclose(fpOutFFT);
            return 1;
        }
    }
	
	// for (i=0; i<OUT_NUM_DATA; i++) {
		// yFFT[i] = X[i].re;
	// }
	
	fclose(fpOutFFT);
	
	found = top2_nms_abs(X, OUT_NUM_DATA/2, 10, &idx1, &val1, &idx2, &val2);
	
	if (found == 0) {
        printf("Nema pikova.\n");
    } else if (found == 1) {
        printf("Pik1: k=%.3f m, amp=%d\n", idx1 * factor, (int)val1);
    } else { /* found == 2 */
        printf("Pik1: k=%.3f m, amp=%d\n", idx1 * factor, (int)val1);
        printf("Pik2: k=%.3f m, amp=%d\n", idx2 * factor, (int)val2);
    }
    	
    printf("\nExp --- completed\n");
    return 0;
}

static Int16 abs16_sat(Int16 a) {
    return (a == (Int16)-32768) ? (Int16)32767 : (a < 0 ? (Int16)(-a) : a);
}

/* Nađi 1–2 najveća pika po |x| uz potiskivanje prozora ±radius oko prvog.
   x,n      : ulazni niz i dužina
   radius   : poluprečnik zabrane oko prvog pika (u uzorcima/binovima)
   i1,v1    : izlaz (indeks i amplituda 1. pika, po apsolutnoj vrednosti)
   i2,v2    : izlaz (indeks i amplituda 2. pika, ako postoji)
   return   : 1 ili 2 (koliko je pikova nađeno)
*/
int top2_nms_abs(const complex *x, int n, int radius,
                 int *i1, Int16 *v1, int *i2, Int16 *v2) {
	int k, a = -1, b = -1, d = 0;
	Int16 va = 0, vb = 0, v = 0;
	
	/* 1) Globalni maksimum po |x| */
	for (k=0; k<n; k++) {
		v = abs16_sat(x[k].re);
		if (a < 0 || v > va) { a = k; va = v; }
	}
	if (a < 0) return 0;
	
	*i1 = a; *v1 = va;

	/* 2) Drugi maksimum van prozora [a - radius, a + radius] */
	for (k=0; k<n; k++) {
		d = k - a; if (d < 0) d = -d;
		if (d <= radius) continue;
		
		v = abs16_sat(x[k].re);
		if (b < 0 || v > vb) {b = k; vb = v;}
	}
	if (b < 0) return 1;
	
	*i2 = b; *v2 = vb;
	return 2;
}
