
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
  float Conv2dOutput[256];
  __shared__ float PaddedInput_shared[3072];
  __shared__ float placeholder_shared[48];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 4; ++yy_outer_inner_init) {
    Conv2dOutput[((yy_outer_inner_init * 8))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 32))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 64))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 96))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 128))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 160))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 192))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 224))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 33))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 65))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 97))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 129))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 161))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 193))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 225))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 34))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 66))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 98))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 130))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 162))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 194))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 226))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 35))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 67))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 99))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 131))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 163))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 195))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 227))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 36))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 68))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 100))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 132))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 164))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 196))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 228))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 37))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 69))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 101))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 133))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 165))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 197))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 229))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 6))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 38))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 70))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 102))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 134))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 166))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 198))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 230))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 7))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 39))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 71))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 103))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 135))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 167))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 199))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 8) + 231))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 64))] = placeholder[((((((((int)threadIdx.x) + 64) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 128))] = placeholder[((((((((int)threadIdx.x) + 128) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 192))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 12288))];
    PaddedInput_shared[((((int)threadIdx.x) + 256))] = placeholder[((((((((int)threadIdx.x) + 256) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 320))] = placeholder[((((((((int)threadIdx.x) + 320) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 384))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 24576))];
    PaddedInput_shared[((((int)threadIdx.x) + 448))] = placeholder[((((((((int)threadIdx.x) + 448) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 512))] = placeholder[((((((((int)threadIdx.x) + 512) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 576))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 36864))];
    PaddedInput_shared[((((int)threadIdx.x) + 640))] = placeholder[((((((((int)threadIdx.x) + 640) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 704))] = placeholder[((((((((int)threadIdx.x) + 704) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 768))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 49152))];
    PaddedInput_shared[((((int)threadIdx.x) + 832))] = placeholder[((((((((int)threadIdx.x) + 832) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 896))] = placeholder[((((((((int)threadIdx.x) + 896) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 960))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 61440))];
    PaddedInput_shared[((((int)threadIdx.x) + 1024))] = placeholder[((((((((int)threadIdx.x) + 1024) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1088))] = placeholder[((((((((int)threadIdx.x) + 1088) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1152))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 73728))];
    PaddedInput_shared[((((int)threadIdx.x) + 1216))] = placeholder[((((((((int)threadIdx.x) + 1216) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1280))] = placeholder[((((((((int)threadIdx.x) + 1280) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1344))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 86016))];
    PaddedInput_shared[((((int)threadIdx.x) + 1408))] = placeholder[((((((((int)threadIdx.x) + 1408) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1472))] = placeholder[((((((((int)threadIdx.x) + 1472) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1536))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 98304))];
    PaddedInput_shared[((((int)threadIdx.x) + 1600))] = placeholder[((((((((int)threadIdx.x) + 1600) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1664))] = placeholder[((((((((int)threadIdx.x) + 1664) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1728))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 110592))];
    PaddedInput_shared[((((int)threadIdx.x) + 1792))] = placeholder[((((((((int)threadIdx.x) + 1792) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1856))] = placeholder[((((((((int)threadIdx.x) + 1856) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1920))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 122880))];
    PaddedInput_shared[((((int)threadIdx.x) + 1984))] = placeholder[((((((((int)threadIdx.x) + 1984) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2048))] = placeholder[((((((((int)threadIdx.x) + 2048) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2112))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 135168))];
    PaddedInput_shared[((((int)threadIdx.x) + 2176))] = placeholder[((((((((int)threadIdx.x) + 2176) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2240))] = placeholder[((((((((int)threadIdx.x) + 2240) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2304))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 147456))];
    PaddedInput_shared[((((int)threadIdx.x) + 2368))] = placeholder[((((((((int)threadIdx.x) + 2368) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2432))] = placeholder[((((((((int)threadIdx.x) + 2432) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2496))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 159744))];
    PaddedInput_shared[((((int)threadIdx.x) + 2560))] = placeholder[((((((((int)threadIdx.x) + 2560) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2624))] = placeholder[((((((((int)threadIdx.x) + 2624) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2688))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 172032))];
    PaddedInput_shared[((((int)threadIdx.x) + 2752))] = placeholder[((((((((int)threadIdx.x) + 2752) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2816))] = placeholder[((((((((int)threadIdx.x) + 2816) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2880))] = placeholder[((((((((int)threadIdx.x) / 3) * 192) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 184320))];
    PaddedInput_shared[((((int)threadIdx.x) + 2944))] = placeholder[((((((((int)threadIdx.x) + 2944) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3008))] = placeholder[((((((((int)threadIdx.x) + 3008) / 3) * 192) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    if (((int)threadIdx.x) < 48) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 384) + ((((int)threadIdx.x) >> 4) * 128)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) & 15)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 3; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 4; ++yy_outer_inner) {
        Conv2dOutput[((yy_outer_inner * 8))] = (Conv2dOutput[((yy_outer_inner * 8))] + (PaddedInput_shared[((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 32))] = (Conv2dOutput[(((yy_outer_inner * 8) + 32))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 48))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 64))] = (Conv2dOutput[(((yy_outer_inner * 8) + 64))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 768))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 96))] = (Conv2dOutput[(((yy_outer_inner * 8) + 96))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 816))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 128))] = (Conv2dOutput[(((yy_outer_inner * 8) + 128))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1536))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 160))] = (Conv2dOutput[(((yy_outer_inner * 8) + 160))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1584))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 192))] = (Conv2dOutput[(((yy_outer_inner * 8) + 192))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2304))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 224))] = (Conv2dOutput[(((yy_outer_inner * 8) + 224))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2352))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 1))] = (Conv2dOutput[(((yy_outer_inner * 8) + 1))] + (PaddedInput_shared[((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 33))] = (Conv2dOutput[(((yy_outer_inner * 8) + 33))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 48))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 65))] = (Conv2dOutput[(((yy_outer_inner * 8) + 65))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 768))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 97))] = (Conv2dOutput[(((yy_outer_inner * 8) + 97))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 816))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 129))] = (Conv2dOutput[(((yy_outer_inner * 8) + 129))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1536))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 161))] = (Conv2dOutput[(((yy_outer_inner * 8) + 161))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1584))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 193))] = (Conv2dOutput[(((yy_outer_inner * 8) + 193))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2304))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 225))] = (Conv2dOutput[(((yy_outer_inner * 8) + 225))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2352))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 2))] = (Conv2dOutput[(((yy_outer_inner * 8) + 2))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 3))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 34))] = (Conv2dOutput[(((yy_outer_inner * 8) + 34))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 51))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 66))] = (Conv2dOutput[(((yy_outer_inner * 8) + 66))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 771))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 98))] = (Conv2dOutput[(((yy_outer_inner * 8) + 98))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 819))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 130))] = (Conv2dOutput[(((yy_outer_inner * 8) + 130))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1539))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 162))] = (Conv2dOutput[(((yy_outer_inner * 8) + 162))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1587))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 194))] = (Conv2dOutput[(((yy_outer_inner * 8) + 194))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2307))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 226))] = (Conv2dOutput[(((yy_outer_inner * 8) + 226))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2355))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 3))] = (Conv2dOutput[(((yy_outer_inner * 8) + 3))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 3))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 35))] = (Conv2dOutput[(((yy_outer_inner * 8) + 35))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 51))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 67))] = (Conv2dOutput[(((yy_outer_inner * 8) + 67))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 771))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 99))] = (Conv2dOutput[(((yy_outer_inner * 8) + 99))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 819))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 131))] = (Conv2dOutput[(((yy_outer_inner * 8) + 131))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1539))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 163))] = (Conv2dOutput[(((yy_outer_inner * 8) + 163))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1587))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 195))] = (Conv2dOutput[(((yy_outer_inner * 8) + 195))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2307))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 227))] = (Conv2dOutput[(((yy_outer_inner * 8) + 227))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2355))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 4))] = (Conv2dOutput[(((yy_outer_inner * 8) + 4))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 96))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 36))] = (Conv2dOutput[(((yy_outer_inner * 8) + 36))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 144))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 68))] = (Conv2dOutput[(((yy_outer_inner * 8) + 68))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 864))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 100))] = (Conv2dOutput[(((yy_outer_inner * 8) + 100))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 912))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 132))] = (Conv2dOutput[(((yy_outer_inner * 8) + 132))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1632))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 164))] = (Conv2dOutput[(((yy_outer_inner * 8) + 164))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1680))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 196))] = (Conv2dOutput[(((yy_outer_inner * 8) + 196))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2400))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 228))] = (Conv2dOutput[(((yy_outer_inner * 8) + 228))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2448))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 5))] = (Conv2dOutput[(((yy_outer_inner * 8) + 5))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 96))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 37))] = (Conv2dOutput[(((yy_outer_inner * 8) + 37))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 144))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 69))] = (Conv2dOutput[(((yy_outer_inner * 8) + 69))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 864))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 101))] = (Conv2dOutput[(((yy_outer_inner * 8) + 101))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 912))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 133))] = (Conv2dOutput[(((yy_outer_inner * 8) + 133))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1632))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 165))] = (Conv2dOutput[(((yy_outer_inner * 8) + 165))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1680))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 197))] = (Conv2dOutput[(((yy_outer_inner * 8) + 197))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2400))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 229))] = (Conv2dOutput[(((yy_outer_inner * 8) + 229))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2448))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 6))] = (Conv2dOutput[(((yy_outer_inner * 8) + 6))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 99))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 38))] = (Conv2dOutput[(((yy_outer_inner * 8) + 38))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 147))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 70))] = (Conv2dOutput[(((yy_outer_inner * 8) + 70))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 867))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 102))] = (Conv2dOutput[(((yy_outer_inner * 8) + 102))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 915))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 134))] = (Conv2dOutput[(((yy_outer_inner * 8) + 134))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1635))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 166))] = (Conv2dOutput[(((yy_outer_inner * 8) + 166))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1683))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 198))] = (Conv2dOutput[(((yy_outer_inner * 8) + 198))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2403))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 230))] = (Conv2dOutput[(((yy_outer_inner * 8) + 230))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2451))] * placeholder_shared[(((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 7))] = (Conv2dOutput[(((yy_outer_inner * 8) + 7))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 99))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 39))] = (Conv2dOutput[(((yy_outer_inner * 8) + 39))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 147))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 71))] = (Conv2dOutput[(((yy_outer_inner * 8) + 71))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 867))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 103))] = (Conv2dOutput[(((yy_outer_inner * 8) + 103))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 915))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 135))] = (Conv2dOutput[(((yy_outer_inner * 8) + 135))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1635))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 167))] = (Conv2dOutput[(((yy_outer_inner * 8) + 167))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 1683))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 199))] = (Conv2dOutput[(((yy_outer_inner * 8) + 199))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2403))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 8) + 231))] = (Conv2dOutput[(((yy_outer_inner * 8) + 231))] + (PaddedInput_shared[(((((yy_outer_inner * 192) + ((((int)threadIdx.x) >> 3) * 6)) + rc_outer_inner) + 2451))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 7) * 2)) + 1))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 8; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[(((((((ax1_inner * 4096) + ((((int)threadIdx.x) >> 3) * 256)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 4096) + ((((int)threadIdx.x) >> 3) * 256)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 2048))] = max((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 32))] + placeholder2[((((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 4096) + ((((int)threadIdx.x) >> 3) * 256)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 32768))] = max((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 64))] + placeholder2[((((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 4096) + ((((int)threadIdx.x) >> 3) * 256)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 34816))] = max((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 96))] + placeholder2[((((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 4096) + ((((int)threadIdx.x) >> 3) * 256)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 65536))] = max((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 128))] + placeholder2[((((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 4096) + ((((int)threadIdx.x) >> 3) * 256)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 67584))] = max((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 160))] + placeholder2[((((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 4096) + ((((int)threadIdx.x) >> 3) * 256)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 98304))] = max((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 192))] + placeholder2[((((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((ax1_inner * 4096) + ((((int)threadIdx.x) >> 3) * 256)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner) + 100352))] = max((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 224))] + placeholder2[((((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


