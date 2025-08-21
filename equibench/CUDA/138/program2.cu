
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
  float Conv2dOutput[2];
  __shared__ float PaddedInput_shared[128];
  __shared__ float placeholder_shared[32];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 512; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)threadIdx.x) >> 3) * 16384) + ((((int)blockIdx.x) / 48) * 4096)) + (((((int)threadIdx.x) & 7) >> 2) * 2048)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 1536) + ((((int)threadIdx.x) >> 3) * 384)) + ((((int)blockIdx.x) % 48) * 8)) + (((int)threadIdx.x) & 7)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 3) * 8))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + 4))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + 1))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + 5))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + 2))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 16))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + 6))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 16))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + 3))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 24))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + 7))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 24))]));
  }
  for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
    T_relu[(((((((((int)threadIdx.x) >> 3) * 3072) + ((((int)blockIdx.x) / 48) * 768)) + (ax2_inner * 384)) + ((((int)blockIdx.x) % 48) * 8)) + (((int)threadIdx.x) & 7)))] = max((Conv2dOutput[(ax2_inner)] + placeholder2[((((((int)blockIdx.x) % 48) * 8) + (((int)threadIdx.x) & 7)))]), 0.000000e+00f);
  }
}


