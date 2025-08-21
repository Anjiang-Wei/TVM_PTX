
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
  float Conv2dOutput[24];
  __shared__ float PaddedInput_shared[18];
  __shared__ float placeholder_shared[128];
  for (int xx_inner_init = 0; xx_inner_init < 3; ++xx_inner_init) {
    Conv2dOutput[(xx_inner_init)] = 0.000000e+00f;
    Conv2dOutput[((xx_inner_init + 3))] = 0.000000e+00f;
    Conv2dOutput[((xx_inner_init + 6))] = 0.000000e+00f;
    Conv2dOutput[((xx_inner_init + 9))] = 0.000000e+00f;
    Conv2dOutput[((xx_inner_init + 12))] = 0.000000e+00f;
    Conv2dOutput[((xx_inner_init + 15))] = 0.000000e+00f;
    Conv2dOutput[((xx_inner_init + 18))] = 0.000000e+00f;
    Conv2dOutput[((xx_inner_init + 21))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 736; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)threadIdx.x) / 9) * 165600) + ((((int)blockIdx.x) / 5) * 33120)) + (((((int)threadIdx.x) % 9) / 3) * 11040)) + ((((int)blockIdx.x) % 5) * 2208)) + ((((int)threadIdx.x) % 3) * 736)) + rc_outer_outer))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 128) {
        if (((int)threadIdx.x) < 64) {
          placeholder_shared[(((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[((((rc_outer_outer * 128) + (((int)threadIdx.x) * 2)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))];
        }
      }
    }
    __syncthreads();
    for (int xx_inner = 0; xx_inner < 3; ++xx_inner) {
      Conv2dOutput[(xx_inner)] = (Conv2dOutput[(xx_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 3) + xx_inner))] * placeholder_shared[((((int)threadIdx.x) & 15))]));
      Conv2dOutput[((xx_inner + 3))] = (Conv2dOutput[((xx_inner + 3))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 3) + xx_inner))] * placeholder_shared[(((((int)threadIdx.x) & 15) + 16))]));
      Conv2dOutput[((xx_inner + 6))] = (Conv2dOutput[((xx_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 3) + xx_inner))] * placeholder_shared[(((((int)threadIdx.x) & 15) + 32))]));
      Conv2dOutput[((xx_inner + 9))] = (Conv2dOutput[((xx_inner + 9))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 3) + xx_inner))] * placeholder_shared[(((((int)threadIdx.x) & 15) + 48))]));
      Conv2dOutput[((xx_inner + 12))] = (Conv2dOutput[((xx_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 3) + xx_inner))] * placeholder_shared[(((((int)threadIdx.x) & 15) + 64))]));
      Conv2dOutput[((xx_inner + 15))] = (Conv2dOutput[((xx_inner + 15))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 3) + xx_inner))] * placeholder_shared[(((((int)threadIdx.x) & 15) + 80))]));
      Conv2dOutput[((xx_inner + 18))] = (Conv2dOutput[((xx_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 3) + xx_inner))] * placeholder_shared[(((((int)threadIdx.x) & 15) + 96))]));
      Conv2dOutput[((xx_inner + 21))] = (Conv2dOutput[((xx_inner + 21))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 3) + xx_inner))] * placeholder_shared[(((((int)threadIdx.x) & 15) + 112))]));
    }
  }
  for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
    T_relu[((((((((((int)threadIdx.x) / 48) * 28800) + ((((int)blockIdx.x) / 5) * 5760)) + (((((int)threadIdx.x) % 48) >> 4) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)))] = max((Conv2dOutput[(ax2_inner)] + placeholder2[((((int)threadIdx.x) & 15))]), 0.000000e+00f);
    T_relu[(((((((((((int)threadIdx.x) / 48) * 28800) + ((((int)blockIdx.x) / 5) * 5760)) + (((((int)threadIdx.x) % 48) >> 4) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 16))] = max((Conv2dOutput[((ax2_inner + 3))] + placeholder2[(((((int)threadIdx.x) & 15) + 16))]), 0.000000e+00f);
    T_relu[(((((((((((int)threadIdx.x) / 48) * 28800) + ((((int)blockIdx.x) / 5) * 5760)) + (((((int)threadIdx.x) % 48) >> 4) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 32))] = max((Conv2dOutput[((ax2_inner + 6))] + placeholder2[(((((int)threadIdx.x) & 15) + 32))]), 0.000000e+00f);
    T_relu[(((((((((((int)threadIdx.x) / 48) * 28800) + ((((int)blockIdx.x) / 5) * 5760)) + (((((int)threadIdx.x) % 48) >> 4) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 48))] = max((Conv2dOutput[((ax2_inner + 9))] + placeholder2[(((((int)threadIdx.x) & 15) + 48))]), 0.000000e+00f);
    T_relu[(((((((((((int)threadIdx.x) / 48) * 28800) + ((((int)blockIdx.x) / 5) * 5760)) + (((((int)threadIdx.x) % 48) >> 4) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 64))] = max((Conv2dOutput[((ax2_inner + 12))] + placeholder2[(((((int)threadIdx.x) & 15) + 64))]), 0.000000e+00f);
    T_relu[(((((((((((int)threadIdx.x) / 48) * 28800) + ((((int)blockIdx.x) / 5) * 5760)) + (((((int)threadIdx.x) % 48) >> 4) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 80))] = max((Conv2dOutput[((ax2_inner + 15))] + placeholder2[(((((int)threadIdx.x) & 15) + 80))]), 0.000000e+00f);
    T_relu[(((((((((((int)threadIdx.x) / 48) * 28800) + ((((int)blockIdx.x) / 5) * 5760)) + (((((int)threadIdx.x) % 48) >> 4) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 96))] = max((Conv2dOutput[((ax2_inner + 18))] + placeholder2[(((((int)threadIdx.x) & 15) + 96))]), 0.000000e+00f);
    T_relu[(((((((((((int)threadIdx.x) / 48) * 28800) + ((((int)blockIdx.x) / 5) * 5760)) + (((((int)threadIdx.x) % 48) >> 4) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 112))] = max((Conv2dOutput[((ax2_inner + 21))] + placeholder2[(((((int)threadIdx.x) & 15) + 112))]), 0.000000e+00f);
  }
}


