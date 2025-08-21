
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_tanh) {
  float conv2d_transpose_nhwc[12];
  __shared__ float PadInput_shared[400];
  __shared__ float placeholder_shared[96];
  for (int h_outer_inner_init = 0; h_outer_inner_init < 4; ++h_outer_inner_init) {
    conv2d_transpose_nhwc[(h_outer_inner_init)] = 0.000000e+00f;
    conv2d_transpose_nhwc[((h_outer_inner_init + 4))] = 0.000000e+00f;
    conv2d_transpose_nhwc[((h_outer_inner_init + 8))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + (((int)threadIdx.x) >> 1)) < 200) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + ((int)threadIdx.x)) < 400) {
          PadInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + ((int)threadIdx.x)))] = (((((1 <= ((((((int)blockIdx.x) % 25) / 5) * 8) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + (((int)threadIdx.x) >> 1)) % 100) / 10))) && (((((((int)blockIdx.x) % 25) / 5) * 8) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + (((int)threadIdx.x) >> 1)) % 100) / 10)) < 41)) && (1 <= (((((int)blockIdx.x) % 5) * 8) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + (((int)threadIdx.x) >> 1)) % 10)))) && ((((((int)blockIdx.x) % 5) * 8) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + (((int)threadIdx.x) >> 1)) % 10)) < 41)) ? placeholder[(((((((((((((int)blockIdx.x) / 25) * 409600) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + (((int)threadIdx.x) >> 1)) / 100) * 204800)) + (((((int)blockIdx.x) % 25) / 5) * 40960)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + (((int)threadIdx.x) >> 1)) % 100) / 10) * 5120)) + ((((int)blockIdx.x) % 5) * 1024)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + (((int)threadIdx.x) >> 1)) % 10) * 128)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) - 5248))] : 0.000000e+00f);
        }
      }
    }
    if (((int)threadIdx.x) < 96) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((((int)threadIdx.x) / 6) * 384) + (rc_outer_outer * 6)) + (((int)threadIdx.x) % 6)))];
    }
    __syncthreads();
    for (int rh_outer_inner = 0; rh_outer_inner < 2; ++rh_outer_inner) {
      for (int h_outer_inner = 0; h_outer_inner < 4; ++h_outer_inner) {
        for (int rh_inner = 0; rh_inner < 2; ++rh_inner) {
          for (int rw_inner = 0; rw_inner < 4; ++rw_inner) {
            for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
              conv2d_transpose_nhwc[(h_outer_inner)] = (conv2d_transpose_nhwc[(h_outer_inner)] + ((((((h_outer_inner + rh_inner) % 2) == 0) && (((rw_inner + (((int)threadIdx.x) & 15)) % 2) == 0)) ? PadInput_shared[((((((((((int)threadIdx.x) >> 6) * 200) + (((((int)threadIdx.x) & 63) >> 4) * 40)) + (((h_outer_inner + rh_inner) >> 1) * 20)) + (rh_outer_inner * 20)) + (((rw_inner + (((int)threadIdx.x) & 15)) >> 1) * 2)) + rc_inner))] : 0.000000e+00f) * placeholder_shared[((((((rc_inner * 3) + 90) - (rw_inner * 6)) - (rh_inner * 24)) - (rh_outer_inner * 48)))]));
              conv2d_transpose_nhwc[((h_outer_inner + 4))] = (conv2d_transpose_nhwc[((h_outer_inner + 4))] + ((((((h_outer_inner + rh_inner) % 2) == 0) && (((rw_inner + (((int)threadIdx.x) & 15)) % 2) == 0)) ? PadInput_shared[((((((((((int)threadIdx.x) >> 6) * 200) + (((((int)threadIdx.x) & 63) >> 4) * 40)) + (((h_outer_inner + rh_inner) >> 1) * 20)) + (rh_outer_inner * 20)) + (((rw_inner + (((int)threadIdx.x) & 15)) >> 1) * 2)) + rc_inner))] : 0.000000e+00f) * placeholder_shared[((((((rc_inner * 3) + 91) - (rw_inner * 6)) - (rh_inner * 24)) - (rh_outer_inner * 48)))]));
              conv2d_transpose_nhwc[((h_outer_inner + 8))] = (conv2d_transpose_nhwc[((h_outer_inner + 8))] + ((((((h_outer_inner + rh_inner) % 2) == 0) && (((rw_inner + (((int)threadIdx.x) & 15)) % 2) == 0)) ? PadInput_shared[((((((((((int)threadIdx.x) >> 6) * 200) + (((((int)threadIdx.x) & 63) >> 4) * 40)) + (((h_outer_inner + rh_inner) >> 1) * 20)) + (rh_outer_inner * 20)) + (((rw_inner + (((int)threadIdx.x) & 15)) >> 1) * 2)) + rc_inner))] : 0.000000e+00f) * placeholder_shared[((((((rc_inner * 3) + 92) - (rw_inner * 6)) - (rh_inner * 24)) - (rh_outer_inner * 48)))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
    T_tanh[(((((((((((int)blockIdx.x) / 25) * 38400) + ((((int)threadIdx.x) >> 6) * 19200)) + (((((int)blockIdx.x) % 25) / 5) * 3840)) + (((((int)threadIdx.x) & 63) >> 4) * 960)) + (ax1_inner * 240)) + ((((int)blockIdx.x) % 5) * 48)) + ((((int)threadIdx.x) & 15) * 3)))] = tanhf(conv2d_transpose_nhwc[(ax1_inner)]);
    T_tanh[((((((((((((int)blockIdx.x) / 25) * 38400) + ((((int)threadIdx.x) >> 6) * 19200)) + (((((int)blockIdx.x) % 25) / 5) * 3840)) + (((((int)threadIdx.x) & 63) >> 4) * 960)) + (ax1_inner * 240)) + ((((int)blockIdx.x) % 5) * 48)) + ((((int)threadIdx.x) & 15) * 3)) + 1))] = tanhf(conv2d_transpose_nhwc[((ax1_inner + 4))]);
    T_tanh[((((((((((((int)blockIdx.x) / 25) * 38400) + ((((int)threadIdx.x) >> 6) * 19200)) + (((((int)blockIdx.x) % 25) / 5) * 3840)) + (((((int)threadIdx.x) & 63) >> 4) * 960)) + (ax1_inner * 240)) + ((((int)blockIdx.x) % 5) * 48)) + ((((int)threadIdx.x) & 15) * 3)) + 2))] = tanhf(conv2d_transpose_nhwc[((ax1_inner + 8))]);
  }
}


