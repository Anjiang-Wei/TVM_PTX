
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
  float Conv2dOutput[32];
  __shared__ float PaddedInput_shared[3600];
  __shared__ float placeholder_shared[8192];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
    Conv2dOutput[((xx_outer_inner_init * 2))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 12))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 16))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 20))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 24))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 28))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 13))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 17))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 21))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 25))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 29))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((int)threadIdx.x) / 240) * 4096) + (((((int)threadIdx.x) % 240) >> 4) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1024))] = placeholder[(((((((((int)threadIdx.x) + 1024) / 240) * 4096) + ((((((int)threadIdx.x) >> 4) + 4) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2048))] = placeholder[(((((((((int)threadIdx.x) + 2048) / 240) * 4096) + ((((((int)threadIdx.x) >> 4) + 8) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    if (((int)threadIdx.x) < 528) {
      PaddedInput_shared[((((int)threadIdx.x) + 3072))] = placeholder[(((((((((int)threadIdx.x) + 3072) / 240) * 4096) + ((((((int)threadIdx.x) >> 4) + 12) % 15) * 256)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 8192) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 1024))] = placeholder1[((((rc_outer_outer * 8192) + ((int)threadIdx.x)) + 1024))];
    placeholder_shared[((((int)threadIdx.x) + 2048))] = placeholder1[((((rc_outer_outer * 8192) + ((int)threadIdx.x)) + 2048))];
    placeholder_shared[((((int)threadIdx.x) + 3072))] = placeholder1[((((rc_outer_outer * 8192) + ((int)threadIdx.x)) + 3072))];
    placeholder_shared[((((int)threadIdx.x) + 4096))] = placeholder1[((((rc_outer_outer * 8192) + ((int)threadIdx.x)) + 4096))];
    placeholder_shared[((((int)threadIdx.x) + 5120))] = placeholder1[((((rc_outer_outer * 8192) + ((int)threadIdx.x)) + 5120))];
    placeholder_shared[((((int)threadIdx.x) + 6144))] = placeholder1[((((rc_outer_outer * 8192) + ((int)threadIdx.x)) + 6144))];
    placeholder_shared[((((int)threadIdx.x) + 7168))] = placeholder1[((((rc_outer_outer * 8192) + ((int)threadIdx.x)) + 7168))];
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
      for (int rc_inner = 0; rc_inner < 16; ++rc_inner) {
        Conv2dOutput[((xx_outer_inner * 2))] = (Conv2dOutput[((xx_outer_inner * 2))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 4))] = (Conv2dOutput[(((xx_outer_inner * 2) + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 480))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 8))] = (Conv2dOutput[(((xx_outer_inner * 2) + 8))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 960))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 12))] = (Conv2dOutput[(((xx_outer_inner * 2) + 12))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 1440))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 16))] = (Conv2dOutput[(((xx_outer_inner * 2) + 16))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 1920))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 20))] = (Conv2dOutput[(((xx_outer_inner * 2) + 20))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 2400))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 24))] = (Conv2dOutput[(((xx_outer_inner * 2) + 24))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 2880))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 28))] = (Conv2dOutput[(((xx_outer_inner * 2) + 28))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 3360))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 1))] = (Conv2dOutput[(((xx_outer_inner * 2) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 32))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 5))] = (Conv2dOutput[(((xx_outer_inner * 2) + 5))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 512))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 9))] = (Conv2dOutput[(((xx_outer_inner * 2) + 9))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 992))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 13))] = (Conv2dOutput[(((xx_outer_inner * 2) + 13))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 1472))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 17))] = (Conv2dOutput[(((xx_outer_inner * 2) + 17))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 1952))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 21))] = (Conv2dOutput[(((xx_outer_inner * 2) + 21))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 2432))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 25))] = (Conv2dOutput[(((xx_outer_inner * 2) + 25))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 2912))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 29))] = (Conv2dOutput[(((xx_outer_inner * 2) + 29))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 9) * 128) + (xx_outer_inner * 64)) + rc_inner) + 3392))] * placeholder_shared[(((rc_inner * 512) + (((int)threadIdx.x) & 511)))]));
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
    T_add[(((((((int)threadIdx.x) >> 9) * 2048) + (ax2_inner * 512)) + (((int)threadIdx.x) & 511)))] = (Conv2dOutput[(ax2_inner)] + placeholder2[((((int)threadIdx.x) & 511))]);
    T_add[((((((((int)threadIdx.x) >> 9) * 2048) + (ax2_inner * 512)) + (((int)threadIdx.x) & 511)) + 4096))] = (Conv2dOutput[((ax2_inner + 4))] + placeholder2[((((int)threadIdx.x) & 511))]);
    T_add[((((((((int)threadIdx.x) >> 9) * 2048) + (ax2_inner * 512)) + (((int)threadIdx.x) & 511)) + 8192))] = (Conv2dOutput[((ax2_inner + 8))] + placeholder2[((((int)threadIdx.x) & 511))]);
    T_add[((((((((int)threadIdx.x) >> 9) * 2048) + (ax2_inner * 512)) + (((int)threadIdx.x) & 511)) + 12288))] = (Conv2dOutput[((ax2_inner + 12))] + placeholder2[((((int)threadIdx.x) & 511))]);
    T_add[((((((((int)threadIdx.x) >> 9) * 2048) + (ax2_inner * 512)) + (((int)threadIdx.x) & 511)) + 16384))] = (Conv2dOutput[((ax2_inner + 16))] + placeholder2[((((int)threadIdx.x) & 511))]);
    T_add[((((((((int)threadIdx.x) >> 9) * 2048) + (ax2_inner * 512)) + (((int)threadIdx.x) & 511)) + 20480))] = (Conv2dOutput[((ax2_inner + 20))] + placeholder2[((((int)threadIdx.x) & 511))]);
    T_add[((((((((int)threadIdx.x) >> 9) * 2048) + (ax2_inner * 512)) + (((int)threadIdx.x) & 511)) + 24576))] = (Conv2dOutput[((ax2_inner + 24))] + placeholder2[((((int)threadIdx.x) & 511))]);
    T_add[((((((((int)threadIdx.x) >> 9) * 2048) + (ax2_inner * 512)) + (((int)threadIdx.x) & 511)) + 28672))] = (Conv2dOutput[((ax2_inner + 28))] + placeholder2[((((int)threadIdx.x) & 511))]);
  }
}


