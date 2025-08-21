
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
  T_multiply[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] = ((DepthwiseConv2d[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 240))]) * (max(min(((DepthwiseConv2d[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 240))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ DepthwiseConv2d) {
  float DepthwiseConv2d_local[32];
  __shared__ float PaddedInput_shared[10200];
  __shared__ float placeholder_shared[120];
  for (int c_c_outer_inner_init = 0; c_c_outer_inner_init < 2; ++c_c_outer_inner_init) {
    for (int i_c_inner_init = 0; i_c_inner_init < 8; ++i_c_inner_init) {
      DepthwiseConv2d_local[(((i_c_inner_init * 2) + c_c_outer_inner_init))] = 0.000000e+00f;
      DepthwiseConv2d_local[((((i_c_inner_init * 2) + c_c_outer_inner_init) + 16))] = 0.000000e+00f;
    }
  }
  for (int di_outer_outer = 0; di_outer_outer < 3; ++di_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 128; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) / 40)) < 255) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + ((int)threadIdx.x)) < 10200) {
          PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + ((int)threadIdx.x)))] = (((1 <= ((((((int)blockIdx.x) / 12) * 16) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) / 40)) / 17)) + di_outer_outer)) && (1 <= ((((((int)blockIdx.x) % 12) / 6) * 16) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) / 40)) % 17)))) ? placeholder[((((((((((((int)blockIdx.x) / 12) * 122880) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) / 40)) / 17) * 7680)) + (di_outer_outer * 7680)) + (((((int)blockIdx.x) % 12) / 6) * 3840)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) / 40)) % 17) * 240)) + ((((int)blockIdx.x) % 6) * 40)) + (((int)threadIdx.x) % 40)) - 7920))] : 0.000000e+00f);
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 2) + (((int)threadIdx.x) / 40)) < 3) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 80) + ((int)threadIdx.x)) < 120) {
          placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 80) + ((int)threadIdx.x)))] = placeholder1[((((((di_outer_outer * 720) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 480)) + ((((int)threadIdx.x) / 40) * 240)) + ((((int)blockIdx.x) % 6) * 40)) + (((int)threadIdx.x) % 40)))];
        }
      }
    }
    __syncthreads();
    for (int c_c_outer_inner = 0; c_c_outer_inner < 2; ++c_c_outer_inner) {
      for (int dj_inner = 0; dj_inner < 3; ++dj_inner) {
        for (int i_c_inner = 0; i_c_inner < 8; ++i_c_inner) {
          DepthwiseConv2d_local[(((i_c_inner * 2) + c_c_outer_inner))] = (DepthwiseConv2d_local[(((i_c_inner * 2) + c_c_outer_inner))] + (PaddedInput_shared[((((((i_c_inner * 1360) + ((((int)threadIdx.x) / 10) * 80)) + (dj_inner * 40)) + ((((int)threadIdx.x) % 10) * 2)) + c_c_outer_inner))] * placeholder_shared[((((dj_inner * 40) + ((((int)threadIdx.x) % 10) * 2)) + c_c_outer_inner))]));
          DepthwiseConv2d_local[((((i_c_inner * 2) + c_c_outer_inner) + 16))] = (DepthwiseConv2d_local[((((i_c_inner * 2) + c_c_outer_inner) + 16))] + (PaddedInput_shared[(((((((i_c_inner * 1360) + ((((int)threadIdx.x) / 10) * 80)) + (dj_inner * 40)) + ((((int)threadIdx.x) % 10) * 2)) + c_c_outer_inner) + 20))] * placeholder_shared[(((((dj_inner * 40) + ((((int)threadIdx.x) % 10) * 2)) + c_c_outer_inner) + 20))]));
        }
      }
    }
  }
  for (int i_inner = 0; i_inner < 8; ++i_inner) {
    for (int c_inner = 0; c_inner < 2; ++c_inner) {
      DepthwiseConv2d[(((((((((((int)blockIdx.x) / 12) * 30720) + (i_inner * 3840)) + (((((int)blockIdx.x) % 12) / 6) * 1920)) + ((((int)threadIdx.x) / 10) * 240)) + ((((int)blockIdx.x) % 6) * 40)) + ((((int)threadIdx.x) % 10) * 2)) + c_inner))] = DepthwiseConv2d_local[(((i_inner * 2) + c_inner))];
      DepthwiseConv2d[((((((((((((int)blockIdx.x) / 12) * 30720) + (i_inner * 3840)) + (((((int)blockIdx.x) % 12) / 6) * 1920)) + ((((int)threadIdx.x) / 10) * 240)) + ((((int)blockIdx.x) % 6) * 40)) + ((((int)threadIdx.x) % 10) * 2)) + c_inner) + 20))] = DepthwiseConv2d_local[((((i_inner * 2) + c_inner) + 16))];
    }
  }
}


