
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
  float Conv2dOutput[48];
  __shared__ float PaddedInput_shared[4680];
  __shared__ float placeholder_shared[6656];
  for (int yy_inner_init = 0; yy_inner_init < 3; ++yy_inner_init) {
    for (int ff_inner_init = 0; ff_inner_init < 2; ++ff_inner_init) {
      Conv2dOutput[(((yy_inner_init * 2) + ff_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 2) + ff_inner_init) + 6))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 2) + ff_inner_init) + 12))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 2) + ff_inner_init) + 18))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 2) + ff_inner_init) + 24))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 2) + ff_inner_init) + 30))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 2) + ff_inner_init) + 36))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 2) + ff_inner_init) + 42))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 20; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 240) + ((int)threadIdx.x)) < 4680) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 240) + ((int)threadIdx.x)))] = placeholder[((((((((((int)blockIdx.x) / 5) * 374400) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 240) + ((int)threadIdx.x)) / 156) * 12480)) + ((((int)blockIdx.x) % 5) * 2496)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 240) + ((int)threadIdx.x)) % 156) / 52) * 832)) + (rc_outer_outer * 52)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 240) + ((int)threadIdx.x)) % 52)))];
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 28; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 240) + ((int)threadIdx.x)) < 6656) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 240) + ((int)threadIdx.x)))] = placeholder1[((((rc_outer_outer * 6656) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 240)) + ((int)threadIdx.x)))];
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 26; ++rc_outer_inner) {
      for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
        for (int yy_inner = 0; yy_inner < 3; ++yy_inner) {
          for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
            Conv2dOutput[(((yy_inner * 2) + ff_inner))] = (Conv2dOutput[(((yy_inner * 2) + ff_inner))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 24) * 468) + (yy_inner * 156)) + (((((int)threadIdx.x) % 24) >> 3) * 52)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ff_inner))]));
            Conv2dOutput[((((yy_inner * 2) + ff_inner) + 6))] = (Conv2dOutput[((((yy_inner * 2) + ff_inner) + 6))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 24) * 468) + (yy_inner * 156)) + (((((int)threadIdx.x) % 24) >> 3) * 52)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ff_inner) + 16))]));
            Conv2dOutput[((((yy_inner * 2) + ff_inner) + 12))] = (Conv2dOutput[((((yy_inner * 2) + ff_inner) + 12))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 24) * 468) + (yy_inner * 156)) + (((((int)threadIdx.x) % 24) >> 3) * 52)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ff_inner) + 32))]));
            Conv2dOutput[((((yy_inner * 2) + ff_inner) + 18))] = (Conv2dOutput[((((yy_inner * 2) + ff_inner) + 18))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 24) * 468) + (yy_inner * 156)) + (((((int)threadIdx.x) % 24) >> 3) * 52)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ff_inner) + 48))]));
            Conv2dOutput[((((yy_inner * 2) + ff_inner) + 24))] = (Conv2dOutput[((((yy_inner * 2) + ff_inner) + 24))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 24) * 468) + (yy_inner * 156)) + (((((int)threadIdx.x) % 24) >> 3) * 52)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ff_inner) + 64))]));
            Conv2dOutput[((((yy_inner * 2) + ff_inner) + 30))] = (Conv2dOutput[((((yy_inner * 2) + ff_inner) + 30))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 24) * 468) + (yy_inner * 156)) + (((((int)threadIdx.x) % 24) >> 3) * 52)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ff_inner) + 80))]));
            Conv2dOutput[((((yy_inner * 2) + ff_inner) + 36))] = (Conv2dOutput[((((yy_inner * 2) + ff_inner) + 36))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 24) * 468) + (yy_inner * 156)) + (((((int)threadIdx.x) % 24) >> 3) * 52)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ff_inner) + 96))]));
            Conv2dOutput[((((yy_inner * 2) + ff_inner) + 42))] = (Conv2dOutput[((((yy_inner * 2) + ff_inner) + 42))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 24) * 468) + (yy_inner * 156)) + (((((int)threadIdx.x) % 24) >> 3) * 52)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ff_inner) + 112))]));
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 3; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_relu[(((((((((((int)blockIdx.x) / 5) * 57600) + ((((int)threadIdx.x) / 24) * 5760)) + (ax1_inner * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 24) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 2) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 7) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) / 5) * 57600) + ((((int)threadIdx.x) / 24) * 5760)) + (ax1_inner * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 24) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 16))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 6))] + placeholder2[(((((((int)threadIdx.x) & 7) * 2) + ax3_inner) + 16))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) / 5) * 57600) + ((((int)threadIdx.x) / 24) * 5760)) + (ax1_inner * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 24) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 32))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 12))] + placeholder2[(((((((int)threadIdx.x) & 7) * 2) + ax3_inner) + 32))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) / 5) * 57600) + ((((int)threadIdx.x) / 24) * 5760)) + (ax1_inner * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 24) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 48))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 18))] + placeholder2[(((((((int)threadIdx.x) & 7) * 2) + ax3_inner) + 48))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) / 5) * 57600) + ((((int)threadIdx.x) / 24) * 5760)) + (ax1_inner * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 24) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 64))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 24))] + placeholder2[(((((((int)threadIdx.x) & 7) * 2) + ax3_inner) + 64))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) / 5) * 57600) + ((((int)threadIdx.x) / 24) * 5760)) + (ax1_inner * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 24) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 80))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 30))] + placeholder2[(((((((int)threadIdx.x) & 7) * 2) + ax3_inner) + 80))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) / 5) * 57600) + ((((int)threadIdx.x) / 24) * 5760)) + (ax1_inner * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 24) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 96))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 36))] + placeholder2[(((((((int)threadIdx.x) & 7) * 2) + ax3_inner) + 96))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) / 5) * 57600) + ((((int)threadIdx.x) / 24) * 5760)) + (ax1_inner * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 24) >> 3) * 128)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 112))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 42))] + placeholder2[(((((((int)threadIdx.x) & 7) * 2) + ax3_inner) + 112))]), 0.000000e+00f);
    }
  }
}


