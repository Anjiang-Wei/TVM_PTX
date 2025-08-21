
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
  float compute[256];
  __shared__ float placeholder_d_shared[128];
  __shared__ float placeholder_shared[1536];
  for (int i_outer_inner_init = 0; i_outer_inner_init < 64; ++i_outer_inner_init) {
    for (int j_outer_inner_init = 0; j_outer_inner_init < 2; ++j_outer_inner_init) {
      for (int j_inner_init = 0; j_inner_init < 2; ++j_inner_init) {
        compute[((((i_outer_inner_init * 4) + (j_outer_inner_init * 2)) + j_inner_init))] = 0.000000e+00f;
      }
    }
  }
  for (int k_outer_outer = 0; k_outer_outer < 1024; ++k_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_inner_s < 16; ++ax0_ax1_fused_ax2_fused_inner_s) {
      if (((((int)threadIdx.x) * 16) + ax0_ax1_fused_ax2_fused_inner_s) < 128) {
        if (((int)threadIdx.x) < 8) {
          placeholder_d_shared[(((((int)threadIdx.x) * 16) + ax0_ax1_fused_ax2_fused_inner_s))] = placeholder[((((((((int)blockIdx.x) >> 1) * 131072) + (((int)threadIdx.x) * 16384)) + (ax0_ax1_fused_ax2_fused_inner_s * 1024)) + k_outer_outer))];
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_outer_outer) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_outer_outer * 768) + ((int)threadIdx.x)))] = placeholder1[((((((((int)blockIdx.x) & 1) * 1572864) + (ax0_ax1_fused_ax2_fused_outer_outer * 786432)) + (((int)threadIdx.x) * 1024)) + k_outer_outer))];
    }
    __syncthreads();
    for (int i_outer_inner = 0; i_outer_inner < 64; ++i_outer_inner) {
      for (int j_outer_inner = 0; j_outer_inner < 2; ++j_outer_inner) {
        for (int j_inner = 0; j_inner < 2; ++j_inner) {
          compute[((((i_outer_inner * 4) + (j_outer_inner * 2)) + j_inner))] = (compute[((((i_outer_inner * 4) + (j_outer_inner * 2)) + j_inner))] + (placeholder_d_shared[((((((int)threadIdx.x) / 384) * 64) + i_outer_inner))] * placeholder_shared[(((((((int)threadIdx.x) % 384) * 4) + (j_outer_inner * 2)) + j_inner))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 64; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      T_add[((((((((((int)blockIdx.x) >> 1) * 393216) + ((((int)threadIdx.x) / 384) * 196608)) + (ax1_inner * 3072)) + ((((int)blockIdx.x) & 1) * 1536)) + ((((int)threadIdx.x) % 384) * 4)) + ax2_inner))] = (compute[(((ax1_inner * 4) + ax2_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 1536) + ((((int)threadIdx.x) % 384) * 4)) + ax2_inner))]);
    }
  }
}


