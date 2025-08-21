
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
  float Conv2dOutput[600];
  __shared__ float PaddedInput_shared[3600];
  __shared__ float placeholder_shared[512];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 5; ++yy_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 5; ++xx_outer_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 300))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 10))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 310))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 20))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 320))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 30))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 330))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 40))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 340))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 50))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 350))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 301))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 11))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 311))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 21))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 321))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 31))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 331))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 41))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 341))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 51))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 60) + (xx_outer_inner_init * 2)) + 351))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)threadIdx.x) / 30) * 7680) + ((((int)blockIdx.x) >> 1) * 3840)) + (((((int)threadIdx.x) % 30) >> 1) * 256)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 768))] = placeholder[((((((((((int)threadIdx.x) + 768) / 30) * 7680) + ((((int)blockIdx.x) >> 1) * 3840)) + ((((((int)threadIdx.x) >> 1) + 9) % 15) * 256)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1536))] = placeholder[((((((((((int)threadIdx.x) + 1536) / 30) * 7680) + ((((int)blockIdx.x) >> 1) * 3840)) + ((((((int)threadIdx.x) >> 1) + 3) % 15) * 256)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2304))] = placeholder[((((((((((int)threadIdx.x) + 2304) / 30) * 7680) + ((((int)blockIdx.x) >> 1) * 3840)) + ((((((int)threadIdx.x) >> 1) + 12) % 15) * 256)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    if (((int)threadIdx.x) < 528) {
      PaddedInput_shared[((((int)threadIdx.x) + 3072))] = placeholder[((((((((((int)threadIdx.x) + 3072) / 30) * 7680) + ((((int)blockIdx.x) >> 1) * 3840)) + ((((((int)threadIdx.x) >> 1) + 6) % 15) * 256)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    }
    if (((int)threadIdx.x) < 512) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)threadIdx.x) >> 8) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 255)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 5; ++yy_outer_inner) {
        for (int xx_outer_inner = 0; xx_outer_inner < 5; ++xx_outer_inner) {
          Conv2dOutput[(((yy_outer_inner * 60) + (xx_outer_inner * 2)))] = (Conv2dOutput[(((yy_outer_inner * 60) + (xx_outer_inner * 2)))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 300))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 300))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 1800))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 10))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 10))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 30))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 310))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 310))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 1830))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 20))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 20))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 60))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 320))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 320))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 1860))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 30))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 30))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 90))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 330))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 330))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 1890))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 40))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 40))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 120))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 340))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 340))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 1920))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 50))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 50))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 150))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 350))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 350))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 1950))] * placeholder_shared[(((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 1))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 301))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 301))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 1800))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 11))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 11))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 30))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 311))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 311))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 1830))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 21))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 21))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 60))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 321))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 321))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 1860))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 31))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 31))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 90))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 331))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 331))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 1890))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 41))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 41))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 120))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 341))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 341))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 1920))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 51))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 51))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 150))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 351))] = (Conv2dOutput[((((yy_outer_inner * 60) + (xx_outer_inner * 2)) + 351))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 384) * 900) + (yy_outer_inner * 180)) + (((((int)threadIdx.x) % 384) >> 7) * 10)) + (xx_outer_inner * 2)) + rc_outer_inner) + 1950))] * placeholder_shared[((((rc_outer_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 30; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 5; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[((((((((((((int)threadIdx.x) / 384) * 460800) + (ax1_inner * 15360)) + ((((int)blockIdx.x) >> 1) * 7680)) + (((((int)threadIdx.x) % 384) >> 7) * 2560)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 127) * 2)) + ax3_inner))] = max(((Conv2dOutput[((((ax1_inner * 10) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + ((((int)threadIdx.x) & 127) * 2)) + ax3_inner))]) + placeholder3[((((((((((((int)threadIdx.x) / 384) * 460800) + (ax1_inner * 15360)) + ((((int)blockIdx.x) >> 1) * 7680)) + (((((int)threadIdx.x) % 384) >> 7) * 2560)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 127) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((((int)threadIdx.x) / 384) * 460800) + (ax1_inner * 15360)) + ((((int)blockIdx.x) >> 1) * 7680)) + (((((int)threadIdx.x) % 384) >> 7) * 2560)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 127) * 2)) + ax3_inner) + 921600))] = max(((Conv2dOutput[(((((ax1_inner * 10) + (ax2_inner * 2)) + ax3_inner) + 300))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + ((((int)threadIdx.x) & 127) * 2)) + ax3_inner))]) + placeholder3[(((((((((((((int)threadIdx.x) / 384) * 460800) + (ax1_inner * 15360)) + ((((int)blockIdx.x) >> 1) * 7680)) + (((((int)threadIdx.x) % 384) >> 7) * 2560)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 127) * 2)) + ax3_inner) + 921600))]), 0.000000e+00f);
      }
    }
  }
}


