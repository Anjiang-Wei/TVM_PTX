
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
  float T_dense[16];
  __shared__ float placeholder_d_shared[1024];
  __shared__ float placeholder_shared[4096];
  T_dense[(0)] = 0.000000e+00f;
  T_dense[(1)] = 0.000000e+00f;
  T_dense[(2)] = 0.000000e+00f;
  T_dense[(3)] = 0.000000e+00f;
  T_dense[(4)] = 0.000000e+00f;
  T_dense[(5)] = 0.000000e+00f;
  T_dense[(6)] = 0.000000e+00f;
  T_dense[(7)] = 0.000000e+00f;
  T_dense[(8)] = 0.000000e+00f;
  T_dense[(9)] = 0.000000e+00f;
  T_dense[(10)] = 0.000000e+00f;
  T_dense[(11)] = 0.000000e+00f;
  T_dense[(12)] = 0.000000e+00f;
  T_dense[(13)] = 0.000000e+00f;
  T_dense[(14)] = 0.000000e+00f;
  T_dense[(15)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 2; ++k_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_outer_outer = 0; ax0_ax1_fused_outer_outer < 1024; ++ax0_ax1_fused_outer_outer) {
      placeholder_d_shared[(ax0_ax1_fused_outer_outer)] = placeholder[(((((ax0_ax1_fused_outer_outer >> 9) * 1024) + (k_outer_outer * 512)) + (ax0_ax1_fused_outer_outer & 511)))];
    }
    for (int ax0_ax1_fused_outer_outer1 = 0; ax0_ax1_fused_outer_outer1 < 1024; ++ax0_ax1_fused_outer_outer1) {
      ((float4*)(placeholder_shared + ((ax0_ax1_fused_outer_outer1 * 4))))[0] = ((float4*)(placeholder1 + (((((((int)blockIdx.x) * 8192) + ((ax0_ax1_fused_outer_outer1 >> 7) * 1024)) + (k_outer_outer * 512)) + ((ax0_ax1_fused_outer_outer1 & 127) * 4)))))[0];
    }
    __syncthreads();
    for (int k_outer_inner = 0; k_outer_inner < 64; ++k_outer_inner) {
      T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[((k_outer_inner * 8))] * placeholder_shared[((k_outer_inner * 8))]));
      T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[((k_outer_inner * 8))] * placeholder_shared[(((k_outer_inner * 8) + 512))]));
      T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(((k_outer_inner * 8) + 1))] * placeholder_shared[(((k_outer_inner * 8) + 1))]));
      T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(((k_outer_inner * 8) + 1))] * placeholder_shared[(((k_outer_inner * 8) + 513))]));
      T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(((k_outer_inner * 8) + 2))] * placeholder_shared[(((k_outer_inner * 8) + 2))]));
      T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(((k_outer_inner * 8) + 2))] * placeholder_shared[(((k_outer_inner * 8) + 514))]));
      T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(((k_outer_inner * 8) + 3))] * placeholder_shared[(((k_outer_inner * 8) + 3))]));
      T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(((k_outer_inner * 8) + 3))] * placeholder_shared[(((k_outer_inner * 8) + 515))]));
      T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(((k_outer_inner * 8) + 4))] * placeholder_shared[(((k_outer_inner * 8) + 4))]));
      T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(((k_outer_inner * 8) + 4))] * placeholder_shared[(((k_outer_inner * 8) + 516))]));
      T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(((k_outer_inner * 8) + 5))] * placeholder_shared[(((k_outer_inner * 8) + 5))]));
      T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(((k_outer_inner * 8) + 5))] * placeholder_shared[(((k_outer_inner * 8) + 517))]));
      T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(((k_outer_inner * 8) + 6))] * placeholder_shared[(((k_outer_inner * 8) + 6))]));
      T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(((k_outer_inner * 8) + 6))] * placeholder_shared[(((k_outer_inner * 8) + 518))]));
      T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(((k_outer_inner * 8) + 7))] * placeholder_shared[(((k_outer_inner * 8) + 7))]));
      T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(((k_outer_inner * 8) + 7))] * placeholder_shared[(((k_outer_inner * 8) + 519))]));
      T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[((k_outer_inner * 8))] * placeholder_shared[(((k_outer_inner * 8) + 1024))]));
      T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[((k_outer_inner * 8))] * placeholder_shared[(((k_outer_inner * 8) + 1536))]));
      T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(((k_outer_inner * 8) + 1))] * placeholder_shared[(((k_outer_inner * 8) + 1025))]));
      T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(((k_outer_inner * 8) + 1))] * placeholder_shared[(((k_outer_inner * 8) + 1537))]));
      T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(((k_outer_inner * 8) + 2))] * placeholder_shared[(((k_outer_inner * 8) + 1026))]));
      T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(((k_outer_inner * 8) + 2))] * placeholder_shared[(((k_outer_inner * 8) + 1538))]));
      T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(((k_outer_inner * 8) + 3))] * placeholder_shared[(((k_outer_inner * 8) + 1027))]));
      T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(((k_outer_inner * 8) + 3))] * placeholder_shared[(((k_outer_inner * 8) + 1539))]));
      T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(((k_outer_inner * 8) + 4))] * placeholder_shared[(((k_outer_inner * 8) + 1028))]));
      T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(((k_outer_inner * 8) + 4))] * placeholder_shared[(((k_outer_inner * 8) + 1540))]));
      T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(((k_outer_inner * 8) + 5))] * placeholder_shared[(((k_outer_inner * 8) + 1029))]));
      T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(((k_outer_inner * 8) + 5))] * placeholder_shared[(((k_outer_inner * 8) + 1541))]));
      T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(((k_outer_inner * 8) + 6))] * placeholder_shared[(((k_outer_inner * 8) + 1030))]));
      T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(((k_outer_inner * 8) + 6))] * placeholder_shared[(((k_outer_inner * 8) + 1542))]));
      T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(((k_outer_inner * 8) + 7))] * placeholder_shared[(((k_outer_inner * 8) + 1031))]));
      T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(((k_outer_inner * 8) + 7))] * placeholder_shared[(((k_outer_inner * 8) + 1543))]));
      T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[((k_outer_inner * 8))] * placeholder_shared[(((k_outer_inner * 8) + 2048))]));
      T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[((k_outer_inner * 8))] * placeholder_shared[(((k_outer_inner * 8) + 2560))]));
      T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(((k_outer_inner * 8) + 1))] * placeholder_shared[(((k_outer_inner * 8) + 2049))]));
      T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(((k_outer_inner * 8) + 1))] * placeholder_shared[(((k_outer_inner * 8) + 2561))]));
      T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(((k_outer_inner * 8) + 2))] * placeholder_shared[(((k_outer_inner * 8) + 2050))]));
      T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(((k_outer_inner * 8) + 2))] * placeholder_shared[(((k_outer_inner * 8) + 2562))]));
      T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(((k_outer_inner * 8) + 3))] * placeholder_shared[(((k_outer_inner * 8) + 2051))]));
      T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(((k_outer_inner * 8) + 3))] * placeholder_shared[(((k_outer_inner * 8) + 2563))]));
      T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(((k_outer_inner * 8) + 4))] * placeholder_shared[(((k_outer_inner * 8) + 2052))]));
      T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(((k_outer_inner * 8) + 4))] * placeholder_shared[(((k_outer_inner * 8) + 2564))]));
      T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(((k_outer_inner * 8) + 5))] * placeholder_shared[(((k_outer_inner * 8) + 2053))]));
      T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(((k_outer_inner * 8) + 5))] * placeholder_shared[(((k_outer_inner * 8) + 2565))]));
      T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(((k_outer_inner * 8) + 6))] * placeholder_shared[(((k_outer_inner * 8) + 2054))]));
      T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(((k_outer_inner * 8) + 6))] * placeholder_shared[(((k_outer_inner * 8) + 2566))]));
      T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(((k_outer_inner * 8) + 7))] * placeholder_shared[(((k_outer_inner * 8) + 2055))]));
      T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(((k_outer_inner * 8) + 7))] * placeholder_shared[(((k_outer_inner * 8) + 2567))]));
      T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[((k_outer_inner * 8))] * placeholder_shared[(((k_outer_inner * 8) + 3072))]));
      T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[((k_outer_inner * 8))] * placeholder_shared[(((k_outer_inner * 8) + 3584))]));
      T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(((k_outer_inner * 8) + 1))] * placeholder_shared[(((k_outer_inner * 8) + 3073))]));
      T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(((k_outer_inner * 8) + 1))] * placeholder_shared[(((k_outer_inner * 8) + 3585))]));
      T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(((k_outer_inner * 8) + 2))] * placeholder_shared[(((k_outer_inner * 8) + 3074))]));
      T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(((k_outer_inner * 8) + 2))] * placeholder_shared[(((k_outer_inner * 8) + 3586))]));
      T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(((k_outer_inner * 8) + 3))] * placeholder_shared[(((k_outer_inner * 8) + 3075))]));
      T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(((k_outer_inner * 8) + 3))] * placeholder_shared[(((k_outer_inner * 8) + 3587))]));
      T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(((k_outer_inner * 8) + 4))] * placeholder_shared[(((k_outer_inner * 8) + 3076))]));
      T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(((k_outer_inner * 8) + 4))] * placeholder_shared[(((k_outer_inner * 8) + 3588))]));
      T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(((k_outer_inner * 8) + 5))] * placeholder_shared[(((k_outer_inner * 8) + 3077))]));
      T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(((k_outer_inner * 8) + 5))] * placeholder_shared[(((k_outer_inner * 8) + 3589))]));
      T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(((k_outer_inner * 8) + 6))] * placeholder_shared[(((k_outer_inner * 8) + 3078))]));
      T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(((k_outer_inner * 8) + 6))] * placeholder_shared[(((k_outer_inner * 8) + 3590))]));
      T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(((k_outer_inner * 8) + 7))] * placeholder_shared[(((k_outer_inner * 8) + 3079))]));
      T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(((k_outer_inner * 8) + 7))] * placeholder_shared[(((k_outer_inner * 8) + 3591))]));
      T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(((k_outer_inner * 8) + 512))] * placeholder_shared[((k_outer_inner * 8))]));
      T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(((k_outer_inner * 8) + 512))] * placeholder_shared[(((k_outer_inner * 8) + 512))]));
      T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(((k_outer_inner * 8) + 513))] * placeholder_shared[(((k_outer_inner * 8) + 1))]));
      T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(((k_outer_inner * 8) + 513))] * placeholder_shared[(((k_outer_inner * 8) + 513))]));
      T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(((k_outer_inner * 8) + 514))] * placeholder_shared[(((k_outer_inner * 8) + 2))]));
      T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(((k_outer_inner * 8) + 514))] * placeholder_shared[(((k_outer_inner * 8) + 514))]));
      T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(((k_outer_inner * 8) + 515))] * placeholder_shared[(((k_outer_inner * 8) + 3))]));
      T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(((k_outer_inner * 8) + 515))] * placeholder_shared[(((k_outer_inner * 8) + 515))]));
      T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(((k_outer_inner * 8) + 516))] * placeholder_shared[(((k_outer_inner * 8) + 4))]));
      T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(((k_outer_inner * 8) + 516))] * placeholder_shared[(((k_outer_inner * 8) + 516))]));
      T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(((k_outer_inner * 8) + 517))] * placeholder_shared[(((k_outer_inner * 8) + 5))]));
      T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(((k_outer_inner * 8) + 517))] * placeholder_shared[(((k_outer_inner * 8) + 517))]));
      T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(((k_outer_inner * 8) + 518))] * placeholder_shared[(((k_outer_inner * 8) + 6))]));
      T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(((k_outer_inner * 8) + 518))] * placeholder_shared[(((k_outer_inner * 8) + 518))]));
      T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(((k_outer_inner * 8) + 519))] * placeholder_shared[(((k_outer_inner * 8) + 7))]));
      T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(((k_outer_inner * 8) + 519))] * placeholder_shared[(((k_outer_inner * 8) + 519))]));
      T_dense[(10)] = (T_dense[(10)] + (placeholder_d_shared[(((k_outer_inner * 8) + 512))] * placeholder_shared[(((k_outer_inner * 8) + 1024))]));
      T_dense[(11)] = (T_dense[(11)] + (placeholder_d_shared[(((k_outer_inner * 8) + 512))] * placeholder_shared[(((k_outer_inner * 8) + 1536))]));
      T_dense[(10)] = (T_dense[(10)] + (placeholder_d_shared[(((k_outer_inner * 8) + 513))] * placeholder_shared[(((k_outer_inner * 8) + 1025))]));
      T_dense[(11)] = (T_dense[(11)] + (placeholder_d_shared[(((k_outer_inner * 8) + 513))] * placeholder_shared[(((k_outer_inner * 8) + 1537))]));
      T_dense[(10)] = (T_dense[(10)] + (placeholder_d_shared[(((k_outer_inner * 8) + 514))] * placeholder_shared[(((k_outer_inner * 8) + 1026))]));
      T_dense[(11)] = (T_dense[(11)] + (placeholder_d_shared[(((k_outer_inner * 8) + 514))] * placeholder_shared[(((k_outer_inner * 8) + 1538))]));
      T_dense[(10)] = (T_dense[(10)] + (placeholder_d_shared[(((k_outer_inner * 8) + 515))] * placeholder_shared[(((k_outer_inner * 8) + 1027))]));
      T_dense[(11)] = (T_dense[(11)] + (placeholder_d_shared[(((k_outer_inner * 8) + 515))] * placeholder_shared[(((k_outer_inner * 8) + 1539))]));
      T_dense[(10)] = (T_dense[(10)] + (placeholder_d_shared[(((k_outer_inner * 8) + 516))] * placeholder_shared[(((k_outer_inner * 8) + 1028))]));
      T_dense[(11)] = (T_dense[(11)] + (placeholder_d_shared[(((k_outer_inner * 8) + 516))] * placeholder_shared[(((k_outer_inner * 8) + 1540))]));
      T_dense[(10)] = (T_dense[(10)] + (placeholder_d_shared[(((k_outer_inner * 8) + 517))] * placeholder_shared[(((k_outer_inner * 8) + 1029))]));
      T_dense[(11)] = (T_dense[(11)] + (placeholder_d_shared[(((k_outer_inner * 8) + 517))] * placeholder_shared[(((k_outer_inner * 8) + 1541))]));
      T_dense[(10)] = (T_dense[(10)] + (placeholder_d_shared[(((k_outer_inner * 8) + 518))] * placeholder_shared[(((k_outer_inner * 8) + 1030))]));
      T_dense[(11)] = (T_dense[(11)] + (placeholder_d_shared[(((k_outer_inner * 8) + 518))] * placeholder_shared[(((k_outer_inner * 8) + 1542))]));
      T_dense[(10)] = (T_dense[(10)] + (placeholder_d_shared[(((k_outer_inner * 8) + 519))] * placeholder_shared[(((k_outer_inner * 8) + 1031))]));
      T_dense[(11)] = (T_dense[(11)] + (placeholder_d_shared[(((k_outer_inner * 8) + 519))] * placeholder_shared[(((k_outer_inner * 8) + 1543))]));
      T_dense[(12)] = (T_dense[(12)] + (placeholder_d_shared[(((k_outer_inner * 8) + 512))] * placeholder_shared[(((k_outer_inner * 8) + 2048))]));
      T_dense[(13)] = (T_dense[(13)] + (placeholder_d_shared[(((k_outer_inner * 8) + 512))] * placeholder_shared[(((k_outer_inner * 8) + 2560))]));
      T_dense[(12)] = (T_dense[(12)] + (placeholder_d_shared[(((k_outer_inner * 8) + 513))] * placeholder_shared[(((k_outer_inner * 8) + 2049))]));
      T_dense[(13)] = (T_dense[(13)] + (placeholder_d_shared[(((k_outer_inner * 8) + 513))] * placeholder_shared[(((k_outer_inner * 8) + 2561))]));
      T_dense[(12)] = (T_dense[(12)] + (placeholder_d_shared[(((k_outer_inner * 8) + 514))] * placeholder_shared[(((k_outer_inner * 8) + 2050))]));
      T_dense[(13)] = (T_dense[(13)] + (placeholder_d_shared[(((k_outer_inner * 8) + 514))] * placeholder_shared[(((k_outer_inner * 8) + 2562))]));
      T_dense[(12)] = (T_dense[(12)] + (placeholder_d_shared[(((k_outer_inner * 8) + 515))] * placeholder_shared[(((k_outer_inner * 8) + 2051))]));
      T_dense[(13)] = (T_dense[(13)] + (placeholder_d_shared[(((k_outer_inner * 8) + 515))] * placeholder_shared[(((k_outer_inner * 8) + 2563))]));
      T_dense[(12)] = (T_dense[(12)] + (placeholder_d_shared[(((k_outer_inner * 8) + 516))] * placeholder_shared[(((k_outer_inner * 8) + 2052))]));
      T_dense[(13)] = (T_dense[(13)] + (placeholder_d_shared[(((k_outer_inner * 8) + 516))] * placeholder_shared[(((k_outer_inner * 8) + 2564))]));
      T_dense[(12)] = (T_dense[(12)] + (placeholder_d_shared[(((k_outer_inner * 8) + 517))] * placeholder_shared[(((k_outer_inner * 8) + 2053))]));
      T_dense[(13)] = (T_dense[(13)] + (placeholder_d_shared[(((k_outer_inner * 8) + 517))] * placeholder_shared[(((k_outer_inner * 8) + 2565))]));
      T_dense[(12)] = (T_dense[(12)] + (placeholder_d_shared[(((k_outer_inner * 8) + 518))] * placeholder_shared[(((k_outer_inner * 8) + 2054))]));
      T_dense[(13)] = (T_dense[(13)] + (placeholder_d_shared[(((k_outer_inner * 8) + 518))] * placeholder_shared[(((k_outer_inner * 8) + 2566))]));
      T_dense[(12)] = (T_dense[(12)] + (placeholder_d_shared[(((k_outer_inner * 8) + 519))] * placeholder_shared[(((k_outer_inner * 8) + 2055))]));
      T_dense[(13)] = (T_dense[(13)] + (placeholder_d_shared[(((k_outer_inner * 8) + 519))] * placeholder_shared[(((k_outer_inner * 8) + 2567))]));
      T_dense[(14)] = (T_dense[(14)] + (placeholder_d_shared[(((k_outer_inner * 8) + 512))] * placeholder_shared[(((k_outer_inner * 8) + 3072))]));
      T_dense[(15)] = (T_dense[(15)] + (placeholder_d_shared[(((k_outer_inner * 8) + 512))] * placeholder_shared[(((k_outer_inner * 8) + 3584))]));
      T_dense[(14)] = (T_dense[(14)] + (placeholder_d_shared[(((k_outer_inner * 8) + 513))] * placeholder_shared[(((k_outer_inner * 8) + 3073))]));
      T_dense[(15)] = (T_dense[(15)] + (placeholder_d_shared[(((k_outer_inner * 8) + 513))] * placeholder_shared[(((k_outer_inner * 8) + 3585))]));
      T_dense[(14)] = (T_dense[(14)] + (placeholder_d_shared[(((k_outer_inner * 8) + 514))] * placeholder_shared[(((k_outer_inner * 8) + 3074))]));
      T_dense[(15)] = (T_dense[(15)] + (placeholder_d_shared[(((k_outer_inner * 8) + 514))] * placeholder_shared[(((k_outer_inner * 8) + 3586))]));
      T_dense[(14)] = (T_dense[(14)] + (placeholder_d_shared[(((k_outer_inner * 8) + 515))] * placeholder_shared[(((k_outer_inner * 8) + 3075))]));
      T_dense[(15)] = (T_dense[(15)] + (placeholder_d_shared[(((k_outer_inner * 8) + 515))] * placeholder_shared[(((k_outer_inner * 8) + 3587))]));
      T_dense[(14)] = (T_dense[(14)] + (placeholder_d_shared[(((k_outer_inner * 8) + 516))] * placeholder_shared[(((k_outer_inner * 8) + 3076))]));
      T_dense[(15)] = (T_dense[(15)] + (placeholder_d_shared[(((k_outer_inner * 8) + 516))] * placeholder_shared[(((k_outer_inner * 8) + 3588))]));
      T_dense[(14)] = (T_dense[(14)] + (placeholder_d_shared[(((k_outer_inner * 8) + 517))] * placeholder_shared[(((k_outer_inner * 8) + 3077))]));
      T_dense[(15)] = (T_dense[(15)] + (placeholder_d_shared[(((k_outer_inner * 8) + 517))] * placeholder_shared[(((k_outer_inner * 8) + 3589))]));
      T_dense[(14)] = (T_dense[(14)] + (placeholder_d_shared[(((k_outer_inner * 8) + 518))] * placeholder_shared[(((k_outer_inner * 8) + 3078))]));
      T_dense[(15)] = (T_dense[(15)] + (placeholder_d_shared[(((k_outer_inner * 8) + 518))] * placeholder_shared[(((k_outer_inner * 8) + 3590))]));
      T_dense[(14)] = (T_dense[(14)] + (placeholder_d_shared[(((k_outer_inner * 8) + 519))] * placeholder_shared[(((k_outer_inner * 8) + 3079))]));
      T_dense[(15)] = (T_dense[(15)] + (placeholder_d_shared[(((k_outer_inner * 8) + 519))] * placeholder_shared[(((k_outer_inner * 8) + 3591))]));
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 8; ++ax1_inner) {
      T_add[((((ax0_inner * 1000) + (((int)blockIdx.x) * 8)) + ax1_inner))] = (T_dense[(((ax0_inner * 8) + ax1_inner))] + placeholder2[(((((int)blockIdx.x) * 8) + ax1_inner))]);
    }
  }
}


