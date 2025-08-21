
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
  float Conv2dOutput[200];
  __shared__ float PaddedInput_shared[900];
  __shared__ float placeholder_shared[384];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 5; ++xx_outer_inner_init) {
    Conv2dOutput[((xx_outer_inner_init * 2))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 100))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 10))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 110))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 20))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 120))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 30))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 130))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 40))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 140))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 50))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 150))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 60))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 160))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 70))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 170))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 80))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 180))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 90))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 190))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 101))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 11))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 111))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 21))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 121))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 31))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 131))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 41))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 141))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 51))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 151))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 61))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 161))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 71))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 171))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 81))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 181))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 91))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 191))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 144; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[((((int)threadIdx.x) * 18))] = placeholder[((((((((int)threadIdx.x) / 25) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((int)threadIdx.x) % 25) * 2592)) + (rc_outer_outer * 6)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 1))] = placeholder[(((((((((int)threadIdx.x) / 25) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((int)threadIdx.x) % 25) * 2592)) + (rc_outer_outer * 6)) + 1))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 2))] = placeholder[(((((((((int)threadIdx.x) / 25) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((int)threadIdx.x) % 25) * 2592)) + (rc_outer_outer * 6)) + 2))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 3))] = placeholder[(((((((((int)threadIdx.x) / 25) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((int)threadIdx.x) % 25) * 2592)) + (rc_outer_outer * 6)) + 3))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 4))] = placeholder[(((((((((int)threadIdx.x) / 25) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((int)threadIdx.x) % 25) * 2592)) + (rc_outer_outer * 6)) + 4))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 5))] = placeholder[(((((((((int)threadIdx.x) / 25) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((int)threadIdx.x) % 25) * 2592)) + (rc_outer_outer * 6)) + 5))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 6))] = placeholder[((((((((((int)threadIdx.x) * 3) + 1) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((((int)threadIdx.x) * 3) + 1) % 75) * 864)) + (rc_outer_outer * 6)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 7))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 1) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((((int)threadIdx.x) * 3) + 1) % 75) * 864)) + (rc_outer_outer * 6)) + 1))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 8))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 1) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((((int)threadIdx.x) * 3) + 1) % 75) * 864)) + (rc_outer_outer * 6)) + 2))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 9))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 1) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((((int)threadIdx.x) * 3) + 1) % 75) * 864)) + (rc_outer_outer * 6)) + 3))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 10))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 1) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((((int)threadIdx.x) * 3) + 1) % 75) * 864)) + (rc_outer_outer * 6)) + 4))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 11))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 1) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((((int)threadIdx.x) * 3) + 1) % 75) * 864)) + (rc_outer_outer * 6)) + 5))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 12))] = placeholder[((((((((((int)threadIdx.x) * 3) + 2) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((((int)threadIdx.x) * 3) + 2) % 75) * 864)) + (rc_outer_outer * 6)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 13))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 2) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((((int)threadIdx.x) * 3) + 2) % 75) * 864)) + (rc_outer_outer * 6)) + 1))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 14))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 2) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((((int)threadIdx.x) * 3) + 2) % 75) * 864)) + (rc_outer_outer * 6)) + 2))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 15))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 2) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((((int)threadIdx.x) * 3) + 2) % 75) * 864)) + (rc_outer_outer * 6)) + 3))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 16))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 2) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((((int)threadIdx.x) * 3) + 2) % 75) * 864)) + (rc_outer_outer * 6)) + 4))];
    PaddedInput_shared[(((((int)threadIdx.x) * 18) + 17))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 2) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + ((((((int)threadIdx.x) * 3) + 2) % 75) * 864)) + (rc_outer_outer * 6)) + 5))];
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 864))] = placeholder[((((((((((int)threadIdx.x) * 3) + 144) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 69) * 864)) + (rc_outer_outer * 6)))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 865))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 144) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 69) * 864)) + (rc_outer_outer * 6)) + 1))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 866))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 144) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 69) * 864)) + (rc_outer_outer * 6)) + 2))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 867))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 144) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 69) * 864)) + (rc_outer_outer * 6)) + 3))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 868))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 144) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 69) * 864)) + (rc_outer_outer * 6)) + 4))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 869))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 144) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 69) * 864)) + (rc_outer_outer * 6)) + 5))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 870))] = placeholder[((((((((((int)threadIdx.x) * 3) + 145) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 70) * 864)) + (rc_outer_outer * 6)))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 871))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 145) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 70) * 864)) + (rc_outer_outer * 6)) + 1))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 872))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 145) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 70) * 864)) + (rc_outer_outer * 6)) + 2))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 873))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 145) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 70) * 864)) + (rc_outer_outer * 6)) + 3))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 874))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 145) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 70) * 864)) + (rc_outer_outer * 6)) + 4))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 875))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 145) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 70) * 864)) + (rc_outer_outer * 6)) + 5))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 876))] = placeholder[((((((((((int)threadIdx.x) * 3) + 146) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 71) * 864)) + (rc_outer_outer * 6)))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 877))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 146) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 71) * 864)) + (rc_outer_outer * 6)) + 1))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 878))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 146) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 71) * 864)) + (rc_outer_outer * 6)) + 2))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 879))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 146) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 71) * 864)) + (rc_outer_outer * 6)) + 3))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 880))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 146) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 71) * 864)) + (rc_outer_outer * 6)) + 4))];
    }
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[(((((int)threadIdx.x) * 18) + 881))] = placeholder[(((((((((((int)threadIdx.x) * 3) + 146) / 75) * 194400) + ((((int)blockIdx.x) >> 1) * 64800)) + (((((int)threadIdx.x) * 3) + 71) * 864)) + (rc_outer_outer * 6)) + 5))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 768) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 48))] = placeholder1[(((((rc_outer_outer * 768) + (((((int)threadIdx.x) + 48) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[(((((rc_outer_outer * 768) + (((((int)threadIdx.x) + 96) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 144))] = placeholder1[(((((rc_outer_outer * 768) + (((((int)threadIdx.x) + 144) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) + 16)))];
    placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[(((((rc_outer_outer * 768) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 384))];
    placeholder_shared[((((int)threadIdx.x) + 240))] = placeholder1[(((((rc_outer_outer * 768) + (((((int)threadIdx.x) + 240) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 288))] = placeholder1[(((((rc_outer_outer * 768) + (((((int)threadIdx.x) + 288) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 336))] = placeholder1[(((((rc_outer_outer * 768) + (((((int)threadIdx.x) + 336) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) + 16)))];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 6; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 5; ++xx_outer_inner) {
        Conv2dOutput[((xx_outer_inner * 2))] = (Conv2dOutput[((xx_outer_inner * 2))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 100))] = (Conv2dOutput[(((xx_outer_inner * 2) + 100))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 10))] = (Conv2dOutput[(((xx_outer_inner * 2) + 10))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 90))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 110))] = (Conv2dOutput[(((xx_outer_inner * 2) + 110))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 90))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 20))] = (Conv2dOutput[(((xx_outer_inner * 2) + 20))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 180))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 120))] = (Conv2dOutput[(((xx_outer_inner * 2) + 120))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 180))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 30))] = (Conv2dOutput[(((xx_outer_inner * 2) + 30))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 270))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 130))] = (Conv2dOutput[(((xx_outer_inner * 2) + 130))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 270))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 40))] = (Conv2dOutput[(((xx_outer_inner * 2) + 40))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 360))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 140))] = (Conv2dOutput[(((xx_outer_inner * 2) + 140))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 360))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 50))] = (Conv2dOutput[(((xx_outer_inner * 2) + 50))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 450))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 150))] = (Conv2dOutput[(((xx_outer_inner * 2) + 150))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 450))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 60))] = (Conv2dOutput[(((xx_outer_inner * 2) + 60))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 540))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 160))] = (Conv2dOutput[(((xx_outer_inner * 2) + 160))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 540))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 70))] = (Conv2dOutput[(((xx_outer_inner * 2) + 70))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 630))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 170))] = (Conv2dOutput[(((xx_outer_inner * 2) + 170))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 630))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 80))] = (Conv2dOutput[(((xx_outer_inner * 2) + 80))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 720))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 180))] = (Conv2dOutput[(((xx_outer_inner * 2) + 180))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 720))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 90))] = (Conv2dOutput[(((xx_outer_inner * 2) + 90))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 810))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 190))] = (Conv2dOutput[(((xx_outer_inner * 2) + 190))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 810))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 1))] = (Conv2dOutput[(((xx_outer_inner * 2) + 1))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 101))] = (Conv2dOutput[(((xx_outer_inner * 2) + 101))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 11))] = (Conv2dOutput[(((xx_outer_inner * 2) + 11))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 90))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 111))] = (Conv2dOutput[(((xx_outer_inner * 2) + 111))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 90))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 21))] = (Conv2dOutput[(((xx_outer_inner * 2) + 21))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 180))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 121))] = (Conv2dOutput[(((xx_outer_inner * 2) + 121))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 180))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 31))] = (Conv2dOutput[(((xx_outer_inner * 2) + 31))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 270))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 131))] = (Conv2dOutput[(((xx_outer_inner * 2) + 131))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 270))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 41))] = (Conv2dOutput[(((xx_outer_inner * 2) + 41))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 360))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 141))] = (Conv2dOutput[(((xx_outer_inner * 2) + 141))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 360))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 51))] = (Conv2dOutput[(((xx_outer_inner * 2) + 51))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 450))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 151))] = (Conv2dOutput[(((xx_outer_inner * 2) + 151))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 450))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 61))] = (Conv2dOutput[(((xx_outer_inner * 2) + 61))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 540))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 161))] = (Conv2dOutput[(((xx_outer_inner * 2) + 161))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 540))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 71))] = (Conv2dOutput[(((xx_outer_inner * 2) + 71))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 630))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 171))] = (Conv2dOutput[(((xx_outer_inner * 2) + 171))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 630))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 81))] = (Conv2dOutput[(((xx_outer_inner * 2) + 81))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 720))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 181))] = (Conv2dOutput[(((xx_outer_inner * 2) + 181))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 720))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 91))] = (Conv2dOutput[(((xx_outer_inner * 2) + 91))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 810))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 191))] = (Conv2dOutput[(((xx_outer_inner * 2) + 191))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 30) + (xx_outer_inner * 6)) + rc_outer_inner) + 810))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 5; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 5; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
          T_relu[(((((((((ax0_inner * 28800) + ((((int)blockIdx.x) >> 1) * 9600)) + (ax1_inner * 1920)) + ((((int)threadIdx.x) >> 4) * 640)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 50) + (ax1_inner * 10)) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))]), 0.000000e+00f);
          T_relu[((((((((((ax0_inner * 28800) + ((((int)blockIdx.x) >> 1) * 9600)) + (ax1_inner * 1920)) + ((((int)threadIdx.x) >> 4) * 640)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))] = max((Conv2dOutput[((((((ax0_inner * 50) + (ax1_inner * 10)) + (ax2_inner * 2)) + ax3_inner) + 100))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))]), 0.000000e+00f);
        }
      }
    }
  }
}


