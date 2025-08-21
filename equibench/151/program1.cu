
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
  __shared__ float PaddedInput_shared[3840];
  __shared__ float placeholder_shared[1024];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((int)blockIdx.x) >> 3) * 3840) + (rc_outer_outer * 64)) + ((int)threadIdx.x)))];
    PaddedInput_shared[((((int)threadIdx.x) + 40))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 40) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 80))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 80) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 16)))];
    PaddedInput_shared[((((int)threadIdx.x) + 120))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 120) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 160))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 160) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 200))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 200) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 240))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 240) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 280))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 280) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 320))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (rc_outer_outer * 64)) + ((int)threadIdx.x)) + 1280))];
    PaddedInput_shared[((((int)threadIdx.x) + 360))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 360) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 400))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 400) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 16)))];
    PaddedInput_shared[((((int)threadIdx.x) + 440))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 440) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 480))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 480) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 520))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 520) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 560))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 560) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 600))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 600) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 640))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (rc_outer_outer * 64)) + ((int)threadIdx.x)) + 2560))];
    PaddedInput_shared[((((int)threadIdx.x) + 680))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 680) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 720))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 720) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 16)))];
    PaddedInput_shared[((((int)threadIdx.x) + 760))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 760) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 800))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 800) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 840))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 840) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 880))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 880) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 920))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (((((int)threadIdx.x) + 920) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 960))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (rc_outer_outer * 64)) + ((int)threadIdx.x)) + 57600))];
    PaddedInput_shared[((((int)threadIdx.x) + 1000))] = placeholder[((((((((((int)threadIdx.x) + 1000) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 40) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1040))] = placeholder[((((((((((int)threadIdx.x) + 1040) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 80) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 16)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1080))] = placeholder[((((((((((int)threadIdx.x) + 1080) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 120) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1120))] = placeholder[((((((((((int)threadIdx.x) + 1120) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 160) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1160))] = placeholder[((((((((((int)threadIdx.x) + 1160) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 200) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1200))] = placeholder[((((((((((int)threadIdx.x) + 1200) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 240) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1240))] = placeholder[((((((((((int)threadIdx.x) + 1240) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 280) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1280))] = placeholder[((((((((((int)threadIdx.x) + 1280) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 320) >> 6) * 256)) + (rc_outer_outer * 64)) + ((int)threadIdx.x)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1320))] = placeholder[((((((((((int)threadIdx.x) + 1320) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 360) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1360))] = placeholder[((((((((((int)threadIdx.x) + 1360) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 400) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 16)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1400))] = placeholder[((((((((((int)threadIdx.x) + 1400) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 440) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1440))] = placeholder[((((((((((int)threadIdx.x) + 1440) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 480) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1480))] = placeholder[((((((((((int)threadIdx.x) + 1480) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 520) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1520))] = placeholder[((((((((((int)threadIdx.x) + 1520) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 560) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1560))] = placeholder[((((((((((int)threadIdx.x) + 1560) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 600) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1600))] = placeholder[((((((((((int)threadIdx.x) + 1600) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 640) >> 6) * 256)) + (rc_outer_outer * 64)) + ((int)threadIdx.x)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1640))] = placeholder[((((((((((int)threadIdx.x) + 1640) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 680) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1680))] = placeholder[((((((((((int)threadIdx.x) + 1680) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 720) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 16)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1720))] = placeholder[((((((((((int)threadIdx.x) + 1720) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 760) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1760))] = placeholder[((((((((((int)threadIdx.x) + 1760) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 800) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1800))] = placeholder[((((((((((int)threadIdx.x) + 1800) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 840) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1840))] = placeholder[((((((((((int)threadIdx.x) + 1840) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 880) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1880))] = placeholder[((((((((((int)threadIdx.x) + 1880) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 920) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1920))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (rc_outer_outer * 64)) + ((int)threadIdx.x)) + 115200))];
    PaddedInput_shared[((((int)threadIdx.x) + 1960))] = placeholder[((((((((((int)threadIdx.x) + 1960) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 40) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2000))] = placeholder[((((((((((int)threadIdx.x) + 2000) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 80) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 16)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2040))] = placeholder[((((((((((int)threadIdx.x) + 2040) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 120) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2080))] = placeholder[((((((((((int)threadIdx.x) + 2080) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 160) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2120))] = placeholder[((((((((((int)threadIdx.x) + 2120) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 200) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2160))] = placeholder[((((((((((int)threadIdx.x) + 2160) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 240) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2200))] = placeholder[((((((((((int)threadIdx.x) + 2200) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 280) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2240))] = placeholder[((((((((((int)threadIdx.x) + 2240) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 320) >> 6) * 256)) + (rc_outer_outer * 64)) + ((int)threadIdx.x)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2280))] = placeholder[((((((((((int)threadIdx.x) + 2280) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 360) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2320))] = placeholder[((((((((((int)threadIdx.x) + 2320) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 400) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 16)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2360))] = placeholder[((((((((((int)threadIdx.x) + 2360) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 440) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2400))] = placeholder[((((((((((int)threadIdx.x) + 2400) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 480) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2440))] = placeholder[((((((((((int)threadIdx.x) + 2440) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 520) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2480))] = placeholder[((((((((((int)threadIdx.x) + 2480) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 560) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2520))] = placeholder[((((((((((int)threadIdx.x) + 2520) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 600) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2560))] = placeholder[((((((((((int)threadIdx.x) + 2560) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 640) >> 6) * 256)) + (rc_outer_outer * 64)) + ((int)threadIdx.x)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2600))] = placeholder[((((((((((int)threadIdx.x) + 2600) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 680) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2640))] = placeholder[((((((((((int)threadIdx.x) + 2640) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 720) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 16)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2680))] = placeholder[((((((((((int)threadIdx.x) + 2680) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 760) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2720))] = placeholder[((((((((((int)threadIdx.x) + 2720) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 800) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2760))] = placeholder[((((((((((int)threadIdx.x) + 2760) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 840) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2800))] = placeholder[((((((((((int)threadIdx.x) + 2800) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 880) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2840))] = placeholder[((((((((((int)threadIdx.x) + 2840) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 920) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2880))] = placeholder[((((((((int)blockIdx.x) >> 3) * 3840) + (rc_outer_outer * 64)) + ((int)threadIdx.x)) + 172800))];
    PaddedInput_shared[((((int)threadIdx.x) + 2920))] = placeholder[((((((((((int)threadIdx.x) + 2920) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 40) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2960))] = placeholder[((((((((((int)threadIdx.x) + 2960) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 80) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 16)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3000))] = placeholder[((((((((((int)threadIdx.x) + 3000) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 120) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3040))] = placeholder[((((((((((int)threadIdx.x) + 3040) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 160) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3080))] = placeholder[((((((((((int)threadIdx.x) + 3080) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 200) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3120))] = placeholder[((((((((((int)threadIdx.x) + 3120) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 240) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3160))] = placeholder[((((((((((int)threadIdx.x) + 3160) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 280) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3200))] = placeholder[((((((((((int)threadIdx.x) + 3200) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 320) >> 6) * 256)) + (rc_outer_outer * 64)) + ((int)threadIdx.x)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3240))] = placeholder[((((((((((int)threadIdx.x) + 3240) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 360) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3280))] = placeholder[((((((((((int)threadIdx.x) + 3280) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 400) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 16)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3320))] = placeholder[((((((((((int)threadIdx.x) + 3320) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 440) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3360))] = placeholder[((((((((((int)threadIdx.x) + 3360) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 480) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3400))] = placeholder[((((((((((int)threadIdx.x) + 3400) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 520) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3440))] = placeholder[((((((((((int)threadIdx.x) + 3440) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 560) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3480))] = placeholder[((((((((((int)threadIdx.x) + 3480) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 600) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3520))] = placeholder[((((((((((int)threadIdx.x) + 3520) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 640) >> 6) * 256)) + (rc_outer_outer * 64)) + ((int)threadIdx.x)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3560))] = placeholder[((((((((((int)threadIdx.x) + 3560) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 680) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3600))] = placeholder[((((((((((int)threadIdx.x) + 3600) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 720) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 16)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3640))] = placeholder[((((((((((int)threadIdx.x) + 3640) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 760) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3680))] = placeholder[((((((((((int)threadIdx.x) + 3680) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 800) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3720))] = placeholder[((((((((((int)threadIdx.x) + 3720) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 840) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3760))] = placeholder[((((((((((int)threadIdx.x) + 3760) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 880) >> 6) * 256)) + (rc_outer_outer * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3800))] = placeholder[((((((((((int)threadIdx.x) + 3800) / 960) * 57600) + ((((int)blockIdx.x) >> 3) * 3840)) + (((((int)threadIdx.x) + 920) >> 6) * 256)) + (rc_outer_outer * 64)) + (((int)threadIdx.x) + 24)))];
    placeholder_shared[((((int)threadIdx.x) * 8))] = placeholder1[(((((rc_outer_outer * 8192) + ((((int)threadIdx.x) >> 1) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + ((((int)threadIdx.x) & 1) * 8)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 1))] = placeholder1[(((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 1) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 1) & 15)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 2))] = placeholder1[(((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 2) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 2) & 15)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 3))] = placeholder1[(((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 3) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 3) & 15)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 4))] = placeholder1[(((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 4) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 4) & 15)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 5))] = placeholder1[(((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 5) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 5) & 15)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 6))] = placeholder1[(((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 6) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 6) & 15)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 7))] = placeholder1[(((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 7) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 7) & 15)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 320))] = placeholder1[((((((rc_outer_outer * 8192) + ((((int)threadIdx.x) >> 1) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + ((((int)threadIdx.x) & 1) * 8)) + 2560))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 321))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 1) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 1) & 15)) + 2560))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 322))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 2) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 2) & 15)) + 2560))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 323))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 3) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 3) & 15)) + 2560))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 324))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 4) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 4) & 15)) + 2560))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 325))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 5) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 5) & 15)) + 2560))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 326))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 6) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 6) & 15)) + 2560))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 327))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 7) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 7) & 15)) + 2560))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 640))] = placeholder1[((((((rc_outer_outer * 8192) + ((((int)threadIdx.x) >> 1) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + ((((int)threadIdx.x) & 1) * 8)) + 5120))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 641))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 1) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 1) & 15)) + 5120))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 642))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 2) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 2) & 15)) + 5120))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 643))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 3) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 3) & 15)) + 5120))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 644))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 4) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 4) & 15)) + 5120))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 645))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 5) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 5) & 15)) + 5120))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 646))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 6) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 6) & 15)) + 5120))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 647))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 7) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 7) & 15)) + 5120))];
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 960))] = placeholder1[((((((rc_outer_outer * 8192) + ((((int)threadIdx.x) >> 1) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + ((((int)threadIdx.x) & 1) * 8)) + 7680))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 961))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 1) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 1) & 15)) + 7680))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 962))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 2) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 2) & 15)) + 7680))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 963))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 3) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 3) & 15)) + 7680))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 964))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 4) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 4) & 15)) + 7680))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 965))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 5) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 5) & 15)) + 7680))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 966))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 6) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 6) & 15)) + 7680))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 967))] = placeholder1[((((((rc_outer_outer * 8192) + ((((((int)threadIdx.x) * 8) + 7) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 8) + 7) & 15)) + 7680))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 32; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 960))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 960))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 961))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 961))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 64))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 64))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1024))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1024))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 65))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 65))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1025))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1025))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 128))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 128))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1088))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1088))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 129))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 129))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1089))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1089))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1920))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1920))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 2880))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 2880))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1921))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1921))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 2881))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 2881))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1984))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1984))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 2944))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 2944))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1985))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 1985))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 2945))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 2945))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 2048))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 2048))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 3008))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 3008))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 2049))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 2049))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 3009))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 16))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 192) + (rc_outer_inner * 2)) + 3009))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 2)) + 17))]));
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[((((((((ax0_inner * 28800) + ((((int)blockIdx.x) >> 3) * 1920)) + ((((int)threadIdx.x) >> 3) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 7) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 6) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 7) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


