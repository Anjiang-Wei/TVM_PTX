
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute, float* __restrict__ placeholder2) {
  float DepthwiseConv2d[256];
  __shared__ float PaddedInput_shared[10240];
  __shared__ float placeholder_shared[288];
  for (int b_outer_inner_init = 0; b_outer_inner_init < 2; ++b_outer_inner_init) {
    for (int c_outer_inner_init = 0; c_outer_inner_init < 4; ++c_outer_inner_init) {
      for (int j_inner_init = 0; j_inner_init < 4; ++j_inner_init) {
        for (int c_inner_init = 0; c_inner_init < 2; ++c_inner_init) {
          DepthwiseConv2d[(((((b_outer_inner_init * 32) + (j_inner_init * 8)) + (c_outer_inner_init * 2)) + c_inner_init))] = 0.000000e+00f;
          DepthwiseConv2d[((((((b_outer_inner_init * 32) + (j_inner_init * 8)) + (c_outer_inner_init * 2)) + c_inner_init) + 64))] = 0.000000e+00f;
          DepthwiseConv2d[((((((b_outer_inner_init * 32) + (j_inner_init * 8)) + (c_outer_inner_init * 2)) + c_inner_init) + 128))] = 0.000000e+00f;
          DepthwiseConv2d[((((((b_outer_inner_init * 32) + (j_inner_init * 8)) + (c_outer_inner_init * 2)) + c_inner_init) + 192))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 427; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24) + ((int)threadIdx.x)) < 10240) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24) + ((int)threadIdx.x)))] = (((((1 <= (((((int)blockIdx.x) / 15) * 6) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24) + ((int)threadIdx.x)) % 2560) / 320))) && ((((((int)blockIdx.x) / 15) * 6) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24) + ((int)threadIdx.x)) % 2560) / 320)) < 121)) && (1 <= (((((int)blockIdx.x) % 15) * 8) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24) + ((int)threadIdx.x)) % 320) >> 5)))) && ((((((int)blockIdx.x) % 15) * 8) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24) + ((int)threadIdx.x)) % 320) >> 5)) < 121)) ? placeholder[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24) + ((int)threadIdx.x)) / 2560) * 460800) + ((((int)blockIdx.x) / 15) * 23040)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24) + ((int)threadIdx.x)) % 2560) / 320) * 3840)) + ((((int)blockIdx.x) % 15) * 256)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24) + ((int)threadIdx.x)) % 320)) - 3872))] : 0.000000e+00f);
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
    ((float4*)(placeholder_shared + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 96) + (((int)threadIdx.x) * 4)))))[0] = ((float4*)(placeholder1 + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 96) + (((int)threadIdx.x) * 4)))))[0];
  }
  __syncthreads();
  for (int dj_outer_inner = 0; dj_outer_inner < 3; ++dj_outer_inner) {
    for (int b_outer_inner = 0; b_outer_inner < 2; ++b_outer_inner) {
      for (int c_outer_inner = 0; c_outer_inner < 4; ++c_outer_inner) {
        for (int di_inner = 0; di_inner < 3; ++di_inner) {
          for (int j_inner = 0; j_inner < 4; ++j_inner) {
            for (int c_inner = 0; c_inner < 2; ++c_inner) {
              DepthwiseConv2d[(((((b_outer_inner * 32) + (j_inner * 8)) + (c_outer_inner * 2)) + c_inner))] = (DepthwiseConv2d[(((((b_outer_inner * 32) + (j_inner * 8)) + (c_outer_inner * 2)) + c_inner))] + (PaddedInput_shared[((((((((((b_outer_inner * 2560) + ((((int)threadIdx.x) >> 2) * 320)) + (di_inner * 320)) + (((((int)threadIdx.x) & 3) >> 1) * 128)) + (j_inner * 32)) + (dj_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 8)) + (c_outer_inner * 2)) + c_inner))] * placeholder_shared[((((((di_inner * 96) + (dj_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 8)) + (c_outer_inner * 2)) + c_inner))]));
              DepthwiseConv2d[((((((b_outer_inner * 32) + (j_inner * 8)) + (c_outer_inner * 2)) + c_inner) + 64))] = (DepthwiseConv2d[((((((b_outer_inner * 32) + (j_inner * 8)) + (c_outer_inner * 2)) + c_inner) + 64))] + (PaddedInput_shared[(((((((((((b_outer_inner * 2560) + ((((int)threadIdx.x) >> 2) * 320)) + (di_inner * 320)) + (((((int)threadIdx.x) & 3) >> 1) * 128)) + (j_inner * 32)) + (dj_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 8)) + (c_outer_inner * 2)) + c_inner) + 16))] * placeholder_shared[(((((((di_inner * 96) + (dj_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 8)) + (c_outer_inner * 2)) + c_inner) + 16))]));
              DepthwiseConv2d[((((((b_outer_inner * 32) + (j_inner * 8)) + (c_outer_inner * 2)) + c_inner) + 128))] = (DepthwiseConv2d[((((((b_outer_inner * 32) + (j_inner * 8)) + (c_outer_inner * 2)) + c_inner) + 128))] + (PaddedInput_shared[(((((((((((b_outer_inner * 2560) + ((((int)threadIdx.x) >> 2) * 320)) + (di_inner * 320)) + (((((int)threadIdx.x) & 3) >> 1) * 128)) + (j_inner * 32)) + (dj_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 8)) + (c_outer_inner * 2)) + c_inner) + 5120))] * placeholder_shared[((((((di_inner * 96) + (dj_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 8)) + (c_outer_inner * 2)) + c_inner))]));
              DepthwiseConv2d[((((((b_outer_inner * 32) + (j_inner * 8)) + (c_outer_inner * 2)) + c_inner) + 192))] = (DepthwiseConv2d[((((((b_outer_inner * 32) + (j_inner * 8)) + (c_outer_inner * 2)) + c_inner) + 192))] + (PaddedInput_shared[(((((((((((b_outer_inner * 2560) + ((((int)threadIdx.x) >> 2) * 320)) + (di_inner * 320)) + (((((int)threadIdx.x) & 3) >> 1) * 128)) + (j_inner * 32)) + (dj_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 8)) + (c_outer_inner * 2)) + c_inner) + 5136))] * placeholder_shared[(((((((di_inner * 96) + (dj_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 8)) + (c_outer_inner * 2)) + c_inner) + 16))]));
            }
          }
        }
      }
    }
  }
  for (int i0_inner = 0; i0_inner < 2; ++i0_inner) {
    for (int i2_inner = 0; i2_inner < 4; ++i2_inner) {
      for (int i3_inner = 0; i3_inner < 8; ++i3_inner) {
        compute[(((((((((i0_inner * 460800) + ((((int)blockIdx.x) / 15) * 23040)) + ((((int)threadIdx.x) >> 2) * 3840)) + ((((int)blockIdx.x) % 15) * 256)) + (((((int)threadIdx.x) & 3) >> 1) * 128)) + (i2_inner * 32)) + ((((int)threadIdx.x) & 1) * 8)) + i3_inner))] = max(min((DepthwiseConv2d[((((i0_inner * 32) + (i2_inner * 8)) + i3_inner))] + placeholder2[((((((int)threadIdx.x) & 1) * 8) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
        compute[((((((((((i0_inner * 460800) + ((((int)blockIdx.x) / 15) * 23040)) + ((((int)threadIdx.x) >> 2) * 3840)) + ((((int)blockIdx.x) % 15) * 256)) + (((((int)threadIdx.x) & 3) >> 1) * 128)) + (i2_inner * 32)) + ((((int)threadIdx.x) & 1) * 8)) + i3_inner) + 16))] = max(min((DepthwiseConv2d[(((((i0_inner * 32) + (i2_inner * 8)) + i3_inner) + 64))] + placeholder2[(((((((int)threadIdx.x) & 1) * 8) + i3_inner) + 16))]), 6.000000e+00f), 0.000000e+00f);
        compute[((((((((((i0_inner * 460800) + ((((int)blockIdx.x) / 15) * 23040)) + ((((int)threadIdx.x) >> 2) * 3840)) + ((((int)blockIdx.x) % 15) * 256)) + (((((int)threadIdx.x) & 3) >> 1) * 128)) + (i2_inner * 32)) + ((((int)threadIdx.x) & 1) * 8)) + i3_inner) + 921600))] = max(min((DepthwiseConv2d[(((((i0_inner * 32) + (i2_inner * 8)) + i3_inner) + 128))] + placeholder2[((((((int)threadIdx.x) & 1) * 8) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
        compute[((((((((((i0_inner * 460800) + ((((int)blockIdx.x) / 15) * 23040)) + ((((int)threadIdx.x) >> 2) * 3840)) + ((((int)blockIdx.x) % 15) * 256)) + (((((int)threadIdx.x) & 3) >> 1) * 128)) + (i2_inner * 32)) + ((((int)threadIdx.x) & 1) * 8)) + i3_inner) + 921616))] = max(min((DepthwiseConv2d[(((((i0_inner * 32) + (i2_inner * 8)) + i3_inner) + 192))] + placeholder2[(((((((int)threadIdx.x) & 1) * 8) + i3_inner) + 16))]), 6.000000e+00f), 0.000000e+00f);
      }
    }
  }
}


