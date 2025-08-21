
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv2dOutput[32];
  __shared__ float PaddedInput_shared[150];
  __shared__ float placeholder_shared[128];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(24)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(25)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(26)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(27)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(28)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(29)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(30)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  Conv2dOutput[(31)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 7) {
      PaddedInput_shared[((((int)threadIdx.x) * 24))] = placeholder[(((((((((int)threadIdx.x) * 12) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + (((((int)threadIdx.x) * 12) % 5) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 7) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 1))] = placeholder[((((((((((int)threadIdx.x) * 12) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + (((((int)threadIdx.x) * 12) % 5) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 7) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 2))] = placeholder[((((((((((int)threadIdx.x) * 12) + 1) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 1) % 5) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 7) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 3))] = placeholder[(((((((((((int)threadIdx.x) * 12) + 1) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 1) % 5) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 7) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 4))] = placeholder[((((((((((int)threadIdx.x) * 12) + 2) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 2) % 5) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 7) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 5))] = placeholder[(((((((((((int)threadIdx.x) * 12) + 2) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 2) % 5) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 6))] = placeholder[((((((((((int)threadIdx.x) * 12) + 3) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 3) % 5) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 7))] = placeholder[(((((((((((int)threadIdx.x) * 12) + 3) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 3) % 5) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 8))] = placeholder[((((((((((int)threadIdx.x) * 12) + 4) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 4) % 5) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 9))] = placeholder[(((((((((((int)threadIdx.x) * 12) + 4) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 4) % 5) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 10))] = placeholder[((((((((((int)threadIdx.x) * 12) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + (((((int)threadIdx.x) * 12) % 5) * 256)) + (rc_outer_outer * 2)) + 3840))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 11))] = placeholder[((((((((((int)threadIdx.x) * 12) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + (((((int)threadIdx.x) * 12) % 5) * 256)) + (rc_outer_outer * 2)) + 3841))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 12))] = placeholder[((((((((((int)threadIdx.x) * 12) + 6) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 1) % 5) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 13))] = placeholder[(((((((((((int)threadIdx.x) * 12) + 6) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 1) % 5) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 14))] = placeholder[((((((((((int)threadIdx.x) * 12) + 7) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 2) % 5) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 15))] = placeholder[(((((((((((int)threadIdx.x) * 12) + 7) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 2) % 5) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 16))] = placeholder[((((((((((int)threadIdx.x) * 12) + 8) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 3) % 5) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 17))] = placeholder[(((((((((((int)threadIdx.x) * 12) + 8) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 3) % 5) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 18))] = placeholder[((((((((((int)threadIdx.x) * 12) + 9) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 4) % 5) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 19))] = placeholder[(((((((((((int)threadIdx.x) * 12) + 9) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 4) % 5) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 20))] = placeholder[((((((((((int)threadIdx.x) * 12) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + (((((int)threadIdx.x) * 12) % 5) * 256)) + (rc_outer_outer * 2)) + 7680))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 21))] = placeholder[((((((((((int)threadIdx.x) * 12) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + (((((int)threadIdx.x) * 12) % 5) * 256)) + (rc_outer_outer * 2)) + 7681))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 22))] = placeholder[((((((((((int)threadIdx.x) * 12) + 11) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 1) % 5) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 24) + 23))] = placeholder[(((((((((((int)threadIdx.x) * 12) + 11) / 5) * 3840) + ((((int)blockIdx.x) >> 4) * 1280)) + ((((((int)threadIdx.x) * 12) + 1) % 5) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[((((int)threadIdx.x) * 4))] = placeholder1[(((((rc_outer_outer * 2048) + ((((int)threadIdx.x) >> 4) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 15) * 4)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 1))] = placeholder1[(((((rc_outer_outer * 2048) + ((((((int)threadIdx.x) * 4) + 1) >> 6) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + (((((int)threadIdx.x) * 4) + 1) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 2))] = placeholder1[(((((rc_outer_outer * 2048) + ((((((int)threadIdx.x) * 4) + 2) >> 6) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + (((((int)threadIdx.x) * 4) + 2) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 3))] = placeholder1[(((((rc_outer_outer * 2048) + ((((((int)threadIdx.x) * 4) + 3) >> 6) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + (((((int)threadIdx.x) * 4) + 3) & 63)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[(((((int)threadIdx.x) & 1) * 8))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 16))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 32))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 48))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 1))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 17))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 33))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 49))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 64))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 80))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 96))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 112))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 65))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 81))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 97))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 113))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 2))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 18))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 34))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 50))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 3))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 19))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 35))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 51))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 66))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 82))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 98))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 114))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 67))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 83))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 99))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 115))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 4))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 20))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 36))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 52))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 5))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 21))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 37))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 53))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 68))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 84))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 100))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 116))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 69))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 85))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 101))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 117))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 6))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 22))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 38))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 54))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 7))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 23))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 39))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 1) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 55))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 70))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 86))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 102))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 118))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 71))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 87))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 103))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + 119))]));
  }
  for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
    T_relu[((((((((((int)threadIdx.x) / 10) * 15360) + ((((int)blockIdx.x) >> 4) * 5120)) + (((((int)threadIdx.x) % 10) >> 1) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner))] = max(((Conv2dOutput[(ax3_inner)] + placeholder2[(((((((int)blockIdx.x) & 15) * 64) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner))]) + placeholder3[((((((((((int)threadIdx.x) / 10) * 15360) + ((((int)blockIdx.x) >> 4) * 5120)) + (((((int)threadIdx.x) % 10) >> 1) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner))]), 0.000000e+00f);
    T_relu[(((((((((((int)threadIdx.x) / 10) * 15360) + ((((int)blockIdx.x) >> 4) * 5120)) + (((((int)threadIdx.x) % 10) >> 1) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 16))] = max(((Conv2dOutput[((ax3_inner + 8))] + placeholder2[((((((((int)blockIdx.x) & 15) * 64) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 16))]) + placeholder3[(((((((((((int)threadIdx.x) / 10) * 15360) + ((((int)blockIdx.x) >> 4) * 5120)) + (((((int)threadIdx.x) % 10) >> 1) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 16))]), 0.000000e+00f);
    T_relu[(((((((((((int)threadIdx.x) / 10) * 15360) + ((((int)blockIdx.x) >> 4) * 5120)) + (((((int)threadIdx.x) % 10) >> 1) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 32))] = max(((Conv2dOutput[((ax3_inner + 16))] + placeholder2[((((((((int)blockIdx.x) & 15) * 64) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 32))]) + placeholder3[(((((((((((int)threadIdx.x) / 10) * 15360) + ((((int)blockIdx.x) >> 4) * 5120)) + (((((int)threadIdx.x) % 10) >> 1) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 32))]), 0.000000e+00f);
    T_relu[(((((((((((int)threadIdx.x) / 10) * 15360) + ((((int)blockIdx.x) >> 4) * 5120)) + (((((int)threadIdx.x) % 10) >> 1) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 48))] = max(((Conv2dOutput[((ax3_inner + 24))] + placeholder2[((((((((int)blockIdx.x) & 15) * 64) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 48))]) + placeholder3[(((((((((((int)threadIdx.x) / 10) * 15360) + ((((int)blockIdx.x) >> 4) * 5120)) + (((((int)threadIdx.x) % 10) >> 1) * 1024)) + ((((int)blockIdx.x) & 15) * 64)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 48))]), 0.000000e+00f);
  }
}


