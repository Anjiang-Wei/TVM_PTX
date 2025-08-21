
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2) {
  float Conv2dOutput[32];
  __shared__ float PaddedInput_shared[2048];
  __shared__ float placeholder_shared[12];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 4; ++xx_inner_init) {
        Conv2dOutput[((((yy_outer_inner_init * 8) + (xx_outer_inner_init * 4)) + xx_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 8) + (xx_outer_inner_init * 4)) + xx_inner_init) + 16))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 24; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 22; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 2048) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)) < 1024) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 8) * 256) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 3) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 5)) & 7) * 32)) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 31)))] = placeholder[((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 8) * 301056) + ((((int)blockIdx.x) / 56) * 43008)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 3) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 5)) & 7) * 5376)) + (((((int)blockIdx.x) % 56) >> 3) * 768)) + (((((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 31) >> 2) * 96)) + (rc_outer_outer * 4)) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 3)))];
          }
        }
      }
    }
    if (((int)threadIdx.x) < 12) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 96) + ((((int)threadIdx.x) / 3) * 24)) + ((((int)blockIdx.x) & 7) * 3)) + (((int)threadIdx.x) % 3)))];
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
        for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
          for (int xx_inner = 0; xx_inner < 4; ++xx_inner) {
            Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 4)) + xx_inner))] = (Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 4)) + xx_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 6) * 256) + (((((int)threadIdx.x) % 6) / 3) * 64)) + (yy_outer_inner * 32)) + (xx_outer_inner * 16)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[(((rc_inner * 3) + (((int)threadIdx.x) % 3)))]));
            Conv2dOutput[(((((yy_outer_inner * 8) + (xx_outer_inner * 4)) + xx_inner) + 16))] = (Conv2dOutput[(((((yy_outer_inner * 8) + (xx_outer_inner * 4)) + xx_inner) + 16))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 6) * 256) + (((((int)threadIdx.x) % 6) / 3) * 64)) + (yy_outer_inner * 32)) + (xx_outer_inner * 16)) + (xx_inner * 4)) + rc_inner) + 128))] * placeholder_shared[(((rc_inner * 3) + (((int)threadIdx.x) % 3)))]));
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 8; ++ax2_inner) {
      T_add[((((((((((((int)threadIdx.x) / 6) * 75264) + ((((int)blockIdx.x) / 56) * 10752)) + (((((int)threadIdx.x) % 6) / 3) * 2688)) + (ax1_inner * 1344)) + (((((int)blockIdx.x) % 56) >> 3) * 192)) + (ax2_inner * 24)) + ((((int)blockIdx.x) & 7) * 3)) + (((int)threadIdx.x) % 3)))] = (Conv2dOutput[(((ax1_inner * 8) + ax2_inner))] + placeholder2[((((((int)blockIdx.x) & 7) * 3) + (((int)threadIdx.x) % 3)))]);
      T_add[(((((((((((((int)threadIdx.x) / 6) * 75264) + ((((int)blockIdx.x) / 56) * 10752)) + (((((int)threadIdx.x) % 6) / 3) * 2688)) + (ax1_inner * 1344)) + (((((int)blockIdx.x) % 56) >> 3) * 192)) + (ax2_inner * 24)) + ((((int)blockIdx.x) & 7) * 3)) + (((int)threadIdx.x) % 3)) + 5376))] = (Conv2dOutput[((((ax1_inner * 8) + ax2_inner) + 16))] + placeholder2[((((((int)blockIdx.x) & 7) * 3) + (((int)threadIdx.x) % 3)))]);
    }
  }
}


