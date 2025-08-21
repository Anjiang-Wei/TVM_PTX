
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
  float Conv2dOutput[196];
  __shared__ float PaddedInput_shared[98];
  __shared__ float placeholder_shared[256];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 7; ++yy_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 28))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 56))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 84))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 112))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 140))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 168))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 29))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 57))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 85))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 113))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 141))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + 169))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 1024; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 98) {
      PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((int)threadIdx.x) / 7) * 14336) + (((int)blockIdx.x) * 7168)) + ((((int)threadIdx.x) % 7) * 1024)) + rc_outer_outer))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 256) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 128))];
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 7; ++yy_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
        Conv2dOutput[(((yy_outer_inner * 4) + (ff_outer_inner * 2)))] = (Conv2dOutput[(((yy_outer_inner * 4) + (ff_outer_inner * 2)))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 28))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 28))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 56))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 56))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 84))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 84))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 112))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 112))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 140))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 140))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 168))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 168))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 1))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 29))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 29))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)) + 1))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 57))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 57))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)) + 2))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 85))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 85))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)) + 3))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 113))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 113))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)) + 4))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 141))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 141))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)) + 5))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 169))] = (Conv2dOutput[((((yy_outer_inner * 4) + (ff_outer_inner * 2)) + 169))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 49) + (yy_outer_inner * 7)) + 6))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 4) + (ff_outer_inner * 2)) + 1))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 7; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
      T_relu[(((((((((int)threadIdx.x) >> 6) * 25088) + (ax1_inner * 3584)) + (((int)blockIdx.x) * 1792)) + ((((int)threadIdx.x) & 63) * 4)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 4) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 63) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 6) * 25088) + (ax1_inner * 3584)) + (((int)blockIdx.x) * 1792)) + ((((int)threadIdx.x) & 63) * 4)) + ax3_inner) + 256))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 28))] + placeholder2[((((((int)threadIdx.x) & 63) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 6) * 25088) + (ax1_inner * 3584)) + (((int)blockIdx.x) * 1792)) + ((((int)threadIdx.x) & 63) * 4)) + ax3_inner) + 512))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 56))] + placeholder2[((((((int)threadIdx.x) & 63) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 6) * 25088) + (ax1_inner * 3584)) + (((int)blockIdx.x) * 1792)) + ((((int)threadIdx.x) & 63) * 4)) + ax3_inner) + 768))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 84))] + placeholder2[((((((int)threadIdx.x) & 63) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 6) * 25088) + (ax1_inner * 3584)) + (((int)blockIdx.x) * 1792)) + ((((int)threadIdx.x) & 63) * 4)) + ax3_inner) + 1024))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 112))] + placeholder2[((((((int)threadIdx.x) & 63) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 6) * 25088) + (ax1_inner * 3584)) + (((int)blockIdx.x) * 1792)) + ((((int)threadIdx.x) & 63) * 4)) + ax3_inner) + 1280))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 140))] + placeholder2[((((((int)threadIdx.x) & 63) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 6) * 25088) + (ax1_inner * 3584)) + (((int)blockIdx.x) * 1792)) + ((((int)threadIdx.x) & 63) * 4)) + ax3_inner) + 1536))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 168))] + placeholder2[((((((int)threadIdx.x) & 63) * 4) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


