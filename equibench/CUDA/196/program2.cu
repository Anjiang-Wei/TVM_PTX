
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ tensor, float* __restrict__ tensor1) {
  tensor[(((((int)blockIdx.x) * 2) + ((int)threadIdx.x)))] = (tensor1[(((((int)blockIdx.x) * 2) + ((int)threadIdx.x)))] * 3.906250e-03f);
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ tensor, float* __restrict__ placeholder) {
  tensor[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] = 0.000000e+00f;
  for (int rv0 = 0; rv0 < 16; ++rv0) {
    for (int rv1 = 0; rv1 < 16; ++rv1) {
      tensor[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] = (tensor[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) / 672) * 172032) + (rv0 * 10752)) + (rv1 * 672)) + (((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 672)))]);
    }
  }
}


