
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
  float DepthwiseConv2d[128];
  __shared__ float PaddedInput_shared[4896];
  __shared__ float placeholder_shared[72];
  for (int i_outer_inner_init = 0; i_outer_inner_init < 2; ++i_outer_inner_init) {
    for (int j_outer_inner_init = 0; j_outer_inner_init < 2; ++j_outer_inner_init) {
      for (int c_outer_inner_init = 0; c_outer_inner_init < 2; ++c_outer_inner_init) {
        DepthwiseConv2d[((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 32))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 64))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 96))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 1))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 33))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 65))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 97))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 8))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 40))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 72))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 104))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 9))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 41))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 73))] = 0.000000e+00f;
        DepthwiseConv2d[(((((i_outer_inner_init * 16) + (j_outer_inner_init * 4)) + (c_outer_inner_init * 2)) + 105))] = 0.000000e+00f;
      }
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 153; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)))] = (((((1 <= (((((int)blockIdx.x) >> 4) * 32) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) >> 3)) / 18))) && ((((((int)blockIdx.x) >> 4) * 32) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) >> 3)) / 18)) < 129)) && (1 <= ((((((int)blockIdx.x) & 15) >> 1) * 16) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) >> 3)) % 18)))) && (((((((int)blockIdx.x) & 15) >> 1) * 16) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) >> 3)) % 18)) < 129)) ? placeholder[(((((((((((int)blockIdx.x) >> 4) * 65536) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) >> 3)) / 18) * 2048)) + (((((int)blockIdx.x) & 15) >> 1) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4) + (((int)threadIdx.x) >> 3)) % 18) * 16)) + ((((int)blockIdx.x) & 1) * 8)) + (((int)threadIdx.x) & 7)) - 2064))] : 0.000000e+00f);
  }
  placeholder_shared[((((int)threadIdx.x) * 2))] = placeholder1[(((((((int)threadIdx.x) >> 2) * 16) + ((((int)blockIdx.x) & 1) * 8)) + ((((int)threadIdx.x) & 3) * 2)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 1) >> 3) * 16) + ((((int)blockIdx.x) & 1) * 8)) + (((((int)threadIdx.x) * 2) + 1) & 7)))];
  if (((int)threadIdx.x) < 4) {
    placeholder_shared[(((((((((int)threadIdx.x) * 2) + 64) / 24) * 24) + (((int)threadIdx.x) * 2)) + 16))] = placeholder1[((((((((((int)threadIdx.x) * 2) + 64) / 24) * 48) + ((((int)blockIdx.x) & 1) * 8)) + (((int)threadIdx.x) * 2)) + 32))];
  }
  if (((int)threadIdx.x) < 4) {
    placeholder_shared[(((((((((int)threadIdx.x) * 2) + 65) / 24) * 24) + (((int)threadIdx.x) * 2)) + 17))] = placeholder1[((((((((((int)threadIdx.x) * 2) + 65) / 24) * 48) + ((((int)blockIdx.x) & 1) * 8)) + (((int)threadIdx.x) * 2)) + 33))];
  }
  __syncthreads();
  for (int di_outer_inner = 0; di_outer_inner < 3; ++di_outer_inner) {
    for (int dj_outer_inner = 0; dj_outer_inner < 3; ++dj_outer_inner) {
      for (int i_outer_inner = 0; i_outer_inner < 2; ++i_outer_inner) {
        for (int j_outer_inner = 0; j_outer_inner < 2; ++j_outer_inner) {
          for (int c_outer_inner = 0; c_outer_inner < 2; ++c_outer_inner) {
            DepthwiseConv2d[((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)))] = (DepthwiseConv2d[((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)))] * placeholder_shared[((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 32))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 32))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 4))] * placeholder_shared[(((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 4))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 64))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 64))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 64))] * placeholder_shared[((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 96))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 96))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 68))] * placeholder_shared[(((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 4))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 1))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 1))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 1))] * placeholder_shared[(((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 1))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 33))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 33))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 5))] * placeholder_shared[(((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 5))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 65))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 65))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 65))] * placeholder_shared[(((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 1))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 97))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 97))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 69))] * placeholder_shared[(((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 5))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 8))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 8))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 144))] * placeholder_shared[((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 40))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 40))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 148))] * placeholder_shared[(((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 4))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 72))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 72))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 208))] * placeholder_shared[((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 104))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 104))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 212))] * placeholder_shared[(((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 4))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 9))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 9))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 145))] * placeholder_shared[(((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 1))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 41))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 41))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 149))] * placeholder_shared[(((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 5))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 73))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 73))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 209))] * placeholder_shared[(((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 1))]));
            DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 105))] = (DepthwiseConv2d[(((((i_outer_inner * 16) + (j_outer_inner * 4)) + (c_outer_inner * 2)) + 105))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 2) * 576) + (i_outer_inner * 288)) + (di_outer_inner * 144)) + ((((int)threadIdx.x) & 3) * 16)) + (j_outer_inner * 8)) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 213))] * placeholder_shared[(((((di_outer_inner * 24) + (dj_outer_inner * 8)) + (c_outer_inner * 2)) + 5))]));
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_relu[((((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 8192)) + (ax1_inner * 2048)) + (((((int)blockIdx.x) & 15) >> 1) * 256)) + ((((int)threadIdx.x) & 3) * 32)) + (ax2_inner * 16)) + ((((int)blockIdx.x) & 1) * 8)) + ax3_inner))] = max((DepthwiseConv2d[((((ax1_inner * 8) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) & 1) * 8) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 8192)) + (ax1_inner * 2048)) + (((((int)blockIdx.x) & 15) >> 1) * 256)) + ((((int)threadIdx.x) & 3) * 32)) + (ax2_inner * 16)) + ((((int)blockIdx.x) & 1) * 8)) + ax3_inner) + 4))] = max((DepthwiseConv2d[(((((ax1_inner * 8) + (ax2_inner * 4)) + ax3_inner) + 32))] + placeholder2[(((((((int)blockIdx.x) & 1) * 8) + ax3_inner) + 4))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 8192)) + (ax1_inner * 2048)) + (((((int)blockIdx.x) & 15) >> 1) * 256)) + ((((int)threadIdx.x) & 3) * 32)) + (ax2_inner * 16)) + ((((int)blockIdx.x) & 1) * 8)) + ax3_inner) + 128))] = max((DepthwiseConv2d[(((((ax1_inner * 8) + (ax2_inner * 4)) + ax3_inner) + 64))] + placeholder2[((((((int)blockIdx.x) & 1) * 8) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 2) * 8192)) + (ax1_inner * 2048)) + (((((int)blockIdx.x) & 15) >> 1) * 256)) + ((((int)threadIdx.x) & 3) * 32)) + (ax2_inner * 16)) + ((((int)blockIdx.x) & 1) * 8)) + ax3_inner) + 132))] = max((DepthwiseConv2d[(((((ax1_inner * 8) + (ax2_inner * 4)) + ax3_inner) + 96))] + placeholder2[(((((((int)blockIdx.x) & 1) * 8) + ax3_inner) + 4))]), 0.000000e+00f);
      }
    }
  }
}


