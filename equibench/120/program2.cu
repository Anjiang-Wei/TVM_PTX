
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
  float Conv2dOutput[512];
  __shared__ float PaddedInput_shared[10240];
  __shared__ float placeholder_shared[320];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
      for (int yy_inner_init = 0; yy_inner_init < 4; ++yy_inner_init) {
        for (int xx_inner_init = 0; xx_inner_init < 2; ++xx_inner_init) {
          Conv2dOutput[(((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 128))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 256))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 384))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 1))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 129))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 257))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 385))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 2))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 130))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 258))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 386))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 3))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 131))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 259))] = 0.000000e+00f;
          Conv2dOutput[((((((yy_outer_inner_init * 64) + (yy_inner_init * 16)) + (xx_outer_inner_init * 8)) + (xx_inner_init * 4)) + 387))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 160; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)) / 5120) * 327680) + ((((int)blockIdx.x) >> 2) * 163840)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)) % 5120) / 10) * 320)) + (rc_outer_outer * 10)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)) % 10)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 1280) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[((((((rc_outer_outer * 1280) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 256))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[((((((rc_outer_outer * 1280) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 512))];
    placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[((((((rc_outer_outer * 1280) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 768))];
    placeholder_shared[((((int)threadIdx.x) + 256))] = placeholder1[((((((rc_outer_outer * 1280) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 1024))];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 5; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
        for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
          for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
            for (int yy_inner = 0; yy_inner < 4; ++yy_inner) {
              for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
                Conv2dOutput[(((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)))] = (Conv2dOutput[(((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 128))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 128))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner) + 160))] * placeholder_shared[((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 256))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 256))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner) + 5120))] * placeholder_shared[((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 384))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 384))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner) + 5280))] * placeholder_shared[((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 1))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 1))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 129))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 129))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner) + 160))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 257))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 257))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner) + 5120))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 385))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 385))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner) + 5280))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 2))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 2))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 130))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 130))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner) + 160))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 258))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 258))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner) + 5120))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 386))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 386))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner) + 5280))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 3))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 3))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 131))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 131))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner) + 160))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 259))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 259))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner) + 5120))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
                Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 387))] = (Conv2dOutput[((((((yy_outer_inner * 64) + (yy_inner * 16)) + (xx_outer_inner * 8)) + (xx_inner * 4)) + 387))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 5) * 2560) + (yy_outer_inner * 1280)) + (yy_inner * 320)) + (((((int)threadIdx.x) & 31) >> 3) * 40)) + (xx_outer_inner * 20)) + (xx_inner * 10)) + (rc_outer_inner * 2)) + rc_inner) + 5280))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
              }
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 8; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_relu[((((((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 5) * 32768)) + (ax1_inner * 4096)) + (((((int)threadIdx.x) & 31) >> 3) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 16) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 5) * 32768)) + (ax1_inner * 4096)) + (((((int)threadIdx.x) & 31) >> 3) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 2048))] = max((Conv2dOutput[(((((ax1_inner * 16) + (ax2_inner * 4)) + ax3_inner) + 128))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 5) * 32768)) + (ax1_inner * 4096)) + (((((int)threadIdx.x) & 31) >> 3) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 131072))] = max((Conv2dOutput[(((((ax1_inner * 16) + (ax2_inner * 4)) + ax3_inner) + 256))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 5) * 32768)) + (ax1_inner * 4096)) + (((((int)threadIdx.x) & 31) >> 3) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 133120))] = max((Conv2dOutput[(((((ax1_inner * 16) + (ax2_inner * 4)) + ax3_inner) + 384))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


