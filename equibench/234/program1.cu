
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
  float Conv2dOutput[16];
  __shared__ float PaddedInput_shared[64];
  __shared__ float placeholder_shared[128];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 192; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 64) {
      PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 98304) + ((((int)threadIdx.x) >> 2) * 6144)) + ((((int)blockIdx.x) & 7) * 768)) + ((((int)threadIdx.x) & 3) * 192)) + rc_outer_outer))];
    }
    if (((int)threadIdx.x) < 128) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 128) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 8))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 1))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 2))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 3))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 4))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 5))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 6))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 7))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)) + 4))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 8))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 1))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 2))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 3))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 4))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 5))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 6))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 8) + ((((int)threadIdx.x) & 63) >> 4)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 8) + 7))]));
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
      T_relu[((((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)threadIdx.x) >> 6) * 8192)) + (ax1_inner * 4096)) + ((((int)blockIdx.x) & 7) * 512)) + ((((int)threadIdx.x) & 63) * 8)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 8) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 15) * 8) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


