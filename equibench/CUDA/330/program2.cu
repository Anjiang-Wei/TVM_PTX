
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
  T_multiply[(((int)blockIdx.x))] = ((DepthwiseConv2d[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) % 240))]) * (max(min(((DepthwiseConv2d[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) % 240))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ DepthwiseConv2d) {
  float DepthwiseConv2d_local[80];
  __shared__ float PaddedInput_shared[10230];
  __shared__ float placeholder_shared[30];
  for (int j_c_outer_inner_init = 0; j_c_outer_inner_init < 8; ++j_c_outer_inner_init) {
    for (int c_c_inner_init = 0; c_c_inner_init < 5; ++c_c_inner_init) {
      DepthwiseConv2d_local[(((j_c_outer_inner_init * 5) + c_c_inner_init))] = 0.000000e+00f;
      DepthwiseConv2d_local[((((j_c_outer_inner_init * 5) + c_c_inner_init) + 40))] = 0.000000e+00f;
    }
  }
  for (int dj_outer_outer = 0; dj_outer_outer < 3; ++dj_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 10; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 35; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1120) + (((int)threadIdx.x) * 35)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 10230) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) < 293) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1120) + (((int)threadIdx.x) * 35)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 310) * 310) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + (((((int)threadIdx.x) * 35) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 10)) % 31) * 10)) + (((((int)threadIdx.x) * 35) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 10)))] = (((310 <= (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1120) + (((int)threadIdx.x) * 35)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s)) && (1 <= (dj_outer_outer + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + (((((int)threadIdx.x) * 35) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 10)) % 31)))) ? placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1120) + (((int)threadIdx.x) * 35)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 310) * 7680) + (dj_outer_outer * 240)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + (((((int)threadIdx.x) * 35) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 10)) % 31) * 240)) + (((int)blockIdx.x) * 10)) + (((((int)threadIdx.x) * 35) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 10)) - 7920))] : 0.000000e+00f);
          }
        }
      }
    }
    if (((int)threadIdx.x) < 30) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((((((int)threadIdx.x) / 10) * 720) + (dj_outer_outer * 240)) + (((int)blockIdx.x) * 10)) + (((int)threadIdx.x) % 10)))];
    }
    __syncthreads();
    for (int j_c_outer_inner = 0; j_c_outer_inner < 8; ++j_c_outer_inner) {
      for (int di_inner = 0; di_inner < 3; ++di_inner) {
        for (int c_c_inner = 0; c_c_inner < 5; ++c_c_inner) {
          DepthwiseConv2d_local[(((j_c_outer_inner * 5) + c_c_inner))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 5) + c_c_inner))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 620) + (di_inner * 310)) + ((((int)threadIdx.x) & 1) * 160)) + (j_c_outer_inner * 20)) + c_c_inner))] * placeholder_shared[(((di_inner * 10) + c_c_inner))]));
          DepthwiseConv2d_local[((((j_c_outer_inner * 5) + c_c_inner) + 40))] = (DepthwiseConv2d_local[((((j_c_outer_inner * 5) + c_c_inner) + 40))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 1) * 620) + (di_inner * 310)) + ((((int)threadIdx.x) & 1) * 160)) + (j_c_outer_inner * 20)) + c_c_inner) + 5))] * placeholder_shared[((((di_inner * 10) + c_c_inner) + 5))]));
        }
      }
    }
  }
  for (int j_inner = 0; j_inner < 8; ++j_inner) {
    for (int c_inner = 0; c_inner < 5; ++c_inner) {
      DepthwiseConv2d[(((((((int)threadIdx.x) * 1920) + (j_inner * 240)) + (((int)blockIdx.x) * 10)) + c_inner))] = DepthwiseConv2d_local[(((j_inner * 5) + c_inner))];
      DepthwiseConv2d[((((((((int)threadIdx.x) * 1920) + (j_inner * 240)) + (((int)blockIdx.x) * 10)) + c_inner) + 5))] = DepthwiseConv2d_local[((((j_inner * 5) + c_inner) + 40))];
    }
  }
}


