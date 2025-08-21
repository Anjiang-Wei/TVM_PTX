
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
  __shared__ float PaddedInput_shared[128];
  __shared__ float placeholder_shared[64];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 48; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[((((int)threadIdx.x) * 16))] = placeholder[((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 1))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 2))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 96))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 3))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 97))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 4))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 6144))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 5))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 6145))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 6))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 6240))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 7))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 6241))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 8))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 12288))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 9))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 12289))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 10))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 12384))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 11))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 12385))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 12))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 18432))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 13))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 18433))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 14))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 18528))];
    }
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[(((((int)threadIdx.x) * 16) + 15))] = placeholder[(((((((((int)blockIdx.x) >> 7) * 196608) + (((int)threadIdx.x) * 24576)) + (((((int)blockIdx.x) & 127) >> 2) * 192)) + (rc_outer_outer * 2)) + 18529))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[((((int)threadIdx.x) * 16))] = placeholder1[(((((rc_outer_outer * 256) + ((((int)threadIdx.x) >> 1) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 1) * 16)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 1))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 1) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 1) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 2))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 2) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 2) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 3))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 3) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 3) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 4))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 4) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 4) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 5))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 5) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 5) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 6))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 6) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 6) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 7))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 7) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 7) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 8))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 8) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 8) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 9))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 9) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 9) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 10))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 10) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 10) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 11))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 11) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 11) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 12))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 12) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 12) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 13))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 13) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 13) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 14))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 14) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 14) & 31)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 15))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 16) + 15) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 16) + 15) & 31)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)))] * placeholder_shared[(((((int)threadIdx.x) & 3) * 4))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 16))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 1))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 17))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 2))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 18))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 3))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 19))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 32))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 48))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 33))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 49))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 34))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 50))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 35))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 51))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 4))] * placeholder_shared[(((((int)threadIdx.x) & 3) * 4))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 16))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 1))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 17))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 2))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 18))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 3))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 19))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 32))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 48))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 33))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 49))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 34))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 50))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 35))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 8) + (((((int)threadIdx.x) & 7) >> 2) * 2)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 51))]));
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
      T_relu[((((((((((((int)blockIdx.x) >> 7) * 262144) + ((((int)threadIdx.x) >> 3) * 16384)) + (ax1_inner * 8192)) + (((((int)blockIdx.x) & 127) >> 2) * 256)) + (((((int)threadIdx.x) & 7) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 4) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((((((int)blockIdx.x) >> 7) * 262144) + ((((int)threadIdx.x) >> 3) * 16384)) + (ax1_inner * 8192)) + (((((int)blockIdx.x) & 127) >> 2) * 256)) + (((((int)threadIdx.x) & 7) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 8))] + placeholder2[((((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))]), 0.000000e+00f);
    }
  }
}


