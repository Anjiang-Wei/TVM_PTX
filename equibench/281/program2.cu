
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_multiply, float* __restrict__ compute, float* __restrict__ placeholder) {
  T_multiply[(((int)blockIdx.x))] = ((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * (5.000000e-01f + (((max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * (((max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * -2.726142e-10f) + 2.770681e-08f)) + -2.101024e-06f)) + -5.692506e-05f)) + -7.349906e-04f)) + -2.954600e-03f)) + -1.609603e-02f)) / (((max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * -1.456607e-05f) + -2.133740e-04f)) + -1.682827e-03f)) + -7.373329e-03f)) + -1.426474e-02f)) * 5.000000e-01f)));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute) {
  float compute_local[128];
  __shared__ float placeholder_d_shared[8192];
  __shared__ float placeholder_shared[1024];
  for (int b_c_outer_inner_init = 0; b_c_outer_inner_init < 2; ++b_c_outer_inner_init) {
    for (int j_c_outer_inner_init = 0; j_c_outer_inner_init < 16; ++j_c_outer_inner_init) {
      compute_local[(((b_c_outer_inner_init * 64) + (j_c_outer_inner_init * 2)))] = 0.000000e+00f;
      compute_local[((((b_c_outer_inner_init * 64) + (j_c_outer_inner_init * 2)) + 1))] = 0.000000e+00f;
      compute_local[((((b_c_outer_inner_init * 64) + (j_c_outer_inner_init * 2)) + 32))] = 0.000000e+00f;
      compute_local[((((b_c_outer_inner_init * 64) + (j_c_outer_inner_init * 2)) + 33))] = 0.000000e+00f;
    }
  }
  for (int k_outer_outer = 0; k_outer_outer < 32; ++k_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_outer_outer < 128; ++ax0_ax1_fused_ax2_fused_outer_outer) {
      placeholder_d_shared[(((ax0_ax1_fused_ax2_fused_outer_outer * 64) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_outer_outer * 2) + (((int)threadIdx.x) >> 5)) >> 7) * 262144) + ((((int)blockIdx.x) >> 7) * 131072)) + ((((ax0_ax1_fused_ax2_fused_outer_outer * 2) + (((int)threadIdx.x) >> 5)) & 127) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 2048))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 4096))];
    placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 6144))];
    placeholder_shared[((((int)threadIdx.x) + 256))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 8192))];
    placeholder_shared[((((int)threadIdx.x) + 320))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 10240))];
    placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 12288))];
    placeholder_shared[((((int)threadIdx.x) + 448))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 14336))];
    placeholder_shared[((((int)threadIdx.x) + 512))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 16384))];
    placeholder_shared[((((int)threadIdx.x) + 576))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 18432))];
    placeholder_shared[((((int)threadIdx.x) + 640))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 20480))];
    placeholder_shared[((((int)threadIdx.x) + 704))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 22528))];
    placeholder_shared[((((int)threadIdx.x) + 768))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 24576))];
    placeholder_shared[((((int)threadIdx.x) + 832))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 26624))];
    placeholder_shared[((((int)threadIdx.x) + 896))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 28672))];
    placeholder_shared[((((int)threadIdx.x) + 960))] = placeholder1[(((((((((int)blockIdx.x) & 127) * 32768) + ((((int)threadIdx.x) >> 5) * 1024)) + (k_outer_outer * 32)) + (((int)threadIdx.x) & 31)) + 30720))];
    __syncthreads();
    for (int k_outer_inner = 0; k_outer_inner < 8; ++k_outer_inner) {
      for (int b_c_outer_inner = 0; b_c_outer_inner < 2; ++b_c_outer_inner) {
        for (int j_c_outer_inner = 0; j_c_outer_inner < 16; ++j_c_outer_inner) {
          compute_local[(((b_c_outer_inner * 64) + (j_c_outer_inner * 2)))] = (compute_local[(((b_c_outer_inner * 64) + (j_c_outer_inner * 2)))] + (placeholder_d_shared[((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)))] * placeholder_shared[(((j_c_outer_inner * 64) + (k_outer_inner * 4)))]));
          compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 1))] = (compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 1))] + (placeholder_d_shared[((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 32))]));
          compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 32))] = (compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 32))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 32))] * placeholder_shared[(((j_c_outer_inner * 64) + (k_outer_inner * 4)))]));
          compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 33))] = (compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 33))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 32))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 32))]));
          compute_local[(((b_c_outer_inner * 64) + (j_c_outer_inner * 2)))] = (compute_local[(((b_c_outer_inner * 64) + (j_c_outer_inner * 2)))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 1))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 1))]));
          compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 1))] = (compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 1))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 1))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 33))]));
          compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 32))] = (compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 32))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 33))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 1))]));
          compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 33))] = (compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 33))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 33))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 33))]));
          compute_local[(((b_c_outer_inner * 64) + (j_c_outer_inner * 2)))] = (compute_local[(((b_c_outer_inner * 64) + (j_c_outer_inner * 2)))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 2))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 2))]));
          compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 1))] = (compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 1))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 2))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 34))]));
          compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 32))] = (compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 32))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 34))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 2))]));
          compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 33))] = (compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 33))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 34))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 34))]));
          compute_local[(((b_c_outer_inner * 64) + (j_c_outer_inner * 2)))] = (compute_local[(((b_c_outer_inner * 64) + (j_c_outer_inner * 2)))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 3))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 3))]));
          compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 1))] = (compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 1))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 3))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 35))]));
          compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 32))] = (compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 32))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 35))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 3))]));
          compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 33))] = (compute_local[((((b_c_outer_inner * 64) + (j_c_outer_inner * 2)) + 33))] + (placeholder_d_shared[(((((b_c_outer_inner * 4096) + (((int)threadIdx.x) * 64)) + (k_outer_inner * 4)) + 35))] * placeholder_shared[((((j_c_outer_inner * 64) + (k_outer_inner * 4)) + 35))]));
        }
      }
    }
  }
  for (int b_inner = 0; b_inner < 2; ++b_inner) {
    for (int i_inner = 0; i_inner < 2; ++i_inner) {
      for (int j_inner = 0; j_inner < 32; ++j_inner) {
        compute[(((((((b_inner * 1048576) + ((((int)blockIdx.x) >> 7) * 524288)) + (((int)threadIdx.x) * 8192)) + (i_inner * 4096)) + ((((int)blockIdx.x) & 127) * 32)) + j_inner))] = compute_local[((((b_inner * 64) + (i_inner * 32)) + j_inner))];
      }
    }
  }
}


