
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
  float compute[256];
  __shared__ float pad_temp_shared[43008];
  __shared__ float placeholder_shared[768];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
      for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
        for (int nn_inner_init = 0; nn_inner_init < 4; ++nn_inner_init) {
          compute[(((((nn_outer_inner_init * 64) + (nn_inner_init * 16)) + (yy_outer_inner_init * 8)) + (xx_outer_inner_init * 4)))] = 0.000000e+00f;
          compute[((((((nn_outer_inner_init * 64) + (nn_inner_init * 16)) + (yy_outer_inner_init * 8)) + (xx_outer_inner_init * 4)) + 128))] = 0.000000e+00f;
          compute[((((((nn_outer_inner_init * 64) + (nn_inner_init * 16)) + (yy_outer_inner_init * 8)) + (xx_outer_inner_init * 4)) + 1))] = 0.000000e+00f;
          compute[((((((nn_outer_inner_init * 64) + (nn_inner_init * 16)) + (yy_outer_inner_init * 8)) + (xx_outer_inner_init * 4)) + 129))] = 0.000000e+00f;
          compute[((((((nn_outer_inner_init * 64) + (nn_inner_init * 16)) + (yy_outer_inner_init * 8)) + (xx_outer_inner_init * 4)) + 2))] = 0.000000e+00f;
          compute[((((((nn_outer_inner_init * 64) + (nn_inner_init * 16)) + (yy_outer_inner_init * 8)) + (xx_outer_inner_init * 4)) + 130))] = 0.000000e+00f;
          compute[((((((nn_outer_inner_init * 64) + (nn_inner_init * 16)) + (yy_outer_inner_init * 8)) + (xx_outer_inner_init * 4)) + 3))] = 0.000000e+00f;
          compute[((((((nn_outer_inner_init * 64) + (nn_inner_init * 16)) + (yy_outer_inner_init * 8)) + (xx_outer_inner_init * 4)) + 131))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int ry_outer_outer = 0; ry_outer_outer < 3; ++ry_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 384; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      pad_temp_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)))] = (((((1 <= (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) % 5376) / 192) + ry_outer_outer)) && ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) % 5376) / 192) + ry_outer_outer) < 29)) && (1 <= (((((int)blockIdx.x) >> 3) * 4) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) % 192) >> 5)))) && ((((((int)blockIdx.x) >> 3) * 4) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) % 192) >> 5)) < 29)) ? placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) / 192) * 7168) + (ry_outer_outer * 7168)) + ((((int)blockIdx.x) >> 3) * 1024)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) % 192) >> 5) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) & 31)) - 7424))] : 0.000000e+00f);
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((ry_outer_outer * 6144) + ((((int)threadIdx.x) >> 5) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 112))] = placeholder1[(((((ry_outer_outer * 6144) + (((((int)threadIdx.x) + 112) >> 5) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) + 16) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[((((((ry_outer_outer * 6144) + ((((int)threadIdx.x) >> 5) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) & 31)) + 1792))];
    placeholder_shared[((((int)threadIdx.x) + 336))] = placeholder1[(((((ry_outer_outer * 6144) + (((((int)threadIdx.x) + 336) >> 5) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) + 16) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 448))] = placeholder1[((((((ry_outer_outer * 6144) + ((((int)threadIdx.x) >> 5) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) & 31)) + 3584))];
    placeholder_shared[((((int)threadIdx.x) + 560))] = placeholder1[(((((ry_outer_outer * 6144) + (((((int)threadIdx.x) + 560) >> 5) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) + 16) & 31)))];
    if (((int)threadIdx.x) < 96) {
      placeholder_shared[((((int)threadIdx.x) + 672))] = placeholder1[((((((ry_outer_outer * 6144) + ((((int)threadIdx.x) >> 5) * 256)) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) & 31)) + 5376))];
    }
    __syncthreads();
    for (int rx_outer_inner = 0; rx_outer_inner < 3; ++rx_outer_inner) {
      for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
        for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
          for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
            for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
              for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
                for (int nn_inner = 0; nn_inner < 4; ++nn_inner) {
                  compute[(((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)))] = (compute[(((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)))] + (pad_temp_shared[((((((((((nn_outer_inner * 21504) + (nn_inner * 5376)) + ((((int)threadIdx.x) >> 4) * 384)) + (yy_outer_inner * 192)) + (xx_outer_inner * 64)) + (rx_outer_inner * 32)) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rx_outer_inner * 256) + (rc_outer_inner * 128)) + (rc_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)))]));
                  compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 128))] = (compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 128))] + (pad_temp_shared[(((((((((((nn_outer_inner * 21504) + (nn_inner * 5376)) + ((((int)threadIdx.x) >> 4) * 384)) + (yy_outer_inner * 192)) + (xx_outer_inner * 64)) + (rx_outer_inner * 32)) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + (rc_outer_inner * 4)) + rc_inner) + 2688))] * placeholder_shared[(((((rx_outer_inner * 256) + (rc_outer_inner * 128)) + (rc_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)))]));
                  compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 1))] = (compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 1))] + (pad_temp_shared[((((((((((nn_outer_inner * 21504) + (nn_inner * 5376)) + ((((int)threadIdx.x) >> 4) * 384)) + (yy_outer_inner * 192)) + (xx_outer_inner * 64)) + (rx_outer_inner * 32)) + (((((((int)threadIdx.x) & 15) * 2) + 1) >> 3) * 8)) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[((((((rx_outer_inner * 256) + (rc_outer_inner * 128)) + (rc_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
                  compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 129))] = (compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 129))] + (pad_temp_shared[(((((((((((nn_outer_inner * 21504) + (nn_inner * 5376)) + ((((int)threadIdx.x) >> 4) * 384)) + (yy_outer_inner * 192)) + (xx_outer_inner * 64)) + (rx_outer_inner * 32)) + (((((((int)threadIdx.x) & 15) * 2) + 1) >> 3) * 8)) + (rc_outer_inner * 4)) + rc_inner) + 2688))] * placeholder_shared[((((((rx_outer_inner * 256) + (rc_outer_inner * 128)) + (rc_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
                  compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 2))] = (compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 2))] + (pad_temp_shared[(((((((((((nn_outer_inner * 21504) + (nn_inner * 5376)) + ((((int)threadIdx.x) >> 4) * 384)) + (yy_outer_inner * 192)) + (xx_outer_inner * 64)) + (rx_outer_inner * 32)) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + (rc_outer_inner * 4)) + rc_inner) + 32))] * placeholder_shared[(((((rx_outer_inner * 256) + (rc_outer_inner * 128)) + (rc_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)))]));
                  compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 130))] = (compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 130))] + (pad_temp_shared[(((((((((((nn_outer_inner * 21504) + (nn_inner * 5376)) + ((((int)threadIdx.x) >> 4) * 384)) + (yy_outer_inner * 192)) + (xx_outer_inner * 64)) + (rx_outer_inner * 32)) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + (rc_outer_inner * 4)) + rc_inner) + 2720))] * placeholder_shared[(((((rx_outer_inner * 256) + (rc_outer_inner * 128)) + (rc_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)))]));
                  compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 3))] = (compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 3))] + (pad_temp_shared[(((((((((((nn_outer_inner * 21504) + (nn_inner * 5376)) + ((((int)threadIdx.x) >> 4) * 384)) + (yy_outer_inner * 192)) + (xx_outer_inner * 64)) + (rx_outer_inner * 32)) + (((((((int)threadIdx.x) & 15) * 2) + 1) >> 3) * 8)) + (rc_outer_inner * 4)) + rc_inner) + 32))] * placeholder_shared[((((((rx_outer_inner * 256) + (rc_outer_inner * 128)) + (rc_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
                  compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 131))] = (compute[((((((nn_outer_inner * 64) + (nn_inner * 16)) + (yy_outer_inner * 8)) + (xx_outer_inner * 4)) + 131))] + (pad_temp_shared[(((((((((((nn_outer_inner * 21504) + (nn_inner * 5376)) + ((((int)threadIdx.x) >> 4) * 384)) + (yy_outer_inner * 192)) + (xx_outer_inner * 64)) + (rx_outer_inner * 32)) + (((((((int)threadIdx.x) & 15) * 2) + 1) >> 3) * 8)) + (rc_outer_inner * 4)) + rc_inner) + 2720))] * placeholder_shared[((((((rx_outer_inner * 256) + (rc_outer_inner * 128)) + (rc_inner * 32)) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
                }
              }
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 8; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
          T_relu[(((((((((ax0_inner * 200704) + ((((int)threadIdx.x) >> 4) * 14336)) + (ax1_inner * 7168)) + ((((int)blockIdx.x) >> 3) * 1024)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))] = max((compute[(((((ax0_inner * 16) + (ax1_inner * 8)) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 7) * 32) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))]), 0.000000e+00f);
          T_relu[((((((((((ax0_inner * 200704) + ((((int)threadIdx.x) >> 4) * 14336)) + (ax1_inner * 7168)) + ((((int)blockIdx.x) >> 3) * 1024)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 100352))] = max((compute[((((((ax0_inner * 16) + (ax1_inner * 8)) + (ax2_inner * 2)) + ax3_inner) + 128))] + placeholder2[(((((((int)blockIdx.x) & 7) * 32) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))]), 0.000000e+00f);
        }
      }
    }
  }
}


