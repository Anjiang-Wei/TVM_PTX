
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
  T_multiply[(((int)blockIdx.x))] = ((DepthwiseConv2d[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) % 184))]) * (max(min(((DepthwiseConv2d[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) % 184))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ DepthwiseConv2d) {
  float DepthwiseConv2d_local[120];
  __shared__ float PaddedInput_shared[2720];
  __shared__ float placeholder_shared[12];
  for (int b_c_outer_inner_init = 0; b_c_outer_inner_init < 2; ++b_c_outer_inner_init) {
    for (int i_c_inner_init = 0; i_c_inner_init < 15; ++i_c_inner_init) {
      for (int c_c_inner_init = 0; c_c_inner_init < 4; ++c_c_inner_init) {
        DepthwiseConv2d_local[((((b_c_outer_inner_init * 60) + (i_c_inner_init * 4)) + c_c_inner_init))] = 0.000000e+00f;
      }
    }
  }
  for (int dj_outer_outer = 0; dj_outer_outer < 3; ++dj_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 68; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 340) * 340) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 20)) % 17) * 20)) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 20)))] = (((((1 <= (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 20)) % 17)) && ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 20)) % 17) < 16)) && (1 <= ((((((int)blockIdx.x) / 46) * 5) + ((((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 20) >> 2)) + dj_outer_outer))) && (((((((int)blockIdx.x) / 46) * 5) + ((((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 20) >> 2)) + dj_outer_outer) < 16)) ? placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 340) * 41400) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 20)) % 17) * 2760)) + ((((int)blockIdx.x) / 46) * 920)) + (((((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 20) >> 2) * 184)) + (dj_outer_outer * 184)) + ((((int)blockIdx.x) % 46) * 4)) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 3)) - 2944))] : 0.000000e+00f);
      }
    }
    if (((int)threadIdx.x) < 12) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((((((int)threadIdx.x) >> 2) * 552) + (dj_outer_outer * 184)) + ((((int)blockIdx.x) % 46) * 4)) + (((int)threadIdx.x) & 3)))];
    }
    __syncthreads();
    for (int di_outer_inner = 0; di_outer_inner < 3; ++di_outer_inner) {
      for (int b_c_outer_inner = 0; b_c_outer_inner < 2; ++b_c_outer_inner) {
        for (int i_c_inner = 0; i_c_inner < 15; ++i_c_inner) {
          for (int c_c_inner = 0; c_c_inner < 4; ++c_c_inner) {
            DepthwiseConv2d_local[((((b_c_outer_inner * 60) + (i_c_inner * 4)) + c_c_inner))] = (DepthwiseConv2d_local[((((b_c_outer_inner * 60) + (i_c_inner * 4)) + c_c_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 5) * 680) + (b_c_outer_inner * 340)) + (i_c_inner * 20)) + (di_outer_inner * 20)) + ((((int)threadIdx.x) % 5) * 4)) + c_c_inner))] * placeholder_shared[(((di_outer_inner * 4) + c_c_inner))]));
          }
        }
      }
    }
  }
  for (int b_inner = 0; b_inner < 2; ++b_inner) {
    for (int i_inner = 0; i_inner < 15; ++i_inner) {
      for (int c_inner = 0; c_inner < 4; ++c_inner) {
        DepthwiseConv2d[(((((((((((int)threadIdx.x) / 5) * 82800) + (b_inner * 41400)) + (i_inner * 2760)) + ((((int)blockIdx.x) / 46) * 920)) + ((((int)threadIdx.x) % 5) * 184)) + ((((int)blockIdx.x) % 46) * 4)) + c_inner))] = DepthwiseConv2d_local[((((b_inner * 60) + (i_inner * 4)) + c_inner))];
      }
    }
  }
}


