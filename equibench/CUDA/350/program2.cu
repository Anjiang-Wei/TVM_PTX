
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
  float compute_local[16];
  __shared__ float placeholder_d_shared[2048];
  __shared__ float placeholder_shared[4096];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  compute_local[(14)] = 0.000000e+00f;
  compute_local[(15)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 16; ++k_outer_outer) {
    __syncthreads();
    placeholder_d_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 131072) + ((((int)threadIdx.x) >> 8) * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + (((((int)threadIdx.x) & 255) >> 3) * 128)) + (k_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    placeholder_d_shared[((((int)threadIdx.x) + 1024))] = placeholder[(((((((((((int)blockIdx.x) >> 2) * 131072) + ((((int)threadIdx.x) >> 8) * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + (((((int)threadIdx.x) & 255) >> 3) * 128)) + (k_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 65536))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 3) * 128)) + (k_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    placeholder_shared[((((int)threadIdx.x) + 1024))] = placeholder1[(((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 3) * 128)) + (k_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 16384))];
    placeholder_shared[((((int)threadIdx.x) + 2048))] = placeholder1[(((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 3) * 128)) + (k_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 32768))];
    placeholder_shared[((((int)threadIdx.x) + 3072))] = placeholder1[(((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 3) * 128)) + (k_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 49152))];
    __syncthreads();
    for (int i_c_outer_inner = 0; i_c_outer_inner < 4; ++i_c_outer_inner) {
      for (int k_inner = 0; k_inner < 8; ++k_inner) {
        compute_local[((i_c_outer_inner * 4))] = (compute_local[((i_c_outer_inner * 4))] + (placeholder_d_shared[(((((((int)threadIdx.x) >> 6) * 128) + (i_c_outer_inner * 32)) + k_inner))] * placeholder_shared[(((((((int)threadIdx.x) >> 7) * 512) + ((((int)threadIdx.x) & 63) * 8)) + k_inner))]));
        compute_local[(((i_c_outer_inner * 4) + 1))] = (compute_local[(((i_c_outer_inner * 4) + 1))] + (placeholder_d_shared[((((((((int)threadIdx.x) >> 6) * 128) + (i_c_outer_inner * 32)) + k_inner) + 8))] * placeholder_shared[(((((((int)threadIdx.x) >> 7) * 512) + ((((int)threadIdx.x) & 63) * 8)) + k_inner))]));
        compute_local[(((i_c_outer_inner * 4) + 2))] = (compute_local[(((i_c_outer_inner * 4) + 2))] + (placeholder_d_shared[((((((((int)threadIdx.x) >> 6) * 128) + (i_c_outer_inner * 32)) + k_inner) + 16))] * placeholder_shared[(((((((int)threadIdx.x) >> 7) * 512) + ((((int)threadIdx.x) & 63) * 8)) + k_inner))]));
        compute_local[(((i_c_outer_inner * 4) + 3))] = (compute_local[(((i_c_outer_inner * 4) + 3))] + (placeholder_d_shared[((((((((int)threadIdx.x) >> 6) * 128) + (i_c_outer_inner * 32)) + k_inner) + 24))] * placeholder_shared[(((((((int)threadIdx.x) >> 7) * 512) + ((((int)threadIdx.x) & 63) * 8)) + k_inner))]));
      }
    }
  }
  for (int i_inner = 0; i_inner < 16; ++i_inner) {
    compute[((((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 7) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) & 127) >> 6) * 1024)) + (i_inner * 64)) + (((int)threadIdx.x) & 63)))] = compute_local[(i_inner)];
  }
}


