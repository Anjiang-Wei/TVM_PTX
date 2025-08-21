
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
  float Conv2dOutput[896];
  __shared__ float PaddedInput_shared[7840];
  __shared__ float placeholder_shared[640];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 28; ++yy_outer_inner_init) {
    Conv2dOutput[((yy_outer_inner_init * 32))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 6))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 7))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 16))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 17))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 18))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 19))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 20))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 21))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 22))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 23))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 10))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 11))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 12))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 13))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 14))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 15))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 24))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 25))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 26))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 27))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 28))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 29))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 30))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 32) + 31))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 48; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 56))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 56) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 112))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 112) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 168))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 168) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 224))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 224) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 280))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 13440))];
    PaddedInput_shared[((((int)threadIdx.x) + 336))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 336) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 392))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 392) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 448))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 448) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 504))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 504) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 560))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 26880))];
    PaddedInput_shared[((((int)threadIdx.x) + 616))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 616) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 672))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 672) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 728))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 728) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 784))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 784) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 840))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 40320))];
    PaddedInput_shared[((((int)threadIdx.x) + 896))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 896) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 952))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 952) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1008))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1008) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1064))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1064) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1120))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 53760))];
    PaddedInput_shared[((((int)threadIdx.x) + 1176))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1176) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1232))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1232) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1288))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1288) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1344))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1344) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1400))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 67200))];
    PaddedInput_shared[((((int)threadIdx.x) + 1456))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1456) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1512))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1512) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1568))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1568) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1624))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1624) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1680))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 80640))];
    PaddedInput_shared[((((int)threadIdx.x) + 1736))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1736) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1792))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1792) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1848))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1848) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1904))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 1904) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1960))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 94080))];
    PaddedInput_shared[((((int)threadIdx.x) + 2016))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2016) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2072))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2072) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2128))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2128) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2184))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2184) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2240))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 107520))];
    PaddedInput_shared[((((int)threadIdx.x) + 2296))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2296) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2352))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2352) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2408))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2408) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2464))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2464) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2520))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 120960))];
    PaddedInput_shared[((((int)threadIdx.x) + 2576))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2576) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2632))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2632) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2688))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2688) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2744))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2744) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2800))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 134400))];
    PaddedInput_shared[((((int)threadIdx.x) + 2856))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2856) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2912))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2912) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2968))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 2968) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3024))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3024) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3080))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 147840))];
    PaddedInput_shared[((((int)threadIdx.x) + 3136))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3136) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3192))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3192) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3248))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3248) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3304))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3304) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3360))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 161280))];
    PaddedInput_shared[((((int)threadIdx.x) + 3416))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3416) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3472))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3472) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3528))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3528) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3584))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3584) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3640))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 174720))];
    PaddedInput_shared[((((int)threadIdx.x) + 3696))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3696) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3752))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3752) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3808))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3808) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3864))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3864) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3920))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 188160))];
    PaddedInput_shared[((((int)threadIdx.x) + 3976))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 3976) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4032))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4032) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4088))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4088) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4144))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4144) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4200))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 201600))];
    PaddedInput_shared[((((int)threadIdx.x) + 4256))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4256) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4312))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4312) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4368))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4368) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4424))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4424) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4480))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 215040))];
    PaddedInput_shared[((((int)threadIdx.x) + 4536))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4536) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4592))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4592) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4648))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4648) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4704))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4704) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4760))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 228480))];
    PaddedInput_shared[((((int)threadIdx.x) + 4816))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4816) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4872))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4872) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4928))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4928) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4984))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 4984) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5040))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 241920))];
    PaddedInput_shared[((((int)threadIdx.x) + 5096))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5096) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5152))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5152) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5208))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5208) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5264))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5264) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5320))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 255360))];
    PaddedInput_shared[((((int)threadIdx.x) + 5376))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5376) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5432))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5432) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5488))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5488) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5544))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5544) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5600))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 268800))];
    PaddedInput_shared[((((int)threadIdx.x) + 5656))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5656) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5712))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5712) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5768))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5768) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5824))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5824) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5880))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 282240))];
    PaddedInput_shared[((((int)threadIdx.x) + 5936))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5936) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5992))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 5992) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6048))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6048) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6104))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6104) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6160))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 295680))];
    PaddedInput_shared[((((int)threadIdx.x) + 6216))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6216) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6272))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6272) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6328))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6328) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6384))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6384) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6440))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 309120))];
    PaddedInput_shared[((((int)threadIdx.x) + 6496))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6496) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6552))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6552) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6608))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6608) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6664))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6664) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6720))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 322560))];
    PaddedInput_shared[((((int)threadIdx.x) + 6776))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6776) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6832))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6832) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6888))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6888) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6944))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 6944) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7000))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 336000))];
    PaddedInput_shared[((((int)threadIdx.x) + 7056))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 7056) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7112))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 7112) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7168))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 7168) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7224))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 7224) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7280))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 349440))];
    PaddedInput_shared[((((int)threadIdx.x) + 7336))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 7336) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7392))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 7392) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7448))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 7448) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7504))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 7504) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7560))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 376320) + ((((int)threadIdx.x) / 10) * 480)) + (rc_outer_outer * 10)) + (((int)threadIdx.x) % 10)) + 362880))];
    PaddedInput_shared[((((int)threadIdx.x) + 7616))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 7616) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 6) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7672))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 7672) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 2) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7728))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 7728) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 8) % 10)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7784))] = placeholder[((((((((int)blockIdx.x) >> 1) * 376320) + (((((int)threadIdx.x) + 7784) / 10) * 480)) + (rc_outer_outer * 10)) + ((((int)threadIdx.x) + 4) % 10)))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 1280) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 56))] = placeholder1[(((((rc_outer_outer * 1280) + (((((int)threadIdx.x) + 56) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 112))] = placeholder1[(((((rc_outer_outer * 1280) + (((((int)threadIdx.x) + 112) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 168))] = placeholder1[(((((rc_outer_outer * 1280) + (((((int)threadIdx.x) + 168) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 40) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[(((((rc_outer_outer * 1280) + (((((int)threadIdx.x) + 224) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 32) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 280))] = placeholder1[(((((rc_outer_outer * 1280) + (((((int)threadIdx.x) + 280) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 24) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 336))] = placeholder1[(((((rc_outer_outer * 1280) + (((((int)threadIdx.x) + 336) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 16) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 392))] = placeholder1[(((((rc_outer_outer * 1280) + (((((int)threadIdx.x) + 392) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) + 8)))];
    placeholder_shared[((((int)threadIdx.x) + 448))] = placeholder1[(((((rc_outer_outer * 1280) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 896))];
    placeholder_shared[((((int)threadIdx.x) + 504))] = placeholder1[(((((rc_outer_outer * 1280) + (((((int)threadIdx.x) + 504) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 560))] = placeholder1[(((((rc_outer_outer * 1280) + (((((int)threadIdx.x) + 560) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 48) & 63)))];
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[((((int)threadIdx.x) + 616))] = placeholder1[(((((rc_outer_outer * 1280) + (((((int)threadIdx.x) + 616) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) + 40)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 10; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 28; ++yy_outer_inner) {
        Conv2dOutput[((yy_outer_inner * 32))] = (Conv2dOutput[((yy_outer_inner * 32))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 1))] = (Conv2dOutput[(((yy_outer_inner * 32) + 1))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 2))] = (Conv2dOutput[(((yy_outer_inner * 32) + 2))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 3))] = (Conv2dOutput[(((yy_outer_inner * 32) + 3))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 4))] = (Conv2dOutput[(((yy_outer_inner * 32) + 4))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 4))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 5))] = (Conv2dOutput[(((yy_outer_inner * 32) + 5))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 5))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 6))] = (Conv2dOutput[(((yy_outer_inner * 32) + 6))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 6))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 7))] = (Conv2dOutput[(((yy_outer_inner * 32) + 7))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 7))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 16))] = (Conv2dOutput[(((yy_outer_inner * 32) + 16))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 17))] = (Conv2dOutput[(((yy_outer_inner * 32) + 17))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 18))] = (Conv2dOutput[(((yy_outer_inner * 32) + 18))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 19))] = (Conv2dOutput[(((yy_outer_inner * 32) + 19))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 20))] = (Conv2dOutput[(((yy_outer_inner * 32) + 20))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 4))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 21))] = (Conv2dOutput[(((yy_outer_inner * 32) + 21))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 5))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 22))] = (Conv2dOutput[(((yy_outer_inner * 32) + 22))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 6))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 23))] = (Conv2dOutput[(((yy_outer_inner * 32) + 23))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 7))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 8))] = (Conv2dOutput[(((yy_outer_inner * 32) + 8))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 8))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 9))] = (Conv2dOutput[(((yy_outer_inner * 32) + 9))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 9))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 10))] = (Conv2dOutput[(((yy_outer_inner * 32) + 10))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 10))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 11))] = (Conv2dOutput[(((yy_outer_inner * 32) + 11))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 11))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 12))] = (Conv2dOutput[(((yy_outer_inner * 32) + 12))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 12))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 13))] = (Conv2dOutput[(((yy_outer_inner * 32) + 13))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 13))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 14))] = (Conv2dOutput[(((yy_outer_inner * 32) + 14))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 14))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 15))] = (Conv2dOutput[(((yy_outer_inner * 32) + 15))] + (PaddedInput_shared[((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 15))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 24))] = (Conv2dOutput[(((yy_outer_inner * 32) + 24))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 8))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 25))] = (Conv2dOutput[(((yy_outer_inner * 32) + 25))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 9))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 26))] = (Conv2dOutput[(((yy_outer_inner * 32) + 26))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 10))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 27))] = (Conv2dOutput[(((yy_outer_inner * 32) + 27))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 11))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 28))] = (Conv2dOutput[(((yy_outer_inner * 32) + 28))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 12))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 29))] = (Conv2dOutput[(((yy_outer_inner * 32) + 29))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 13))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 30))] = (Conv2dOutput[(((yy_outer_inner * 32) + 30))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 14))]));
        Conv2dOutput[(((yy_outer_inner * 32) + 31))] = (Conv2dOutput[(((yy_outer_inner * 32) + 31))] + (PaddedInput_shared[(((((yy_outer_inner * 280) + ((((int)threadIdx.x) >> 2) * 20)) + rc_outer_inner) + 10))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 3) * 16)) + 15))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 28; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 16; ++ax3_inner) {
        T_relu[(((((((((((int)blockIdx.x) >> 1) * 100352) + (ax1_inner * 3584)) + ((((int)threadIdx.x) >> 2) * 256)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 3) * 16)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 32) + (ax2_inner * 16)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 3) * 16)) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


