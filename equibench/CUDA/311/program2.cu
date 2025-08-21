
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_divide, float* __restrict__ T_multiply_red) {
  T_divide[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] = (T_multiply_red[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] * 9.765625e-04f);
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ T_multiply_red, float* __restrict__ placeholder, float* __restrict__ placeholder1) {
  T_multiply_red[(((((int)blockIdx.x) * 8) + ((int)threadIdx.x)))] = 0.000000e+00f;
  for (int k2 = 0; k2 < 1024; ++k2) {
    T_multiply_red[(((((int)blockIdx.x) * 8) + ((int)threadIdx.x)))] = (T_multiply_red[(((((int)blockIdx.x) * 8) + ((int)threadIdx.x)))] + ((placeholder[((((((int)blockIdx.x) * 8192) + (((int)threadIdx.x) * 1024)) + k2))] - placeholder1[(((((int)blockIdx.x) * 8) + ((int)threadIdx.x)))]) * (placeholder[((((((int)blockIdx.x) * 8192) + (((int)threadIdx.x) * 1024)) + k2))] - placeholder1[(((((int)blockIdx.x) * 8) + ((int)threadIdx.x)))])));
  }
}


