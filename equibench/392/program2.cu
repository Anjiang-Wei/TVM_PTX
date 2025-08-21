
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv2dOutput[10];
  __shared__ float PaddedInput_shared[7500];
  __shared__ float placeholder_shared[100];
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
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[((((int)threadIdx.x) * 25))] = placeholder[((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 1))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 1))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 2))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 2))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 3))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 3))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 4))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 4))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 5))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 5))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 6))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 6))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 7))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 7))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 8))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 8))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 9))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 9))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 10))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 10))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 11))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 11))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 12))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 12))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 13))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 13))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 14))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 14))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 15))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 15))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 16))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 16))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 17))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 17))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 18))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 18))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 19))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 19))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 20))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 20))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 21))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 21))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 22))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 22))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 23))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 23))];
    PaddedInput_shared[(((((int)threadIdx.x) * 25) + 24))] = placeholder[(((((((((int)threadIdx.x) / 5) * 3000) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 24))];
    PaddedInput_shared[((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)))] = placeholder[((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 1))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 1))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 2))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 2))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 3))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 3))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 4))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 4))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 5))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 5))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 6))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 6))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 7))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 7))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 8))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 8))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 9))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 9))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 10))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 10))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 11))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 11))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 12))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 12))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 13))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 13))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 14))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 14))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 15))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 15))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 16))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 16))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 17))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 17))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 18))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 18))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 19))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 19))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 20))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 20))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 21))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 21))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 22))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 22))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 23))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 23))];
    PaddedInput_shared[(((((((((int)threadIdx.x) + 120) / 75) * 1875) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 24))] = placeholder[(((((((((((int)threadIdx.x) + 120) / 75) * 45000) + ((((((int)threadIdx.x) / 5) + 9) % 15) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 24))];
    if (((int)threadIdx.x) < 60) {
      PaddedInput_shared[((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)))] = placeholder[((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 1))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 1))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 2))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 2))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 3))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 3))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 4))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 4))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 5))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 5))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 6))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 6))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 7))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 7))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 8))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 8))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 9))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 9))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 10))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 10))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 11))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 11))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 12))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 12))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 13))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 13))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 14))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 14))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 15))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 15))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 16))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 16))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 17))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 17))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 18))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 18))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 19))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 19))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 20))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 20))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 21))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 21))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 22))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 22))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 23))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 23))];
      PaddedInput_shared[(((((((((int)threadIdx.x) + 240) / 75) * 1875) + (((((int)threadIdx.x) / 5) + 3) * 125)) + ((((int)threadIdx.x) % 5) * 25)) + 24))] = placeholder[(((((((((((int)threadIdx.x) + 240) / 75) * 45000) + (((((int)threadIdx.x) / 5) + 3) * 3000)) + ((((int)blockIdx.x) / 20) * 1000)) + ((((int)threadIdx.x) % 5) * 200)) + (rc_outer_outer * 25)) + 24))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[((((int)threadIdx.x) * 25))] = placeholder1[(((((rc_outer_outer * 2000) + (((((int)threadIdx.x) * 25) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + ((((int)threadIdx.x) * 25) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 1))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 1) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 1) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 2))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 2) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 2) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 3))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 3) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 3) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 4))] = placeholder1[((((((rc_outer_outer * 2000) + (((((int)threadIdx.x) * 25) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + ((((int)threadIdx.x) * 25) & 3)) + 80))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 5))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 5) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 1) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 6))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 6) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 2) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 7))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 7) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 3) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 8))] = placeholder1[((((((rc_outer_outer * 2000) + (((((int)threadIdx.x) * 25) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + ((((int)threadIdx.x) * 25) & 3)) + 160))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 9))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 9) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 1) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 10))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 10) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 2) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 11))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 11) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 3) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 12))] = placeholder1[((((((rc_outer_outer * 2000) + (((((int)threadIdx.x) * 25) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + ((((int)threadIdx.x) * 25) & 3)) + 240))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 13))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 13) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 1) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 14))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 14) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 2) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 15))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 15) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 3) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 16))] = placeholder1[((((((rc_outer_outer * 2000) + (((((int)threadIdx.x) * 25) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + ((((int)threadIdx.x) * 25) & 3)) + 320))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 17))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 17) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 1) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 18))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 18) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 2) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 19))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 19) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 3) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 20))] = placeholder1[((((((rc_outer_outer * 2000) + (((((int)threadIdx.x) * 25) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + ((((int)threadIdx.x) * 25) & 3)) + 400))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 21))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 21) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 1) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 22))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 22) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 2) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 23))] = placeholder1[(((((rc_outer_outer * 2000) + ((((((int)threadIdx.x) * 25) + 23) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + (((((int)threadIdx.x) * 25) + 3) & 3)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 25) + 24))] = placeholder1[((((((rc_outer_outer * 2000) + (((((int)threadIdx.x) * 25) >> 2) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + ((((int)threadIdx.x) * 25) & 3)) + 480))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)))] * placeholder_shared[(((((int)threadIdx.x) & 1) * 2))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 1))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 4))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 5))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 8))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 9))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 12))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 13))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 16))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 17))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 125))] * placeholder_shared[(((((int)threadIdx.x) & 1) * 2))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 125))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 1))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 126))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 4))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 126))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 5))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 127))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 8))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 127))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 9))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 12))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 13))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 16))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 17))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 250))] * placeholder_shared[(((((int)threadIdx.x) & 1) * 2))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 250))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 1))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 251))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 4))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 251))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 5))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 252))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 8))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 252))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 9))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 253))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 12))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 253))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 13))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 254))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 16))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 254))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 17))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 375))] * placeholder_shared[(((((int)threadIdx.x) & 1) * 2))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 375))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 1))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 376))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 4))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 376))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 5))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 377))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 8))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 377))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 9))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 378))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 12))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 378))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 13))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 379))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 16))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 379))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 17))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 500))] * placeholder_shared[(((((int)threadIdx.x) & 1) * 2))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 500))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 1))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 501))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 4))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 501))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 5))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 502))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 8))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 502))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 9))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 503))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 12))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 503))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 13))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 504))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 16))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 504))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 17))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 20))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 21))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 24))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 25))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 28))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 29))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 32))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 33))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 36))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 37))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 20))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 21))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 24))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 25))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 28))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 29))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 32))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 33))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 36))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 37))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 255))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 20))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 255))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 21))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 256))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 24))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 256))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 25))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 257))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 28))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 257))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 29))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 258))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 32))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 258))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 33))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 259))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 36))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 259))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 37))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 380))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 20))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 380))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 21))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 381))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 24))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 381))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 25))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 382))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 28))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 382))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 29))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 383))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 32))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 383))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 33))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 384))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 36))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 384))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 37))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 505))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 20))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 505))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 21))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 506))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 24))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 506))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 25))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 507))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 28))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 507))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 29))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 508))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 32))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 508))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 33))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 509))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 36))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 509))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 37))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 40))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 41))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 44))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 45))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 48))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 49))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 52))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 53))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 56))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 57))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 40))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 41))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 136))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 44))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 136))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 45))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 137))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 48))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 137))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 49))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 138))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 52))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 138))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 53))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 139))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 56))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 139))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 57))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 260))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 40))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 260))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 41))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 261))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 44))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 261))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 45))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 262))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 48))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 262))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 49))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 263))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 52))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 263))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 53))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 264))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 56))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 264))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 57))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 385))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 40))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 385))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 41))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 386))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 44))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 386))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 45))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 387))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 48))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 387))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 49))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 388))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 52))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 388))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 53))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 389))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 56))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 389))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 57))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 510))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 40))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 510))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 41))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 511))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 44))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 511))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 45))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 512))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 48))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 512))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 49))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 513))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 52))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 513))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 53))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 514))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 56))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 514))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 57))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 60))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 61))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 16))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 64))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 16))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 65))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 17))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 68))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 17))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 69))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 18))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 72))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 18))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 73))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 19))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 76))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 19))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 77))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 140))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 60))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 140))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 61))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 141))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 64))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 141))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 65))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 142))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 68))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 142))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 69))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 143))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 72))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 143))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 73))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 144))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 76))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 144))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 77))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 265))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 60))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 265))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 61))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 266))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 64))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 266))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 65))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 267))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 68))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 267))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 69))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 268))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 72))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 268))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 73))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 269))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 76))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 269))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 77))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 390))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 60))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 390))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 61))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 391))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 64))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 391))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 65))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 392))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 68))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 392))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 69))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 393))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 72))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 393))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 73))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 394))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 76))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 394))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 77))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 515))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 60))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 515))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 61))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 516))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 64))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 516))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 65))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 517))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 68))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 517))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 69))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 518))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 72))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 518))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 73))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 519))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 76))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 519))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 77))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 20))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 80))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 20))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 81))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 21))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 84))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 21))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 85))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 22))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 88))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 22))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 89))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 23))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 92))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 23))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 93))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 24))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 96))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 24))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 97))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 145))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 80))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 145))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 81))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 146))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 84))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 146))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 85))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 147))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 88))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 147))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 89))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 148))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 92))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 148))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 93))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 149))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 96))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 149))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 97))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 270))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 80))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 270))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 81))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 271))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 84))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 271))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 85))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 272))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 88))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 272))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 89))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 273))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 92))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 273))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 93))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 274))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 96))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 274))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 97))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 395))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 80))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 395))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 81))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 396))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 84))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 396))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 85))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 397))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 88))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 397))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 89))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 398))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 92))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 398))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 93))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 399))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 96))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 399))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 97))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 520))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 80))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 520))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 81))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 521))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 84))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 521))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 85))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 522))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 88))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 522))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 89))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 523))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 92))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 523))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 93))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 524))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 96))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 10) * 625) + (((((int)threadIdx.x) % 10) >> 1) * 25)) + 524))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 2) + 97))]));
  }
  for (int ax1_inner = 0; ax1_inner < 5; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_add[(((((((((((int)threadIdx.x) / 10) * 6000) + (ax1_inner * 1200)) + ((((int)blockIdx.x) / 20) * 400)) + (((((int)threadIdx.x) % 10) >> 1) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner))] = ((Conv2dOutput[(((ax1_inner * 2) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) % 20) * 4) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner))]) + placeholder3[(((((((((((int)threadIdx.x) / 10) * 6000) + (ax1_inner * 1200)) + ((((int)blockIdx.x) / 20) * 400)) + (((((int)threadIdx.x) % 10) >> 1) * 80)) + ((((int)blockIdx.x) % 20) * 4)) + ((((int)threadIdx.x) & 1) * 2)) + ax3_inner))]);
    }
  }
}


