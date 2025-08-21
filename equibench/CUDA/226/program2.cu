
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
  float Conv2dOutput[32];
  __shared__ float PaddedInput_shared[256];
  __shared__ float placeholder_shared[256];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    Conv2dOutput[((yy_outer_inner_init * 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 12))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 16))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 20))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 24))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 28))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 13))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 17))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 21))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 25))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 29))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 184; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)threadIdx.x) >> 4) * 11776) + ((((int)blockIdx.x) >> 1) * 2944)) + (((((int)threadIdx.x) & 15) >> 2) * 736)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 128))] = placeholder[((((((((((int)threadIdx.x) >> 4) * 11776) + ((((int)blockIdx.x) >> 1) * 2944)) + (((((int)threadIdx.x) & 15) >> 2) * 736)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 94208))];
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[((((int)threadIdx.x) * 4))] = placeholder1[(((((rc_outer_outer * 512) + ((((int)threadIdx.x) >> 4) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 4)))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 1))] = placeholder1[(((((rc_outer_outer * 512) + ((((((int)threadIdx.x) * 4) + 1) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 4) + 1) & 63)))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 2))] = placeholder1[(((((rc_outer_outer * 512) + ((((((int)threadIdx.x) * 4) + 2) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 4) + 2) & 63)))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 3))] = placeholder1[(((((rc_outer_outer * 512) + ((((((int)threadIdx.x) * 4) + 3) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 4) + 3) & 63)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
        Conv2dOutput[((yy_outer_inner * 2))] = (Conv2dOutput[((yy_outer_inner * 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 4))] = (Conv2dOutput[(((yy_outer_inner * 2) + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 8))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 8))] = (Conv2dOutput[(((yy_outer_inner * 2) + 8))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 16))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 12))] = (Conv2dOutput[(((yy_outer_inner * 2) + 12))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 24))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 16))] = (Conv2dOutput[(((yy_outer_inner * 2) + 16))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 32))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 20))] = (Conv2dOutput[(((yy_outer_inner * 2) + 20))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 40))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 24))] = (Conv2dOutput[(((yy_outer_inner * 2) + 24))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 48))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 28))] = (Conv2dOutput[(((yy_outer_inner * 2) + 28))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 56))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 1))] = (Conv2dOutput[(((yy_outer_inner * 2) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 5))] = (Conv2dOutput[(((yy_outer_inner * 2) + 5))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 9))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 9))] = (Conv2dOutput[(((yy_outer_inner * 2) + 9))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 17))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 13))] = (Conv2dOutput[(((yy_outer_inner * 2) + 13))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 25))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 17))] = (Conv2dOutput[(((yy_outer_inner * 2) + 17))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 33))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 21))] = (Conv2dOutput[(((yy_outer_inner * 2) + 21))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 41))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 25))] = (Conv2dOutput[(((yy_outer_inner * 2) + 25))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 49))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 29))] = (Conv2dOutput[(((yy_outer_inner * 2) + 29))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 32) + (yy_outer_inner * 16)) + (((((int)threadIdx.x) & 15) >> 2) * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 2)) + 57))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_relu[(((((((((((int)threadIdx.x) >> 4) * 4096) + (ax1_inner * 2048)) + ((((int)blockIdx.x) >> 1) * 512)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 2) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) >> 4) * 4096) + (ax1_inner * 2048)) + ((((int)blockIdx.x) >> 1) * 512)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 8))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 4))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 8))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) >> 4) * 4096) + (ax1_inner * 2048)) + ((((int)blockIdx.x) >> 1) * 512)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 16))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 8))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 16))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) >> 4) * 4096) + (ax1_inner * 2048)) + ((((int)blockIdx.x) >> 1) * 512)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 24))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 12))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 24))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) >> 4) * 4096) + (ax1_inner * 2048)) + ((((int)blockIdx.x) >> 1) * 512)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 32))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 16))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 32))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) >> 4) * 4096) + (ax1_inner * 2048)) + ((((int)blockIdx.x) >> 1) * 512)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 40))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 20))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 40))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) >> 4) * 4096) + (ax1_inner * 2048)) + ((((int)blockIdx.x) >> 1) * 512)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 48))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 24))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 48))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) >> 4) * 4096) + (ax1_inner * 2048)) + ((((int)blockIdx.x) >> 1) * 512)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 56))] = max((Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 28))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 56))]), 0.000000e+00f);
    }
  }
}


