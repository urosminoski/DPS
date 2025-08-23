

#define NUM_TAPS			22
#define BLK_SIZE			80
#define NUM_DATA   			2048
#define DECIM	 			2
#define OUT_NUM_DATA 		NUM_DATA/DECIM

void polyDec2(Int16 *x, Int16 blkSize,
			  Int16 *h, Int16 order,
              Int16 *y,
              Int16 *w, Int16 *index);
