
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2) {
  float Conv2dOutput[8];
  __shared__ float PaddedInput_shared[336];
  __shared__ float placeholder_shared[2048];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[((((int)threadIdx.x) * 12))] = placeholder[((((((((((int)blockIdx.x) / 14) * 28672) + ((((int)threadIdx.x) >> 2) * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + ((((((int)threadIdx.x) & 3) * 12) >> 4) * 64)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) * 12) & 15)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 1))] = placeholder[((((((((((int)blockIdx.x) / 14) * 28672) + ((((((int)threadIdx.x) * 12) + 1) / 48) * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + (((((((int)threadIdx.x) * 12) + 1) % 48) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 12) + 1) & 15)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 2))] = placeholder[((((((((((int)blockIdx.x) / 14) * 28672) + ((((((int)threadIdx.x) * 12) + 2) / 48) * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + (((((((int)threadIdx.x) * 12) + 2) % 48) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 12) + 2) & 15)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 3))] = placeholder[((((((((((int)blockIdx.x) / 14) * 28672) + ((((((int)threadIdx.x) * 12) + 3) / 48) * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + (((((((int)threadIdx.x) * 12) + 3) % 48) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 12) + 3) & 15)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 4))] = placeholder[((((((((((int)blockIdx.x) / 14) * 28672) + ((((((int)threadIdx.x) * 12) + 4) / 48) * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + (((((((int)threadIdx.x) * 12) + 4) % 48) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 12) + 4) & 15)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 5))] = placeholder[((((((((((int)blockIdx.x) / 14) * 28672) + ((((((int)threadIdx.x) * 12) + 5) / 48) * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + (((((((int)threadIdx.x) * 12) + 5) % 48) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 12) + 5) & 15)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 6))] = placeholder[((((((((((int)blockIdx.x) / 14) * 28672) + ((((((int)threadIdx.x) * 12) + 6) / 48) * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + (((((((int)threadIdx.x) * 12) + 6) % 48) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 12) + 6) & 15)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 7))] = placeholder[((((((((((int)blockIdx.x) / 14) * 28672) + ((((((int)threadIdx.x) * 12) + 7) / 48) * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + (((((((int)threadIdx.x) * 12) + 7) % 48) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 12) + 7) & 15)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 8))] = placeholder[((((((((((int)blockIdx.x) / 14) * 28672) + ((((((int)threadIdx.x) * 12) + 8) / 48) * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + (((((((int)threadIdx.x) * 12) + 8) % 48) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 12) + 8) & 15)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 9))] = placeholder[((((((((((int)blockIdx.x) / 14) * 28672) + ((((((int)threadIdx.x) * 12) + 9) / 48) * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + (((((((int)threadIdx.x) * 12) + 9) % 48) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 12) + 9) & 15)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 10))] = placeholder[((((((((((int)blockIdx.x) / 14) * 28672) + ((((((int)threadIdx.x) * 12) + 10) / 48) * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + (((((((int)threadIdx.x) * 12) + 10) % 48) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 12) + 10) & 15)))];
    }
    if (((int)threadIdx.x) < 28) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 11))] = placeholder[((((((((((int)blockIdx.x) / 14) * 28672) + ((((((int)threadIdx.x) * 12) + 11) / 48) * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + (((((((int)threadIdx.x) * 12) + 11) % 48) >> 4) * 64)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 12) + 11) & 15)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 2048) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 128))];
    placeholder_shared[((((int)threadIdx.x) + 256))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 256))];
    placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 384))];
    placeholder_shared[((((int)threadIdx.x) + 512))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 512))];
    placeholder_shared[((((int)threadIdx.x) + 640))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 640))];
    placeholder_shared[((((int)threadIdx.x) + 768))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 768))];
    placeholder_shared[((((int)threadIdx.x) + 896))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 896))];
    placeholder_shared[((((int)threadIdx.x) + 1024))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1024))];
    placeholder_shared[((((int)threadIdx.x) + 1152))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1152))];
    placeholder_shared[((((int)threadIdx.x) + 1280))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1280))];
    placeholder_shared[((((int)threadIdx.x) + 1408))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1408))];
    placeholder_shared[((((int)threadIdx.x) + 1536))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1536))];
    placeholder_shared[((((int)threadIdx.x) + 1664))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1664))];
    placeholder_shared[((((int)threadIdx.x) + 1792))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1792))];
    placeholder_shared[((((int)threadIdx.x) + 1920))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1920))];
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 4))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 2))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 3))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 96))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 4))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 96))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 96))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 2))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 96))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 3))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 128))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 129))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 130))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 131))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 97))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 128))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 97))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 129))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 97))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 130))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 97))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 131))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 256))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 257))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 258))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 259))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 256))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 257))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 258))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 259))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 384))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 385))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 386))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 387))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 384))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 385))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 386))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 387))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 512))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 513))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 514))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 515))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 100))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 512))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 100))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 513))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 100))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 514))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 100))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 515))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 640))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 641))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 642))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 643))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 101))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 640))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 101))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 641))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 101))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 642))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 101))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 643))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 768))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 769))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 770))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 771))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 102))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 768))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 102))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 769))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 102))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 770))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 102))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 771))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 896))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 897))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 898))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 899))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 103))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 896))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 103))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 897))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 103))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 898))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 103))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 899))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1024))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1025))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1026))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1027))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 104))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1024))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 104))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1025))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 104))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1026))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 104))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1027))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1152))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1153))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1154))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1155))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 105))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1152))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 105))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1153))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 105))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1154))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 105))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1155))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1280))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1281))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1282))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1283))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 106))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1280))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 106))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1281))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 106))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1282))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 106))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1283))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1408))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1409))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1410))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1411))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 107))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1408))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 107))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1409))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 107))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1410))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 107))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1411))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1536))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1537))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1538))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1539))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1536))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1537))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1538))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1539))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1664))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1665))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1666))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1667))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1664))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1665))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1666))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1667))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1792))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1793))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1794))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1795))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 110))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1792))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 110))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1793))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 110))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1794))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 110))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1795))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1920))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1921))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1922))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1923))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 111))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1920))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 111))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1921))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 111))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1922))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 192) + (((((int)threadIdx.x) & 63) >> 5) * 32)) + 111))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 4) + 1923))]));
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
      T_add[((((((((((int)blockIdx.x) / 14) * 14336) + ((((int)threadIdx.x) >> 6) * 7168)) + (ax1_inner * 3584)) + ((((int)blockIdx.x) % 14) * 256)) + ((((int)threadIdx.x) & 63) * 4)) + ax3_inner))] = (Conv2dOutput[(((ax1_inner * 4) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 31) * 4) + ax3_inner))]);
    }
  }
}


