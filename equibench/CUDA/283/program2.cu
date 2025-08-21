
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
  float T_dense[5];
  __shared__ float placeholder_d_shared[32];
  __shared__ float placeholder_shared[1280];
  for (int j_outer_inner_init = 0; j_outer_inner_init < 5; ++j_outer_inner_init) {
    T_dense[(j_outer_inner_init)] = 0.000000e+00f;
  }
  for (int k_outer_outer = 0; k_outer_outer < 40; ++k_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_outer_outer = 0; ax0_ax1_fused_outer_outer < 4; ++ax0_ax1_fused_outer_outer) {
      placeholder_d_shared[(((ax0_ax1_fused_outer_outer * 8) + ((int)threadIdx.x)))] = placeholder[((((k_outer_outer * 32) + (ax0_ax1_fused_outer_outer * 8)) + ((int)threadIdx.x)))];
    }
    for (int ax0_ax1_fused_outer_outer1 = 0; ax0_ax1_fused_outer_outer1 < 160; ++ax0_ax1_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_outer_outer1 * 8) + ((int)threadIdx.x)))] = placeholder1[(((((((int)blockIdx.x) * 51200) + ((((ax0_ax1_fused_outer_outer1 * 8) + ((int)threadIdx.x)) >> 5) * 1280)) + (k_outer_outer * 32)) + (((ax0_ax1_fused_outer_outer1 * 8) + ((int)threadIdx.x)) & 31)))];
    }
    __syncthreads();
    for (int j_outer_inner = 0; j_outer_inner < 5; ++j_outer_inner) {
      for (int k_inner = 0; k_inner < 32; ++k_inner) {
        T_dense[(j_outer_inner)] = (T_dense[(j_outer_inner)] + (placeholder_d_shared[(k_inner)] * placeholder_shared[((((((int)threadIdx.x) * 160) + (j_outer_inner * 32)) + k_inner))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 5; ++ax1_inner) {
    T_add[((((((int)blockIdx.x) * 40) + (((int)threadIdx.x) * 5)) + ax1_inner))] = (T_dense[(ax1_inner)] + placeholder2[((((((int)blockIdx.x) * 40) + (((int)threadIdx.x) * 5)) + ax1_inner))]);
  }
}


