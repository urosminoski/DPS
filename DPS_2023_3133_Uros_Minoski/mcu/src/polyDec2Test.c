#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "tistdtypes.h"
#include "polyDec2.h"

/* ---- Kompleksni tip (Q15) ---- */
typedef struct { Int16 re, im; } complex;

/* ---- HWA FFT ---- */
#define FFT_FLAG   0
#define IFFT_FLAG  1
#define SCALE_FLAG 0
#define FFT_PTS    1024   /* hwafft_1024pts */

/* Ako polyDec2 decimuje: stavi NUM_DATA_OUTPUT; inače NUM_DATA. */
#ifndef NOUT_PER_BLOCK
#define NOUT_PER_BLOCK  NUM_DATA
#endif

#ifndef MIN
#define MIN(a,b) ((a)<(b)?(a):(b))
#endif

/* ---- HWA prototipi ---- */
extern Uint16 hwafft_1024pts(Int32 *, Int32 *, Int16, Int16);
extern Uint16 hwafft_br     (Int32 *, Int32 *, Int16);

/* ---- Sekcije / poravnanje (TI pragmas) ---- */
#pragma DATA_SECTION(X, "data_br_buf");
#pragma DATA_ALIGN(X, 2*FFT_PTS)
static complex X[FFT_PTS];

#pragma DATA_SECTION(temp, "scratch_buf");
#pragma DATA_ALIGN(temp, 2*FFT_PTS)
static complex temp[FFT_PTS];   /* scratch za bit-reversal */

#pragma DATA_SECTION(h, ".const:fir");
#pragma DATA_SECTION(w, ".bss:fir");
static Int16 w[NUM_TAPS];
static Int16 h[NUM_TAPS];

int main(void)
{
    /* Deklaracije (C89) */
    FILE *xin_file, *h_file, *xout_file, *xoutFFT_file;
    Int16 xin[NUM_DATA];
    Int16 xout[NOUT_PER_BLOCK];
    Int16 i, index;
    size_t nb, got, nout, t;
    int j;

    /* Otvori BIN fajlove */
    xin_file     = fopen("..\\data\\mixChirp_q1n.bin", "rb");
    if (!xin_file) { perror("open xin_file"); return 1; }
    h_file       = fopen("..\\data\\firCoeff_q1n.bin", "rb");
    if (!h_file)  { perror("open h_file");  return 1; }
    xout_file    = fopen("..\\data\\xout_q1n.bin", "wb");
    if (!xout_file) { perror("open xout_file"); return 1; }
    xoutFFT_file = fopen("..\\data\\xout_fft.bin", "wb"); /* (re,im) kao parovi Int16 */
    if (!xoutFFT_file) { perror("open xoutFFT_file"); return 1; }

    /* Inicijalizuj stanje filtra */
    memset(w, 0, sizeof(w));
    index = 0;

    /* ---- Učitaj FIR koeficijente: 2*NUM_TAPS bajtova, LE -> Int16 ---- */
    {
        Uint8 hb[2*NUM_TAPS];
        nb = fread(hb, 1u, 2u*NUM_TAPS, h_file);
        for (t = 0; t < nb/2u; t++) {
            Uint16 u = (Uint16)hb[2*t] | ((Uint16)hb[2*t+1] << 8);
            h[t] = (Int16)u;
        }
        /* ako je nb < 2*NUM_TAPS, ostatak h[] ostaje neinic., dopuni nulama: */
        for (; t < (size_t)NUM_TAPS; t++) h[t] = 0;
    }

    /* ---- Glavna petlja: čitaj blokove iz BIN ulaza (8-bit), filtriraj, piši BIN ---- */
    for (;;) {
        Uint8 xb[2*NUM_DATA];
        nb  = fread(xb, 1u, 2u*NUM_DATA, xin_file);  /* čitaj 8-bit bajtove */
        got = nb / 2u;                                /* broj Int16 uzoraka u ovom bloku */
        if (got == 0) break;

        for (t = 0; t < got; t++) {
            Uint16 u = (Uint16)xb[2*t] | ((Uint16)xb[2*t+1] << 8); /* LE -> Int16 */
            xin[t] = (Int16)u;
        }

        /* Filtriraj blok */
        polyDec2(xin, (Int16)got, h, NUM_TAPS, xout, w, &index);

        /* Koliko izlaza pišemo iz ovog bloka */
        nout = MIN((size_t)NOUT_PER_BLOCK, got); /* prilagodi ako decimuješ drugačije */

        /* Upis BIN (svaki Int16 = 2 bajta) – koristi size=2 za 8-bit fajl */
        fwrite(xout, 2u, nout, xout_file);

        if (got < (size_t)NUM_DATA) break; /* poslednji, nepotpuni blok */
    }

    /* ---- FFT nad poslednjim raspoloživim xout prozorom ---- */
    for (i = 0; i < FFT_PTS; i++) {
        X[i].re = (i < (Int16)MIN((size_t)FFT_PTS, nout)) ? xout[i] : 0;
        X[i].im = 0;
    }
    hwafft_br((Int32 *)X,   (Int32 *)temp, FFT_PTS);
    hwafft_1024pts((Int32 *)temp, (Int32 *)X, FFT_FLAG, SCALE_FLAG);

    /* Upis FFT rezultata BIN: (re,im) kao par Int16 */
    for (j = 0; j < FFT_PTS; j++) {
        fwrite(&X[j].re, 2u, 1u, xoutFFT_file);
        fwrite(&X[j].im, 2u, 1u, xoutFFT_file);
    }

    fclose(xin_file);
    fclose(h_file);
    fclose(xout_file);
    fclose(xoutFFT_file);
    return 0;
}
