
#ifdef _WIN32
  using uint = unsigned int;
  using uchar = unsigned char;
  using ushort = unsigned short;
  using int64_t = long long;
  using uint64_t = unsigned long long;
#else
  #define uint unsigned int
  #define uchar unsigned char
  #define ushort unsigned short
  #define int64_t long long
  #define uint64_t unsigned long long
#endif
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_multiply, float* __restrict__ DepthwiseConv2d, float* __restrict__ placeholder) {
  T_multiply[(((((int)blockIdx.x) * 28) + ((int)threadIdx.x)))] = ((DepthwiseConv2d[(((((int)blockIdx.x) * 28) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 28) + ((int)threadIdx.x)) % 672))]) * (max(min(((DepthwiseConv2d[(((((int)blockIdx.x) * 28) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 28) + ((int)threadIdx.x)) % 672))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ DepthwiseConv2d) {
  float DepthwiseConv2d_local[4];
  __shared__ float PaddedInput_shared[1760];
  __shared__ float placeholder_shared[800];
  for (int j_c_inner_init = 0; j_c_inner_init < 2; ++j_c_inner_init) {
    for (int c_c_inner_init = 0; c_c_inner_init < 2; ++c_c_inner_init) {
      DepthwiseConv2d_local[(((j_c_inner_init * 2) + c_c_inner_init))] = 0.000000e+00f;
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 55; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)))] = (((((2 <= (((((int)blockIdx.x) / 42) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer / 11))) && ((((((int)blockIdx.x) / 42) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer / 11)) < 17)) && (2 <= ((((((int)blockIdx.x) % 42) / 21) * 8) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 11)))) && (((((((int)blockIdx.x) % 42) / 21) * 8) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 11)) < 17)) ? placeholder[(((((((((((int)blockIdx.x) / 42) * 20160) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer / 11) * 10080)) + (((((int)blockIdx.x) % 42) / 21) * 5376)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 11) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + ((int)threadIdx.x)) - 21504))] : 0.000000e+00f);
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 25; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
    placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 32) + ((int)threadIdx.x)))] = placeholder1[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + ((((int)blockIdx.x) % 21) * 32)) + ((int)threadIdx.x)))];
  }
  __syncthreads();
  for (int dj_outer_inner = 0; dj_outer_inner < 5; ++dj_outer_inner) {
    for (int di_inner = 0; di_inner < 5; ++di_inner) {
      for (int j_c_inner = 0; j_c_inner < 2; ++j_c_inner) {
        for (int c_c_inner = 0; c_c_inner < 2; ++c_c_inner) {
          DepthwiseConv2d_local[(((j_c_inner * 2) + c_c_inner))] = (DepthwiseConv2d_local[(((j_c_inner * 2) + c_c_inner))] + (PaddedInput_shared[(((((((di_inner * 352) + ((((int)threadIdx.x) >> 4) * 128)) + (j_c_inner * 64)) + (dj_outer_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)) + c_c_inner))] * placeholder_shared[(((((di_inner * 160) + (dj_outer_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)) + c_c_inner))]));
        }
      }
    }
  }
  for (int j_inner = 0; j_inner < 2; ++j_inner) {
    for (int c_inner = 0; c_inner < 2; ++c_inner) {
      DepthwiseConv2d[((((((((((int)blockIdx.x) / 21) * 2688) + ((((int)threadIdx.x) >> 4) * 1344)) + (j_inner * 672)) + ((((int)blockIdx.x) % 21) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + c_inner))] = DepthwiseConv2d_local[(((j_inner * 2) + c_inner))];
    }
  }
}


