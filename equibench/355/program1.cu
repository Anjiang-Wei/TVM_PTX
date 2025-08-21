
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute) {
  float compute_local[768];
  __shared__ float placeholder_d_shared[768];
  __shared__ float placeholder_shared[48];
  for (int b_c_outer_inner_init = 0; b_c_outer_inner_init < 3; ++b_c_outer_inner_init) {
    for (int i_c_outer_inner_init = 0; i_c_outer_inner_init < 16; ++i_c_outer_inner_init) {
      for (int b_c_inner_init = 0; b_c_inner_init < 8; ++b_c_inner_init) {
        for (int j_c_inner_init = 0; j_c_inner_init < 2; ++j_c_inner_init) {
          compute_local[(((((b_c_outer_inner_init * 256) + (b_c_inner_init * 32)) + (i_c_outer_inner_init * 2)) + j_c_inner_init))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int k_outer_outer = 0; k_outer_outer < 128; ++k_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_outer_outer < 384; ++ax0_ax1_fused_ax2_fused_outer_outer) {
      placeholder_d_shared[(((ax0_ax1_fused_ax2_fused_outer_outer * 2) + ((int)threadIdx.x)))] = placeholder[((((((((ax0_ax1_fused_ax2_fused_outer_outer * 2) + ((int)threadIdx.x)) >> 5) * 16384) + ((((int)blockIdx.x) >> 5) * 4096)) + ((((ax0_ax1_fused_ax2_fused_outer_outer * 2) + ((int)threadIdx.x)) & 31) * 128)) + k_outer_outer))];
    }
    for (int ax0_ax1_fused_ax2_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_outer_outer1 < 24; ++ax0_ax1_fused_ax2_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_outer_outer1 * 2) + ((int)threadIdx.x)))] = placeholder1[(((((ax0_ax1_fused_ax2_fused_outer_outer1 * 8192) + ((((int)blockIdx.x) & 31) * 256)) + (((int)threadIdx.x) * 128)) + k_outer_outer))];
    }
    __syncthreads();
    for (int b_c_outer_inner = 0; b_c_outer_inner < 3; ++b_c_outer_inner) {
      for (int i_c_outer_inner = 0; i_c_outer_inner < 16; ++i_c_outer_inner) {
        for (int b_c_inner = 0; b_c_inner < 8; ++b_c_inner) {
          for (int j_c_inner = 0; j_c_inner < 2; ++j_c_inner) {
            compute_local[(((((b_c_outer_inner * 256) + (b_c_inner * 32)) + (i_c_outer_inner * 2)) + j_c_inner))] = (compute_local[(((((b_c_outer_inner * 256) + (b_c_inner * 32)) + (i_c_outer_inner * 2)) + j_c_inner))] + (placeholder_d_shared[(((((b_c_outer_inner * 256) + (b_c_inner * 32)) + (((int)threadIdx.x) * 16)) + i_c_outer_inner))] * placeholder_shared[((((b_c_outer_inner * 16) + (b_c_inner * 2)) + j_c_inner))]));
          }
        }
      }
    }
  }
  for (int b_inner = 0; b_inner < 24; ++b_inner) {
    for (int i_inner = 0; i_inner < 16; ++i_inner) {
      for (int j_inner = 0; j_inner < 2; ++j_inner) {
        compute[(((((((b_inner * 8192) + ((((int)blockIdx.x) >> 5) * 2048)) + (((int)threadIdx.x) * 1024)) + (i_inner * 64)) + ((((int)blockIdx.x) & 31) * 2)) + j_inner))] = compute_local[((((b_inner * 32) + (i_inner * 2)) + j_inner))];
      }
    }
  }
}


