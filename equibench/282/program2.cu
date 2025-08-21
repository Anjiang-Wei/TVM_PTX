
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
  T_multiply[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] = ((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * (5.000000e-01f + (((max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * (((max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * -2.726142e-10f) + 2.770681e-08f)) + -2.101024e-06f)) + -5.692506e-05f)) + -7.349906e-04f)) + -2.954600e-03f)) + -1.609603e-02f)) / (((max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * (((max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f) * max(min(((compute[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) & 4095))]) * 7.071068e-01f), 4.000000e+00f), -4.000000e+00f)) * -1.456607e-05f) + -2.133740e-04f)) + -1.682827e-03f)) + -7.373329e-03f)) + -1.426474e-02f)) * 5.000000e-01f)));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute) {
  float compute_local[256];
  __shared__ float placeholder_d_shared[256];
  __shared__ float placeholder_shared[1024];
  for (int i_c_outer_inner_init = 0; i_c_outer_inner_init < 2; ++i_c_outer_inner_init) {
    for (int j_c_outer_inner_init = 0; j_c_outer_inner_init < 4; ++j_c_outer_inner_init) {
      compute_local[(((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 64))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 128))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 192))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 1))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 65))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 129))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 193))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 2))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 66))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 130))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 194))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 3))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 67))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 131))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 195))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 32))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 96))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 160))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 224))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 33))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 97))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 161))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 225))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 34))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 98))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 162))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 226))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 35))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 99))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 163))] = 0.000000e+00f;
      compute_local[((((i_c_outer_inner_init * 16) + (j_c_outer_inner_init * 4)) + 227))] = 0.000000e+00f;
    }
  }
  for (int k_outer_outer = 0; k_outer_outer < 1024; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 256) {
      placeholder_d_shared[(((int)threadIdx.x))] = placeholder[((((((((int)threadIdx.x) >> 7) * 262144) + ((((int)blockIdx.x) >> 2) * 131072)) + ((((int)threadIdx.x) & 127) * 1024)) + k_outer_outer))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[((((int)threadIdx.x) * 16))] = placeholder1[(((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 1))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 1024))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 2))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 2048))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 3))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 3072))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 4))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 4096))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 5))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 5120))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 6))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 6144))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 7))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 7168))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 8))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 8192))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 9))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 9216))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 10))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 10240))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 11))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 11264))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 12))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 12288))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 13))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 13312))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 14))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 14336))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 15))] = placeholder1[((((((((int)blockIdx.x) & 3) * 1048576) + (((int)threadIdx.x) * 16384)) + k_outer_outer) + 15360))];
    }
    __syncthreads();
    for (int i_c_outer_inner = 0; i_c_outer_inner < 2; ++i_c_outer_inner) {
      for (int j_c_outer_inner = 0; j_c_outer_inner < 4; ++j_c_outer_inner) {
        compute_local[(((i_c_outer_inner * 16) + (j_c_outer_inner * 4)))] = (compute_local[(((i_c_outer_inner * 16) + (j_c_outer_inner * 4)))] + (placeholder_d_shared[((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 64))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 64))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 32))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 128))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 128))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 64))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 192))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 192))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 96))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 1))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 1))] + (placeholder_d_shared[((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 1))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 65))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 65))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 32))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 1))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 129))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 129))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 64))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 1))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 193))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 193))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 96))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 1))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 2))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 2))] + (placeholder_d_shared[((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 2))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 66))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 66))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 32))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 2))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 130))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 130))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 64))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 2))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 194))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 194))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 96))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 2))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 3))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 3))] + (placeholder_d_shared[((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 3))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 67))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 67))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 32))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 3))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 131))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 131))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 64))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 3))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 195))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 195))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 96))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 3))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 32))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 32))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 96))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 96))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 160))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 160))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 160))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 192))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 224))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 224))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 224))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 33))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 33))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 128))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 1))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 97))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 97))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 160))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 1))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 161))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 161))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 192))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 1))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 225))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 225))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 224))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 1))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 34))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 34))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 128))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 2))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 98))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 98))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 160))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 2))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 162))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 162))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 192))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 2))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 226))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 226))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 224))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 2))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 35))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 35))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 128))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 3))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 99))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 99))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 160))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 3))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 163))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 163))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 192))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 3))]));
        compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 227))] = (compute_local[((((i_c_outer_inner * 16) + (j_c_outer_inner * 4)) + 227))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 2) + i_c_outer_inner) + 224))] * placeholder_shared[(((((((int)threadIdx.x) & 63) * 16) + (j_c_outer_inner * 4)) + 3))]));
      }
    }
  }
  for (int b_inner = 0; b_inner < 2; ++b_inner) {
    for (int i_inner = 0; i_inner < 2; ++i_inner) {
      for (int j_inner = 0; j_inner < 16; ++j_inner) {
        compute[((((((((b_inner * 1048576) + ((((int)blockIdx.x) >> 2) * 524288)) + ((((int)threadIdx.x) >> 6) * 8192)) + (i_inner * 4096)) + ((((int)blockIdx.x) & 3) * 1024)) + ((((int)threadIdx.x) & 63) * 16)) + j_inner))] = compute_local[((((b_inner * 32) + (i_inner * 16)) + j_inner))];
        compute[(((((((((b_inner * 1048576) + ((((int)blockIdx.x) >> 2) * 524288)) + ((((int)threadIdx.x) >> 6) * 8192)) + (i_inner * 4096)) + ((((int)blockIdx.x) & 3) * 1024)) + ((((int)threadIdx.x) & 63) * 16)) + j_inner) + 131072))] = compute_local[(((((b_inner * 32) + (i_inner * 16)) + j_inner) + 64))];
        compute[(((((((((b_inner * 1048576) + ((((int)blockIdx.x) >> 2) * 524288)) + ((((int)threadIdx.x) >> 6) * 8192)) + (i_inner * 4096)) + ((((int)blockIdx.x) & 3) * 1024)) + ((((int)threadIdx.x) & 63) * 16)) + j_inner) + 262144))] = compute_local[(((((b_inner * 32) + (i_inner * 16)) + j_inner) + 128))];
        compute[(((((((((b_inner * 1048576) + ((((int)blockIdx.x) >> 2) * 524288)) + ((((int)threadIdx.x) >> 6) * 8192)) + (i_inner * 4096)) + ((((int)blockIdx.x) & 3) * 1024)) + ((((int)threadIdx.x) & 63) * 16)) + j_inner) + 393216))] = compute_local[(((((b_inner * 32) + (i_inner * 16)) + j_inner) + 192))];
      }
    }
  }
}


