
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
  float DepthwiseConv2d[32];
  __shared__ float PaddedInput_shared[3328];
  __shared__ float placeholder_shared[144];
  for (int i_outer_inner_init = 0; i_outer_inner_init < 2; ++i_outer_inner_init) {
    for (int j_outer_inner_init = 0; j_outer_inner_init < 2; ++j_outer_inner_init) {
      DepthwiseConv2d[(((i_outer_inner_init * 2) + j_outer_inner_init))] = 0.000000e+00f;
      DepthwiseConv2d[((((i_outer_inner_init * 2) + j_outer_inner_init) + 4))] = 0.000000e+00f;
      DepthwiseConv2d[((((i_outer_inner_init * 2) + j_outer_inner_init) + 8))] = 0.000000e+00f;
      DepthwiseConv2d[((((i_outer_inner_init * 2) + j_outer_inner_init) + 12))] = 0.000000e+00f;
      DepthwiseConv2d[((((i_outer_inner_init * 2) + j_outer_inner_init) + 16))] = 0.000000e+00f;
      DepthwiseConv2d[((((i_outer_inner_init * 2) + j_outer_inner_init) + 20))] = 0.000000e+00f;
      DepthwiseConv2d[((((i_outer_inner_init * 2) + j_outer_inner_init) + 24))] = 0.000000e+00f;
      DepthwiseConv2d[((((i_outer_inner_init * 2) + j_outer_inner_init) + 28))] = 0.000000e+00f;
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 72) + ((int)threadIdx.x)) < 208) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 16; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1152) + (((int)threadIdx.x) * 16)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 3328) {
          PaddedInput_shared[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 9) + (((int)threadIdx.x) >> 3)) % 26) * 128) + ((((int)threadIdx.x) & 7) * 16)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = (((((1 <= ((((((int)blockIdx.x) % 200) / 40) * 24) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 9) + (((int)threadIdx.x) >> 3)) % 26))) && (((((((int)blockIdx.x) % 200) / 40) * 24) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 9) + (((int)threadIdx.x) >> 3)) % 26)) < 121)) && (1 <= ((((((int)blockIdx.x) % 40) >> 1) * 6) + (((int)threadIdx.x) & 7)))) && (((((((int)blockIdx.x) % 40) >> 1) * 6) + (((int)threadIdx.x) & 7)) < 121)) ? placeholder[(((((((((((int)blockIdx.x) / 40) * 92160) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 9) + (((int)threadIdx.x) >> 3)) % 26) * 3840)) + (((((int)blockIdx.x) % 40) >> 1) * 192)) + ((((int)threadIdx.x) & 7) * 32)) + ((((int)blockIdx.x) & 1) * 16)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) - 3872))] : 0.000000e+00f);
        }
      }
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) {
    if (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) < 144) {
      if (((int)threadIdx.x) < 36) {
        placeholder_shared[(((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1))] = placeholder1[(((((((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) >> 4) * 32) + ((((int)blockIdx.x) & 1) * 16)) + (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) & 15)))];
      }
    }
  }
  __syncthreads();
  for (int di_outer_inner = 0; di_outer_inner < 3; ++di_outer_inner) {
    for (int i_outer_inner = 0; i_outer_inner < 2; ++i_outer_inner) {
      for (int j_outer_inner = 0; j_outer_inner < 2; ++j_outer_inner) {
        for (int dj_inner = 0; dj_inner < 3; ++dj_inner) {
          DepthwiseConv2d[(((i_outer_inner * 2) + j_outer_inner))] = (DepthwiseConv2d[(((i_outer_inner * 2) + j_outer_inner))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 6) * 256) + (i_outer_inner * 128)) + (di_outer_inner * 128)) + (((((int)threadIdx.x) % 6) >> 1) * 32)) + (j_outer_inner * 16)) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)))] * placeholder_shared[((((di_outer_inner * 48) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)))]));
          DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 4))] = (DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 4))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) / 6) * 256) + (i_outer_inner * 128)) + (di_outer_inner * 128)) + (((((int)threadIdx.x) % 6) >> 1) * 32)) + (j_outer_inner * 16)) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 2))] * placeholder_shared[(((((di_outer_inner * 48) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 2))]));
          DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 8))] = (DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 8))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) / 6) * 256) + (i_outer_inner * 128)) + (di_outer_inner * 128)) + (((((int)threadIdx.x) % 6) >> 1) * 32)) + (j_outer_inner * 16)) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 4))] * placeholder_shared[(((((di_outer_inner * 48) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 4))]));
          DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 12))] = (DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 12))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) / 6) * 256) + (i_outer_inner * 128)) + (di_outer_inner * 128)) + (((((int)threadIdx.x) % 6) >> 1) * 32)) + (j_outer_inner * 16)) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 6))] * placeholder_shared[(((((di_outer_inner * 48) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 6))]));
          DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 16))] = (DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 16))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) / 6) * 256) + (i_outer_inner * 128)) + (di_outer_inner * 128)) + (((((int)threadIdx.x) % 6) >> 1) * 32)) + (j_outer_inner * 16)) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 8))] * placeholder_shared[(((((di_outer_inner * 48) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 8))]));
          DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 20))] = (DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 20))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) / 6) * 256) + (i_outer_inner * 128)) + (di_outer_inner * 128)) + (((((int)threadIdx.x) % 6) >> 1) * 32)) + (j_outer_inner * 16)) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 10))] * placeholder_shared[(((((di_outer_inner * 48) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 10))]));
          DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 24))] = (DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 24))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) / 6) * 256) + (i_outer_inner * 128)) + (di_outer_inner * 128)) + (((((int)threadIdx.x) % 6) >> 1) * 32)) + (j_outer_inner * 16)) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 12))] * placeholder_shared[(((((di_outer_inner * 48) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 12))]));
          DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 28))] = (DepthwiseConv2d[((((i_outer_inner * 2) + j_outer_inner) + 28))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) / 6) * 256) + (i_outer_inner * 128)) + (di_outer_inner * 128)) + (((((int)threadIdx.x) % 6) >> 1) * 32)) + (j_outer_inner * 16)) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 14))] * placeholder_shared[(((((di_outer_inner * 48) + (dj_inner * 16)) + (((int)threadIdx.x) & 1)) + 14))]));
        }
      }
    }
  }
  for (int i1_inner = 0; i1_inner < 2; ++i1_inner) {
    for (int i2_inner = 0; i2_inner < 2; ++i2_inner) {
      compute[((((((((((((int)blockIdx.x) / 40) * 92160) + ((((int)threadIdx.x) / 6) * 7680)) + (i1_inner * 3840)) + (((((int)blockIdx.x) % 40) >> 1) * 192)) + (((((int)threadIdx.x) % 6) >> 1) * 64)) + (i2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((int)threadIdx.x) & 1)))] = max(min((DepthwiseConv2d[(((i1_inner * 2) + i2_inner))] + placeholder2[((((((int)blockIdx.x) & 1) * 16) + (((int)threadIdx.x) & 1)))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((((((int)blockIdx.x) / 40) * 92160) + ((((int)threadIdx.x) / 6) * 7680)) + (i1_inner * 3840)) + (((((int)blockIdx.x) % 40) >> 1) * 192)) + (((((int)threadIdx.x) % 6) >> 1) * 64)) + (i2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((int)threadIdx.x) & 1)) + 2))] = max(min((DepthwiseConv2d[((((i1_inner * 2) + i2_inner) + 4))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + (((int)threadIdx.x) & 1)) + 2))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((((((int)blockIdx.x) / 40) * 92160) + ((((int)threadIdx.x) / 6) * 7680)) + (i1_inner * 3840)) + (((((int)blockIdx.x) % 40) >> 1) * 192)) + (((((int)threadIdx.x) % 6) >> 1) * 64)) + (i2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((int)threadIdx.x) & 1)) + 4))] = max(min((DepthwiseConv2d[((((i1_inner * 2) + i2_inner) + 8))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + (((int)threadIdx.x) & 1)) + 4))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((((((int)blockIdx.x) / 40) * 92160) + ((((int)threadIdx.x) / 6) * 7680)) + (i1_inner * 3840)) + (((((int)blockIdx.x) % 40) >> 1) * 192)) + (((((int)threadIdx.x) % 6) >> 1) * 64)) + (i2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((int)threadIdx.x) & 1)) + 6))] = max(min((DepthwiseConv2d[((((i1_inner * 2) + i2_inner) + 12))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + (((int)threadIdx.x) & 1)) + 6))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((((((int)blockIdx.x) / 40) * 92160) + ((((int)threadIdx.x) / 6) * 7680)) + (i1_inner * 3840)) + (((((int)blockIdx.x) % 40) >> 1) * 192)) + (((((int)threadIdx.x) % 6) >> 1) * 64)) + (i2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((int)threadIdx.x) & 1)) + 8))] = max(min((DepthwiseConv2d[((((i1_inner * 2) + i2_inner) + 16))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + (((int)threadIdx.x) & 1)) + 8))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((((((int)blockIdx.x) / 40) * 92160) + ((((int)threadIdx.x) / 6) * 7680)) + (i1_inner * 3840)) + (((((int)blockIdx.x) % 40) >> 1) * 192)) + (((((int)threadIdx.x) % 6) >> 1) * 64)) + (i2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((int)threadIdx.x) & 1)) + 10))] = max(min((DepthwiseConv2d[((((i1_inner * 2) + i2_inner) + 20))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + (((int)threadIdx.x) & 1)) + 10))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((((((int)blockIdx.x) / 40) * 92160) + ((((int)threadIdx.x) / 6) * 7680)) + (i1_inner * 3840)) + (((((int)blockIdx.x) % 40) >> 1) * 192)) + (((((int)threadIdx.x) % 6) >> 1) * 64)) + (i2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((int)threadIdx.x) & 1)) + 12))] = max(min((DepthwiseConv2d[((((i1_inner * 2) + i2_inner) + 24))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + (((int)threadIdx.x) & 1)) + 12))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((((((int)blockIdx.x) / 40) * 92160) + ((((int)threadIdx.x) / 6) * 7680)) + (i1_inner * 3840)) + (((((int)blockIdx.x) % 40) >> 1) * 192)) + (((((int)threadIdx.x) % 6) >> 1) * 64)) + (i2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((int)threadIdx.x) & 1)) + 14))] = max(min((DepthwiseConv2d[((((i1_inner * 2) + i2_inner) + 28))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + (((int)threadIdx.x) & 1)) + 14))]), 6.000000e+00f), 0.000000e+00f);
    }
  }
}


