
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
  float Conv2dOutput[784];
  __shared__ float PaddedInput_shared[49];
  __shared__ float placeholder_shared[128];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 7; ++yy_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 7; ++xx_outer_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 2))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 3))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 4))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 5))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 6))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 7))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 8))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 9))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 10))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 11))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 12))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 13))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 14))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 112) + (xx_outer_inner_init * 16)) + 15))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 512; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((int)blockIdx.x) * 25088) + (((int)threadIdx.x) * 512)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 8))] = placeholder[(((((((int)blockIdx.x) * 25088) + (((int)threadIdx.x) * 512)) + rc_outer_outer) + 4096))];
    PaddedInput_shared[((((int)threadIdx.x) + 16))] = placeholder[(((((((int)blockIdx.x) * 25088) + (((int)threadIdx.x) * 512)) + rc_outer_outer) + 8192))];
    PaddedInput_shared[((((int)threadIdx.x) + 24))] = placeholder[(((((((int)blockIdx.x) * 25088) + (((int)threadIdx.x) * 512)) + rc_outer_outer) + 12288))];
    PaddedInput_shared[((((int)threadIdx.x) + 32))] = placeholder[(((((((int)blockIdx.x) * 25088) + (((int)threadIdx.x) * 512)) + rc_outer_outer) + 16384))];
    PaddedInput_shared[((((int)threadIdx.x) + 40))] = placeholder[(((((((int)blockIdx.x) * 25088) + (((int)threadIdx.x) * 512)) + rc_outer_outer) + 20480))];
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[((((int)threadIdx.x) + 48))] = placeholder[(((((((int)blockIdx.x) * 25088) + (((int)threadIdx.x) * 512)) + rc_outer_outer) + 24576))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 128) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 8))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 8))];
    placeholder_shared[((((int)threadIdx.x) + 16))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 16))];
    placeholder_shared[((((int)threadIdx.x) + 24))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 24))];
    placeholder_shared[((((int)threadIdx.x) + 32))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 32))];
    placeholder_shared[((((int)threadIdx.x) + 40))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 40))];
    placeholder_shared[((((int)threadIdx.x) + 48))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 48))];
    placeholder_shared[((((int)threadIdx.x) + 56))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 56))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 64))];
    placeholder_shared[((((int)threadIdx.x) + 72))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 72))];
    placeholder_shared[((((int)threadIdx.x) + 80))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 80))];
    placeholder_shared[((((int)threadIdx.x) + 88))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 88))];
    placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 96))];
    placeholder_shared[((((int)threadIdx.x) + 104))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 104))];
    placeholder_shared[((((int)threadIdx.x) + 112))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 112))];
    placeholder_shared[((((int)threadIdx.x) + 120))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 120))];
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 7; ++yy_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 7; ++xx_outer_inner) {
        Conv2dOutput[(((yy_outer_inner * 112) + (xx_outer_inner * 16)))] = (Conv2dOutput[(((yy_outer_inner * 112) + (xx_outer_inner * 16)))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[((((int)threadIdx.x) * 16))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 1))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 2))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 2))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 2))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 3))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 3))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 3))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 4))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 4))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 4))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 5))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 5))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 5))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 6))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 6))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 6))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 7))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 7))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 7))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 8))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 8))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 8))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 9))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 9))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 9))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 10))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 10))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 10))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 11))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 11))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 11))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 12))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 12))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 13))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 13))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 14))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 14))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 14))]));
        Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 15))] = (Conv2dOutput[((((yy_outer_inner * 112) + (xx_outer_inner * 16)) + 15))] + (PaddedInput_shared[(((yy_outer_inner * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 15))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 7; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 7; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 16; ++ax3_inner) {
        T_relu[((((((((int)blockIdx.x) * 6272) + (ax1_inner * 896)) + (ax2_inner * 128)) + (((int)threadIdx.x) * 16)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 112) + (ax2_inner * 16)) + ax3_inner))] + placeholder2[(((((int)threadIdx.x) * 16) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


