

#define  NUM_TAPS   50
#define  NUM_DATA   2048
#define FACTOR 2
#define NUM_DATA_OUTPUT NUM_DATA/FACTOR
#define NUM_TAPS_PER_PHASE NUM_TAPS/FACTOR

void polyphaseDecimation(Int16 *x, Int16 blkSize,
			  Int16 *h, Int16 order,
              Int16 *y,
              Int16 *w, Int16 *index);
