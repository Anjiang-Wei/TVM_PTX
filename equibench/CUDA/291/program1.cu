
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
  float T_dense[2];
  __shared__ float placeholder_d_shared[16];
  __shared__ float placeholder_shared[800];
  T_dense[(0)] = 0.000000e+00f;
  T_dense[(1)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 128; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 16) {
      placeholder_d_shared[(((int)threadIdx.x))] = placeholder[(((((((int)threadIdx.x) >> 2) * 512) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    }
    if (((int)threadIdx.x) < 200) {
      ((float4*)(placeholder_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(placeholder1 + ((((((int)blockIdx.x) * 102400) + (((int)threadIdx.x) * 512)) + (k_outer_outer * 4)))))[0];
    }
    __syncthreads();
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(((((int)threadIdx.x) / 200) * 4))] * placeholder_shared[(((((int)threadIdx.x) % 200) * 4))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 8))] * placeholder_shared[(((((int)threadIdx.x) % 200) * 4))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 200) * 4) + 1))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 9))] * placeholder_shared[((((((int)threadIdx.x) % 200) * 4) + 1))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 200) * 4) + 2))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 10))] * placeholder_shared[((((((int)threadIdx.x) % 200) * 4) + 2))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 200) * 4) + 3))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 11))] * placeholder_shared[((((((int)threadIdx.x) % 200) * 4) + 3))]));
  }
  T_add[(((((((int)threadIdx.x) / 200) * 400) + (((int)blockIdx.x) * 200)) + (((int)threadIdx.x) % 200)))] = (T_dense[(0)] + placeholder2[(((((int)blockIdx.x) * 200) + (((int)threadIdx.x) % 200)))]);
  T_add[((((((((int)threadIdx.x) / 200) * 400) + (((int)blockIdx.x) * 200)) + (((int)threadIdx.x) % 200)) + 800))] = (T_dense[(1)] + placeholder2[(((((int)blockIdx.x) * 200) + (((int)threadIdx.x) % 200)))]);
}


