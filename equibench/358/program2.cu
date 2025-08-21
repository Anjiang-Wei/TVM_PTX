
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
  float compute_local[8];
  __shared__ float placeholder_d_shared[512];
  __shared__ float placeholder_shared[256];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 64; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[((((int)threadIdx.x) * 16))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 3) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((int)threadIdx.x) & 7) * 1024)) + (k_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 1))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 3) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((int)threadIdx.x) & 7) * 1024)) + (k_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 2))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 1) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 1) & 63) * 128)) + (k_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 3))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 1) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 1) & 63) * 128)) + (k_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 4))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 2) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 2) & 63) * 128)) + (k_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 5))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 2) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 2) & 63) * 128)) + (k_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 6))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 3) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 3) & 63) * 128)) + (k_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 7))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 3) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 3) & 63) * 128)) + (k_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 8))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 4) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 4) & 63) * 128)) + (k_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 9))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 4) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 4) & 63) * 128)) + (k_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 10))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 5) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 5) & 63) * 128)) + (k_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 11))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 5) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 5) & 63) * 128)) + (k_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 12))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 6) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 6) & 63) * 128)) + (k_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 13))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 6) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 6) & 63) * 128)) + (k_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 14))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 7) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 7) & 63) * 128)) + (k_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_d_shared[(((((int)threadIdx.x) * 16) + 15))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 65536) + ((((((int)threadIdx.x) * 8) + 7) >> 6) * 16384)) + (((((int)blockIdx.x) & 3) >> 1) * 8192)) + ((((((int)threadIdx.x) * 8) + 7) & 63) * 128)) + (k_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[((((int)threadIdx.x) * 4))] = placeholder1[(((((((((int)blockIdx.x) >> 2) * 32768) + ((((int)threadIdx.x) >> 4) * 8192)) + ((((int)blockIdx.x) & 1) * 4096)) + ((((int)threadIdx.x) & 15) * 256)) + (k_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 1))] = placeholder1[((((((((((int)blockIdx.x) >> 2) * 32768) + ((((int)threadIdx.x) >> 4) * 8192)) + ((((int)blockIdx.x) & 1) * 4096)) + ((((int)threadIdx.x) & 15) * 256)) + (k_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 2))] = placeholder1[(((((((((int)blockIdx.x) >> 2) * 32768) + ((((((int)threadIdx.x) * 2) + 1) >> 5) * 8192)) + ((((int)blockIdx.x) & 1) * 4096)) + ((((((int)threadIdx.x) * 2) + 1) & 31) * 128)) + (k_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 3))] = placeholder1[((((((((((int)blockIdx.x) >> 2) * 32768) + ((((((int)threadIdx.x) * 2) + 1) >> 5) * 8192)) + ((((int)blockIdx.x) & 1) * 4096)) + ((((((int)threadIdx.x) * 2) + 1) & 31) * 128)) + (k_outer_outer * 2)) + 1))];
    }
    __syncthreads();
    compute_local[(0)] = (compute_local[(0)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)))] * placeholder_shared[((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
    compute_local[(2)] = (compute_local[(2)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
    compute_local[(4)] = (compute_local[(4)] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)) + 64))] * placeholder_shared[((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
    compute_local[(6)] = (compute_local[(6)] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)) + 64))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
    compute_local[(1)] = (compute_local[(1)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
    compute_local[(3)] = (compute_local[(3)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
    compute_local[(5)] = (compute_local[(5)] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)) + 64))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
    compute_local[(7)] = (compute_local[(7)] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)) + 64))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
    compute_local[(0)] = (compute_local[(0)] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)) + 1))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
    compute_local[(2)] = (compute_local[(2)] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)) + 1))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
    compute_local[(4)] = (compute_local[(4)] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)) + 65))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
    compute_local[(6)] = (compute_local[(6)] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)) + 65))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
    compute_local[(1)] = (compute_local[(1)] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)) + 1))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
    compute_local[(3)] = (compute_local[(3)] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)) + 1))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
    compute_local[(5)] = (compute_local[(5)] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)) + 65))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
    compute_local[(7)] = (compute_local[(7)] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 8) * 128) + (((((int)threadIdx.x) & 255) >> 3) * 2)) + 65))] * placeholder_shared[(((((((int)threadIdx.x) >> 8) * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
  }
  for (int j_inner = 0; j_inner < 2; ++j_inner) {
    compute[(((((((((((int)blockIdx.x) >> 2) * 32768) + ((((int)threadIdx.x) >> 8) * 8192)) + (((((int)blockIdx.x) & 3) >> 1) * 4096)) + (((((int)threadIdx.x) & 255) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 2)) + j_inner))] = compute_local[(j_inner)];
    compute[((((((((((((int)blockIdx.x) >> 2) * 32768) + ((((int)threadIdx.x) >> 8) * 8192)) + (((((int)blockIdx.x) & 3) >> 1) * 4096)) + (((((int)threadIdx.x) & 255) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 2)) + j_inner) + 16))] = compute_local[((j_inner + 2))];
    compute[((((((((((((int)blockIdx.x) >> 2) * 32768) + ((((int)threadIdx.x) >> 8) * 8192)) + (((((int)blockIdx.x) & 3) >> 1) * 4096)) + (((((int)threadIdx.x) & 255) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 2)) + j_inner) + 2048))] = compute_local[((j_inner + 4))];
    compute[((((((((((((int)blockIdx.x) >> 2) * 32768) + ((((int)threadIdx.x) >> 8) * 8192)) + (((((int)blockIdx.x) & 3) >> 1) * 4096)) + (((((int)threadIdx.x) & 255) >> 3) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 7) * 2)) + j_inner) + 2064))] = compute_local[((j_inner + 6))];
  }
}


