
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
  float Conv2dOutput[180];
  __shared__ float PaddedInput_shared[180];
  __shared__ float placeholder_shared[1024];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 3; ++xx_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
      for (int ff_inner_init = 0; ff_inner_init < 2; ++ff_inner_init) {
        Conv2dOutput[((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 12))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 24))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 36))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 48))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 60))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 72))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 84))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 96))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 108))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 120))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 132))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 144))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 156))] = 0.000000e+00f;
        Conv2dOutput[(((((xx_outer_inner_init * 4) + (ff_outer_inner_init * 2)) + ff_inner_init) + 168))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 15) {
      PaddedInput_shared[((((int)threadIdx.x) * 12))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 11520) + ((((int)threadIdx.x) / 5) * 3840)) + (((((int)blockIdx.x) & 3) >> 1) * 1920)) + ((((int)threadIdx.x) % 5) * 384)) + (rc_outer_outer * 4)))];
    }
    if (((int)threadIdx.x) < 15) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 1))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 11520) + ((((int)threadIdx.x) / 5) * 3840)) + (((((int)blockIdx.x) & 3) >> 1) * 1920)) + ((((int)threadIdx.x) % 5) * 384)) + (rc_outer_outer * 4)) + 1))];
    }
    if (((int)threadIdx.x) < 15) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 2))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 11520) + ((((int)threadIdx.x) / 5) * 3840)) + (((((int)blockIdx.x) & 3) >> 1) * 1920)) + ((((int)threadIdx.x) % 5) * 384)) + (rc_outer_outer * 4)) + 2))];
    }
    if (((int)threadIdx.x) < 15) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 3))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 11520) + ((((int)threadIdx.x) / 5) * 3840)) + (((((int)blockIdx.x) & 3) >> 1) * 1920)) + ((((int)threadIdx.x) % 5) * 384)) + (rc_outer_outer * 4)) + 3))];
    }
    if (((int)threadIdx.x) < 15) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 4))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 11520) + ((((((int)threadIdx.x) * 3) + 1) / 15) * 3840)) + (((((int)blockIdx.x) & 3) >> 1) * 1920)) + ((((((int)threadIdx.x) * 3) + 1) % 15) * 128)) + (rc_outer_outer * 4)))];
    }
    if (((int)threadIdx.x) < 15) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 5))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 11520) + ((((((int)threadIdx.x) * 3) + 1) / 15) * 3840)) + (((((int)blockIdx.x) & 3) >> 1) * 1920)) + ((((((int)threadIdx.x) * 3) + 1) % 15) * 128)) + (rc_outer_outer * 4)) + 1))];
    }
    if (((int)threadIdx.x) < 15) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 6))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 11520) + ((((((int)threadIdx.x) * 3) + 1) / 15) * 3840)) + (((((int)blockIdx.x) & 3) >> 1) * 1920)) + ((((((int)threadIdx.x) * 3) + 1) % 15) * 128)) + (rc_outer_outer * 4)) + 2))];
    }
    if (((int)threadIdx.x) < 15) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 7))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 11520) + ((((((int)threadIdx.x) * 3) + 1) / 15) * 3840)) + (((((int)blockIdx.x) & 3) >> 1) * 1920)) + ((((((int)threadIdx.x) * 3) + 1) % 15) * 128)) + (rc_outer_outer * 4)) + 3))];
    }
    if (((int)threadIdx.x) < 15) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 8))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 11520) + ((((((int)threadIdx.x) * 3) + 2) / 15) * 3840)) + (((((int)blockIdx.x) & 3) >> 1) * 1920)) + ((((((int)threadIdx.x) * 3) + 2) % 15) * 128)) + (rc_outer_outer * 4)))];
    }
    if (((int)threadIdx.x) < 15) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 9))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 11520) + ((((((int)threadIdx.x) * 3) + 2) / 15) * 3840)) + (((((int)blockIdx.x) & 3) >> 1) * 1920)) + ((((((int)threadIdx.x) * 3) + 2) % 15) * 128)) + (rc_outer_outer * 4)) + 1))];
    }
    if (((int)threadIdx.x) < 15) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 10))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 11520) + ((((((int)threadIdx.x) * 3) + 2) / 15) * 3840)) + (((((int)blockIdx.x) & 3) >> 1) * 1920)) + ((((((int)threadIdx.x) * 3) + 2) % 15) * 128)) + (rc_outer_outer * 4)) + 2))];
    }
    if (((int)threadIdx.x) < 15) {
      PaddedInput_shared[(((((int)threadIdx.x) * 12) + 11))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 11520) + ((((((int)threadIdx.x) * 3) + 2) / 15) * 3840)) + (((((int)blockIdx.x) & 3) >> 1) * 1920)) + ((((((int)threadIdx.x) * 3) + 2) % 15) * 128)) + (rc_outer_outer * 4)) + 3))];
    }
    ((float4*)(placeholder_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(placeholder1 + ((((rc_outer_outer * 2048) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 256))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 2048) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + 512))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 512))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 2048) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + 1024))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 768))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 2048) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + 1536))))[0];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 3; ++xx_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
          for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
            Conv2dOutput[((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner))] = (Conv2dOutput[((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner))] + (PaddedInput_shared[(((xx_outer_inner * 4) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 12))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 12))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 12))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 24))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 24))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 24))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 36))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 36))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 36))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 48))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 48))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 48))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 60))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 60))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 60))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 72))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 72))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 72))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 84))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 84))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 84))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 96))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 96))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 96))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 108))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 108))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 108))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 120))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 120))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 120))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 132))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 132))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 132))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 144))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 144))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 144))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 156))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 156))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 156))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
            Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 168))] = (Conv2dOutput[(((((xx_outer_inner * 4) + (ff_outer_inner * 2)) + ff_inner) + 168))] + (PaddedInput_shared[((((xx_outer_inner * 4) + rc_outer_inner) + 168))] * placeholder_shared[(((((rc_outer_inner * 256) + (((int)threadIdx.x) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
          }
        }
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
      T_relu[((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner))] = max(((Conv2dOutput[(((ax2_inner * 4) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 1536))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 12))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 1536))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 3072))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 24))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 3072))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 4608))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 36))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 4608))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 6144))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 48))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 6144))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 15360))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 60))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 15360))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 16896))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 72))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 16896))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 18432))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 84))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 18432))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 19968))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 96))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 19968))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 21504))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 108))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 21504))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 30720))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 120))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 30720))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 32256))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 132))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 32256))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 33792))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 144))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 33792))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 35328))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 156))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 35328))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 36864))] = max(((Conv2dOutput[((((ax2_inner * 4) + ax3_inner) + 168))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 4)) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 46080) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 36864))]), 0.000000e+00f);
    }
  }
}


