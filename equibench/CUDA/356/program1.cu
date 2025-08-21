
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
  float compute_local[128];
  __shared__ float placeholder_d_shared[1024];
  __shared__ float placeholder_shared[1024];
  for (int j_c_outer_inner_init = 0; j_c_outer_inner_init < 4; ++j_c_outer_inner_init) {
    for (int i_c_inner_init = 0; i_c_inner_init < 8; ++i_c_inner_init) {
      compute_local[(((i_c_inner_init * 4) + j_c_outer_inner_init))] = 0.000000e+00f;
      compute_local[((((i_c_inner_init * 4) + j_c_outer_inner_init) + 32))] = 0.000000e+00f;
      compute_local[((((i_c_inner_init * 4) + j_c_outer_inner_init) + 64))] = 0.000000e+00f;
      compute_local[((((i_c_inner_init * 4) + j_c_outer_inner_init) + 96))] = 0.000000e+00f;
    }
  }
  for (int k_outer_outer = 0; k_outer_outer < 128; ++k_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_outer_outer < 16; ++ax0_ax1_fused_ax2_fused_outer_outer) {
      placeholder_d_shared[(((ax0_ax1_fused_ax2_fused_outer_outer * 64) + ((int)threadIdx.x)))] = placeholder[(((((((ax0_ax1_fused_ax2_fused_outer_outer * 131072) + ((((int)threadIdx.x) >> 5) * 65536)) + ((((int)blockIdx.x) >> 2) * 4096)) + (((((int)threadIdx.x) & 31) >> 1) * 256)) + (k_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    }
    for (int ax0_ax1_fused_ax2_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_outer_outer1 < 16; ++ax0_ax1_fused_ax2_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_outer_outer1 * 64) + ((int)threadIdx.x)))] = placeholder1[(((((((ax0_ax1_fused_ax2_fused_outer_outer1 * 32768) + ((((int)threadIdx.x) >> 5) * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + (((((int)threadIdx.x) & 31) >> 1) * 256)) + (k_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    }
    __syncthreads();
    for (int k_outer_inner = 0; k_outer_inner < 2; ++k_outer_inner) {
      for (int j_c_outer_inner = 0; j_c_outer_inner < 4; ++j_c_outer_inner) {
        for (int i_c_inner = 0; i_c_inner < 8; ++i_c_inner) {
          compute_local[(((i_c_inner * 4) + j_c_outer_inner))] = (compute_local[(((i_c_inner * 4) + j_c_outer_inner))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 2) * 32) + (i_c_inner * 2)) + k_outer_inner))] * placeholder_shared[((((((int)threadIdx.x) * 8) + (j_c_outer_inner * 2)) + k_outer_inner))]));
          compute_local[((((i_c_inner * 4) + j_c_outer_inner) + 32))] = (compute_local[((((i_c_inner * 4) + j_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((int)threadIdx.x) >> 2) * 32) + (i_c_inner * 2)) + k_outer_inner) + 16))] * placeholder_shared[((((((int)threadIdx.x) * 8) + (j_c_outer_inner * 2)) + k_outer_inner))]));
          compute_local[((((i_c_inner * 4) + j_c_outer_inner) + 64))] = (compute_local[((((i_c_inner * 4) + j_c_outer_inner) + 64))] + (placeholder_d_shared[((((((((int)threadIdx.x) >> 2) * 32) + (i_c_inner * 2)) + k_outer_inner) + 512))] * placeholder_shared[(((((((int)threadIdx.x) * 8) + (j_c_outer_inner * 2)) + k_outer_inner) + 512))]));
          compute_local[((((i_c_inner * 4) + j_c_outer_inner) + 96))] = (compute_local[((((i_c_inner * 4) + j_c_outer_inner) + 96))] + (placeholder_d_shared[((((((((int)threadIdx.x) >> 2) * 32) + (i_c_inner * 2)) + k_outer_inner) + 528))] * placeholder_shared[(((((((int)threadIdx.x) * 8) + (j_c_outer_inner * 2)) + k_outer_inner) + 512))]));
        }
      }
    }
  }
  for (int i_inner = 0; i_inner < 8; ++i_inner) {
    for (int j_inner = 0; j_inner < 4; ++j_inner) {
      compute[((((((((((int)threadIdx.x) >> 2) * 16384) + ((((int)blockIdx.x) >> 2) * 1024)) + (i_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + j_inner))] = compute_local[(((i_inner * 4) + j_inner))];
      compute[(((((((((((int)threadIdx.x) >> 2) * 16384) + ((((int)blockIdx.x) >> 2) * 1024)) + (i_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + j_inner) + 512))] = compute_local[((((i_inner * 4) + j_inner) + 32))];
      compute[(((((((((((int)threadIdx.x) >> 2) * 16384) + ((((int)blockIdx.x) >> 2) * 1024)) + (i_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + j_inner) + 262144))] = compute_local[((((i_inner * 4) + j_inner) + 64))];
      compute[(((((((((((int)threadIdx.x) >> 2) * 16384) + ((((int)blockIdx.x) >> 2) * 1024)) + (i_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + j_inner) + 262656))] = compute_local[((((i_inner * 4) + j_inner) + 96))];
    }
  }
}


