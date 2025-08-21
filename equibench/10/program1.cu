
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
  float Conv2dOutput[384];
  __shared__ float PaddedInput_shared[8192];
  __shared__ float placeholder_shared[1536];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 32; ++ff_outer_inner_init) {
      Conv2dOutput[(((xx_outer_inner_init * 96) + (ff_outer_inner_init * 3)))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 96) + (ff_outer_inner_init * 3)) + 192))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 96) + (ff_outer_inner_init * 3)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 96) + (ff_outer_inner_init * 3)) + 193))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 96) + (ff_outer_inner_init * 3)) + 2))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 96) + (ff_outer_inner_init * 3)) + 194))] = 0.000000e+00f;
    }
  }
  PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)))];
  PaddedInput_shared[((((int)threadIdx.x) + 128))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 128))];
  PaddedInput_shared[((((int)threadIdx.x) + 256))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 2048))];
  PaddedInput_shared[((((int)threadIdx.x) + 384))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 384) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 512))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 4096))];
  PaddedInput_shared[((((int)threadIdx.x) + 640))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 640) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 768))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 6144))];
  PaddedInput_shared[((((int)threadIdx.x) + 896))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 896) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 1024))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 8192))];
  PaddedInput_shared[((((int)threadIdx.x) + 1152))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 1152) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 1280))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 10240))];
  PaddedInput_shared[((((int)threadIdx.x) + 1408))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 1408) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 1536))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 12288))];
  PaddedInput_shared[((((int)threadIdx.x) + 1664))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 1664) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 1792))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 14336))];
  PaddedInput_shared[((((int)threadIdx.x) + 1920))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 1920) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 2048))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 16384))];
  PaddedInput_shared[((((int)threadIdx.x) + 2176))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 2176) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 2304))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 18432))];
  PaddedInput_shared[((((int)threadIdx.x) + 2432))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 2432) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 2560))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 20480))];
  PaddedInput_shared[((((int)threadIdx.x) + 2688))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 2688) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 2816))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 22528))];
  PaddedInput_shared[((((int)threadIdx.x) + 2944))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 2944) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 3072))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 24576))];
  PaddedInput_shared[((((int)threadIdx.x) + 3200))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 3200) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 3328))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 26624))];
  PaddedInput_shared[((((int)threadIdx.x) + 3456))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 3456) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 3584))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 28672))];
  PaddedInput_shared[((((int)threadIdx.x) + 3712))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 3712) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 3840))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 30720))];
  PaddedInput_shared[((((int)threadIdx.x) + 3968))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 3968) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 4096))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 32768))];
  PaddedInput_shared[((((int)threadIdx.x) + 4224))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 4224) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 4352))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 34816))];
  PaddedInput_shared[((((int)threadIdx.x) + 4480))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 4480) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 4608))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 36864))];
  PaddedInput_shared[((((int)threadIdx.x) + 4736))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 4736) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 4864))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 38912))];
  PaddedInput_shared[((((int)threadIdx.x) + 4992))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 4992) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 5120))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 40960))];
  PaddedInput_shared[((((int)threadIdx.x) + 5248))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 5248) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 5376))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 43008))];
  PaddedInput_shared[((((int)threadIdx.x) + 5504))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 5504) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 5632))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 45056))];
  PaddedInput_shared[((((int)threadIdx.x) + 5760))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 5760) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 5888))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 47104))];
  PaddedInput_shared[((((int)threadIdx.x) + 6016))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 6016) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 6144))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 49152))];
  PaddedInput_shared[((((int)threadIdx.x) + 6272))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 6272) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 6400))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 51200))];
  PaddedInput_shared[((((int)threadIdx.x) + 6528))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 6528) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 6656))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 53248))];
  PaddedInput_shared[((((int)threadIdx.x) + 6784))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 6784) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 6912))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 55296))];
  PaddedInput_shared[((((int)threadIdx.x) + 7040))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 7040) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 7168))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 57344))];
  PaddedInput_shared[((((int)threadIdx.x) + 7296))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 7296) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 7424))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 59392))];
  PaddedInput_shared[((((int)threadIdx.x) + 7552))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 7552) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 7680))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 61440))];
  PaddedInput_shared[((((int)threadIdx.x) + 7808))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 7808) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  PaddedInput_shared[((((int)threadIdx.x) + 7936))] = placeholder[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 256)) + ((int)threadIdx.x)) + 63488))];
  PaddedInput_shared[((((int)threadIdx.x) + 8064))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 65536) + (((((int)threadIdx.x) + 8064) >> 8) * 2048)) + ((((int)blockIdx.x) & 7) * 256)) + (((((int)threadIdx.x) >> 4) + 8) * 16)) + (((int)threadIdx.x) & 15)))];
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[((((int)threadIdx.x) * 48))] = placeholder1[((((int)threadIdx.x) * 48))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 1))] = placeholder1[(((((int)threadIdx.x) * 48) + 1))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 2))] = placeholder1[(((((int)threadIdx.x) * 48) + 2))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 3))] = placeholder1[(((((int)threadIdx.x) * 48) + 3))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 4))] = placeholder1[(((((int)threadIdx.x) * 48) + 4))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 5))] = placeholder1[(((((int)threadIdx.x) * 48) + 5))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 6))] = placeholder1[(((((int)threadIdx.x) * 48) + 6))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 7))] = placeholder1[(((((int)threadIdx.x) * 48) + 7))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 8))] = placeholder1[(((((int)threadIdx.x) * 48) + 8))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 9))] = placeholder1[(((((int)threadIdx.x) * 48) + 9))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 10))] = placeholder1[(((((int)threadIdx.x) * 48) + 10))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 11))] = placeholder1[(((((int)threadIdx.x) * 48) + 11))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 12))] = placeholder1[(((((int)threadIdx.x) * 48) + 12))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 13))] = placeholder1[(((((int)threadIdx.x) * 48) + 13))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 14))] = placeholder1[(((((int)threadIdx.x) * 48) + 14))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 15))] = placeholder1[(((((int)threadIdx.x) * 48) + 15))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 16))] = placeholder1[(((((int)threadIdx.x) * 48) + 16))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 17))] = placeholder1[(((((int)threadIdx.x) * 48) + 17))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 18))] = placeholder1[(((((int)threadIdx.x) * 48) + 18))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 19))] = placeholder1[(((((int)threadIdx.x) * 48) + 19))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 20))] = placeholder1[(((((int)threadIdx.x) * 48) + 20))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 21))] = placeholder1[(((((int)threadIdx.x) * 48) + 21))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 22))] = placeholder1[(((((int)threadIdx.x) * 48) + 22))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 23))] = placeholder1[(((((int)threadIdx.x) * 48) + 23))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 24))] = placeholder1[(((((int)threadIdx.x) * 48) + 24))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 25))] = placeholder1[(((((int)threadIdx.x) * 48) + 25))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 26))] = placeholder1[(((((int)threadIdx.x) * 48) + 26))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 27))] = placeholder1[(((((int)threadIdx.x) * 48) + 27))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 28))] = placeholder1[(((((int)threadIdx.x) * 48) + 28))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 29))] = placeholder1[(((((int)threadIdx.x) * 48) + 29))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 30))] = placeholder1[(((((int)threadIdx.x) * 48) + 30))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 31))] = placeholder1[(((((int)threadIdx.x) * 48) + 31))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 32))] = placeholder1[(((((int)threadIdx.x) * 48) + 32))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 33))] = placeholder1[(((((int)threadIdx.x) * 48) + 33))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 34))] = placeholder1[(((((int)threadIdx.x) * 48) + 34))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 35))] = placeholder1[(((((int)threadIdx.x) * 48) + 35))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 36))] = placeholder1[(((((int)threadIdx.x) * 48) + 36))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 37))] = placeholder1[(((((int)threadIdx.x) * 48) + 37))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 38))] = placeholder1[(((((int)threadIdx.x) * 48) + 38))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 39))] = placeholder1[(((((int)threadIdx.x) * 48) + 39))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 40))] = placeholder1[(((((int)threadIdx.x) * 48) + 40))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 41))] = placeholder1[(((((int)threadIdx.x) * 48) + 41))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 42))] = placeholder1[(((((int)threadIdx.x) * 48) + 42))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 43))] = placeholder1[(((((int)threadIdx.x) * 48) + 43))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 44))] = placeholder1[(((((int)threadIdx.x) * 48) + 44))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 45))] = placeholder1[(((((int)threadIdx.x) * 48) + 45))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 46))] = placeholder1[(((((int)threadIdx.x) * 48) + 46))];
  }
  if (((int)threadIdx.x) < 32) {
    placeholder_shared[(((((int)threadIdx.x) * 48) + 47))] = placeholder1[(((((int)threadIdx.x) * 48) + 47))];
  }
  __syncthreads();
  for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
    for (int ff_outer_inner = 0; ff_outer_inner < 32; ++ff_outer_inner) {
      for (int rc_inner = 0; rc_inner < 16; ++rc_inner) {
        Conv2dOutput[(((xx_outer_inner * 96) + (ff_outer_inner * 3)))] = (Conv2dOutput[(((xx_outer_inner * 96) + (ff_outer_inner * 3)))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 2) * 256) + ((((int)threadIdx.x) & 3) * 32)) + (xx_outer_inner * 16)) + rc_inner))] * placeholder_shared[(((rc_inner * 96) + (ff_outer_inner * 3)))]));
        Conv2dOutput[((((xx_outer_inner * 96) + (ff_outer_inner * 3)) + 192))] = (Conv2dOutput[((((xx_outer_inner * 96) + (ff_outer_inner * 3)) + 192))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 256) + ((((int)threadIdx.x) & 3) * 32)) + (xx_outer_inner * 16)) + rc_inner) + 128))] * placeholder_shared[(((rc_inner * 96) + (ff_outer_inner * 3)))]));
        Conv2dOutput[((((xx_outer_inner * 96) + (ff_outer_inner * 3)) + 1))] = (Conv2dOutput[((((xx_outer_inner * 96) + (ff_outer_inner * 3)) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 2) * 256) + ((((int)threadIdx.x) & 3) * 32)) + (xx_outer_inner * 16)) + rc_inner))] * placeholder_shared[((((rc_inner * 96) + (ff_outer_inner * 3)) + 1))]));
        Conv2dOutput[((((xx_outer_inner * 96) + (ff_outer_inner * 3)) + 193))] = (Conv2dOutput[((((xx_outer_inner * 96) + (ff_outer_inner * 3)) + 193))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 256) + ((((int)threadIdx.x) & 3) * 32)) + (xx_outer_inner * 16)) + rc_inner) + 128))] * placeholder_shared[((((rc_inner * 96) + (ff_outer_inner * 3)) + 1))]));
        Conv2dOutput[((((xx_outer_inner * 96) + (ff_outer_inner * 3)) + 2))] = (Conv2dOutput[((((xx_outer_inner * 96) + (ff_outer_inner * 3)) + 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 2) * 256) + ((((int)threadIdx.x) & 3) * 32)) + (xx_outer_inner * 16)) + rc_inner))] * placeholder_shared[((((rc_inner * 96) + (ff_outer_inner * 3)) + 2))]));
        Conv2dOutput[((((xx_outer_inner * 96) + (ff_outer_inner * 3)) + 194))] = (Conv2dOutput[((((xx_outer_inner * 96) + (ff_outer_inner * 3)) + 194))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 256) + ((((int)threadIdx.x) & 3) * 32)) + (xx_outer_inner * 16)) + rc_inner) + 128))] * placeholder_shared[((((rc_inner * 96) + (ff_outer_inner * 3)) + 2))]));
      }
    }
  }
  for (int i2_inner = 0; i2_inner < 2; ++i2_inner) {
    for (int i3_inner = 0; i3_inner < 96; ++i3_inner) {
      compute[((((((((((int)blockIdx.x) >> 3) * 393216) + ((((int)threadIdx.x) >> 2) * 12288)) + ((((int)blockIdx.x) & 7) * 1536)) + ((((int)threadIdx.x) & 3) * 192)) + (i2_inner * 96)) + i3_inner))] = max(min((Conv2dOutput[(((i2_inner * 96) + i3_inner))] + placeholder2[(i3_inner)]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((((int)blockIdx.x) >> 3) * 393216) + ((((int)threadIdx.x) >> 2) * 12288)) + ((((int)blockIdx.x) & 7) * 1536)) + ((((int)threadIdx.x) & 3) * 192)) + (i2_inner * 96)) + i3_inner) + 768))] = max(min((Conv2dOutput[((((i2_inner * 96) + i3_inner) + 192))] + placeholder2[(i3_inner)]), 6.000000e+00f), 0.000000e+00f);
    }
  }
}


