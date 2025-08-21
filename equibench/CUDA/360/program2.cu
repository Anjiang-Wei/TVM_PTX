
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float conv2d_transpose_nhwc[48];
  __shared__ float PadInput_shared[896];
  __shared__ float placeholder_shared[512];
  for (int w_inner_init = 0; w_inner_init < 24; ++w_inner_init) {
    conv2d_transpose_nhwc[(w_inner_init)] = 0.000000e+00f;
    conv2d_transpose_nhwc[((w_inner_init + 24))] = 0.000000e+00f;
  }
  for (int rh_outer_outer = 0; rh_outer_outer < 2; ++rh_outer_outer) {
    for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
      __syncthreads();
      PadInput_shared[(((int)threadIdx.x))] = (((((1 <= ((((((int)blockIdx.x) >> 4) * 3) + (((int)threadIdx.x) / 56)) + rh_outer_outer)) && (((((((int)blockIdx.x) >> 4) * 3) + (((int)threadIdx.x) / 56)) + rh_outer_outer) < 13)) && (4 <= (((int)threadIdx.x) % 56))) && ((((int)threadIdx.x) % 56) < 52)) ? placeholder[(((((((((((int)blockIdx.x) >> 4) * 18432) + ((((int)threadIdx.x) / 56) * 6144)) + (rh_outer_outer * 6144)) + (((((int)threadIdx.x) % 56) >> 2) * 512)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 6656))] : 0.000000e+00f);
      PadInput_shared[((((int)threadIdx.x) + 192))] = (((((1 <= ((((((int)blockIdx.x) >> 4) * 3) + ((((((int)threadIdx.x) >> 2) + 48) % 56) / 14)) + rh_outer_outer)) && (((((((int)blockIdx.x) >> 4) * 3) + ((((((int)threadIdx.x) >> 2) + 48) % 56) / 14)) + rh_outer_outer) < 13)) && (1 <= (((((int)threadIdx.x) >> 2) + 6) % 14))) && ((((((int)threadIdx.x) >> 2) + 6) % 14) < 13)) ? placeholder[(((((((((((((int)threadIdx.x) + 192) / 224) * 73728) + ((((int)blockIdx.x) >> 4) * 18432)) + (((((((int)threadIdx.x) >> 2) + 48) % 56) / 14) * 6144)) + (rh_outer_outer * 6144)) + ((((((int)threadIdx.x) >> 2) + 6) % 14) * 512)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 6656))] : 0.000000e+00f);
      PadInput_shared[((((int)threadIdx.x) + 384))] = (((((1 <= ((((((int)blockIdx.x) >> 4) * 3) + ((((((int)threadIdx.x) >> 2) + 40) % 56) / 14)) + rh_outer_outer)) && (((((((int)blockIdx.x) >> 4) * 3) + ((((((int)threadIdx.x) >> 2) + 40) % 56) / 14)) + rh_outer_outer) < 13)) && (1 <= (((((int)threadIdx.x) >> 2) + 12) % 14))) && ((((((int)threadIdx.x) >> 2) + 12) % 14) < 13)) ? placeholder[(((((((((((((int)threadIdx.x) + 384) / 224) * 73728) + ((((int)blockIdx.x) >> 4) * 18432)) + (((((((int)threadIdx.x) >> 2) + 40) % 56) / 14) * 6144)) + (rh_outer_outer * 6144)) + ((((((int)threadIdx.x) >> 2) + 12) % 14) * 512)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 6656))] : 0.000000e+00f);
      PadInput_shared[((((int)threadIdx.x) + 576))] = (((((1 <= ((((((int)blockIdx.x) >> 4) * 3) + ((((((int)threadIdx.x) >> 2) + 32) % 56) / 14)) + rh_outer_outer)) && (((((((int)blockIdx.x) >> 4) * 3) + ((((((int)threadIdx.x) >> 2) + 32) % 56) / 14)) + rh_outer_outer) < 13)) && (1 <= (((((int)threadIdx.x) >> 2) + 4) % 14))) && ((((((int)threadIdx.x) >> 2) + 4) % 14) < 13)) ? placeholder[(((((((((((((int)threadIdx.x) + 576) / 224) * 73728) + ((((int)blockIdx.x) >> 4) * 18432)) + (((((((int)threadIdx.x) >> 2) + 32) % 56) / 14) * 6144)) + (rh_outer_outer * 6144)) + ((((((int)threadIdx.x) >> 2) + 4) % 14) * 512)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 6656))] : 0.000000e+00f);
      if (((int)threadIdx.x) < 128) {
        PadInput_shared[((((int)threadIdx.x) + 768))] = ((((((((((int)blockIdx.x) >> 4) * 3) + (((((int)threadIdx.x) >> 2) + 24) / 14)) + rh_outer_outer) < 13) && (1 <= (((((int)threadIdx.x) >> 2) + 10) % 14))) && ((((((int)threadIdx.x) >> 2) + 10) % 14) < 13)) ? placeholder[(((((((((((((int)threadIdx.x) + 768) / 224) * 73728) + ((((int)blockIdx.x) >> 4) * 18432)) + ((((((int)threadIdx.x) >> 2) + 24) / 14) * 6144)) + (rh_outer_outer * 6144)) + ((((((int)threadIdx.x) >> 2) + 10) % 14) * 512)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 6656))] : 0.000000e+00f);
      }
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((((((((int)threadIdx.x) >> 6) * 131072) + (rc_outer_outer * 1024)) + (((((int)threadIdx.x) & 63) >> 4) * 256)) + ((((int)blockIdx.x) & 15) * 16)) + (((int)threadIdx.x) & 15)) + 1048576) - (rh_outer_outer * 1048576)))];
      placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[(((((((((((int)threadIdx.x) >> 6) * 131072) + (rc_outer_outer * 1024)) + (((((int)threadIdx.x) & 63) >> 4) * 256)) + ((((int)blockIdx.x) & 15) * 16)) + (((int)threadIdx.x) & 15)) + 1441792) - (rh_outer_outer * 1048576)))];
      if (((int)threadIdx.x) < 128) {
        placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[(((((((((((int)threadIdx.x) >> 6) * 131072) + (rc_outer_outer * 1024)) + (((((int)threadIdx.x) & 63) >> 4) * 256)) + ((((int)blockIdx.x) & 15) * 16)) + (((int)threadIdx.x) & 15)) + 1835008) - (rh_outer_outer * 1048576)))];
      }
      __syncthreads();
      for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
        for (int rh_inner = 0; rh_inner < 2; ++rh_inner) {
          for (int rw_inner = 0; rw_inner < 4; ++rw_inner) {
            for (int w_inner = 0; w_inner < 24; ++w_inner) {
              conv2d_transpose_nhwc[(w_inner)] = (conv2d_transpose_nhwc[(w_inner)] + ((((((((((int)threadIdx.x) % 48) >> 3) + rh_inner) % 2) == 0) && (((w_inner + rw_inner) % 2) == 0)) ? PadInput_shared[((((((((int)threadIdx.x) / 48) * 224) + (((((((int)threadIdx.x) % 48) >> 3) + rh_inner) >> 1) * 56)) + (((w_inner + rw_inner) >> 1) * 4)) + rc_outer_inner))] : 0.000000e+00f) * placeholder_shared[((((((rc_outer_inner * 16) + (((int)threadIdx.x) & 7)) + 448) - (rw_inner * 64)) - (rh_inner * 256)))]));
              conv2d_transpose_nhwc[((w_inner + 24))] = (conv2d_transpose_nhwc[((w_inner + 24))] + ((((((((((int)threadIdx.x) % 48) >> 3) + rh_inner) % 2) == 0) && (((w_inner + rw_inner) % 2) == 0)) ? PadInput_shared[((((((((int)threadIdx.x) / 48) * 224) + (((((((int)threadIdx.x) % 48) >> 3) + rh_inner) >> 1) * 56)) + (((w_inner + rw_inner) >> 1) * 4)) + rc_outer_inner))] : 0.000000e+00f) * placeholder_shared[((((((rc_outer_inner * 16) + (((int)threadIdx.x) & 7)) + 456) - (rw_inner * 64)) - (rh_inner * 256)))]));
            }
          }
        }
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 24; ++ax2_inner) {
    T_relu[((((((((((int)threadIdx.x) / 48) * 147456) + ((((int)blockIdx.x) >> 4) * 36864)) + (((((int)threadIdx.x) % 48) >> 3) * 6144)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 15) * 16)) + (((int)threadIdx.x) & 7)))] = max(((conv2d_transpose_nhwc[(ax2_inner)] * placeholder2[((((((int)blockIdx.x) & 15) * 16) + (((int)threadIdx.x) & 7)))]) + placeholder3[((((((int)blockIdx.x) & 15) * 16) + (((int)threadIdx.x) & 7)))]), 0.000000e+00f);
    T_relu[(((((((((((int)threadIdx.x) / 48) * 147456) + ((((int)blockIdx.x) >> 4) * 36864)) + (((((int)threadIdx.x) % 48) >> 3) * 6144)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 15) * 16)) + (((int)threadIdx.x) & 7)) + 8))] = max(((conv2d_transpose_nhwc[((ax2_inner + 24))] * placeholder2[(((((((int)blockIdx.x) & 15) * 16) + (((int)threadIdx.x) & 7)) + 8))]) + placeholder3[(((((((int)blockIdx.x) & 15) * 16) + (((int)threadIdx.x) & 7)) + 8))]), 0.000000e+00f);
  }
}


