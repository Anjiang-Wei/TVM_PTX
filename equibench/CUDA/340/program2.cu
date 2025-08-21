
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
extern "C" __global__ void my_kernel_kernel2(float* __restrict__ T_softmax_norm, float* __restrict__ placeholder, float* __restrict__ T_softmax_maxelem, float* __restrict__ T_softmax_expsum) {
  T_softmax_norm[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] = (__expf((placeholder[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] - T_softmax_maxelem[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) >> 6))])) / T_softmax_expsum[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) >> 6))]);
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ T_softmax_maxelem, float* __restrict__ placeholder) {
  T_softmax_maxelem[(((((int)blockIdx.x) * 16) + ((int)threadIdx.x)))] = -3.402823e+38f;
  for (int k = 0; k < 64; ++k) {
    T_softmax_maxelem[(((((int)blockIdx.x) * 16) + ((int)threadIdx.x)))] = max(T_softmax_maxelem[(((((int)blockIdx.x) * 16) + ((int)threadIdx.x)))], placeholder[((((((int)blockIdx.x) * 1024) + (((int)threadIdx.x) * 64)) + k))]);
  }
}

extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_softmax_expsum, float* __restrict__ placeholder, float* __restrict__ T_softmax_maxelem) {
  T_softmax_expsum[(((((int)blockIdx.x) * 16) + ((int)threadIdx.x)))] = 0.000000e+00f;
  for (int k = 0; k < 64; ++k) {
    T_softmax_expsum[(((((int)blockIdx.x) * 16) + ((int)threadIdx.x)))] = (T_softmax_expsum[(((((int)blockIdx.x) * 16) + ((int)threadIdx.x)))] + __expf((placeholder[((((((int)blockIdx.x) * 1024) + (((int)threadIdx.x) * 64)) + k))] - T_softmax_maxelem[(((((int)blockIdx.x) * 16) + ((int)threadIdx.x)))])));
  }
}


