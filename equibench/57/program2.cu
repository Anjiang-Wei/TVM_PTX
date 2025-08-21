
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
  float Conv2dOutput[24];
  __shared__ float PaddedInput_shared[48];
  __shared__ float placeholder_shared[288];
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
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 384; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 48) {
      PaddedInput_shared[(((int)threadIdx.x))] = (((1 <= (((((int)blockIdx.x) >> 2) * 4) + (((int)threadIdx.x) >> 3))) && ((((((int)blockIdx.x) >> 2) * 4) + (((int)threadIdx.x) >> 3)) < 9)) ? placeholder[((((((((int)blockIdx.x) >> 2) * 12288) + (((int)threadIdx.x) * 384)) + rc_outer_outer) - 3072))] : 0.000000e+00f);
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[((((int)threadIdx.x) * 27))] = placeholder1[(((((((((int)threadIdx.x) * 27) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + ((((int)threadIdx.x) * 27) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 1))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 1) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 1) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 2))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 2) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 2) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 3))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 3) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 3) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 4))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 4) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 4) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 5))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 5) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 5) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 6))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 6) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 6) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 7))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 7) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 7) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 8))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 8) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 8) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 9))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 9) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 9) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 10))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 10) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 10) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 11))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 11) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 11) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 12))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 12) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 12) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 13))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 13) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 13) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 14))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 14) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 14) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 15))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 15) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 15) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 16))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 16) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 16) % 96)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 17))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 17) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 17) % 96)))];
    }
    if (((int)threadIdx.x) < 10) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 18))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 18) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 18) % 96)))];
    }
    if (((int)threadIdx.x) < 10) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 19))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 19) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 19) % 96)))];
    }
    if (((int)threadIdx.x) < 10) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 20))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 20) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 20) % 96)))];
    }
    if (((int)threadIdx.x) < 10) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 21))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 21) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 21) % 96)))];
    }
    if (((int)threadIdx.x) < 10) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 22))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 22) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 22) % 96)))];
    }
    if (((int)threadIdx.x) < 10) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 23))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 23) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 23) % 96)))];
    }
    if (((int)threadIdx.x) < 10) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 24))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 24) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 24) % 96)))];
    }
    if (((int)threadIdx.x) < 10) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 25))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 25) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 25) % 96)))];
    }
    if (((int)threadIdx.x) < 10) {
      placeholder_shared[(((((int)threadIdx.x) * 27) + 26))] = placeholder1[((((((((((int)threadIdx.x) * 27) + 26) / 96) * 147456) + (rc_outer_outer * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 27) + 26) % 96)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 5) * 8))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 3))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 5) * 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 1))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 5) * 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 2))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 1))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 3))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 1))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 2))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 2))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 3))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 1))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 2))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 3))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 3))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 1))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 2))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 4))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 3))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 1))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 2))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 5))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 3))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 1))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 2))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 6))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 3))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 1))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 2))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 7))] * placeholder_shared[(((((int)threadIdx.x) & 31) * 3))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 1))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 2))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 96))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 97))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 98))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 96))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 97))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 98))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 96))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 97))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 98))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 96))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 97))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 98))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 96))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 97))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 12))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 98))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 96))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 97))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 13))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 98))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 96))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 97))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 98))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 96))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 97))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 98))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 16))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 192))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 16))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 193))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 16))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 194))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 17))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 192))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 17))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 193))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 17))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 194))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 18))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 192))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 18))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 193))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 18))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 194))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 19))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 192))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 19))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 193))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 19))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 194))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 20))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 192))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 20))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 193))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 20))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 194))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 21))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 192))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 21))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 193))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 21))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 194))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 22))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 192))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 22))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 193))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 22))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 194))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 23))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 192))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 23))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 193))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 8) + 23))] * placeholder_shared[((((((int)threadIdx.x) & 31) * 3) + 194))]));
  }
  for (int ax2_inner = 0; ax2_inner < 8; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 3; ++ax3_inner) {
      T_relu[((((((((((int)blockIdx.x) >> 2) * 12288) + ((((int)threadIdx.x) >> 5) * 3072)) + (ax2_inner * 384)) + ((((int)blockIdx.x) & 3) * 96)) + ((((int)threadIdx.x) & 31) * 3)) + ax3_inner))] = max((Conv2dOutput[(((ax2_inner * 3) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 3) * 96) + ((((int)threadIdx.x) & 31) * 3)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


