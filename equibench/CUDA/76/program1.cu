
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
  T_multiply[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] = ((DepthwiseConv2d[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 480))]) * (max(min(((DepthwiseConv2d[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 480))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ DepthwiseConv2d) {
  float DepthwiseConv2d_local[64];
  __shared__ float PaddedInput_shared[1280];
  __shared__ float placeholder_shared[24];
  for (int j_c_outer_inner_init = 0; j_c_outer_inner_init < 4; ++j_c_outer_inner_init) {
    DepthwiseConv2d_local[((j_c_outer_inner_init * 8))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 1))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 2))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 3))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 4))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 5))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 6))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 7))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 32))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 33))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 34))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 35))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 36))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 37))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 38))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((j_c_outer_inner_init * 8) + 39))] = 0.000000e+00f;
  }
  for (int di_outer_outer = 0; di_outer_outer < 3; ++di_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 80; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)))] = (((((1 <= ((((((int)blockIdx.x) / 120) * 2) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 3)) % 20) / 10)) + di_outer_outer)) && (((((((int)blockIdx.x) / 120) * 2) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 3)) % 20) / 10)) + di_outer_outer) < 17)) && (1 <= ((((((int)blockIdx.x) % 120) / 60) * 8) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 3)) % 10)))) && (((((((int)blockIdx.x) % 120) / 60) * 8) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 3)) % 10)) < 17)) ? placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 3)) / 20) * 122880) + ((((int)blockIdx.x) / 120) * 15360)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 3)) % 20) / 10) * 7680)) + (di_outer_outer * 7680)) + (((((int)blockIdx.x) % 120) / 60) * 3840)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 3)) % 10) * 480)) + ((((int)blockIdx.x) % 60) * 8)) + (((int)threadIdx.x) & 7)) - 8160))] : 0.000000e+00f);
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((di_outer_outer * 1440) + ((((int)threadIdx.x) >> 3) * 480)) + ((((int)blockIdx.x) % 60) * 8)) + (((int)threadIdx.x) & 7)))];
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[((((int)threadIdx.x) + 16))] = placeholder1[(((((di_outer_outer * 1440) + ((((int)blockIdx.x) % 60) * 8)) + ((int)threadIdx.x)) + 960))];
    }
    __syncthreads();
    for (int j_c_outer_inner = 0; j_c_outer_inner < 4; ++j_c_outer_inner) {
      for (int dj_inner = 0; dj_inner < 3; ++dj_inner) {
        DepthwiseConv2d_local[((j_c_outer_inner * 8))] = (DepthwiseConv2d_local[((j_c_outer_inner * 8))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)))] * placeholder_shared[(((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 1))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 1))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 1))] * placeholder_shared[((((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + 1))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 2))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 2))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 2))] * placeholder_shared[((((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + 2))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 3))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 3))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 3))] * placeholder_shared[((((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + 3))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 4))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 4))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 8))] * placeholder_shared[(((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 5))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 5))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 9))] * placeholder_shared[((((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + 1))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 6))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 6))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 10))] * placeholder_shared[((((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + 2))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 7))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 7))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 11))] * placeholder_shared[((((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + 3))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 32))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 32))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 160))] * placeholder_shared[(((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 33))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 33))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 161))] * placeholder_shared[((((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + 1))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 34))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 34))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 162))] * placeholder_shared[((((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + 2))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 35))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 35))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 163))] * placeholder_shared[((((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + 3))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 36))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 36))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 168))] * placeholder_shared[(((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 37))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 37))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 169))] * placeholder_shared[((((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + 1))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 38))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 38))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 170))] * placeholder_shared[((((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + 2))]));
        DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 39))] = (DepthwiseConv2d_local[(((j_c_outer_inner * 8) + 39))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 2) * 320) + (((((int)threadIdx.x) & 3) >> 1) * 80)) + (j_c_outer_inner * 16)) + (dj_inner * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 171))] * placeholder_shared[((((dj_inner * 8) + ((((int)threadIdx.x) & 1) * 4)) + 3))]));
      }
    }
  }
  for (int b_inner = 0; b_inner < 2; ++b_inner) {
    for (int j_inner = 0; j_inner < 8; ++j_inner) {
      for (int c_inner = 0; c_inner < 4; ++c_inner) {
        DepthwiseConv2d[(((((((((((((int)threadIdx.x) >> 2) * 245760) + (b_inner * 122880)) + ((((int)blockIdx.x) / 120) * 15360)) + (((((int)threadIdx.x) & 3) >> 1) * 7680)) + (((((int)blockIdx.x) % 120) / 60) * 3840)) + (j_inner * 480)) + ((((int)blockIdx.x) % 60) * 8)) + ((((int)threadIdx.x) & 1) * 4)) + c_inner))] = DepthwiseConv2d_local[((((b_inner * 32) + (j_inner * 4)) + c_inner))];
      }
    }
  }
}


