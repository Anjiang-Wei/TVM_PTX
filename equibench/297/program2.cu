
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
  float Conv2dOutput[128];
  __shared__ float PaddedInput_shared[384];
  __shared__ float placeholder_shared[96];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 4; ++yy_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 4; ++xx_outer_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 8) + (xx_outer_inner_init * 2)))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 8) + (xx_outer_inner_init * 2)) + 32))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 8) + (xx_outer_inner_init * 2)) + 64))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 8) + (xx_outer_inner_init * 2)) + 96))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 8) + (xx_outer_inner_init * 2)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 8) + (xx_outer_inner_init * 2)) + 33))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 8) + (xx_outer_inner_init * 2)) + 65))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 8) + (xx_outer_inner_init * 2)) + 97))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 48; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 73728) + ((((int)threadIdx.x) / 24) * 4608)) + ((((int)blockIdx.x) & 3) * 1152)) + (((((int)threadIdx.x) % 24) / 3) * 144)) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 32))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 73728) + (((((int)threadIdx.x) + 32) / 24) * 4608)) + ((((int)blockIdx.x) & 3) * 1152)) + ((((((int)threadIdx.x) + 8) % 24) / 3) * 144)) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 64))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 73728) + (((((int)threadIdx.x) + 64) / 24) * 4608)) + ((((int)blockIdx.x) & 3) * 1152)) + ((((((int)threadIdx.x) + 16) % 24) / 3) * 144)) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 96))] = placeholder[(((((((((((int)blockIdx.x) >> 2) * 73728) + ((((int)threadIdx.x) / 24) * 4608)) + ((((int)blockIdx.x) & 3) * 1152)) + (((((int)threadIdx.x) % 24) / 3) * 144)) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 18432))];
    PaddedInput_shared[((((int)threadIdx.x) + 128))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 73728) + (((((int)threadIdx.x) + 128) / 24) * 4608)) + ((((int)blockIdx.x) & 3) * 1152)) + ((((((int)threadIdx.x) + 8) % 24) / 3) * 144)) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 160))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 73728) + (((((int)threadIdx.x) + 160) / 24) * 4608)) + ((((int)blockIdx.x) & 3) * 1152)) + ((((((int)threadIdx.x) + 16) % 24) / 3) * 144)) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 192))] = placeholder[(((((((((((int)blockIdx.x) >> 2) * 73728) + ((((int)threadIdx.x) / 24) * 4608)) + ((((int)blockIdx.x) & 3) * 1152)) + (((((int)threadIdx.x) % 24) / 3) * 144)) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 36864))];
    PaddedInput_shared[((((int)threadIdx.x) + 224))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 73728) + (((((int)threadIdx.x) + 224) / 24) * 4608)) + ((((int)blockIdx.x) & 3) * 1152)) + ((((((int)threadIdx.x) + 8) % 24) / 3) * 144)) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 256))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 73728) + (((((int)threadIdx.x) + 256) / 24) * 4608)) + ((((int)blockIdx.x) & 3) * 1152)) + ((((((int)threadIdx.x) + 16) % 24) / 3) * 144)) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 288))] = placeholder[(((((((((((int)blockIdx.x) >> 2) * 73728) + ((((int)threadIdx.x) / 24) * 4608)) + ((((int)blockIdx.x) & 3) * 1152)) + (((((int)threadIdx.x) % 24) / 3) * 144)) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 55296))];
    PaddedInput_shared[((((int)threadIdx.x) + 320))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 73728) + (((((int)threadIdx.x) + 320) / 24) * 4608)) + ((((int)blockIdx.x) & 3) * 1152)) + ((((((int)threadIdx.x) + 8) % 24) / 3) * 144)) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 352))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 73728) + (((((int)threadIdx.x) + 352) / 24) * 4608)) + ((((int)blockIdx.x) & 3) * 1152)) + ((((((int)threadIdx.x) + 16) % 24) / 3) * 144)) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[((((int)threadIdx.x) * 16))] = placeholder1[(((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 1))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 1))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 2))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 2))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 3))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 3))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 4))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 4))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 5))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 5))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 6))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 6))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 7))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 7))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 8))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 8))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 9))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 9))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 10))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 10))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 11))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 11))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 12))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 12))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 13))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 13))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 14))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 14))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 15))] = placeholder1[((((rc_outer_outer * 96) + (((int)threadIdx.x) * 16)) + 15))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 3; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 4; ++yy_outer_inner) {
        for (int xx_outer_inner = 0; xx_outer_inner < 4; ++xx_outer_inner) {
          Conv2dOutput[(((yy_outer_inner * 8) + (xx_outer_inner * 2)))] = (Conv2dOutput[(((yy_outer_inner * 8) + (xx_outer_inner * 2)))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 96) + (yy_outer_inner * 24)) + (xx_outer_inner * 3)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 32))] = (Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 32))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 4) * 96) + (yy_outer_inner * 24)) + (xx_outer_inner * 3)) + rc_outer_inner) + 12))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 64))] = (Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 64))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 4) * 96) + (yy_outer_inner * 24)) + (xx_outer_inner * 3)) + rc_outer_inner) + 192))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 96))] = (Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 96))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 4) * 96) + (yy_outer_inner * 24)) + (xx_outer_inner * 3)) + rc_outer_inner) + 204))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)))]));
          Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 96) + (yy_outer_inner * 24)) + (xx_outer_inner * 3)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 33))] = (Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 33))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 4) * 96) + (yy_outer_inner * 24)) + (xx_outer_inner * 3)) + rc_outer_inner) + 12))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 65))] = (Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 65))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 4) * 96) + (yy_outer_inner * 24)) + (xx_outer_inner * 3)) + rc_outer_inner) + 192))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
          Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 97))] = (Conv2dOutput[((((yy_outer_inner * 8) + (xx_outer_inner * 2)) + 97))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 4) * 96) + (yy_outer_inner * 24)) + (xx_outer_inner * 3)) + rc_outer_inner) + 204))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_add[(((((((((((int)blockIdx.x) >> 2) * 16384) + ((((int)threadIdx.x) >> 4) * 4096)) + (ax1_inner * 1024)) + ((((int)blockIdx.x) & 3) * 256)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))] = (Conv2dOutput[((((ax1_inner * 8) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 15) * 2) + ax3_inner))]);
        T_add[((((((((((((int)blockIdx.x) >> 2) * 16384) + ((((int)threadIdx.x) >> 4) * 4096)) + (ax1_inner * 1024)) + ((((int)blockIdx.x) & 3) * 256)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 128))] = (Conv2dOutput[(((((ax1_inner * 8) + (ax2_inner * 2)) + ax3_inner) + 32))] + placeholder2[((((((int)threadIdx.x) & 15) * 2) + ax3_inner))]);
        T_add[((((((((((((int)blockIdx.x) >> 2) * 16384) + ((((int)threadIdx.x) >> 4) * 4096)) + (ax1_inner * 1024)) + ((((int)blockIdx.x) & 3) * 256)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 8192))] = (Conv2dOutput[(((((ax1_inner * 8) + (ax2_inner * 2)) + ax3_inner) + 64))] + placeholder2[((((((int)threadIdx.x) & 15) * 2) + ax3_inner))]);
        T_add[((((((((((((int)blockIdx.x) >> 2) * 16384) + ((((int)threadIdx.x) >> 4) * 4096)) + (ax1_inner * 1024)) + ((((int)blockIdx.x) & 3) * 256)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 8320))] = (Conv2dOutput[(((((ax1_inner * 8) + (ax2_inner * 2)) + ax3_inner) + 96))] + placeholder2[((((((int)threadIdx.x) & 15) * 2) + ax3_inner))]);
      }
    }
  }
}


