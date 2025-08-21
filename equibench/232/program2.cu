
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
  float Conv2dOutput[90];
  __shared__ float PaddedInput_shared[360];
  __shared__ float placeholder_shared[1024];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 3; ++yy_outer_inner_init) {
    for (int ff_inner_init = 0; ff_inner_init < 2; ++ff_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 2) + ff_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 6))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 12))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 18))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 24))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 30))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 36))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 42))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 48))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 54))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 60))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 66))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 72))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 78))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + ff_inner_init) + 84))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 52; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 5; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 320) + (((int)threadIdx.x) * 5)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 360) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)) < 72) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 320) + (((int)threadIdx.x) * 5)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 120) * 120) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 3)) % 15) * 8)) + (((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 7)))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 37440) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 320) + (((int)threadIdx.x) * 5)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 120) * 12480)) + ((((int)blockIdx.x) & 1) * 6240)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 3)) % 15) * 416)) + (rc_outer_outer * 8)) + (((((int)threadIdx.x) * 5) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 7)))];
          }
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      ((float4*)(placeholder_shared + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 256) + (((int)threadIdx.x) * 4)))))[0] = ((float4*)(placeholder1 + ((((rc_outer_outer * 1024) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 256)) + (((int)threadIdx.x) * 4)))))[0];
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 3; ++yy_outer_inner) {
      for (int rc_inner = 0; rc_inner < 8; ++rc_inner) {
        for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
          Conv2dOutput[(((yy_outer_inner * 2) + ff_inner))] = (Conv2dOutput[(((yy_outer_inner * 2) + ff_inner))] + (PaddedInput_shared[(((yy_outer_inner * 120) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 6))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 6))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 8))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 12))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 12))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 16))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 18))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 18))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 24))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 24))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 24))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 32))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 30))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 30))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 40))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 36))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 36))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 48))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 42))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 42))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 56))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 48))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 48))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 64))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 54))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 54))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 72))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 60))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 60))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 80))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 66))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 66))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 88))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 72))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 72))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 96))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 78))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 78))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 104))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
          Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 84))] = (Conv2dOutput[((((yy_outer_inner * 2) + ff_inner) + 84))] + (PaddedInput_shared[((((yy_outer_inner * 120) + rc_inner) + 112))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 2)) + ff_inner))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 3; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_relu[(((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 2) + ax3_inner))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 128))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 6))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 256))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 12))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 384))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 18))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 512))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 24))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 640))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 30))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 768))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 36))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 896))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 42))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 1024))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 48))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 1152))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 54))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 1280))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 60))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 1408))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 66))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 1536))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 72))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 1664))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 78))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)blockIdx.x) >> 1) * 11520) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 1792))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 84))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


