
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
  float Conv2dOutput[14];
  __shared__ float PaddedInput_shared[140];
  __shared__ float placeholder_shared[640];
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
  for (int rc_outer_outer = 0; rc_outer_outer < 48; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[((((int)threadIdx.x) * 28))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + (((((int)threadIdx.x) * 28) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) * 28) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 1))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 1) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 1) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 2))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 2) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 2) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 3))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 3) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 3) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 4))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 4) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 4) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 5))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 5) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 5) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 6))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 6) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 6) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 7))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 7) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 7) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 8))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 8) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 8) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 9))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 9) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 9) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 10))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 6720) + (((((int)threadIdx.x) * 28) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) * 28) % 10)) + 480))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 11))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 11) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 1) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 12))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 12) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 2) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 13))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 13) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 3) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 14))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 14) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 4) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 15))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 15) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 5) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 16))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 16) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 6) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 17))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 17) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 7) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 18))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 18) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 8) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 19))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 19) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 9) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 20))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 6720) + (((((int)threadIdx.x) * 28) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) * 28) % 10)) + 960))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 21))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 21) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 1) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 22))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 22) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 2) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 23))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 23) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 3) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 24))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 24) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 4) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 25))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 25) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 5) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 26))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 26) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 6) % 10)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 27))] = placeholder[((((((((int)blockIdx.x) >> 1) * 6720) + ((((((int)threadIdx.x) * 28) + 27) / 10) * 480)) + (rc_outer_outer * 10)) + (((((int)threadIdx.x) * 28) + 7) % 10)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 1280) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[(((((rc_outer_outer * 1280) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 128))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[(((((rc_outer_outer * 1280) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 256))];
    placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[(((((rc_outer_outer * 1280) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 384))];
    placeholder_shared[((((int)threadIdx.x) + 256))] = placeholder1[(((((rc_outer_outer * 1280) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 512))];
    placeholder_shared[((((int)threadIdx.x) + 320))] = placeholder1[(((((rc_outer_outer * 1280) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 640))];
    placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[(((((rc_outer_outer * 1280) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 768))];
    placeholder_shared[((((int)threadIdx.x) + 448))] = placeholder1[(((((rc_outer_outer * 1280) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 896))];
    placeholder_shared[((((int)threadIdx.x) + 512))] = placeholder1[(((((rc_outer_outer * 1280) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 1024))];
    placeholder_shared[((((int)threadIdx.x) + 576))] = placeholder1[(((((rc_outer_outer * 1280) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 1152))];
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 5) * 70))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 2))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 5) * 70))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 1))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 10))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 2))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 1))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 20))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 2))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 20))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 1))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 30))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 2))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 30))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 1))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 40))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 2))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 40))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 1))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 50))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 2))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 50))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 1))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 60))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 2))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 60))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 1))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 64))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 65))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 64))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 65))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 21))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 64))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 21))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 65))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 31))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 64))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 31))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 65))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 41))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 64))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 41))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 65))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 51))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 64))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 51))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 65))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 61))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 64))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 61))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 65))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 128))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 129))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 128))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 129))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 22))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 128))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 22))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 129))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 32))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 128))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 32))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 129))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 128))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 129))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 52))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 128))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 52))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 129))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 62))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 128))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 62))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 129))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 192))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 193))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 192))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 193))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 23))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 192))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 23))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 193))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 33))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 192))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 33))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 193))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 192))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 193))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 53))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 192))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 53))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 193))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 63))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 192))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 63))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 193))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 256))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 257))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 256))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 257))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 24))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 256))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 24))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 257))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 34))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 256))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 34))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 257))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 44))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 256))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 44))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 257))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 54))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 256))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 54))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 257))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 64))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 256))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 64))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 257))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 320))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 321))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 320))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 321))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 25))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 320))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 25))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 321))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 35))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 320))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 35))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 321))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 45))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 320))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 45))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 321))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 55))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 320))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 55))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 321))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 65))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 320))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 65))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 321))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 384))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 385))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 16))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 384))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 16))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 385))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 26))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 384))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 26))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 385))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 36))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 384))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 36))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 385))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 46))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 384))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 46))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 385))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 56))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 384))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 56))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 385))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 66))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 384))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 66))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 385))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 448))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 449))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 17))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 448))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 17))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 449))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 27))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 448))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 27))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 449))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 37))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 448))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 37))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 449))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 47))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 448))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 47))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 449))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 448))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 449))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 67))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 448))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 67))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 449))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 512))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 513))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 18))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 512))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 18))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 513))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 28))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 512))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 28))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 513))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 38))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 512))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 38))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 513))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 48))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 512))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 48))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 513))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 58))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 512))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 58))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 513))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 68))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 512))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 68))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 513))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 576))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 577))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 19))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 576))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 19))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 577))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 29))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 576))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 29))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 577))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 39))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 576))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 39))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 577))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 49))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 576))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 49))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 577))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 59))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 576))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 59))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 577))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 69))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 576))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 70) + 69))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 2) + 577))]));
  }
  for (int ax2_inner = 0; ax2_inner < 7; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_relu[((((((((((int)blockIdx.x) >> 1) * 1792) + ((((int)threadIdx.x) >> 5) * 896)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))] = max((Conv2dOutput[(((ax2_inner * 2) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


