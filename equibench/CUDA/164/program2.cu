
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
  float Conv2dOutput[120];
  __shared__ float PaddedInput_shared[4800];
  __shared__ float placeholder_shared[2048];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int yy_outer_inner_init = 0; yy_outer_inner_init < 5; ++yy_outer_inner_init) {
      Conv2dOutput[(((nn_outer_inner_init * 60) + (yy_outer_inner_init * 12)))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (yy_outer_inner_init * 12)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (yy_outer_inner_init * 12)) + 2))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (yy_outer_inner_init * 12)) + 3))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (yy_outer_inner_init * 12)) + 4))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (yy_outer_inner_init * 12)) + 5))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (yy_outer_inner_init * 12)) + 6))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (yy_outer_inner_init * 12)) + 7))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (yy_outer_inner_init * 12)) + 8))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (yy_outer_inner_init * 12)) + 9))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (yy_outer_inner_init * 12)) + 10))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (yy_outer_inner_init * 12)) + 11))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 38400) + ((((int)threadIdx.x) / 240) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + (((((int)threadIdx.x) % 240) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 320))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 38400) + (((((int)threadIdx.x) + 320) / 240) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + ((((((int)threadIdx.x) >> 4) + 5) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 640))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 38400) + (((((int)threadIdx.x) + 640) / 240) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + ((((((int)threadIdx.x) >> 4) + 10) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 960))] = placeholder[((((((((((((int)threadIdx.x) + 960) / 1200) * 230400) + ((((int)blockIdx.x) >> 1) * 38400)) + (((((((int)threadIdx.x) >> 4) + 60) % 75) / 15) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + (((((int)threadIdx.x) % 240) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1280))] = placeholder[((((((((((((int)threadIdx.x) + 1280) / 1200) * 230400) + ((((int)blockIdx.x) >> 1) * 38400)) + ((((((int)threadIdx.x) >> 4) + 5) / 15) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + ((((((int)threadIdx.x) >> 4) + 5) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1600))] = placeholder[((((((((((((int)threadIdx.x) + 1600) / 1200) * 230400) + ((((int)blockIdx.x) >> 1) * 38400)) + ((((((int)threadIdx.x) >> 4) + 25) / 15) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + ((((((int)threadIdx.x) >> 4) + 10) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1920))] = placeholder[((((((((((((int)threadIdx.x) + 1920) / 1200) * 230400) + ((((int)blockIdx.x) >> 1) * 38400)) + ((((((int)threadIdx.x) >> 4) + 45) / 15) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + (((((int)threadIdx.x) % 240) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2240))] = placeholder[((((((((((((int)threadIdx.x) + 2240) / 1200) * 230400) + ((((int)blockIdx.x) >> 1) * 38400)) + (((((((int)threadIdx.x) >> 4) + 65) % 75) / 15) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + ((((((int)threadIdx.x) >> 4) + 5) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2560))] = placeholder[((((((((((((int)threadIdx.x) + 2560) / 1200) * 230400) + ((((int)blockIdx.x) >> 1) * 38400)) + ((((((int)threadIdx.x) >> 4) + 10) / 15) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + ((((((int)threadIdx.x) >> 4) + 10) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2880))] = placeholder[((((((((((((int)threadIdx.x) + 2880) / 1200) * 230400) + ((((int)blockIdx.x) >> 1) * 38400)) + ((((((int)threadIdx.x) >> 4) + 30) / 15) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + (((((int)threadIdx.x) % 240) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3200))] = placeholder[((((((((((((int)threadIdx.x) + 3200) / 1200) * 230400) + ((((int)blockIdx.x) >> 1) * 38400)) + ((((((int)threadIdx.x) >> 4) + 50) / 15) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + ((((((int)threadIdx.x) >> 4) + 5) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3520))] = placeholder[((((((((((((int)threadIdx.x) + 3520) / 1200) * 230400) + ((((int)blockIdx.x) >> 1) * 38400)) + (((((((int)threadIdx.x) >> 4) + 70) % 75) / 15) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + ((((((int)threadIdx.x) >> 4) + 10) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3840))] = placeholder[((((((((((((int)threadIdx.x) + 3840) / 1200) * 230400) + ((((int)blockIdx.x) >> 1) * 38400)) + ((((((int)threadIdx.x) >> 4) + 15) / 15) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + (((((int)threadIdx.x) % 240) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4160))] = placeholder[((((((((((((int)threadIdx.x) + 4160) / 1200) * 230400) + ((((int)blockIdx.x) >> 1) * 38400)) + ((((((int)threadIdx.x) >> 4) + 35) / 15) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + ((((((int)threadIdx.x) >> 4) + 5) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4480))] = placeholder[((((((((((((int)threadIdx.x) + 4480) / 1200) * 230400) + ((((int)blockIdx.x) >> 1) * 38400)) + ((((((int)threadIdx.x) >> 4) + 55) / 15) * 7680)) + ((((int)blockIdx.x) & 1) * 3840)) + ((((((int)threadIdx.x) >> 4) + 10) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 2048) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 320))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 320))];
    placeholder_shared[((((int)threadIdx.x) + 640))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 640))];
    placeholder_shared[((((int)threadIdx.x) + 960))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 960))];
    placeholder_shared[((((int)threadIdx.x) + 1280))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1280))];
    placeholder_shared[((((int)threadIdx.x) + 1600))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1600))];
    if (((int)threadIdx.x) < 128) {
      placeholder_shared[((((int)threadIdx.x) + 1920))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1920))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
        for (int yy_outer_inner = 0; yy_outer_inner < 5; ++yy_outer_inner) {
          for (int xx_outer_inner = 0; xx_outer_inner < 3; ++xx_outer_inner) {
            Conv2dOutput[((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)))] = (Conv2dOutput[((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 160) * 2400) + (nn_outer_inner * 1200)) + (yy_outer_inner * 240)) + (((((int)threadIdx.x) % 160) >> 5) * 48)) + (xx_outer_inner * 16)) + (rc_outer_inner * 2)))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 31) * 4)))]));
            Conv2dOutput[(((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)) + 1))] = (Conv2dOutput[(((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)) + 1))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 160) * 2400) + (nn_outer_inner * 1200)) + (yy_outer_inner * 240)) + (((((int)threadIdx.x) % 160) >> 5) * 48)) + (xx_outer_inner * 16)) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 31) * 4)) + 1))]));
            Conv2dOutput[(((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)) + 2))] = (Conv2dOutput[(((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)) + 2))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 160) * 2400) + (nn_outer_inner * 1200)) + (yy_outer_inner * 240)) + (((((int)threadIdx.x) % 160) >> 5) * 48)) + (xx_outer_inner * 16)) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 31) * 4)) + 2))]));
            Conv2dOutput[(((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)) + 3))] = (Conv2dOutput[(((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)) + 3))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 160) * 2400) + (nn_outer_inner * 1200)) + (yy_outer_inner * 240)) + (((((int)threadIdx.x) % 160) >> 5) * 48)) + (xx_outer_inner * 16)) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 31) * 4)) + 3))]));
            Conv2dOutput[((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)))] = (Conv2dOutput[((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 160) * 2400) + (nn_outer_inner * 1200)) + (yy_outer_inner * 240)) + (((((int)threadIdx.x) % 160) >> 5) * 48)) + (xx_outer_inner * 16)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 31) * 4)) + 128))]));
            Conv2dOutput[(((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)) + 1))] = (Conv2dOutput[(((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)) + 1))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 160) * 2400) + (nn_outer_inner * 1200)) + (yy_outer_inner * 240)) + (((((int)threadIdx.x) % 160) >> 5) * 48)) + (xx_outer_inner * 16)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 31) * 4)) + 129))]));
            Conv2dOutput[(((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)) + 2))] = (Conv2dOutput[(((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)) + 2))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 160) * 2400) + (nn_outer_inner * 1200)) + (yy_outer_inner * 240)) + (((((int)threadIdx.x) % 160) >> 5) * 48)) + (xx_outer_inner * 16)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 31) * 4)) + 130))]));
            Conv2dOutput[(((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)) + 3))] = (Conv2dOutput[(((((nn_outer_inner * 60) + (yy_outer_inner * 12)) + (xx_outer_inner * 4)) + 3))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 160) * 2400) + (nn_outer_inner * 1200)) + (yy_outer_inner * 240)) + (((((int)threadIdx.x) % 160) >> 5) * 48)) + (xx_outer_inner * 16)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 31) * 4)) + 131))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 5; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
          T_relu[(((((((((((((int)threadIdx.x) / 160) * 230400) + (ax0_inner * 115200)) + ((((int)blockIdx.x) >> 1) * 19200)) + (ax1_inner * 3840)) + ((((int)blockIdx.x) & 1) * 1920)) + (((((int)threadIdx.x) % 160) >> 5) * 384)) + (ax2_inner * 128)) + ((((int)threadIdx.x) & 31) * 4)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 60) + (ax1_inner * 12)) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 31) * 4) + ax3_inner))]), 0.000000e+00f);
        }
      }
    }
  }
}


