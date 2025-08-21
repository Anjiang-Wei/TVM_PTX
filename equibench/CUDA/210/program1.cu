
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
  float Conv2dOutput[28];
  __shared__ float PaddedInput_shared[196];
  __shared__ float placeholder_shared[16];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 7; ++xx_outer_inner_init) {
    Conv2dOutput[((xx_outer_inner_init * 2))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 14))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 15))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 608; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((int)threadIdx.x) * 608) + rc_outer_outer))];
    if (((int)threadIdx.x) < 84) {
      PaddedInput_shared[((((int)threadIdx.x) + 112))] = placeholder[((((((int)threadIdx.x) * 608) + rc_outer_outer) + 68096))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[((((int)threadIdx.x) * 2))] = placeholder1[((((rc_outer_outer * 128) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder1[(((((rc_outer_outer * 128) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) * 2)) + 1))];
    }
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 7; ++xx_outer_inner) {
      Conv2dOutput[((xx_outer_inner * 2))] = (Conv2dOutput[((xx_outer_inner * 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 7) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) & 7) * 2))]));
      Conv2dOutput[(((xx_outer_inner * 2) + 14))] = (Conv2dOutput[(((xx_outer_inner * 2) + 14))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 7) + xx_outer_inner) + 98))] * placeholder_shared[(((((int)threadIdx.x) & 7) * 2))]));
      Conv2dOutput[(((xx_outer_inner * 2) + 1))] = (Conv2dOutput[(((xx_outer_inner * 2) + 1))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 7) + xx_outer_inner))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 2) + 1))]));
      Conv2dOutput[(((xx_outer_inner * 2) + 15))] = (Conv2dOutput[(((xx_outer_inner * 2) + 15))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 7) + xx_outer_inner) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 2) + 1))]));
    }
  }
  for (int ax2_inner = 0; ax2_inner < 7; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_relu[(((((((((int)threadIdx.x) >> 3) * 896) + (ax2_inner * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))] = max((Conv2dOutput[(((ax2_inner * 2) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 3) * 896) + (ax2_inner * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 12544))] = max((Conv2dOutput[((((ax2_inner * 2) + ax3_inner) + 14))] + placeholder2[((((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


