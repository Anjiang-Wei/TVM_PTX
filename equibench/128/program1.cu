
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
  float Conv2dOutput[8];
  __shared__ float PaddedInput_shared[128];
  __shared__ float placeholder_shared[512];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)blockIdx.x) >> 5) * 16384) + ((((int)threadIdx.x) >> 5) * 4096)) + (((((int)blockIdx.x) & 31) >> 1) * 256)) + (((((int)threadIdx.x) & 31) >> 3) * 64)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[((((((rc_outer_outer * 1024) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 256))];
    placeholder_shared[((((int)threadIdx.x) + 256))] = placeholder1[((((((rc_outer_outer * 1024) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 512))];
    placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[((((((rc_outer_outer * 1024) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 768))];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)))]));
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)) + 64))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)) + 1))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)) + 65))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 32))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 33))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)) + 64))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 32))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)) + 1))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 33))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)) + 65))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 64))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 65))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)) + 64))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 64))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)) + 1))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 65))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)) + 65))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 96))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 97))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)) + 64))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 96))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)) + 1))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 8) + (rc_outer_inner * 2)) + 97))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 31) * 2)) + 65))]));
    }
  }
  for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_relu[(((((((((((int)blockIdx.x) >> 5) * 32768) + (ax1_inner * 8192)) + (((((int)blockIdx.x) & 31) >> 1) * 512)) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 2) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


