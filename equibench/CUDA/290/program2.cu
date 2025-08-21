
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
  float T_dense[4];
  __shared__ float placeholder_d_shared[8];
  __shared__ float placeholder_shared[800];
  T_dense[(0)] = 0.000000e+00f;
  T_dense[(2)] = 0.000000e+00f;
  T_dense[(1)] = 0.000000e+00f;
  T_dense[(3)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 256; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[((((int)threadIdx.x) * 8))] = placeholder[(((((int)threadIdx.x) * 2048) + (k_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 1))] = placeholder[((((((int)threadIdx.x) * 2048) + (k_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 2))] = placeholder[((((((int)threadIdx.x) * 2048) + (k_outer_outer * 2)) + 512))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 3))] = placeholder[((((((int)threadIdx.x) * 2048) + (k_outer_outer * 2)) + 513))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 4))] = placeholder[((((((int)threadIdx.x) * 2048) + (k_outer_outer * 2)) + 1024))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 5))] = placeholder[((((((int)threadIdx.x) * 2048) + (k_outer_outer * 2)) + 1025))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 6))] = placeholder[((((((int)threadIdx.x) * 2048) + (k_outer_outer * 2)) + 1536))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 7))] = placeholder[((((((int)threadIdx.x) * 2048) + (k_outer_outer * 2)) + 1537))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((((int)threadIdx.x) >> 1) * 512) + (k_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    placeholder_shared[((((int)threadIdx.x) + 400))] = placeholder1[((((((((int)threadIdx.x) >> 1) * 512) + (k_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 102400))];
    __syncthreads();
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(((((int)threadIdx.x) / 200) * 4))] * placeholder_shared[(((((int)threadIdx.x) % 200) * 4))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 2))] * placeholder_shared[(((((int)threadIdx.x) % 200) * 4))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 200) * 4) + 1))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 200) * 4) + 1))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(((((int)threadIdx.x) / 200) * 4))] * placeholder_shared[((((((int)threadIdx.x) % 200) * 4) + 2))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 200) * 4) + 2))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 200) * 4) + 3))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[((((((int)threadIdx.x) / 200) * 4) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 200) * 4) + 3))]));
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
      T_add[((((((((int)threadIdx.x) / 200) * 800) + (ax0_inner * 400)) + ((((int)threadIdx.x) % 200) * 2)) + ax1_inner))] = (T_dense[(((ax0_inner * 2) + ax1_inner))] + placeholder2[((((((int)threadIdx.x) % 200) * 2) + ax1_inner))]);
    }
  }
}


