
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2) {
  float compute[392];
  __shared__ float pad_temp_shared[3132];
  __shared__ float placeholder_shared[192];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 7; ++yy_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 14; ++xx_outer_inner_init) {
      compute[(((yy_outer_inner_init * 14) + xx_outer_inner_init))] = 0.000000e+00f;
      compute[((((yy_outer_inner_init * 14) + xx_outer_inner_init) + 98))] = 0.000000e+00f;
      compute[((((yy_outer_inner_init * 14) + xx_outer_inner_init) + 196))] = 0.000000e+00f;
      compute[((((yy_outer_inner_init * 14) + xx_outer_inner_init) + 294))] = 0.000000e+00f;
    }
  }
  for (int rx_outer_outer = 0; rx_outer_outer < 3; ++rx_outer_outer) {
    for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
      __syncthreads();
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 392; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 2)) < 783) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)) < 3132) {
            pad_temp_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)))] = (((27 <= ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 2))) && (1 <= (rx_outer_outer + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 2)) % 27)))) ? placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 2)) / 27) * 14336) + (rx_outer_outer * 512)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 2)) % 27) * 512)) + (((int)blockIdx.x) * 16)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 14848))] : 0.000000e+00f);
          }
        }
      }
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 24; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 8) + ((int)threadIdx.x)))] = placeholder1[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 8) + ((int)threadIdx.x)) >> 6) * 24576) + (rx_outer_outer * 8192)) + (rc_outer_outer * 2048)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 8) + ((int)threadIdx.x)) & 63) >> 4) * 512)) + (((int)blockIdx.x) * 16)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 8) + ((int)threadIdx.x)) & 15)))];
      }
      __syncthreads();
      for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
        for (int yy_outer_inner = 0; yy_outer_inner < 7; ++yy_outer_inner) {
          for (int xx_outer_inner = 0; xx_outer_inner < 14; ++xx_outer_inner) {
            for (int ry_inner = 0; ry_inner < 3; ++ry_inner) {
              compute[(((yy_outer_inner * 14) + xx_outer_inner))] = (compute[(((yy_outer_inner * 14) + xx_outer_inner))] + (pad_temp_shared[(((((((((int)threadIdx.x) >> 2) * 1512) + (yy_outer_inner * 216)) + (ry_inner * 108)) + (xx_outer_inner * 8)) + (rc_outer_inner * 2)))] * placeholder_shared[((((ry_inner * 64) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 3)))]));
              compute[((((yy_outer_inner * 14) + xx_outer_inner) + 98))] = (compute[((((yy_outer_inner * 14) + xx_outer_inner) + 98))] + (pad_temp_shared[(((((((((int)threadIdx.x) >> 2) * 1512) + (yy_outer_inner * 216)) + (ry_inner * 108)) + (xx_outer_inner * 8)) + (rc_outer_inner * 2)))] * placeholder_shared[(((((ry_inner * 64) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 3)) + 4))]));
              compute[((((yy_outer_inner * 14) + xx_outer_inner) + 196))] = (compute[((((yy_outer_inner * 14) + xx_outer_inner) + 196))] + (pad_temp_shared[(((((((((int)threadIdx.x) >> 2) * 1512) + (yy_outer_inner * 216)) + (ry_inner * 108)) + (xx_outer_inner * 8)) + (rc_outer_inner * 2)))] * placeholder_shared[(((((ry_inner * 64) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 3)) + 8))]));
              compute[((((yy_outer_inner * 14) + xx_outer_inner) + 294))] = (compute[((((yy_outer_inner * 14) + xx_outer_inner) + 294))] + (pad_temp_shared[(((((((((int)threadIdx.x) >> 2) * 1512) + (yy_outer_inner * 216)) + (ry_inner * 108)) + (xx_outer_inner * 8)) + (rc_outer_inner * 2)))] * placeholder_shared[(((((ry_inner * 64) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 3)) + 12))]));
              compute[(((yy_outer_inner * 14) + xx_outer_inner))] = (compute[(((yy_outer_inner * 14) + xx_outer_inner))] + (pad_temp_shared[((((((((((int)threadIdx.x) >> 2) * 1512) + (yy_outer_inner * 216)) + (ry_inner * 108)) + (xx_outer_inner * 8)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((ry_inner * 64) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 3)) + 16))]));
              compute[((((yy_outer_inner * 14) + xx_outer_inner) + 98))] = (compute[((((yy_outer_inner * 14) + xx_outer_inner) + 98))] + (pad_temp_shared[((((((((((int)threadIdx.x) >> 2) * 1512) + (yy_outer_inner * 216)) + (ry_inner * 108)) + (xx_outer_inner * 8)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((ry_inner * 64) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 3)) + 20))]));
              compute[((((yy_outer_inner * 14) + xx_outer_inner) + 196))] = (compute[((((yy_outer_inner * 14) + xx_outer_inner) + 196))] + (pad_temp_shared[((((((((((int)threadIdx.x) >> 2) * 1512) + (yy_outer_inner * 216)) + (ry_inner * 108)) + (xx_outer_inner * 8)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((ry_inner * 64) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 3)) + 24))]));
              compute[((((yy_outer_inner * 14) + xx_outer_inner) + 294))] = (compute[((((yy_outer_inner * 14) + xx_outer_inner) + 294))] + (pad_temp_shared[((((((((((int)threadIdx.x) >> 2) * 1512) + (yy_outer_inner * 216)) + (ry_inner * 108)) + (xx_outer_inner * 8)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((ry_inner * 64) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 3)) + 28))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 7; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 14; ++ax2_inner) {
      T_relu[(((((((((int)threadIdx.x) >> 2) * 50176) + (ax1_inner * 7168)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) & 3)))] = max((compute[(((ax1_inner * 14) + ax2_inner))] + placeholder2[(((((int)blockIdx.x) * 16) + (((int)threadIdx.x) & 3)))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 2) * 50176) + (ax1_inner * 7168)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) & 3)) + 4))] = max((compute[((((ax1_inner * 14) + ax2_inner) + 98))] + placeholder2[((((((int)blockIdx.x) * 16) + (((int)threadIdx.x) & 3)) + 4))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 2) * 50176) + (ax1_inner * 7168)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) & 3)) + 8))] = max((compute[((((ax1_inner * 14) + ax2_inner) + 196))] + placeholder2[((((((int)blockIdx.x) * 16) + (((int)threadIdx.x) & 3)) + 8))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 2) * 50176) + (ax1_inner * 7168)) + (ax2_inner * 512)) + (((int)blockIdx.x) * 16)) + (((int)threadIdx.x) & 3)) + 12))] = max((compute[((((ax1_inner * 14) + ax2_inner) + 294))] + placeholder2[((((((int)blockIdx.x) * 16) + (((int)threadIdx.x) & 3)) + 12))]), 0.000000e+00f);
    }
  }
}


