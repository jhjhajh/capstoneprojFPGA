#include "math_func.h"
#include "define.h"
#include "hls_stream.h"

//main
void mlp_nn(hls::stream<AXIS_wLAST>& S_AXIS, hls::stream<AXIS_wLAST>& M_AXIS) {
	//initialization
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis port=S_AXIS
	#pragma HLS INTERFACE axis port=M_AXIS
/*
	float input[LAYER0_I];
	float weights_0[LAYER0_O][LAYER0_I];
	float weights_1[LAYER1_O][LAYER1_I];
	float weights_2[LAYER2_O][LAYER2_I];
	float weights_3[LAYER3_O][LAYER3_I];
	float weights_4[LAYER4_O][LAYER4_I];
	float weights_5[LAYER5_O][LAYER5_I];
	float bias_0[LAYER1_I];
	float bias_1[LAYER2_I];
	float bias_2[LAYER3_I];
	float bias_3[LAYER4_I];
	float bias_4[LAYER4_I];
	float bias_5[LAYER5_I];
	float buffer_0[LAYER0_O];
	float buffer_1[LAYER1_O];
	float buffer_2[LAYER2_O];
	float buffer_3[LAYER3_O];
	float buffer_4[LAYER4_O];
	float buffer_5[LAYER5_O];
*/
	int flag = 0;

	dot<float, LAYER0_I, 0> dot_1;
	dot<float, LAYER0_O, 0> dot_2;
	while (true) {
		AXI_L in, out;
		if (flag == 0) {
			S_AXIS >> in;
			if (in.data == 0) {
				flag = 1;
			}
		} else if (flag == 1){
			retrieve_inputs:for (int i = 0; i < LAYER0_I; i++) {
				S_AXIS >> in;
				input[i] = in.data;
			}
			flag = 2;
		} else if (flag == 2) {
			float val;
			layer0:for (int i = 0; i < LAYER0_O; i++) {
				#pragma HLS pipeline
				dot_1.calculate(input, weights_0[i], val);
				buffer_0[i] = relu_func<float>(val + bias_0[i]);
			}
			layer1:for (int i = 0; i < LAYER1_O; i++) {
				#pragma HLS pipeline
				dot_2.calculate(buffer_0, weights_1[i], val);
				buffer_1[i] = relu_func<float>(val + bias_1[i]);
			}
			layer2:for (int i = 0; i < LAYER2_O; i++) {
				#pragma HLS pipeline
				dot_1.calculate(buffer_1, weights_2[i], val);
				buffer_2[i] = relu_func<float>(val + bias_2[i]);
			}
			layer3:for (int i = 0; i < LAYER3_O; i++) {
				#pragma HLS pipeline
				dot_1.calculate(buffer_2, weights_3[i], val);
				buffer_3[i] = relu_func<float>(val + bias_3[i]);
			}
			layer4:for (int i = 0; i < LAYER4_O; i++) {
				#pragma HLS pipeline
				dot_1.calculate(buffer_3, weights_4[i], val);
				buffer_4[i] = relu_func<float>(val + bias_4[i]);
			}
			layer5:for (int i = 0; i < LAYER5_O; i++) {
				#pragma HLS pipeline
				dot_1.calculate(buffer_4, weights_5[i], val);
				buffer_5[i] = sigmoid_func<float>(val + bias_5[i]);
			}
			output:for (int i = 0; i < LAYER5_O; i++) {
				out.data = buffer_5[i];
				if (i == (LAYER5_O - 1)) {
					out.isLast = true;
				}
				M_AXIS << out;
			}
			flag = 1;
		}
	}
}// #include "math_func.h"
// #include "define.h"
// #include "hls_stream.h"

// //main
// void mlp_nn(hls::stream<AXIS_wLAST>& S_AXIS, hls::stream<AXIS_wLAST>& M_AXIS) {
// 	//initialization
// 	#pragma HLS INTERFACE ap_ctrl_none port=return
// 	#pragma HLS INTERFACE axis port=S_AXIS
// 	#pragma HLS INTERFACE axis port=M_AXIS

// 	float input[LAYER0_I];
// 	float weights_0[LAYER0_O][LAYER0_I];
// 	float weights_1[LAYER1_O][LAYER1_I];
// 	float weights_2[LAYER2_O][LAYER2_I];
// 	float weights_3[LAYER3_O][LAYER3_I];
// 	float weights_4[LAYER4_O][LAYER4_I];
// 	float weights_5[LAYER5_O][LAYER5_I];
// 	float bias_0[LAYER1_I];
// 	float bias_1[LAYER2_I];
// 	float bias_2[LAYER3_I];
// 	float bias_3[LAYER4_I];
// 	float bias_4[LAYER4_I];
// 	float bias_5[LAYER5_I];
// 	float buffer_0[LAYER0_O];
// 	float buffer_1[LAYER1_O];
// 	float buffer_2[LAYER2_O];
// 	float buffer_3[LAYER3_O];
// 	float buffer_4[LAYER4_O];
// 	float buffer_5[LAYER5_O];



// 	int flag = 0;

