
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute, float* __restrict__ placeholder2) {
  float DepthwiseConv2d[336];
  __shared__ float PaddedInput_shared[9570];
  __shared__ float placeholder_shared[18];
  for (int i_outer_inner_init = 0; i_outer_inner_init < 2; ++i_outer_inner_init) {
    for (int c_outer_inner_init = 0; c_outer_inner_init < 6; ++c_outer_inner_init) {
      for (int j_inner_init = 0; j_inner_init < 14; ++j_inner_init) {
        DepthwiseConv2d[((((i_outer_inner_init * 84) + (j_inner_init * 6)) + c_outer_inner_init))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 84) + (j_inner_init * 6)) + c_outer_inner_init) + 168))] = 0.000000e+00f;
      }
    }
  }
  for (int di_outer_outer = 0; di_outer_outer < 3; ++di_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 1368; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 7) + ((int)threadIdx.x)) < 9570) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 7) + ((int)threadIdx.x)))] = (((1 <= ((((((int)blockIdx.x) >> 6) * 56) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 7) + ((int)threadIdx.x)) / 174)) + di_outer_outer)) && (1 <= ((((((int)blockIdx.x) & 63) >> 4) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 7) + ((int)threadIdx.x)) % 174) / 6)))) ? placeholder[((((((((((((int)blockIdx.x) >> 6) * 602112) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 7) + ((int)threadIdx.x)) / 174) * 10752)) + (di_outer_outer * 10752)) + (((((int)blockIdx.x) & 63) >> 4) * 2688)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 7) + ((int)threadIdx.x)) % 174) / 6) * 96)) + ((((int)blockIdx.x) & 15) * 6)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 7) + ((int)threadIdx.x)) % 6)) - 10848))] : 0.000000e+00f);
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 7) + ((int)threadIdx.x)) < 18) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 7) + ((int)threadIdx.x)))] = placeholder1[(((((di_outer_outer * 288) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 7) + ((int)threadIdx.x)) / 6) * 96)) + ((((int)blockIdx.x) & 15) * 6)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 7) + ((int)threadIdx.x)) % 6)))];
      }
    }
    __syncthreads();
    for (int i_outer_inner = 0; i_outer_inner < 2; ++i_outer_inner) {
      for (int c_outer_inner = 0; c_outer_inner < 6; ++c_outer_inner) {
        for (int dj_inner = 0; dj_inner < 3; ++dj_inner) {
          for (int j_inner = 0; j_inner < 14; ++j_inner) {
            DepthwiseConv2d[((((i_outer_inner * 84) + (j_inner * 6)) + c_outer_inner))] = (DepthwiseConv2d[((((i_outer_inner * 84) + (j_inner * 6)) + c_outer_inner))] + (PaddedInput_shared[((((((((int)threadIdx.x) * 696) + (i_outer_inner * 348)) + (j_inner * 12)) + (dj_inner * 6)) + c_outer_inner))] * placeholder_shared[(((dj_inner * 6) + c_outer_inner))]));
            DepthwiseConv2d[(((((i_outer_inner * 84) + (j_inner * 6)) + c_outer_inner) + 168))] = (DepthwiseConv2d[(((((i_outer_inner * 84) + (j_inner * 6)) + c_outer_inner) + 168))] + (PaddedInput_shared[(((((((((int)threadIdx.x) * 696) + (i_outer_inner * 348)) + (j_inner * 12)) + (dj_inner * 6)) + c_outer_inner) + 4872))] * placeholder_shared[(((dj_inner * 6) + c_outer_inner))]));
          }
        }
      }
    }
  }
  for (int i1_inner = 0; i1_inner < 2; ++i1_inner) {
    for (int i2_inner = 0; i2_inner < 14; ++i2_inner) {
      for (int i3_inner = 0; i3_inner < 6; ++i3_inner) {
        compute[(((((((((((int)blockIdx.x) >> 6) * 150528) + (((int)threadIdx.x) * 10752)) + (i1_inner * 5376)) + (((((int)blockIdx.x) & 63) >> 4) * 1344)) + (i2_inner * 96)) + ((((int)blockIdx.x) & 15) * 6)) + i3_inner))] = max(min((DepthwiseConv2d[((((i1_inner * 84) + (i2_inner * 6)) + i3_inner))] + placeholder2[((((((int)blockIdx.x) & 15) * 6) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
        compute[((((((((((((int)blockIdx.x) >> 6) * 150528) + (((int)threadIdx.x) * 10752)) + (i1_inner * 5376)) + (((((int)blockIdx.x) & 63) >> 4) * 1344)) + (i2_inner * 96)) + ((((int)blockIdx.x) & 15) * 6)) + i3_inner) + 75264))] = max(min((DepthwiseConv2d[(((((i1_inner * 84) + (i2_inner * 6)) + i3_inner) + 168))] + placeholder2[((((((int)blockIdx.x) & 15) * 6) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
      }
    }
  }
}


