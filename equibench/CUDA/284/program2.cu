
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
  float T_dense[1];
  __shared__ float placeholder_d_shared[40];
  __shared__ float placeholder_shared[8000];
  T_dense[(0)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 32; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 8) {
      placeholder_d_shared[((((int)threadIdx.x) * 5))] = placeholder[(((k_outer_outer * 40) + (((int)threadIdx.x) * 5)))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_d_shared[(((((int)threadIdx.x) * 5) + 1))] = placeholder[((((k_outer_outer * 40) + (((int)threadIdx.x) * 5)) + 1))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_d_shared[(((((int)threadIdx.x) * 5) + 2))] = placeholder[((((k_outer_outer * 40) + (((int)threadIdx.x) * 5)) + 2))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_d_shared[(((((int)threadIdx.x) * 5) + 3))] = placeholder[((((k_outer_outer * 40) + (((int)threadIdx.x) * 5)) + 3))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_d_shared[(((((int)threadIdx.x) * 5) + 4))] = placeholder[((((k_outer_outer * 40) + (((int)threadIdx.x) * 5)) + 4))];
    }
    for (int ax0_ax1_fused_outer_outer = 0; ax0_ax1_fused_outer_outer < 40; ++ax0_ax1_fused_outer_outer) {
      placeholder_shared[(((ax0_ax1_fused_outer_outer * 200) + ((int)threadIdx.x)))] = placeholder1[((((((((int)blockIdx.x) * 256000) + (ax0_ax1_fused_outer_outer * 6400)) + ((((int)threadIdx.x) / 40) * 1280)) + (k_outer_outer * 40)) + (((int)threadIdx.x) % 40)))];
    }
    __syncthreads();
    for (int k_outer_inner = 0; k_outer_inner < 40; ++k_outer_inner) {
      T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(k_outer_inner)] * placeholder_shared[(((((int)threadIdx.x) * 40) + k_outer_inner))]));
    }
  }
  T_add[(((((int)blockIdx.x) * 200) + ((int)threadIdx.x)))] = (T_dense[(0)] + placeholder2[(((((int)blockIdx.x) * 200) + ((int)threadIdx.x)))]);
}


