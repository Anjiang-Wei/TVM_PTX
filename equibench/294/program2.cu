
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv3dOutput[256];
  __shared__ float PaddedInput_shared[98];
  __shared__ float placeholder_shared[128];
  for (int dd_outer_inner_init = 0; dd_outer_inner_init < 4; ++dd_outer_inner_init) {
    Conv3dOutput[((dd_outer_inner_init * 64))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 1))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 2))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 3))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 4))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 5))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 6))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 7))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 8))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 9))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 10))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 11))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 12))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 13))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 14))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 15))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 16))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 17))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 18))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 19))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 20))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 21))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 22))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 23))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 24))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 25))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 26))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 27))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 28))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 29))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 30))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 31))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 32))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 33))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 34))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 35))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 36))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 37))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 38))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 39))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 40))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 41))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 42))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 43))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 44))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 45))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 46))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 47))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 48))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 49))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 50))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 51))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 52))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 53))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 54))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 55))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 56))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 57))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 58))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 59))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 60))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 61))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 62))] = 0.000000e+00f;
    Conv3dOutput[(((dd_outer_inner_init * 64) + 63))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[((((int)threadIdx.x) * 3))] = placeholder[(((((((((int)blockIdx.x) >> 4) * 65536) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((int)threadIdx.x) * 3) >> 1) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 3) + 1))] = placeholder[(((((((((int)blockIdx.x) >> 4) * 65536) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + ((((((int)threadIdx.x) * 3) + 1) >> 1) * 512)) + (rc_outer_outer * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 3) + 2))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((int)threadIdx.x) * 3) >> 1) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)) + 512))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 12) / 14) * 14) + (((((((int)threadIdx.x) * 3) >> 1) + 6) % 7) * 2)) + ((((int)threadIdx.x) * 3) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 12) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((((int)threadIdx.x) * 3) >> 1) + 6) % 7) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 13) / 14) * 14) + ((((((((int)threadIdx.x) * 3) + 1) >> 1) + 6) % 7) * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 13) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + ((((((((int)threadIdx.x) * 3) + 1) >> 1) + 6) % 7) * 512)) + (rc_outer_outer * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 3) + 14))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((int)threadIdx.x) * 3) >> 1) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)) + 8192))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 24) / 14) * 14) + (((((((int)threadIdx.x) * 3) >> 1) + 5) % 7) * 2)) + ((((int)threadIdx.x) * 3) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 24) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((((int)threadIdx.x) * 3) >> 1) + 5) % 7) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 25) / 14) * 14) + ((((((((int)threadIdx.x) * 3) + 1) >> 1) + 5) % 7) * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 25) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + ((((((((int)threadIdx.x) * 3) + 1) >> 1) + 5) % 7) * 512)) + (rc_outer_outer * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 26) / 14) * 14) + (((((((int)threadIdx.x) * 3) >> 1) + 6) % 7) * 2)) + ((((int)threadIdx.x) * 3) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 26) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((((int)threadIdx.x) * 3) >> 1) + 6) % 7) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 36) / 14) * 14) + (((((((int)threadIdx.x) * 3) >> 1) + 4) % 7) * 2)) + ((((int)threadIdx.x) * 3) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 36) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((((int)threadIdx.x) * 3) >> 1) + 4) % 7) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 37) / 14) * 14) + ((((((((int)threadIdx.x) * 3) + 1) >> 1) + 4) % 7) * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 37) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + ((((((((int)threadIdx.x) * 3) + 1) >> 1) + 4) % 7) * 512)) + (rc_outer_outer * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 38) / 14) * 14) + (((((((int)threadIdx.x) * 3) >> 1) + 5) % 7) * 2)) + ((((int)threadIdx.x) * 3) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 38) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((((int)threadIdx.x) * 3) >> 1) + 5) % 7) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 48) / 14) * 14) + (((((((int)threadIdx.x) * 3) >> 1) + 3) % 7) * 2)) + ((((int)threadIdx.x) * 3) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 48) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((((int)threadIdx.x) * 3) >> 1) + 3) % 7) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 49) / 14) * 14) + ((((((((int)threadIdx.x) * 3) + 1) >> 1) + 3) % 7) * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 49) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + ((((((((int)threadIdx.x) * 3) + 1) >> 1) + 3) % 7) * 512)) + (rc_outer_outer * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 50) / 14) * 14) + (((((((int)threadIdx.x) * 3) >> 1) + 4) % 7) * 2)) + ((((int)threadIdx.x) * 3) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 50) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((((int)threadIdx.x) * 3) >> 1) + 4) % 7) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 60) / 14) * 14) + ((((((int)threadIdx.x) * 3) >> 1) + 2) * 2)) + ((((int)threadIdx.x) * 3) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 60) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + ((((((int)threadIdx.x) * 3) >> 1) + 2) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 61) / 14) * 14) + ((((((((int)threadIdx.x) * 3) + 1) >> 1) + 2) % 7) * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 61) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + ((((((((int)threadIdx.x) * 3) + 1) >> 1) + 2) % 7) * 512)) + (rc_outer_outer * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 62) / 14) * 14) + (((((((int)threadIdx.x) * 3) >> 1) + 3) % 7) * 2)) + ((((int)threadIdx.x) * 3) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 62) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((((int)threadIdx.x) * 3) >> 1) + 3) % 7) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 72) / 14) * 14) + ((((((int)threadIdx.x) * 3) >> 1) + 1) * 2)) + ((((int)threadIdx.x) * 3) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 72) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + ((((((int)threadIdx.x) * 3) >> 1) + 1) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 73) / 14) * 14) + (((((((int)threadIdx.x) * 3) + 1) >> 1) + 1) * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 73) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((((int)threadIdx.x) * 3) + 1) >> 1) + 1) * 512)) + (rc_outer_outer * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 74) / 14) * 14) + ((((((int)threadIdx.x) * 3) >> 1) + 2) * 2)) + ((((int)threadIdx.x) * 3) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 74) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + ((((((int)threadIdx.x) * 3) >> 1) + 2) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 3) + 84))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((((int)threadIdx.x) * 3) >> 1) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)) + 49152))];
    PaddedInput_shared[((((((((int)threadIdx.x) * 3) + 85) / 14) * 14) + ((((int)threadIdx.x) * 3) + 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 85) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + ((((((int)threadIdx.x) * 3) + 1) >> 1) * 512)) + (rc_outer_outer * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))];
    PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 86) / 14) * 14) + ((((((int)threadIdx.x) * 3) >> 1) + 1) * 2)) + ((((int)threadIdx.x) * 3) & 1)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 86) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + ((((((int)threadIdx.x) * 3) >> 1) + 1) * 512)) + (rc_outer_outer * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 96) / 14) * 14) + (((int)threadIdx.x) * 3)) + 12))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 96) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((int)threadIdx.x) * 3)) + (rc_outer_outer * 2)) + 3072))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((((((int)threadIdx.x) * 3) + 97) / 14) * 14) + (((int)threadIdx.x) * 3)) + 13))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 65536) + ((((((int)threadIdx.x) * 3) + 97) / 14) * 8192)) + (((((int)blockIdx.x) & 15) >> 3) * 4096)) + (((int)threadIdx.x) * 3)) + (rc_outer_outer * 2)) + 3073))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 4))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 4))];
    placeholder_shared[((((int)threadIdx.x) + 8))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 8))];
    placeholder_shared[((((int)threadIdx.x) + 12))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 12))];
    placeholder_shared[((((int)threadIdx.x) + 16))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 16))];
    placeholder_shared[((((int)threadIdx.x) + 20))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 20))];
    placeholder_shared[((((int)threadIdx.x) + 24))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 24))];
    placeholder_shared[((((int)threadIdx.x) + 28))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 28))];
    placeholder_shared[((((int)threadIdx.x) + 32))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 32))];
    placeholder_shared[((((int)threadIdx.x) + 36))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 36))];
    placeholder_shared[((((int)threadIdx.x) + 40))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 40))];
    placeholder_shared[((((int)threadIdx.x) + 44))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 44))];
    placeholder_shared[((((int)threadIdx.x) + 48))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 48))];
    placeholder_shared[((((int)threadIdx.x) + 52))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 52))];
    placeholder_shared[((((int)threadIdx.x) + 56))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 56))];
    placeholder_shared[((((int)threadIdx.x) + 60))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 60))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 7) * 64)) + ((int)threadIdx.x)) + 512))];
    placeholder_shared[((((int)threadIdx.x) + 68))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 68) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 4)))];
    placeholder_shared[((((int)threadIdx.x) + 72))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 72) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 8)))];
    placeholder_shared[((((int)threadIdx.x) + 76))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 76) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 12)))];
    placeholder_shared[((((int)threadIdx.x) + 80))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 80) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 16)))];
    placeholder_shared[((((int)threadIdx.x) + 84))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 84) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 20)))];
    placeholder_shared[((((int)threadIdx.x) + 88))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 88) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 24)))];
    placeholder_shared[((((int)threadIdx.x) + 92))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 92) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 28)))];
    placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 96) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 32)))];
    placeholder_shared[((((int)threadIdx.x) + 100))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 100) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 36)))];
    placeholder_shared[((((int)threadIdx.x) + 104))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 104) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 40)))];
    placeholder_shared[((((int)threadIdx.x) + 108))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 108) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 44)))];
    placeholder_shared[((((int)threadIdx.x) + 112))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 112) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 48)))];
    placeholder_shared[((((int)threadIdx.x) + 116))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 116) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 52)))];
    placeholder_shared[((((int)threadIdx.x) + 120))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 120) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 56)))];
    placeholder_shared[((((int)threadIdx.x) + 124))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 124) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) + 60)))];
    __syncthreads();
    for (int dd_outer_inner = 0; dd_outer_inner < 4; ++dd_outer_inner) {
      for (int hh_outer_inner = 0; hh_outer_inner < 2; ++hh_outer_inner) {
        Conv3dOutput[(((dd_outer_inner * 64) + (hh_outer_inner * 32)))] = (Conv3dOutput[(((dd_outer_inner * 64) + (hh_outer_inner * 32)))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[((((int)threadIdx.x) * 16))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 1))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 1))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 1))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 2))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 2))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 2))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 3))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 3))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 3))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 4))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 4))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 4))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 5))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 5))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 5))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 6))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 6))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 6))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 7))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 7))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 7))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 8))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 8))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 8))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 9))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 9))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 9))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 10))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 10))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 10))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 11))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 11))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 11))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 12))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 12))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 12))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 13))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 13))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 13))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 14))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 14))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 14))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 15))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 15))] + (PaddedInput_shared[(((dd_outer_inner * 28) + (hh_outer_inner * 8)))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 15))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 16))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 16))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[((((int)threadIdx.x) * 16))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 17))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 17))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 1))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 18))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 18))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 2))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 19))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 19))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 3))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 20))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 20))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 4))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 21))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 21))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 5))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 22))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 22))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 6))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 23))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 23))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 7))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 24))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 24))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 8))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 25))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 25))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 9))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 26))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 26))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 10))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 27))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 27))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 11))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 28))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 28))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 12))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 29))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 29))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 13))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 30))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 30))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 14))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 31))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 31))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 15))]));
        Conv3dOutput[(((dd_outer_inner * 64) + (hh_outer_inner * 32)))] = (Conv3dOutput[(((dd_outer_inner * 64) + (hh_outer_inner * 32)))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 64))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 1))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 1))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 65))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 2))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 2))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 66))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 3))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 3))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 67))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 4))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 4))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 68))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 5))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 5))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 69))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 6))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 6))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 70))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 7))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 7))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 71))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 8))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 8))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 72))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 9))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 9))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 73))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 10))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 10))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 74))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 11))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 11))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 75))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 12))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 12))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 76))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 13))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 13))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 77))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 14))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 14))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 78))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 15))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 15))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 79))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 16))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 16))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 64))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 17))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 17))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 65))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 18))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 18))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 66))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 19))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 19))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 67))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 20))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 20))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 68))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 21))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 21))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 69))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 22))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 22))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 70))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 23))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 23))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 71))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 24))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 24))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 72))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 25))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 25))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 73))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 26))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 26))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 74))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 27))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 27))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 75))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 28))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 28))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 76))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 29))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 29))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 77))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 30))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 30))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 78))]));
        Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 31))] = (Conv3dOutput[((((dd_outer_inner * 64) + (hh_outer_inner * 32)) + 31))] + (PaddedInput_shared[((((dd_outer_inner * 28) + (hh_outer_inner * 8)) + 5))] * placeholder_shared[(((((int)threadIdx.x) * 16) + 79))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      for (int ax4_inner = 0; ax4_inner < 16; ++ax4_inner) {
        T_add[(((((((((((int)blockIdx.x) >> 4) * 16384) + (ax1_inner * 4096)) + (((((int)blockIdx.x) & 15) >> 3) * 2048)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) * 16)) + ax4_inner))] = ((Conv3dOutput[((((ax1_inner * 64) + (ax2_inner * 16)) + ax4_inner))] * placeholder2[(((((((int)blockIdx.x) & 7) * 64) + (((int)threadIdx.x) * 16)) + ax4_inner))]) + placeholder3[(((((((int)blockIdx.x) & 7) * 64) + (((int)threadIdx.x) * 16)) + ax4_inner))]);
      }
    }
  }
}


