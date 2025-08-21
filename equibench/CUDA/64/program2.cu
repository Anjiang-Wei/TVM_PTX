
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
  __shared__ float PaddedInput_shared[15];
  __shared__ float placeholder_shared[120];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((rc_outer_outer * 15) + ((int)threadIdx.x)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4))] = placeholder[((((rc_outer_outer * 15) + ((int)threadIdx.x)) + 4))];
    PaddedInput_shared[((((int)threadIdx.x) + 8))] = placeholder[((((rc_outer_outer * 15) + ((int)threadIdx.x)) + 8))];
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[((((int)threadIdx.x) + 12))] = placeholder[((((rc_outer_outer * 15) + ((int)threadIdx.x)) + 12))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[((((int)threadIdx.x) * 60))] = placeholder1[(((((rc_outer_outer * 480) + (((((int)threadIdx.x) * 60) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) * 60) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 1))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 1) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 2))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 2) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 3))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 3) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 3) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 4))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 4) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 4) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 5))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 5) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 5) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 6))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 6) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 6) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 7))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 7) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 7) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 8))] = placeholder1[((((((rc_outer_outer * 480) + (((((int)threadIdx.x) * 60) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) * 60) & 7)) + 32))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 9))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 9) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 10))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 10) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 11))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 11) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 3) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 12))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 12) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 4) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 13))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 13) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 5) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 14))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 14) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 6) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 15))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 15) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 7) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 16))] = placeholder1[((((((rc_outer_outer * 480) + (((((int)threadIdx.x) * 60) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) * 60) & 7)) + 64))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 17))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 17) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 18))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 18) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 19))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 19) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 3) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 20))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 20) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 4) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 21))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 21) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 5) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 22))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 22) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 6) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 23))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 23) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 7) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 24))] = placeholder1[((((((rc_outer_outer * 480) + (((((int)threadIdx.x) * 60) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) * 60) & 7)) + 96))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 25))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 25) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 26))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 26) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 27))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 27) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 3) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 28))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 28) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 4) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 29))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 29) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 5) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 30))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 30) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 6) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 31))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 31) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 7) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 32))] = placeholder1[((((((rc_outer_outer * 480) + (((((int)threadIdx.x) * 60) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) * 60) & 7)) + 128))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 33))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 33) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 34))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 34) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 35))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 35) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 3) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 36))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 36) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 4) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 37))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 37) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 5) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 38))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 38) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 6) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 39))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 39) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 7) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 40))] = placeholder1[((((((rc_outer_outer * 480) + (((((int)threadIdx.x) * 60) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) * 60) & 7)) + 160))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 41))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 41) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 42))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 42) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 43))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 43) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 3) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 44))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 44) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 4) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 45))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 45) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 5) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 46))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 46) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 6) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 47))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 47) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 7) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 48))] = placeholder1[((((((rc_outer_outer * 480) + (((((int)threadIdx.x) * 60) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) * 60) & 7)) + 192))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 49))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 49) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 50))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 50) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 51))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 51) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 3) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 52))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 52) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 4) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 53))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 53) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 5) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 54))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 54) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 6) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 55))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 55) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 7) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 56))] = placeholder1[((((((rc_outer_outer * 480) + (((((int)threadIdx.x) * 60) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) * 60) & 7)) + 224))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 57))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 57) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 58))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 58) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 59))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 59) >> 3) * 32)) + (((int)blockIdx.x) * 8)) + (((((int)threadIdx.x) * 60) + 3) & 7)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(0)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 8))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 9))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 16))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 17))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 24))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 25))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 32))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 33))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 40))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 41))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 48))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 49))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 56))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 57))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 72))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 73))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 80))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 81))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 88))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 89))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 96))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 97))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 104))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 105))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 112))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 113))]));
  }
  for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
    T_relu[((((((int)blockIdx.x) * 8) + (((int)threadIdx.x) * 2)) + ax3_inner))] = max((Conv2dOutput[(ax3_inner)] + placeholder2[((((((int)blockIdx.x) * 8) + (((int)threadIdx.x) * 2)) + ax3_inner))]), 0.000000e+00f);
  }
}


