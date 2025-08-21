
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
  T_softmax_norm[(((((int)blockIdx.x) * 2) + ((int)threadIdx.x)))] = (__expf((placeholder[(((((int)blockIdx.x) * 2) + ((int)threadIdx.x)))] - T_softmax_maxelem[((((((int)blockIdx.x) * 2) + ((int)threadIdx.x)) >> 8))])) / T_softmax_expsum[((((((int)blockIdx.x) * 2) + ((int)threadIdx.x)) >> 8))]);
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ T_softmax_maxelem) {
  float normal_reduce_temp0[1];
  __shared__ float red_buf0[4];
  normal_reduce_temp0[(0)] = -3.402823e+38f;
  for (int k_outer = 0; k_outer < 64; ++k_outer) {
    normal_reduce_temp0[(0)] = max(normal_reduce_temp0[(0)], placeholder[((((((int)blockIdx.x) * 256) + (k_outer * 4)) + ((int)threadIdx.x)))]);
  }
  __syncthreads();
  ((volatile float*)red_buf0)[(((int)threadIdx.x))] = normal_reduce_temp0[(0)];
  __syncthreads();
  if (((int)threadIdx.x) < 2) {
    ((volatile float*)red_buf0)[(((int)threadIdx.x))] = max(((volatile float*)red_buf0)[(((int)threadIdx.x))], ((volatile float*)red_buf0)[((((int)threadIdx.x) + 2))]);
    ((volatile float*)red_buf0)[(((int)threadIdx.x))] = max(((volatile float*)red_buf0)[(((int)threadIdx.x))], ((volatile float*)red_buf0)[((((int)threadIdx.x) + 1))]);
  }
  __syncthreads();
  T_softmax_maxelem[(((int)blockIdx.x))] = ((volatile float*)red_buf0)[(0)];
}

extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_softmax_expsum, float* __restrict__ placeholder, float* __restrict__ T_softmax_maxelem) {
  T_softmax_expsum[(((int)blockIdx.x))] = 0.000000e+00f;
  for (int k = 0; k < 256; ++k) {
    T_softmax_expsum[(((int)blockIdx.x))] = (T_softmax_expsum[(((int)blockIdx.x))] + __expf((placeholder[(((((int)blockIdx.x) * 256) + k))] - T_softmax_maxelem[(((int)blockIdx.x))])));
  }
}


