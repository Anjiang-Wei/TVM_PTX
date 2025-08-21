
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_divide, float* __restrict__ placeholder_red) {
  T_divide[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] = (placeholder_red[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] * 1.953125e-03f);
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder_red, float* __restrict__ placeholder) {
  placeholder_red[(((int)blockIdx.x))] = 0.000000e+00f;
  for (int k2 = 0; k2 < 512; ++k2) {
    placeholder_red[(((int)blockIdx.x))] = (placeholder_red[(((int)blockIdx.x))] + placeholder[(((((int)blockIdx.x) * 512) + k2))]);
  }
}


