
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2) {
  float DepthwiseConv2d[64];
  __shared__ float PaddedInput_shared[7424];
  __shared__ float placeholder_shared[36];
  for (int j_outer_inner_init = 0; j_outer_inner_init < 4; ++j_outer_inner_init) {
    for (int i_inner_init = 0; i_inner_init < 2; ++i_inner_init) {
      for (int c_inner_init = 0; c_inner_init < 2; ++c_inner_init) {
        DepthwiseConv2d[((((i_inner_init * 8) + (j_outer_inner_init * 2)) + c_inner_init))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_inner_init * 8) + (j_outer_inner_init * 2)) + c_inner_init) + 16))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_inner_init * 8) + (j_outer_inner_init * 2)) + c_inner_init) + 32))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_inner_init * 8) + (j_outer_inner_init * 2)) + c_inner_init) + 48))] = 0.000000e+00f;
      }
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 34; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) < 1856) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 224) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 7424) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 224) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = (((((1 <= (((((int)blockIdx.x) / 18) * 2) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 232) / 58))) && ((((((int)blockIdx.x) / 18) * 2) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 232) / 58)) < 57)) && (1 <= (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 58))) && ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 58) < 57)) ? placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) / 232) * 225792) + ((((int)blockIdx.x) / 18) * 8064)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 232) / 58) * 4032)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 58) * 72)) + ((((int)blockIdx.x) % 18) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) - 4104))] : 0.000000e+00f);
        }
      }
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 < 9; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) {
    if (((((int)threadIdx.x) * 9) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) < 36) {
      if (((int)threadIdx.x) < 4) {
        placeholder_shared[(((((int)threadIdx.x) * 9) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1))] = placeholder1[(((((((((int)threadIdx.x) * 9) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) >> 2) * 72) + ((((int)blockIdx.x) % 18) * 4)) + (((((int)threadIdx.x) * 9) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) & 3)))];
      }
    }
  }
  __syncthreads();
  for (int j_outer_inner = 0; j_outer_inner < 4; ++j_outer_inner) {
    for (int di_inner = 0; di_inner < 3; ++di_inner) {
      for (int dj_inner = 0; dj_inner < 3; ++dj_inner) {
        for (int i_inner = 0; i_inner < 2; ++i_inner) {
          for (int c_inner = 0; c_inner < 2; ++c_inner) {
            DepthwiseConv2d[((((i_inner * 8) + (j_outer_inner * 2)) + c_inner))] = (DepthwiseConv2d[((((i_inner * 8) + (j_outer_inner * 2)) + c_inner))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 14) * 928) + (i_inner * 232)) + (di_inner * 232)) + ((((int)threadIdx.x) % 14) * 16)) + (j_outer_inner * 4)) + (dj_inner * 4)) + c_inner))] * placeholder_shared[((((di_inner * 12) + (dj_inner * 4)) + c_inner))]));
            DepthwiseConv2d[(((((i_inner * 8) + (j_outer_inner * 2)) + c_inner) + 16))] = (DepthwiseConv2d[(((((i_inner * 8) + (j_outer_inner * 2)) + c_inner) + 16))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) / 14) * 928) + (i_inner * 232)) + (di_inner * 232)) + ((((int)threadIdx.x) % 14) * 16)) + (j_outer_inner * 4)) + (dj_inner * 4)) + c_inner) + 2))] * placeholder_shared[(((((di_inner * 12) + (dj_inner * 4)) + c_inner) + 2))]));
            DepthwiseConv2d[(((((i_inner * 8) + (j_outer_inner * 2)) + c_inner) + 32))] = (DepthwiseConv2d[(((((i_inner * 8) + (j_outer_inner * 2)) + c_inner) + 32))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) / 14) * 928) + (i_inner * 232)) + (di_inner * 232)) + ((((int)threadIdx.x) % 14) * 16)) + (j_outer_inner * 4)) + (dj_inner * 4)) + c_inner) + 3712))] * placeholder_shared[((((di_inner * 12) + (dj_inner * 4)) + c_inner))]));
            DepthwiseConv2d[(((((i_inner * 8) + (j_outer_inner * 2)) + c_inner) + 48))] = (DepthwiseConv2d[(((((i_inner * 8) + (j_outer_inner * 2)) + c_inner) + 48))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) / 14) * 928) + (i_inner * 232)) + (di_inner * 232)) + ((((int)threadIdx.x) % 14) * 16)) + (j_outer_inner * 4)) + (dj_inner * 4)) + c_inner) + 3714))] * placeholder_shared[(((((di_inner * 12) + (dj_inner * 4)) + c_inner) + 2))]));
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[(((((((((((int)threadIdx.x) / 14) * 225792) + ((((int)blockIdx.x) / 18) * 8064)) + (ax1_inner * 4032)) + ((((int)threadIdx.x) % 14) * 288)) + (ax2_inner * 72)) + ((((int)blockIdx.x) % 18) * 4)) + ax3_inner))] = max((DepthwiseConv2d[((((ax1_inner * 8) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) % 18) * 4) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((((((int)threadIdx.x) / 14) * 225792) + ((((int)blockIdx.x) / 18) * 8064)) + (ax1_inner * 4032)) + ((((int)threadIdx.x) % 14) * 288)) + (ax2_inner * 72)) + ((((int)blockIdx.x) % 18) * 4)) + ax3_inner) + 2))] = max((DepthwiseConv2d[(((((ax1_inner * 8) + (ax2_inner * 2)) + ax3_inner) + 16))] + placeholder2[(((((((int)blockIdx.x) % 18) * 4) + ax3_inner) + 2))]), 0.000000e+00f);
        T_relu[((((((((((((int)threadIdx.x) / 14) * 225792) + ((((int)blockIdx.x) / 18) * 8064)) + (ax1_inner * 4032)) + ((((int)threadIdx.x) % 14) * 288)) + (ax2_inner * 72)) + ((((int)blockIdx.x) % 18) * 4)) + ax3_inner) + 903168))] = max((DepthwiseConv2d[(((((ax1_inner * 8) + (ax2_inner * 2)) + ax3_inner) + 32))] + placeholder2[((((((int)blockIdx.x) % 18) * 4) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((((((int)threadIdx.x) / 14) * 225792) + ((((int)blockIdx.x) / 18) * 8064)) + (ax1_inner * 4032)) + ((((int)threadIdx.x) % 14) * 288)) + (ax2_inner * 72)) + ((((int)blockIdx.x) % 18) * 4)) + ax3_inner) + 903170))] = max((DepthwiseConv2d[(((((ax1_inner * 8) + (ax2_inner * 2)) + ax3_inner) + 48))] + placeholder2[(((((((int)blockIdx.x) % 18) * 4) + ax3_inner) + 2))]), 0.000000e+00f);
      }
    }
  }
}