// 	dot<float, LAYER0_I, 0> dot_1;
// 	dot<float, LAYER0_O, 0> dot_2;
// 	while (true) {
// 		AXI_L in, out;
// 		if (flag == 0) {
// 			loadweights0:for (int i = 0; i < LAYER0_O; i++) {
// 				for (int j = 0; j < LAYER0_I; j++) {
// 					S_AXIS >> in;
// 					weights_0[i][j] = in.data;
// 				}
// 			}
// 			loadweights1:for (int i = 0; i < LAYER1_O; i++) {
// 				for (int j = 0; j < LAYER1_I; j++) {
// 					S_AXIS >> in;
// 					weights_1[i][j] = in.data;
// 				}
// 			}
// 			loadweights2:for (int i = 0; i < LAYER2_O; i++) {
// 				for (int j = 0; j < LAYER2_I; j++) {
// 					S_AXIS >> in;
// 					weights_2[i][j] = in.data;
// 				}
// 			}
// 			loadweights3:for (int i = 0; i < LAYER3_O; i++) {
// 				for (int j = 0; j < LAYER3_I; j++) {
// 					S_AXIS >> in;
// 					weights_3[i][j] = in.data;				}
// 			}
// 			loadweights4:for (int i = 0; i < LAYER4_O; i++) {
// 				for (int j = 0; j < LAYER4_I; j++) {
// 					S_AXIS >> in;
// 					weights_4[i][j] = in.data;				}
// 			loadweights5:for (int i = 0; i < LAYER5_O; i++) {
// 				for (int j = 0; j < LAYER4_I; j++) {
// 					S_AXIS >> in;
// 					weights_4[i][j] = in.data;				}
// 			}
// 			loadbias0:for (int i = 0; i < LAYER1_I; i++) {
// 				S_AXIS >> in;
// 				bias_0[i] = in.data;
// 			}
// 			loadbias1:for (int i = 0; i < LAYER2_I; i++) {
// 				S_AXIS >> in;
// 				bias_1[i] = in.data;
// 			}
// 			loadbias2:for (int i = 0; i < LAYER3_I; i++) {
// 				S_AXIS >> in;
// 				bias_2[i] = in.data;
// 			}
// 			loadbias3:for (int i = 0; i < LAYER4_I; i++) {
// 				S_AXIS >> in;
// 				bias_3[i] = in.data;
// 			}
// 			loadbias4:for (int i = 0; i < LAYER5_I; i++) {
// 				S_AXIS >> in;
// 				bias_4[i] = in.data;
// 			}
// 			loadbias5:for (int i = 0; i < LAYER5_I; i++) {
// 				S_AXIS >> in;
// 				bias_5[i] = in.data;
// 			}
// 			flag = 1;
// 		}  else if (flag == 1) {
// 			S_AXIS >> in;
// 			if (in.data == 0) {
// 				flag = 2;
// 			}
// 		} else if (flag == 2){
// 			retrieve_inputs:for (int i = 0; i < LAYER0_I; i++) {
// 				S_AXIS >> in;
// 				input[i] = in.data;
// 			}
// 			flag = 3;
// 		} else if (flag == 3) {
// 			float val;
// 			layer0:for (int i = 0; i < LAYER0_O; i++) {
// 				#pragma HLS pipeline
// 				dot_1.calculate(input, weights_0[i], val);
// 				buffer_0[i] = relu_func<float>(val + bias_0[i]);
// 			}
// 			layer1:for (int i = 0; i < LAYER1_O; i++) {
// 				#pragma HLS pipeline
// 				dot_2.calculate(buffer_0, weights_1[i], val);
// 				buffer_1[i] = relu_func<float>(val + bias_1[i]);
// 			}
// 			layer2:for (int i = 0; i < LAYER2_O; i++) {
// 				#pragma HLS pipeline
// 				dot_1.calculate(buffer_1, weights_2[i], val);
// 				buffer_2[i] = relu_func<float>(val + bias_2[i]);
// 			}
// 			layer3:for (int i = 0; i < LAYER3_O; i++) {
// 				#pragma HLS pipeline
// 				dot_1.calculate(buffer_2, weights_3[i], val);
// 				buffer_3[i] = relu_func<float>(val + bias_3[i]);
// 			}
// 			layer4:for (int i = 0; i < LAYER4_O; i++) {
// 				#pragma HLS pipeline
// 				dot_1.calculate(buffer_3, weights_4[i], val);
// 				buffer_4[i] = relu_func<float>(val + bias_4[i]);
// 			}
// 			layer5:for (int i = 0; i < LAYER5_O; i++) {
// 				#pragma HLS pipeline
// 				dot_1.calculate(buffer_4, weights_5[i], val);
// 				buffer_5[i] = sigmoid_func<float>(val + bias_5[i]);
// 			}
// 			output:for (int i = 0; i < LAYER5_O; i++) {
// 				out.data = buffer_5[i];
// 				if (i == (LAYER5_O - 1)) {
// 					out.isLast = true;
// 				}
// 				M_AXIS << out;
// 			}
// 			flag = 2;
// 		}
// 	}
// }
