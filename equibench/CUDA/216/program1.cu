
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
  __shared__ float PaddedInput_shared[3600];
  __shared__ float placeholder_shared[2048];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 15; ++xx_outer_inner_init) {
    Conv2dOutput[(xx_outer_inner_init)] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 15))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 30))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 45))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 60))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 75))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 90))] = 0.000000e+00f;
    Conv2dOutput[((xx_outer_inner_init + 105))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 36; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 240))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 8640))];
    PaddedInput_shared[((((int)threadIdx.x) + 480))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 17280))];
    PaddedInput_shared[((((int)threadIdx.x) + 720))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 25920))];
    PaddedInput_shared[((((int)threadIdx.x) + 960))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 34560))];
    PaddedInput_shared[((((int)threadIdx.x) + 1200))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 43200))];
    PaddedInput_shared[((((int)threadIdx.x) + 1440))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 51840))];
    PaddedInput_shared[((((int)threadIdx.x) + 1680))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 60480))];
    PaddedInput_shared[((((int)threadIdx.x) + 1920))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 69120))];
    PaddedInput_shared[((((int)threadIdx.x) + 2160))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 77760))];
    PaddedInput_shared[((((int)threadIdx.x) + 2400))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 86400))];
    PaddedInput_shared[((((int)threadIdx.x) + 2640))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 95040))];
    PaddedInput_shared[((((int)threadIdx.x) + 2880))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 103680))];
    PaddedInput_shared[((((int)threadIdx.x) + 3120))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 112320))];
    PaddedInput_shared[((((int)threadIdx.x) + 3360))] = placeholder[((((((((int)threadIdx.x) >> 4) * 576) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 120960))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 2048) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 240))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 240))];
    placeholder_shared[((((int)threadIdx.x) + 480))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 480))];
    placeholder_shared[((((int)threadIdx.x) + 720))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 720))];
    placeholder_shared[((((int)threadIdx.x) + 960))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 960))];
    placeholder_shared[((((int)threadIdx.x) + 1200))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1200))];
    placeholder_shared[((((int)threadIdx.x) + 1440))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1440))];
    placeholder_shared[((((int)threadIdx.x) + 1680))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1680))];
    if (((int)threadIdx.x) < 128) {
      placeholder_shared[((((int)threadIdx.x) + 1920))] = placeholder1[((((rc_outer_outer * 2048) + ((int)threadIdx.x)) + 1920))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 16; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 15; ++xx_outer_inner) {
        Conv2dOutput[(xx_outer_inner)] = (Conv2dOutput[(xx_outer_inner)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 240) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 128) + (((int)threadIdx.x) & 15)))]));
        Conv2dOutput[((xx_outer_inner + 15))] = (Conv2dOutput[((xx_outer_inner + 15))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 240) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + (((int)threadIdx.x) & 15)) + 16))]));
        Conv2dOutput[((xx_outer_inner + 30))] = (Conv2dOutput[((xx_outer_inner + 30))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 240) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + (((int)threadIdx.x) & 15)) + 32))]));
        Conv2dOutput[((xx_outer_inner + 45))] = (Conv2dOutput[((xx_outer_inner + 45))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 240) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + (((int)threadIdx.x) & 15)) + 48))]));
        Conv2dOutput[((xx_outer_inner + 60))] = (Conv2dOutput[((xx_outer_inner + 60))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 240) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + (((int)threadIdx.x) & 15)) + 64))]));
        Conv2dOutput[((xx_outer_inner + 75))] = (Conv2dOutput[((xx_outer_inner + 75))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 240) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + (((int)threadIdx.x) & 15)) + 80))]));
        Conv2dOutput[((xx_outer_inner + 90))] = (Conv2dOutput[((xx_outer_inner + 90))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 240) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + (((int)threadIdx.x) & 15)) + 96))]));
        Conv2dOutput[((xx_outer_inner + 105))] = (Conv2dOutput[((xx_outer_inner + 105))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 240) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + (((int)threadIdx.x) & 15)) + 112))]));
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 15; ++ax2_inner) {
    T_relu[(((((((int)threadIdx.x) >> 4) * 1920) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)))] = max((Conv2dOutput[(ax2_inner)] + placeholder2[((((int)threadIdx.x) & 15))]), 0.000000e+00f);
    T_relu[((((((((int)threadIdx.x) >> 4) * 1920) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 16))] = max((Conv2dOutput[((ax2_inner + 15))] + placeholder2[(((((int)threadIdx.x) & 15) + 16))]), 0.000000e+00f);
    T_relu[((((((((int)threadIdx.x) >> 4) * 1920) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 32))] = max((Conv2dOutput[((ax2_inner + 30))] + placeholder2[(((((int)threadIdx.x) & 15) + 32))]), 0.000000e+00f);
    T_relu[((((((((int)threadIdx.x) >> 4) * 1920) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 48))] = max((Conv2dOutput[((ax2_inner + 45))] + placeholder2[(((((int)threadIdx.x) & 15) + 48))]), 0.000000e+00f);
    T_relu[((((((((int)threadIdx.x) >> 4) * 1920) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 64))] = max((Conv2dOutput[((ax2_inner + 60))] + placeholder2[(((((int)threadIdx.x) & 15) + 64))]), 0.000000e+00f);
    T_relu[((((((((int)threadIdx.x) >> 4) * 1920) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 80))] = max((Conv2dOutput[((ax2_inner + 75))] + placeholder2[(((((int)threadIdx.x) & 15) + 80))]), 0.000000e+00f);
    T_relu[((((((((int)threadIdx.x) >> 4) * 1920) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 96))] = max((Conv2dOutput[((ax2_inner + 90))] + placeholder2[(((((int)threadIdx.x) & 15) + 96))]), 0.000000e+00f);
    T_relu[((((((((int)threadIdx.x) >> 4) * 1920) + (ax2_inner * 128)) + (((int)threadIdx.x) & 15)) + 112))] = max((Conv2dOutput[((ax2_inner + 105))] + placeholder2[(((((int)threadIdx.x) & 15) + 112))]), 0.000000e+00f);
  }
}


