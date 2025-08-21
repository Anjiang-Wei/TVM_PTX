
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
  float compute[48];
  __shared__ float placeholder_d_shared[64];
  __shared__ float placeholder_shared[1536];
  for (int i_outer_inner_init = 0; i_outer_inner_init < 2; ++i_outer_inner_init) {
    for (int j_outer_inner_init = 0; j_outer_inner_init < 4; ++j_outer_inner_init) {
      for (int i_inner_init = 0; i_inner_init < 2; ++i_inner_init) {
        compute[((((i_outer_inner_init * 8) + (i_inner_init * 4)) + j_outer_inner_init))] = 0.000000e+00f;
        compute[(((((i_outer_inner_init * 8) + (i_inner_init * 4)) + j_outer_inner_init) + 16))] = 0.000000e+00f;
        compute[(((((i_outer_inner_init * 8) + (i_inner_init * 4)) + j_outer_inner_init) + 32))] = 0.000000e+00f;
      }
    }
  }
  for (int k_outer_outer = 0; k_outer_outer < 256; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 64) {
      placeholder_d_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)threadIdx.x) >> 5) * 131072) + ((((int)blockIdx.x) >> 3) * 8192)) + (((((int)threadIdx.x) & 31) >> 2) * 1024)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    }
    for (int ax0_ax1_fused_ax2_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_outer_outer < 12; ++ax0_ax1_fused_ax2_fused_outer_outer) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_outer_outer * 128) + ((int)threadIdx.x)))] = placeholder1[(((((((((int)blockIdx.x) & 7) * 393216) + (ax0_ax1_fused_ax2_fused_outer_outer * 32768)) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    }
    __syncthreads();
    for (int k_outer_inner = 0; k_outer_inner < 2; ++k_outer_inner) {
      for (int i_outer_inner = 0; i_outer_inner < 2; ++i_outer_inner) {
        for (int j_outer_inner = 0; j_outer_inner < 4; ++j_outer_inner) {
          for (int k_inner = 0; k_inner < 2; ++k_inner) {
            for (int i_inner = 0; i_inner < 2; ++i_inner) {
              compute[((((i_outer_inner * 8) + (i_inner * 4)) + j_outer_inner))] = (compute[((((i_outer_inner * 8) + (i_inner * 4)) + j_outer_inner))] + (placeholder_d_shared[(((((((((int)threadIdx.x) >> 5) * 16) + (i_outer_inner * 8)) + (i_inner * 4)) + (k_outer_inner * 2)) + k_inner))] * placeholder_shared[((((((((int)threadIdx.x) & 31) * 16) + (j_outer_inner * 4)) + (k_outer_inner * 2)) + k_inner))]));
              compute[(((((i_outer_inner * 8) + (i_inner * 4)) + j_outer_inner) + 16))] = (compute[(((((i_outer_inner * 8) + (i_inner * 4)) + j_outer_inner) + 16))] + (placeholder_d_shared[(((((((((int)threadIdx.x) >> 5) * 16) + (i_outer_inner * 8)) + (i_inner * 4)) + (k_outer_inner * 2)) + k_inner))] * placeholder_shared[(((((((((int)threadIdx.x) & 31) * 16) + (j_outer_inner * 4)) + (k_outer_inner * 2)) + k_inner) + 512))]));
              compute[(((((i_outer_inner * 8) + (i_inner * 4)) + j_outer_inner) + 32))] = (compute[(((((i_outer_inner * 8) + (i_inner * 4)) + j_outer_inner) + 32))] + (placeholder_d_shared[(((((((((int)threadIdx.x) >> 5) * 16) + (i_outer_inner * 8)) + (i_inner * 4)) + (k_outer_inner * 2)) + k_inner))] * placeholder_shared[(((((((((int)threadIdx.x) & 31) * 16) + (j_outer_inner * 4)) + (k_outer_inner * 2)) + k_inner) + 1024))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      T_add[(((((((((((int)threadIdx.x) >> 6) * 393216) + ((((int)blockIdx.x) >> 3) * 24576)) + (((((int)threadIdx.x) & 63) >> 5) * 12288)) + (ax1_inner * 3072)) + ((((int)blockIdx.x) & 7) * 384)) + ((((int)threadIdx.x) & 31) * 4)) + ax2_inner))] = (compute[(((ax1_inner * 4) + ax2_inner))] + placeholder2[(((((((int)blockIdx.x) & 7) * 384) + ((((int)threadIdx.x) & 31) * 4)) + ax2_inner))]);
      T_add[((((((((((((int)threadIdx.x) >> 6) * 393216) + ((((int)blockIdx.x) >> 3) * 24576)) + (((((int)threadIdx.x) & 63) >> 5) * 12288)) + (ax1_inner * 3072)) + ((((int)blockIdx.x) & 7) * 384)) + ((((int)threadIdx.x) & 31) * 4)) + ax2_inner) + 128))] = (compute[((((ax1_inner * 4) + ax2_inner) + 16))] + placeholder2[((((((((int)blockIdx.x) & 7) * 384) + ((((int)threadIdx.x) & 31) * 4)) + ax2_inner) + 128))]);
      T_add[((((((((((((int)threadIdx.x) >> 6) * 393216) + ((((int)blockIdx.x) >> 3) * 24576)) + (((((int)threadIdx.x) & 63) >> 5) * 12288)) + (ax1_inner * 3072)) + ((((int)blockIdx.x) & 7) * 384)) + ((((int)threadIdx.x) & 31) * 4)) + ax2_inner) + 256))] = (compute[((((ax1_inner * 4) + ax2_inner) + 32))] + placeholder2[((((((((int)blockIdx.x) & 7) * 384) + ((((int)threadIdx.x) & 31) * 4)) + ax2_inner) + 256))]);
    }
  }
}


