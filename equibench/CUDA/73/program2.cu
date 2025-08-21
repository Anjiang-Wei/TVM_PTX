
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
  T_multiply[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] = ((DepthwiseConv2d[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 184))]) * (max(min(((DepthwiseConv2d[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 184))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ DepthwiseConv2d) {
  float DepthwiseConv2d_local[120];
  __shared__ float PaddedInput_shared[33120];
  __shared__ float placeholder_shared[552];
  for (int j_c_outer_inner_init = 0; j_c_outer_inner_init < 3; ++j_c_outer_inner_init) {
    for (int c_c_outer_inner_init = 0; c_c_outer_inner_init < 2; ++c_c_outer_inner_init) {
      for (int j_c_inner_init = 0; j_c_inner_init < 5; ++j_c_inner_init) {
        DepthwiseConv2d_local[((((j_c_outer_inner_init * 10) + (j_c_inner_init * 2)) + c_c_outer_inner_init))] = 0.000000e+00f;
        DepthwiseConv2d_local[(((((j_c_outer_inner_init * 10) + (j_c_inner_init * 2)) + c_c_outer_inner_init) + 30))] = 0.000000e+00f;
        DepthwiseConv2d_local[(((((j_c_outer_inner_init * 10) + (j_c_inner_init * 2)) + c_c_outer_inner_init) + 60))] = 0.000000e+00f;
        DepthwiseConv2d_local[(((((j_c_outer_inner_init * 10) + (j_c_inner_init * 2)) + c_c_outer_inner_init) + 90))] = 0.000000e+00f;
      }
    }
  }
  for (int dj_outer_outer = 0; dj_outer_outer < 3; ++dj_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 360; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 92) + ((int)threadIdx.x)))] = (((((1 <= (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 92) + ((int)threadIdx.x)) % 8280) / 2760) + (((int)blockIdx.x) % 15))) && ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 92) + ((int)threadIdx.x)) % 8280) / 2760) + (((int)blockIdx.x) % 15)) < 16)) && (1 <= (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 92) + ((int)threadIdx.x)) % 2760) / 184) + dj_outer_outer))) && ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 92) + ((int)threadIdx.x)) % 2760) / 184) + dj_outer_outer) < 16)) ? placeholder[((((((((((int)blockIdx.x) / 15) * 165600) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 92) + ((int)threadIdx.x)) / 8280) * 41400)) + ((((int)blockIdx.x) % 15) * 2760)) + (dj_outer_outer * 184)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 92) + ((int)threadIdx.x)) % 8280)) - 2944))] : 0.000000e+00f);
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 92) + ((int)threadIdx.x)))] = placeholder1[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 92) + ((int)threadIdx.x)) / 184) * 552) + (dj_outer_outer * 184)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 92) + ((int)threadIdx.x)) % 184)))];
    }
    __syncthreads();
    for (int di_outer_inner = 0; di_outer_inner < 3; ++di_outer_inner) {
      for (int j_c_outer_inner = 0; j_c_outer_inner < 3; ++j_c_outer_inner) {
        for (int c_c_outer_inner = 0; c_c_outer_inner < 2; ++c_c_outer_inner) {
          for (int j_c_inner = 0; j_c_inner < 5; ++j_c_inner) {
            DepthwiseConv2d_local[((((j_c_outer_inner * 10) + (j_c_inner * 2)) + c_c_outer_inner))] = (DepthwiseConv2d_local[((((j_c_outer_inner * 10) + (j_c_inner * 2)) + c_c_outer_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 23) * 8280) + (di_outer_inner * 2760)) + (j_c_outer_inner * 920)) + (j_c_inner * 184)) + ((((int)threadIdx.x) % 23) * 2)) + c_c_outer_inner))] * placeholder_shared[((((di_outer_inner * 184) + ((((int)threadIdx.x) % 23) * 2)) + c_c_outer_inner))]));
            DepthwiseConv2d_local[(((((j_c_outer_inner * 10) + (j_c_inner * 2)) + c_c_outer_inner) + 30))] = (DepthwiseConv2d_local[(((((j_c_outer_inner * 10) + (j_c_inner * 2)) + c_c_outer_inner) + 30))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 23) * 8280) + (di_outer_inner * 2760)) + (j_c_outer_inner * 920)) + (j_c_inner * 184)) + ((((int)threadIdx.x) % 23) * 2)) + c_c_outer_inner) + 46))] * placeholder_shared[(((((di_outer_inner * 184) + ((((int)threadIdx.x) % 23) * 2)) + c_c_outer_inner) + 46))]));
            DepthwiseConv2d_local[(((((j_c_outer_inner * 10) + (j_c_inner * 2)) + c_c_outer_inner) + 60))] = (DepthwiseConv2d_local[(((((j_c_outer_inner * 10) + (j_c_inner * 2)) + c_c_outer_inner) + 60))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 23) * 8280) + (di_outer_inner * 2760)) + (j_c_outer_inner * 920)) + (j_c_inner * 184)) + ((((int)threadIdx.x) % 23) * 2)) + c_c_outer_inner) + 92))] * placeholder_shared[(((((di_outer_inner * 184) + ((((int)threadIdx.x) % 23) * 2)) + c_c_outer_inner) + 92))]));
            DepthwiseConv2d_local[(((((j_c_outer_inner * 10) + (j_c_inner * 2)) + c_c_outer_inner) + 90))] = (DepthwiseConv2d_local[(((((j_c_outer_inner * 10) + (j_c_inner * 2)) + c_c_outer_inner) + 90))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 23) * 8280) + (di_outer_inner * 2760)) + (j_c_outer_inner * 920)) + (j_c_inner * 184)) + ((((int)threadIdx.x) % 23) * 2)) + c_c_outer_inner) + 138))] * placeholder_shared[(((((di_outer_inner * 184) + ((((int)threadIdx.x) % 23) * 2)) + c_c_outer_inner) + 138))]));
          }
        }
      }
    }
  }
  for (int j_inner = 0; j_inner < 15; ++j_inner) {
    for (int c_inner = 0; c_inner < 2; ++c_inner) {
      DepthwiseConv2d[((((((((((int)blockIdx.x) / 15) * 165600) + ((((int)threadIdx.x) / 23) * 41400)) + ((((int)blockIdx.x) % 15) * 2760)) + (j_inner * 184)) + ((((int)threadIdx.x) % 23) * 2)) + c_inner))] = DepthwiseConv2d_local[(((j_inner * 2) + c_inner))];
      DepthwiseConv2d[(((((((((((int)blockIdx.x) / 15) * 165600) + ((((int)threadIdx.x) / 23) * 41400)) + ((((int)blockIdx.x) % 15) * 2760)) + (j_inner * 184)) + ((((int)threadIdx.x) % 23) * 2)) + c_inner) + 46))] = DepthwiseConv2d_local[((((j_inner * 2) + c_inner) + 30))];
      DepthwiseConv2d[(((((((((((int)blockIdx.x) / 15) * 165600) + ((((int)threadIdx.x) / 23) * 41400)) + ((((int)blockIdx.x) % 15) * 2760)) + (j_inner * 184)) + ((((int)threadIdx.x) % 23) * 2)) + c_inner) + 92))] = DepthwiseConv2d_local[((((j_inner * 2) + c_inner) + 60))];
      DepthwiseConv2d[(((((((((((int)blockIdx.x) / 15) * 165600) + ((((int)threadIdx.x) / 23) * 41400)) + ((((int)blockIdx.x) % 15) * 2760)) + (j_inner * 184)) + ((((int)threadIdx.x) % 23) * 2)) + c_inner) + 138))] = DepthwiseConv2d_local[((((j_inner * 2) + c_inner) + 90))];
    }
  }
}


