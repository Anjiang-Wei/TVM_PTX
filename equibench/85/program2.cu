
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
  float conv2d_transpose_nhwc[160];
  __shared__ float PadInput_shared[3872];
  __shared__ float placeholder_shared[32];
  for (int h_outer_inner_init = 0; h_outer_inner_init < 4; ++h_outer_inner_init) {
    for (int w_outer_inner_init = 0; w_outer_inner_init < 5; ++w_outer_inner_init) {
      for (int n_inner_init = 0; n_inner_init < 2; ++n_inner_init) {
        for (int h_inner_init = 0; h_inner_init < 2; ++h_inner_init) {
          for (int w_inner_init = 0; w_inner_init < 2; ++w_inner_init) {
            conv2d_transpose_nhwc[((((((n_inner_init * 80) + (h_outer_inner_init * 20)) + (h_inner_init * 10)) + (w_outer_inner_init * 2)) + w_inner_init))] = 0.000000e+00f;
          }
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 97; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) < 1936) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 3872) {
          PadInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)))] = (((((1 <= (((((int)blockIdx.x) / 6) * 20) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) % 484) / 22))) && ((((((int)blockIdx.x) / 6) * 20) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) % 484) / 22)) < 41)) && (1 <= ((((((int)blockIdx.x) % 6) / 3) * 20) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) % 22)))) && (((((((int)blockIdx.x) % 6) / 3) * 20) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) % 22)) < 41)) ? placeholder[((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) / 484) * 204800) + ((((int)blockIdx.x) / 6) * 102400)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) % 484) / 22) * 5120)) + (((((int)blockIdx.x) % 6) / 3) * 2560)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) % 22) * 128)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) - 5248))] : 0.000000e+00f);
        }
      }
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((((((int)threadIdx.x) >> 1) * 384) + (rc_outer_outer * 6)) + ((((int)threadIdx.x) & 1) * 3)) + (((int)blockIdx.x) % 3)))];
    }
    __syncthreads();
    for (int rh_outer_inner = 0; rh_outer_inner < 2; ++rh_outer_inner) {
      for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
        for (int h_outer_inner = 0; h_outer_inner < 4; ++h_outer_inner) {
          for (int w_outer_inner = 0; w_outer_inner < 5; ++w_outer_inner) {
            for (int rh_inner = 0; rh_inner < 2; ++rh_inner) {
              for (int rw_inner = 0; rw_inner < 4; ++rw_inner) {
                for (int n_inner = 0; n_inner < 2; ++n_inner) {
                  for (int h_inner = 0; h_inner < 2; ++h_inner) {
                    for (int w_inner = 0; w_inner < 2; ++w_inner) {
                      conv2d_transpose_nhwc[((((((n_inner * 80) + (h_outer_inner * 20)) + (h_inner * 10)) + (w_outer_inner * 2)) + w_inner))] = (conv2d_transpose_nhwc[((((((n_inner * 80) + (h_outer_inner * 20)) + (h_inner * 10)) + (w_outer_inner * 2)) + w_inner))] + ((((((h_inner + rh_inner) % 2) == 0) && (((w_inner + rw_inner) % 2) == 0)) ? PadInput_shared[((((((((((((((int)threadIdx.x) / 20) * 1936) + (n_inner * 968)) + (((((int)threadIdx.x) % 20) >> 2) * 176)) + (((h_inner + rh_inner) >> 1) * 44)) + (h_outer_inner * 44)) + (rh_outer_inner * 44)) + ((((int)threadIdx.x) & 3) * 10)) + (((w_inner + rw_inner) >> 1) * 2)) + (w_outer_inner * 2)) + rc_outer_inner))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner + 30) - (rw_inner * 2)) - (rh_inner * 8)) - (rh_outer_inner * 16)))]));
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 8; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 10; ++ax2_inner) {
        T_tanh[(((((((((((((int)threadIdx.x) / 20) * 38400) + (ax0_inner * 19200)) + ((((int)blockIdx.x) / 6) * 9600)) + (((((int)threadIdx.x) % 20) >> 2) * 1920)) + (ax1_inner * 240)) + (((((int)blockIdx.x) % 6) / 3) * 120)) + ((((int)threadIdx.x) & 3) * 30)) + (ax2_inner * 3)) + (((int)blockIdx.x) % 3)))] = tanhf(conv2d_transpose_nhwc[((((ax0_inner * 80) + (ax1_inner * 10)) + ax2_inner))]);
      }
    }
  }
}


