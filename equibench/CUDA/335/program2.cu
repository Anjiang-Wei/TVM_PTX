
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu) {
  float T_dense[16];
  __shared__ float placeholder_d_shared[16];
  __shared__ float placeholder_shared[192];
  for (int i_inner_init = 0; i_inner_init < 8; ++i_inner_init) {
    for (int j_inner_init = 0; j_inner_init < 2; ++j_inner_init) {
      T_dense[(((i_inner_init * 2) + j_inner_init))] = 0.000000e+00f;
    }
  }
  for (int k_outer_outer = 0; k_outer_outer < 50; ++k_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_inner_s = 0; ax0_ax1_fused_inner_s < 16; ++ax0_ax1_fused_inner_s) {
      if (((((int)threadIdx.x) * 8) + (ax0_ax1_fused_inner_s >> 1)) < 8) {
        if (((((int)threadIdx.x) * 16) + ax0_ax1_fused_inner_s) < 16) {
          if (((int)threadIdx.x) < 1) {
            placeholder_d_shared[(((((int)threadIdx.x) * 16) + ax0_ax1_fused_inner_s))] = placeholder[(((((((int)threadIdx.x) * 800) + ((ax0_ax1_fused_inner_s >> 1) * 100)) + (k_outer_outer * 2)) + (ax0_ax1_fused_inner_s & 1)))];
          }
        }
      }
    }
    for (int ax0_ax1_fused_inner_s1 = 0; ax0_ax1_fused_inner_s1 < 20; ++ax0_ax1_fused_inner_s1) {
      if (((((int)threadIdx.x) * 10) + (ax0_ax1_fused_inner_s1 >> 1)) < 96) {
        if (((((int)threadIdx.x) * 20) + ax0_ax1_fused_inner_s1) < 192) {
          if (((int)threadIdx.x) < 10) {
            if ((((((int)blockIdx.x) * 96) + (((int)threadIdx.x) * 10)) + (ax0_ax1_fused_inner_s1 >> 1)) < 36864) {
              placeholder_shared[(((((int)threadIdx.x) * 20) + ax0_ax1_fused_inner_s1))] = placeholder1[((((((((int)blockIdx.x) * 9600) + (((int)threadIdx.x) * 1000)) + ((ax0_ax1_fused_inner_s1 >> 1) * 100)) + (k_outer_outer * 2)) + (ax0_ax1_fused_inner_s1 & 1)))];
            }
          }
        }
      }
    }
    __syncthreads();
    for (int k_inner = 0; k_inner < 2; ++k_inner) {
      for (int i_inner = 0; i_inner < 8; ++i_inner) {
        for (int j_inner = 0; j_inner < 2; ++j_inner) {
          T_dense[(((i_inner * 2) + j_inner))] = (T_dense[(((i_inner * 2) + j_inner))] + (placeholder_d_shared[(((i_inner * 2) + k_inner))] * placeholder_shared[((((((int)threadIdx.x) * 4) + (j_inner * 2)) + k_inner))]));
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 8; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
      T_relu[(((((ax0_inner * 36864) + (((int)blockIdx.x) * 96)) + (((int)threadIdx.x) * 2)) + ax1_inner))] = max(T_dense[(((ax0_inner * 2) + ax1_inner))], 0.000000e+00f);
    }
  }
}


