#include "ap_fixed.h"
#include "hls_stream.h"

#define LAYER0_I 562
#define LAYER0_O 562
#define LAYER1_I 562
#define LAYER1_O 128
#define LAYER2_I 128
#define LAYER2_O 96
#define LAYER3_I 96
#define LAYER3_O 48
#define LAYER4_I 48
#define LAYER4_O 12
#define LAYER5_I 12
#define LAYER5_O 6

struct AXI_L {
	float data;
	bool last = false;
};







// #define FLOAT_WIDTH 16
// #define INT_WIDTH 4

// typedef ap_fixed<FLOAT_WIDTH, INT_WIDTH> floatA_t;
//abstract datatype
typedef float DTYPE;