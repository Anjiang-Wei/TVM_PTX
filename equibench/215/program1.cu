
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
  float Conv2dOutput[384];
  __shared__ float PaddedInput_shared[225];
  __shared__ float placeholder_shared[128];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 3; ++xx_outer_inner_init) {
    for (int ff_inner_init = 0; ff_inner_init < 16; ++ff_inner_init) {
      Conv2dOutput[(((xx_outer_inner_init * 16) + ff_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 16) + ff_inner_init) + 48))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 16) + ff_inner_init) + 96))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 16) + ff_inner_init) + 144))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 16) + ff_inner_init) + 192))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 16) + ff_inner_init) + 240))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 16) + ff_inner_init) + 288))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 16) + ff_inner_init) + 336))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 256; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((int)threadIdx.x) * 256) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 75))] = placeholder[((((((int)threadIdx.x) * 256) + rc_outer_outer) + 19200))];
    PaddedInput_shared[((((int)threadIdx.x) + 150))] = placeholder[((((((int)threadIdx.x) * 256) + rc_outer_outer) + 38400))];
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[((((int)threadIdx.x) * 8))] = placeholder1[(((rc_outer_outer * 128) + (((int)threadIdx.x) * 8)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 1))] = placeholder1[((((rc_outer_outer * 128) + (((int)threadIdx.x) * 8)) + 1))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 2))] = placeholder1[((((rc_outer_outer * 128) + (((int)threadIdx.x) * 8)) + 2))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 3))] = placeholder1[((((rc_outer_outer * 128) + (((int)threadIdx.x) * 8)) + 3))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 4))] = placeholder1[((((rc_outer_outer * 128) + (((int)threadIdx.x) * 8)) + 4))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 5))] = placeholder1[((((rc_outer_outer * 128) + (((int)threadIdx.x) * 8)) + 5))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 6))] = placeholder1[((((rc_outer_outer * 128) + (((int)threadIdx.x) * 8)) + 6))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 7))] = placeholder1[((((rc_outer_outer * 128) + (((int)threadIdx.x) * 8)) + 7))];
    }
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 3; ++xx_outer_inner) {
      for (int ff_inner = 0; ff_inner < 16; ++ff_inner) {
        Conv2dOutput[(((xx_outer_inner * 16) + ff_inner))] = (Conv2dOutput[(((xx_outer_inner * 16) + ff_inner))] + (PaddedInput_shared[(((((int)threadIdx.x) * 3) + xx_outer_inner))] * placeholder_shared[(ff_inner)]));
        Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 48))] = (Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 48))] + (PaddedInput_shared[(((((int)threadIdx.x) * 3) + xx_outer_inner))] * placeholder_shared[((ff_inner + 16))]));
        Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 96))] = (Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 96))] + (PaddedInput_shared[(((((int)threadIdx.x) * 3) + xx_outer_inner))] * placeholder_shared[((ff_inner + 32))]));
        Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 144))] = (Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 144))] + (PaddedInput_shared[(((((int)threadIdx.x) * 3) + xx_outer_inner))] * placeholder_shared[((ff_inner + 48))]));
        Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 192))] = (Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 192))] + (PaddedInput_shared[(((((int)threadIdx.x) * 3) + xx_outer_inner))] * placeholder_shared[((ff_inner + 64))]));
        Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 240))] = (Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 240))] + (PaddedInput_shared[(((((int)threadIdx.x) * 3) + xx_outer_inner))] * placeholder_shared[((ff_inner + 80))]));
        Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 288))] = (Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 288))] + (PaddedInput_shared[(((((int)threadIdx.x) * 3) + xx_outer_inner))] * placeholder_shared[((ff_inner + 96))]));
        Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 336))] = (Conv2dOutput[((((xx_outer_inner * 16) + ff_inner) + 336))] + (PaddedInput_shared[(((((int)threadIdx.x) * 3) + xx_outer_inner))] * placeholder_shared[((ff_inner + 112))]));
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 16; ++ax3_inner) {
      T_relu[((((((int)threadIdx.x) * 384) + (ax2_inner * 128)) + ax3_inner))] = max((Conv2dOutput[(((ax2_inner * 16) + ax3_inner))] + placeholder2[(ax3_inner)]), 0.000000e+00f);
      T_relu[(((((((int)threadIdx.x) * 384) + (ax2_inner * 128)) + ax3_inner) + 16))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 48))] + placeholder2[((ax3_inner + 16))]), 0.000000e+00f);
      T_relu[(((((((int)threadIdx.x) * 384) + (ax2_inner * 128)) + ax3_inner) + 32))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 96))] + placeholder2[((ax3_inner + 32))]), 0.000000e+00f);
      T_relu[(((((((int)threadIdx.x) * 384) + (ax2_inner * 128)) + ax3_inner) + 48))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 144))] + placeholder2[((ax3_inner + 48))]), 0.000000e+00f);
      T_relu[(((((((int)threadIdx.x) * 384) + (ax2_inner * 128)) + ax3_inner) + 64))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 192))] + placeholder2[((ax3_inner + 64))]), 0.000000e+00f);
      T_relu[(((((((int)threadIdx.x) * 384) + (ax2_inner * 128)) + ax3_inner) + 80))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 240))] + placeholder2[((ax3_inner + 80))]), 0.000000e+00f);
      T_relu[(((((((int)threadIdx.x) * 384) + (ax2_inner * 128)) + ax3_inner) + 96))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 288))] + placeholder2[((ax3_inner + 96))]), 0.000000e+00f);
      T_relu[(((((((int)threadIdx.x) * 384) + (ax2_inner * 128)) + ax3_inner) + 112))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 336))] + placeholder2[((ax3_inner + 112))]), 0.000000e+00f);
    }
  }
}


