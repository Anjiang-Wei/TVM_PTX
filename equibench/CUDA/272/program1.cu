
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float compute[64];
  __shared__ float placeholder_d_shared[2];
  __shared__ float placeholder_shared[256];
  for (int j_outer_inner_init = 0; j_outer_inner_init < 8; ++j_outer_inner_init) {
    for (int i_inner_init = 0; i_inner_init < 2; ++i_inner_init) {
      for (int j_inner_init = 0; j_inner_init < 4; ++j_inner_init) {
        compute[((((i_inner_init * 32) + (j_outer_inner_init * 4)) + j_inner_init))] = 0.000000e+00f;
      }
    }
  }
  for (int k_outer_outer = 0; k_outer_outer < 2048; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((int)threadIdx.x))] = placeholder[(((((((int)blockIdx.x) >> 1) * 4096) + (((int)threadIdx.x) * 2048)) + k_outer_outer))];
    }
    for (int ax0_ax1_fused_ax2_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_outer_outer < 32; ++ax0_ax1_fused_ax2_fused_outer_outer) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_outer_outer * 8) + ((int)threadIdx.x)))] = placeholder1[((((((((int)blockIdx.x) & 1) * 524288) + (ax0_ax1_fused_ax2_fused_outer_outer * 16384)) + (((int)threadIdx.x) * 2048)) + k_outer_outer))];
    }
    __syncthreads();
    for (int j_outer_inner = 0; j_outer_inner < 8; ++j_outer_inner) {
      for (int i_inner = 0; i_inner < 2; ++i_inner) {
        for (int j_inner = 0; j_inner < 4; ++j_inner) {
          compute[((((i_inner * 32) + (j_outer_inner * 4)) + j_inner))] = (compute[((((i_inner * 32) + (j_outer_inner * 4)) + j_inner))] + (placeholder_d_shared[(i_inner)] * placeholder_shared[((((((int)threadIdx.x) * 32) + (j_outer_inner * 4)) + j_inner))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 32; ++ax2_inner) {
      T_add[(((((((((int)blockIdx.x) >> 1) * 1024) + (ax1_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 32)) + ax2_inner))] = ((compute[(((ax1_inner * 32) + ax2_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) * 32)) + ax2_inner))]) + placeholder3[(((((((((int)blockIdx.x) >> 1) * 1024) + (ax1_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) * 32)) + ax2_inner))]);
    }
  }
}


