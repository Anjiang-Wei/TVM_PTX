
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
  __shared__ float PaddedInput_shared[2048];
  __shared__ float placeholder_shared[2048];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(24)] = 0.000000e+00f;
  Conv2dOutput[(28)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(26)] = 0.000000e+00f;
  Conv2dOutput[(30)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(25)] = 0.000000e+00f;
  Conv2dOutput[(29)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  Conv2dOutput[(27)] = 0.000000e+00f;
  Conv2dOutput[(31)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[((((int)threadIdx.x) * 64))] = placeholder[(((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 1))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 1))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 2))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 2))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 3))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 3))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 4))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 4))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 5))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 5))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 6))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 6))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 7))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 7))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 8))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 8))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 9))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 9))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 10))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 10))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 11))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 11))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 12))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 12))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 13))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 13))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 14))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 14))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 15))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 15))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 16))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 16))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 17))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 17))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 18))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 18))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 19))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 19))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 20))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 20))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 21))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 21))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 22))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 22))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 23))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 23))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 24))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 24))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 25))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 25))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 26))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 26))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 27))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 27))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 28))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 28))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 29))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 29))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 30))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 30))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 31))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((int)threadIdx.x) & 1) * 256)) + (rc_outer_outer * 32)) + 31))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 32))] = placeholder[(((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 33))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 1))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 34))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 2))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 35))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 3))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 36))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 4))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 37))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 5))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 38))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 6))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 39))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 7))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 40))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 8))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 41))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 9))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 42))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 10))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 43))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 11))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 44))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 12))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 45))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 13))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 46))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 14))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 47))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 15))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 48))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 16))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 49))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 17))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 50))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 18))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 51))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 19))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 52))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 20))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 53))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 21))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 54))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 22))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 55))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 23))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 56))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 24))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 57))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 25))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 58))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 26))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 59))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 27))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 60))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 28))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 61))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 29))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 62))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 30))];
    }
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 64) + 63))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + ((((((int)threadIdx.x) * 2) + 1) & 3) * 128)) + (rc_outer_outer * 32)) + 31))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 256))];
    placeholder_shared[((((int)threadIdx.x) + 256))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 512))];
    placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 768))];
    placeholder_shared[((((int)threadIdx.x) + 512))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 1024))];
    placeholder_shared[((((int)threadIdx.x) + 640))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 1280))];
    placeholder_shared[((((int)threadIdx.x) + 768))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 1536))];
    placeholder_shared[((((int)threadIdx.x) + 896))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 1792))];
    placeholder_shared[((((int)threadIdx.x) + 1024))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 2048))];
    placeholder_shared[((((int)threadIdx.x) + 1152))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 2304))];
    placeholder_shared[((((int)threadIdx.x) + 1280))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 2560))];
    placeholder_shared[((((int)threadIdx.x) + 1408))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 2816))];
    placeholder_shared[((((int)threadIdx.x) + 1536))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 3072))];
    placeholder_shared[((((int)threadIdx.x) + 1664))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 3328))];
    placeholder_shared[((((int)threadIdx.x) + 1792))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 3584))];
    placeholder_shared[((((int)threadIdx.x) + 1920))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)) + 3840))];
    __syncthreads();
    for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 128))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 128))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 32))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 64))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 64))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 32))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1024))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1024))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 32))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1088))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1088))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 32))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 32))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 32))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 32))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 96))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 96))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 32))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1056))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1056))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 32))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1120))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1120))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 32))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 64))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 96))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 65))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 64))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 65))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 96))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1025))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 64))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1025))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 96))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1089))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 64))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1089))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 96))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 33))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 64))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 33))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 96))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 97))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 64))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 97))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 96))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1057))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 64))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1057))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 96))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1121))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 64))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1121))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 96))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 2))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 128))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 2))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 160))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 66))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 128))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 66))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 160))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1026))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 128))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1026))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 160))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1090))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 128))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1090))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 160))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 34))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 128))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 34))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 160))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 98))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 128))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 98))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 160))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1058))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 128))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1058))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 160))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1122))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 128))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1122))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 160))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 3))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 192))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 3))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 224))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 67))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 192))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 67))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 224))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1027))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 192))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1027))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 224))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1091))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 192))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1091))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 224))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 35))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 192))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 35))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 224))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 99))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 192))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 99))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 224))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1059))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 192))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1059))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 224))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1123))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 192))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1123))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 224))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 4))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 256))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 4))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 288))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 68))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 256))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 68))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 288))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1028))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 256))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1028))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 288))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1092))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 256))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1092))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 288))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 36))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 256))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 36))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 288))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 100))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 256))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 100))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 288))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1060))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 256))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1060))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 288))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1124))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 256))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1124))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 288))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 5))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 320))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 5))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 352))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 69))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 320))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 69))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 352))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1029))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 320))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1029))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 352))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1093))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 320))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1093))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 352))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 37))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 320))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 37))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 352))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 101))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 320))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 101))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 352))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1061))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 320))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1061))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 352))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1125))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 320))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1125))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 352))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 6))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 384))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 6))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 416))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 70))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 384))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 70))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 416))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1030))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 384))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1030))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 416))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1094))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 384))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1094))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 416))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 38))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 384))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 38))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 416))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 102))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 384))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 102))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 416))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1062))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 384))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1062))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 416))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1126))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 384))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1126))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 416))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 7))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 448))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 7))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 480))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 71))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 448))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 71))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 480))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1031))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 448))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1031))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 480))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1095))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 448))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1095))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 480))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 39))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 448))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 39))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 480))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 103))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 448))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 103))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 480))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1063))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 448))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1063))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 480))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1127))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 448))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1127))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 480))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 8))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 512))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 8))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 544))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 72))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 512))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 72))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 544))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1032))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 512))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1032))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 544))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1096))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 512))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1096))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 544))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 40))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 512))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 40))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 544))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 104))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 512))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 104))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 544))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1064))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 512))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1064))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 544))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1128))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 512))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1128))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 544))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 9))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 576))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 9))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 608))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 73))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 576))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 73))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 608))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1033))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 576))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1033))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 608))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1097))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 576))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1097))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 608))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 41))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 576))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 41))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 608))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 105))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 576))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 105))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 608))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1065))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 576))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1065))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 608))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1129))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 576))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1129))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 608))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 10))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 640))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 10))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 672))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 74))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 640))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 74))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 672))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1034))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 640))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1034))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 672))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1098))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 640))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1098))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 672))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 42))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 640))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 42))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 672))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 106))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 640))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 106))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 672))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1066))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 640))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1066))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 672))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1130))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 640))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1130))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 672))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 11))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 704))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 11))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 736))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 75))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 704))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 75))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 736))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1035))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 704))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1035))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 736))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1099))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 704))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1099))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 736))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 43))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 704))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 43))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 736))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 107))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 704))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 107))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 736))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1067))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 704))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1067))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 736))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1131))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 704))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1131))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 736))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 12))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 768))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 12))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 800))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 76))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 768))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 76))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 800))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1036))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 768))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1036))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 800))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1100))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 768))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1100))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 800))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 44))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 768))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 44))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 800))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 108))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 768))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 108))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 800))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1068))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 768))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1068))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 800))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1132))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 768))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1132))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 800))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 13))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 832))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 13))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 864))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 77))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 832))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 77))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 864))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1037))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 832))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1037))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 864))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1101))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 832))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1101))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 864))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 45))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 832))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 45))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 864))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 109))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 832))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 109))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 864))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1069))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 832))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1069))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 864))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1133))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 832))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1133))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 864))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 14))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 896))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 14))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 928))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 78))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 896))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 78))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 928))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1038))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 896))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1038))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 928))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1102))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 896))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1102))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 928))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 46))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 896))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 46))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 928))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 110))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 896))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 110))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 928))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1070))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 896))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1070))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 928))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1134))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 896))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1134))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 928))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 15))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 960))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 15))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 992))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 79))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 960))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 79))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 992))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1039))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 960))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1039))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 992))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1103))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 960))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1103))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 992))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 47))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 960))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 47))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 992))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 111))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 960))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 111))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 992))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1071))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 960))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1071))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 992))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1135))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 960))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1135))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 992))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 16))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1024))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 16))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1056))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 80))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1024))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 80))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1056))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1040))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1024))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1040))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1056))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1104))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1024))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1104))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1056))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 48))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1024))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 48))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1056))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 112))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1024))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 112))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1056))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1072))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1024))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1072))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1056))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1136))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1024))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1136))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1056))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 17))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1088))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 17))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1120))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 81))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1088))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 81))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1120))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1041))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1088))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1041))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1120))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1105))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1088))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1105))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1120))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 49))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1088))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 49))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1120))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 113))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1088))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 113))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1120))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1073))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1088))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1073))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1120))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1137))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1088))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1137))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1120))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 18))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1152))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 18))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1184))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 82))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1152))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 82))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1184))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1042))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1152))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1042))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1184))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1106))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1152))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1106))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1184))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 50))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1152))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 50))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1184))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 114))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1152))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 114))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1184))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1074))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1152))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1074))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1184))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1138))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1152))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1138))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1184))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 19))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1216))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 19))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1248))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 83))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1216))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 83))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1248))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1043))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1216))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1043))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1248))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1107))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1216))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1107))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1248))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 51))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1216))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 51))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1248))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 115))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1216))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 115))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1248))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1075))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1216))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1075))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1248))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1139))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1216))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1139))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1248))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 20))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1280))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 20))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1312))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 84))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1280))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 84))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1312))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1044))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1280))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1044))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1312))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1108))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1280))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1108))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1312))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 52))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1280))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 52))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1312))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 116))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1280))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 116))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1312))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1076))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1280))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1076))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1312))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1140))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1280))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1140))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1312))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 21))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1344))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 21))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1376))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 85))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1344))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 85))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1376))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1045))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1344))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1045))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1376))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1109))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1344))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1109))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1376))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 53))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1344))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 53))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1376))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 117))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1344))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 117))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1376))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1077))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1344))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1077))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1376))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1141))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1344))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1141))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1376))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 22))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1408))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 22))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1440))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 86))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1408))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 86))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1440))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1046))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1408))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1046))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1440))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1110))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1408))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1110))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1440))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 54))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1408))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 54))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1440))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 118))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1408))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 118))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1440))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1078))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1408))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1078))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1440))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1142))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1408))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1142))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1440))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 23))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1472))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 23))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1504))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 87))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1472))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 87))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1504))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1047))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1472))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1047))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1504))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1111))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1472))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1111))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1504))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 55))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1472))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 55))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1504))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 119))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1472))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 119))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1504))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1079))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1472))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1079))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1504))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1143))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1472))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1143))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1504))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 24))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1536))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 24))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1568))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 88))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1536))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 88))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1568))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1048))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1536))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1048))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1568))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1112))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1536))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1112))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1568))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 56))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1536))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 56))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1568))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 120))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1536))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 120))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1568))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1080))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1536))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1080))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1568))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1144))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1536))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1144))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1568))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 25))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1600))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 25))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1632))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 89))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1600))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 89))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1632))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1049))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1600))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1049))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1632))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1113))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1600))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1113))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1632))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 57))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1600))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 57))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1632))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 121))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1600))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 121))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1632))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1081))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1600))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1081))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1632))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1145))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1600))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1145))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1632))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 26))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1664))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 26))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1696))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 90))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1664))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 90))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1696))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1050))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1664))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1050))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1696))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1114))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1664))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1114))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1696))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 58))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1664))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 58))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1696))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 122))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1664))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 122))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1696))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1082))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1664))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1082))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1696))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1146))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1664))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1146))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1696))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 27))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1728))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 27))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1760))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 91))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1728))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 91))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1760))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1051))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1728))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1051))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1760))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1115))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1728))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1115))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1760))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 59))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1728))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 59))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1760))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 123))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1728))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 123))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1760))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1083))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1728))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1083))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1760))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1147))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1728))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1147))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1760))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 28))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1792))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 28))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1824))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 92))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1792))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 92))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1824))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1052))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1792))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1052))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1824))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1116))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1792))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1116))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1824))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 60))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1792))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 60))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1824))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 124))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1792))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 124))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1824))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1084))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1792))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1084))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1824))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1148))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1792))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1148))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1824))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 29))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1856))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 29))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1888))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 93))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1856))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 93))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1888))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1053))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1856))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1053))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1888))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1117))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1856))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1117))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1888))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 61))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1856))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 61))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1888))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 125))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1856))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 125))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1888))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1085))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1856))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1085))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1888))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1149))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1856))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1149))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1888))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 30))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1920))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 30))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1952))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 94))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1920))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 94))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1952))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1054))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1920))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1054))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1952))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1118))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1920))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1118))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1952))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 62))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1920))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 62))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1952))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 126))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1920))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 126))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1952))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1086))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1920))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1086))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1952))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1150))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1920))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1150))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1952))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 31))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1984))]));
      Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 31))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 2016))]));
      Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 95))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1984))]));
      Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 95))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 2016))]));
      Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1055))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1984))]));
      Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1055))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 2016))]));
      Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1119))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1984))]));
      Conv2dOutput[((ff_outer_inner + 28))] = (Conv2dOutput[((ff_outer_inner + 28))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1119))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 2016))]));
      Conv2dOutput[((ff_outer_inner + 2))] = (Conv2dOutput[((ff_outer_inner + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 63))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1984))]));
      Conv2dOutput[((ff_outer_inner + 6))] = (Conv2dOutput[((ff_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 63))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 2016))]));
      Conv2dOutput[((ff_outer_inner + 10))] = (Conv2dOutput[((ff_outer_inner + 10))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 127))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1984))]));
      Conv2dOutput[((ff_outer_inner + 14))] = (Conv2dOutput[((ff_outer_inner + 14))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 127))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 2016))]));
      Conv2dOutput[((ff_outer_inner + 18))] = (Conv2dOutput[((ff_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1087))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1984))]));
      Conv2dOutput[((ff_outer_inner + 22))] = (Conv2dOutput[((ff_outer_inner + 22))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1087))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 2016))]));
      Conv2dOutput[((ff_outer_inner + 26))] = (Conv2dOutput[((ff_outer_inner + 26))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1151))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 1984))]));
      Conv2dOutput[((ff_outer_inner + 30))] = (Conv2dOutput[((ff_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 128) + 1151))] * placeholder_shared[(((((((int)threadIdx.x) & 15) * 2) + ff_outer_inner) + 2016))]));
    }
  }
  for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_relu[(((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))] = max((Conv2dOutput[(((ax2_inner * 2) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))] = max((Conv2dOutput[((((ax2_inner * 2) + ax3_inner) + 4))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 256))] = max((Conv2dOutput[((((ax2_inner * 2) + ax3_inner) + 8))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 288))] = max((Conv2dOutput[((((ax2_inner * 2) + ax3_inner) + 12))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32768))] = max((Conv2dOutput[((((ax2_inner * 2) + ax3_inner) + 16))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32800))] = max((Conv2dOutput[((((ax2_inner * 2) + ax3_inner) + 20))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 33024))] = max((Conv2dOutput[((((ax2_inner * 2) + ax3_inner) + 24))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 4) * 65536) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 15) >> 1) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 33056))] = max((Conv2dOutput[((((ax2_inner * 2) + ax3_inner) + 28))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))]), 0.000000e+00f);
    }
  }
}


