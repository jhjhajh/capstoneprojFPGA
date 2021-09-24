#include "ap_fixed.h"
#include "hls_stream.h"

#define LAYER0_I 12
#define LAYER0_O 12
#define LAYER1_I 12
#define LAYER1_O 48
#define LAYER2_I 48
#define LAYER2_O 36
#define LAYER3_I 36
#define LAYER3_O 24
#define LAYER4_I 24
#define LAYER4_O 12
#define LAYER5_I 12
#define LAYER5_O 6

        float input[LAYER0_I] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
	float weights_0[LAYER0_O][LAYER0_I] = {{1}};
	float weights_1[LAYER1_O][LAYER1_I] = {{1}};
	float weights_2[LAYER2_O][LAYER2_I] = {{1}};
	float weights_3[LAYER3_O][LAYER3_I] = {{1}};
	float weights_4[LAYER4_O][LAYER4_I] = {{1}};
	float weights_5[LAYER5_O][LAYER5_I] = {{1}};
	float bias_0[LAYER1_I] = {0};
	float bias_1[LAYER2_I] = {0};
	float bias_2[LAYER3_I] = {0};
	float bias_3[LAYER4_I] = {0};
	float bias_4[LAYER4_I] = {0};
	float bias_5[LAYER5_I] = {0};

struct AXI_L {
	float data;
	bool last = false;
};







// #define FLOAT_WIDTH 16
// #define INT_WIDTH 4

// typedef ap_fixed<FLOAT_WIDTH, INT_WIDTH> floatA_t;
//abstract datatype
typedef float DTYPE;
