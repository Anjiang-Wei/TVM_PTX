
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
  for (int k_outer_outer = 0; k_outer_outer < 8; ++k_outer_outer) {
    __syncthreads();
    placeholder_d_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_d_shared[((((int)threadIdx.x) + 32))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 256))];
    placeholder_d_shared[((((int)threadIdx.x) + 64))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 512))];
    placeholder_d_shared[((((int)threadIdx.x) + 96))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 768))];
    placeholder_d_shared[((((int)threadIdx.x) + 128))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 1024))];
    placeholder_d_shared[((((int)threadIdx.x) + 160))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 1280))];
    placeholder_d_shared[((((int)threadIdx.x) + 192))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 1536))];
    placeholder_d_shared[((((int)threadIdx.x) + 224))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 1792))];
    placeholder_d_shared[((((int)threadIdx.x) + 256))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 16384))];
    placeholder_d_shared[((((int)threadIdx.x) + 288))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)threadIdx.x) + 288) >> 8) * 16384)) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + (((((int)threadIdx.x) >> 4) + 2) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_d_shared[((((int)threadIdx.x) + 320))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)threadIdx.x) + 320) >> 8) * 16384)) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + (((((int)threadIdx.x) >> 4) + 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_d_shared[((((int)threadIdx.x) + 352))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)threadIdx.x) + 352) >> 8) * 16384)) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + (((((int)threadIdx.x) >> 4) + 6) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_d_shared[((((int)threadIdx.x) + 384))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)threadIdx.x) + 384) >> 8) * 16384)) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + (((((int)threadIdx.x) >> 4) + 8) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_d_shared[((((int)threadIdx.x) + 416))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)threadIdx.x) + 416) >> 8) * 16384)) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + (((((int)threadIdx.x) >> 4) + 10) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_d_shared[((((int)threadIdx.x) + 448))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)threadIdx.x) + 448) >> 8) * 16384)) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + (((((int)threadIdx.x) >> 4) + 12) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_d_shared[((((int)threadIdx.x) + 480))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 32768) + (((((int)threadIdx.x) + 480) >> 8) * 16384)) + (((((int)blockIdx.x) & 63) >> 3) * 2048)) + (((((int)threadIdx.x) >> 4) + 14) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((((((int)blockIdx.x) >> 6) * 16384) + ((((int)blockIdx.x) & 7) * 1024)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_shared[((((int)threadIdx.x) + 32))] = placeholder1[((((((((((int)blockIdx.x) >> 6) * 16384) + ((((int)blockIdx.x) & 7) * 1024)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 256))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[((((((((((int)blockIdx.x) >> 6) * 16384) + ((((int)blockIdx.x) & 7) * 1024)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 512))];
    placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[((((((((((int)blockIdx.x) >> 6) * 16384) + ((((int)blockIdx.x) & 7) * 1024)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 768))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[((((((((((int)blockIdx.x) >> 6) * 16384) + ((((int)blockIdx.x) & 7) * 1024)) + ((((int)threadIdx.x) >> 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 8192))];
    placeholder_shared[((((int)threadIdx.x) + 160))] = placeholder1[((((((((((int)blockIdx.x) >> 6) * 16384) + (((((int)threadIdx.x) + 160) >> 7) * 8192)) + ((((int)blockIdx.x) & 7) * 1024)) + (((((int)threadIdx.x) >> 4) + 2) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[((((((((((int)blockIdx.x) >> 6) * 16384) + (((((int)threadIdx.x) + 192) >> 7) * 8192)) + ((((int)blockIdx.x) & 7) * 1024)) + (((((int)threadIdx.x) >> 4) + 4) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[((((((((((int)blockIdx.x) >> 6) * 16384) + (((((int)threadIdx.x) + 224) >> 7) * 8192)) + ((((int)blockIdx.x) & 7) * 1024)) + (((((int)threadIdx.x) >> 4) + 6) * 128)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    __syncthreads();
    for (int k_outer_inner = 0; k_outer_inner < 2; ++k_outer_inner) {
      for (int b_c_outer_inner = 0; b_c_outer_inner < 2; ++b_c_outer_inner) {
        for (int k_inner = 0; k_inner < 8; ++k_inner) {
          compute_local[(b_c_outer_inner)] = (compute_local[(b_c_outer_inner)] + (placeholder_d_shared[(((((b_c_outer_inner * 256) + ((((int)threadIdx.x) >> 3) * 16)) + (k_outer_inner * 8)) + k_inner))] * placeholder_shared[(((((b_c_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (k_outer_inner * 8)) + k_inner))]));
          compute_local[((b_c_outer_inner + 2))] = (compute_local[((b_c_outer_inner + 2))] + (placeholder_d_shared[((((((b_c_outer_inner * 256) + ((((int)threadIdx.x) >> 3) * 16)) + (k_outer_inner * 8)) + k_inner) + 64))] * placeholder_shared[(((((b_c_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (k_outer_inner * 8)) + k_inner))]));
          compute_local[((b_c_outer_inner + 4))] = (compute_local[((b_c_outer_inner + 4))] + (placeholder_d_shared[((((((b_c_outer_inner * 256) + ((((int)threadIdx.x) >> 3) * 16)) + (k_outer_inner * 8)) + k_inner) + 128))] * placeholder_shared[(((((b_c_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (k_outer_inner * 8)) + k_inner))]));
          compute_local[((b_c_outer_inner + 6))] = (compute_local[((b_c_outer_inner + 6))] + (placeholder_d_shared[((((((b_c_outer_inner * 256) + ((((int)threadIdx.x) >> 3) * 16)) + (k_outer_inner * 8)) + k_inner) + 192))] * placeholder_shared[(((((b_c_outer_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + (k_outer_inner * 8)) + k_inner))]));
        }
      }
    }
  }
  for (int b_inner = 0; b_inner < 2; ++b_inner) {
    compute[((((((((((int)blockIdx.x) >> 6) * 16384) + (b_inner * 8192)) + (((((int)blockIdx.x) & 63) >> 3) * 1024)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 7) * 8)) + (((int)threadIdx.x) & 7)))] = compute_local[(b_inner)];
    compute[(((((((((((int)blockIdx.x) >> 6) * 16384) + (b_inner * 8192)) + (((((int)blockIdx.x) & 63) >> 3) * 1024)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 7) * 8)) + (((int)threadIdx.x) & 7)) + 256))] = compute_local[((b_inner + 2))];
    compute[(((((((((((int)blockIdx.x) >> 6) * 16384) + (b_inner * 8192)) + (((((int)blockIdx.x) & 63) >> 3) * 1024)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 7) * 8)) + (((int)threadIdx.x) & 7)) + 512))] = compute_local[((b_inner + 4))];
    compute[(((((((((((int)blockIdx.x) >> 6) * 16384) + (b_inner * 8192)) + (((((int)blockIdx.x) & 63) >> 3) * 1024)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)blockIdx.x) & 7) * 8)) + (((int)threadIdx.x) & 7)) + 768))] = compute_local[((b_inner + 6))];
  }
}


