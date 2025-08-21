
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
  float compute_local[64];
  __shared__ float placeholder_d_shared[128];
  __shared__ float placeholder_shared[1024];
  for (int b_c_outer_inner_init = 0; b_c_outer_inner_init < 4; ++b_c_outer_inner_init) {
    for (int b_c_inner_init = 0; b_c_inner_init < 4; ++b_c_inner_init) {
      for (int i_c_inner_init = 0; i_c_inner_init < 2; ++i_c_inner_init) {
        compute_local[((((b_c_outer_inner_init * 8) + (b_c_inner_init * 2)) + i_c_inner_init))] = 0.000000e+00f;
        compute_local[(((((b_c_outer_inner_init * 8) + (b_c_inner_init * 2)) + i_c_inner_init) + 32))] = 0.000000e+00f;
      }
    }
  }
  for (int k_outer_outer = 0; k_outer_outer < 32; ++k_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_outer_outer < 4; ++ax0_ax1_fused_ax2_fused_outer_outer) {
      placeholder_d_shared[(((ax0_ax1_fused_ax2_fused_outer_outer * 32) + ((int)threadIdx.x)))] = placeholder[(((((((ax0_ax1_fused_ax2_fused_outer_outer * 16384) + ((((int)threadIdx.x) >> 3) * 4096)) + ((((int)blockIdx.x) >> 1) * 256)) + (((((int)threadIdx.x) & 7) >> 1) * 64)) + (k_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    }
    for (int ax0_ax1_fused_ax2_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_outer_outer1 < 32; ++ax0_ax1_fused_ax2_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_outer_outer1 * 32) + ((int)threadIdx.x)))] = placeholder1[(((((((((ax0_ax1_fused_ax2_fused_outer_outer1 * 16) + (((int)threadIdx.x) >> 1)) >> 5) * 4096) + ((((int)blockIdx.x) & 1) * 2048)) + ((((ax0_ax1_fused_ax2_fused_outer_outer1 * 16) + (((int)threadIdx.x) >> 1)) & 31) * 64)) + (k_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    }
    __syncthreads();
    for (int k_outer_inner = 0; k_outer_inner < 2; ++k_outer_inner) {
      for (int b_c_outer_inner = 0; b_c_outer_inner < 4; ++b_c_outer_inner) {
        for (int b_c_inner = 0; b_c_inner < 4; ++b_c_inner) {
          for (int i_c_inner = 0; i_c_inner < 2; ++i_c_inner) {
            compute_local[((((b_c_outer_inner * 8) + (b_c_inner * 2)) + i_c_inner))] = (compute_local[((((b_c_outer_inner * 8) + (b_c_inner * 2)) + i_c_inner))] + (placeholder_d_shared[(((((b_c_outer_inner * 32) + (b_c_inner * 8)) + (i_c_inner * 2)) + k_outer_inner))] * placeholder_shared[(((((b_c_outer_inner * 256) + (b_c_inner * 64)) + (((int)threadIdx.x) * 2)) + k_outer_inner))]));
            compute_local[(((((b_c_outer_inner * 8) + (b_c_inner * 2)) + i_c_inner) + 32))] = (compute_local[(((((b_c_outer_inner * 8) + (b_c_inner * 2)) + i_c_inner) + 32))] + (placeholder_d_shared[((((((b_c_outer_inner * 32) + (b_c_inner * 8)) + (i_c_inner * 2)) + k_outer_inner) + 4))] * placeholder_shared[(((((b_c_outer_inner * 256) + (b_c_inner * 64)) + (((int)threadIdx.x) * 2)) + k_outer_inner))]));
          }
        }
      }
    }
  }
  for (int b_inner = 0; b_inner < 16; ++b_inner) {
    for (int i_inner = 0; i_inner < 2; ++i_inner) {
      compute[((((((b_inner * 4096) + ((((int)blockIdx.x) >> 1) * 256)) + (i_inner * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((int)threadIdx.x)))] = compute_local[(((b_inner * 2) + i_inner))];
      compute[(((((((b_inner * 4096) + ((((int)blockIdx.x) >> 1) * 256)) + (i_inner * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((int)threadIdx.x)) + 128))] = compute_local[((((b_inner * 2) + i_inner) + 32))];
    }
  }
}


