
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute, float* __restrict__ placeholder2) {
  float Conv2dOutput[128];
  __shared__ float PaddedInput_shared[256];
  __shared__ float placeholder_shared[24];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    Conv2dOutput[((yy_outer_inner_init * 32))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 64))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 68))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 72))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 12))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 76))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 16))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 80))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 20))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 84))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 24))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 88))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 28))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 92))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 65))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 69))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 73))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 13))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 77))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 17))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 81))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 21))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 85))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 25))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 89))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 29))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 93))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 66))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 6))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 70))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 10))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 74))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 14))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 78))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 18))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 82))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 22))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 86))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 26))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 90))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 30))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 94))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 67))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 7))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 71))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 11))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 75))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 15))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 79))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 19))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 83))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 23))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 87))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 27))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 91))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 31))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 95))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[((((int)threadIdx.x) * 4))] = placeholder[((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 1))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 1))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 2))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 16))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 3))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 17))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 48))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 24576))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 49))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 24577))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 50))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 24592))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 51))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 24593))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 96))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 49152))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 97))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 49153))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 98))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 49168))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 99))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 49169))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 144))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 73728))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 145))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 73729))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 146))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 73744))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 147))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 73745))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 192))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 98304))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 193))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 98305))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 194))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 98320))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 195))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 98321))];
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 240))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 122880))];
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 241))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 122881))];
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 242))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 122896))];
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 243))] = placeholder[(((((((((int)blockIdx.x) >> 9) * 131072) + (((int)threadIdx.x) * 2048)) + (((((int)blockIdx.x) & 511) >> 3) * 32)) + (rc_outer_outer * 2)) + 122897))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 192) + ((((int)blockIdx.x) & 7) * 12)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 12))] = placeholder1[(((((rc_outer_outer * 192) + ((((int)blockIdx.x) & 7) * 12)) + ((int)threadIdx.x)) + 96))];
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
        Conv2dOutput[(((yy_outer_inner * 32) + (xx_outer_inner * 2)))] = (Conv2dOutput[(((yy_outer_inner * 32) + (xx_outer_inner * 2)))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 64))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 128))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 4))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 4))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 68))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 68))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 132))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 8))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 8))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 8))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 72))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 72))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 136))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 12))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 12))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 12))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 76))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 76))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 140))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 16))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 16))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 16))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 80))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 80))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 144))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 20))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 20))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 20))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 84))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 84))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 148))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 24))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 24))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 24))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 88))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 88))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 152))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 28))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 28))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 28))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 92))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 92))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 156))] * placeholder_shared[(((((int)threadIdx.x) % 6) * 2))]));
        Conv2dOutput[(((yy_outer_inner * 32) + (xx_outer_inner * 2)))] = (Conv2dOutput[(((yy_outer_inner * 32) + (xx_outer_inner * 2)))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 64))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 129))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 4))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 68))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 68))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 133))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 8))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 8))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 9))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 72))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 72))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 137))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 12))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 12))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 13))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 76))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 76))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 141))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 16))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 16))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 17))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 80))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 80))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 145))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 20))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 20))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 21))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 84))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 84))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 149))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 24))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 24))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 25))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 88))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 88))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 153))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 28))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 28))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 29))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 92))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 92))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 157))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 12))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 1))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 65))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 128))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 5))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 5))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 69))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 69))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 132))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 9))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 9))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 8))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 73))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 73))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 136))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 13))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 13))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 12))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 77))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 77))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 140))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 17))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 17))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 16))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 81))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 81))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 144))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 21))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 21))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 20))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 85))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 85))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 148))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 25))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 25))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 24))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 89))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 89))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 152))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 29))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 29))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 28))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 93))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 93))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 156))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 65))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 129))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 5))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 5))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 69))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 69))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 133))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 9))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 9))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 9))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 73))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 73))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 137))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 13))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 13))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 13))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 77))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 77))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 141))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 17))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 17))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 17))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 81))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 81))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 145))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 21))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 21))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 21))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 85))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 85))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 149))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 25))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 25))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 25))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 89))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 89))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 153))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 29))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 29))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 29))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
        Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 93))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 2)) + 93))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 64) + (yy_outer_inner * 32)) + (xx_outer_inner * 2)) + 157))] * placeholder_shared[((((((int)threadIdx.x) % 6) * 2) + 13))]));
      }
    }
  }
  for (int i1_inner = 0; i1_inner < 16; ++i1_inner) {
    for (int i2_inner = 0; i2_inner < 2; ++i2_inner) {
      for (int i3_inner = 0; i3_inner < 2; ++i3_inner) {
        compute[((((((((((((int)blockIdx.x) >> 9) * 786432) + ((((int)threadIdx.x) / 6) * 196608)) + (i1_inner * 12288)) + (((((int)blockIdx.x) & 511) >> 3) * 192)) + (i2_inner * 96)) + ((((int)blockIdx.x) & 7) * 12)) + ((((int)threadIdx.x) % 6) * 2)) + i3_inner))] = max(min((Conv2dOutput[((((i1_inner * 4) + (i2_inner * 2)) + i3_inner))] + placeholder2[(((((((int)blockIdx.x) & 7) * 12) + ((((int)threadIdx.x) % 6) * 2)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
        compute[(((((((((((((int)blockIdx.x) >> 9) * 786432) + ((((int)threadIdx.x) / 6) * 196608)) + (i1_inner * 12288)) + (((((int)blockIdx.x) & 511) >> 3) * 192)) + (i2_inner * 96)) + ((((int)blockIdx.x) & 7) * 12)) + ((((int)threadIdx.x) % 6) * 2)) + i3_inner) + 393216))] = max(min((Conv2dOutput[(((((i1_inner * 4) + (i2_inner * 2)) + i3_inner) + 64))] + placeholder2[(((((((int)blockIdx.x) & 7) * 12) + ((((int)threadIdx.x) % 6) * 2)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
      }
    }
  }
}


