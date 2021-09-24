#include "ap_fixed.h"

template <class X, int size_in, int offset> class dot {
public:
	X a_int[size_in],b_int[size_in];
	dot() {
	}
	void calculate(X a[size_in], X b[size_in], X &out) {
		#pragma HLS array_partition variable=a_int complete
		#pragma HLS array_partition variable=b_int complete
		X product = 0;

		for(int i = 0; i < size_in; i++) {
			#pragma HLS pipeline
			a_int[i] = a[i+offset];
		}
		for(int i = 0; i < size_in; i++) {
			#pragma HLS pipeline
			b_int[i] = b[i+offset];
		}

		for(int i = 0; i < size_in; i++) {
			#pragma HLS unroll
			product += a_int[i] * b_int[i];
		}
		out = product;
	}
};

template <class X>
X relu_func(T a) {
	if (a > 0) {
		return a;
	} else {
		return 0;
	}
};

template <class X>
X sigmoid_func(T a) {
	return (1 - a) * a;
};
