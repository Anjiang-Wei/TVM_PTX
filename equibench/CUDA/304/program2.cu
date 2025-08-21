
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
  float Conv2dOutput[960];
  __shared__ float PaddedInput_shared[10248];
  __shared__ float placeholder_shared[576];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 3; ++xx_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
      for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
        for (int yy_inner_init = 0; yy_inner_init < 5; ++yy_inner_init) {
          for (int ff_inner_init = 0; ff_inner_init < 2; ++ff_inner_init) {
            Conv2dOutput[((((((nn_inner_init * 60) + (yy_inner_init * 12)) + (xx_outer_inner_init * 4)) + (ff_outer_inner_init * 2)) + ff_inner_init))] = 0.000000e+00f;
            Conv2dOutput[(((((((nn_inner_init * 60) + (yy_inner_init * 12)) + (xx_outer_inner_init * 4)) + (ff_outer_inner_init * 2)) + ff_inner_init) + 120))] = 0.000000e+00f;
            Conv2dOutput[(((((((nn_inner_init * 60) + (yy_inner_init * 12)) + (xx_outer_inner_init * 4)) + (ff_outer_inner_init * 2)) + ff_inner_init) + 240))] = 0.000000e+00f;
            Conv2dOutput[(((((((nn_inner_init * 60) + (yy_inner_init * 12)) + (xx_outer_inner_init * 4)) + (ff_outer_inner_init * 2)) + ff_inner_init) + 360))] = 0.000000e+00f;
            Conv2dOutput[(((((((nn_inner_init * 60) + (yy_inner_init * 12)) + (xx_outer_inner_init * 4)) + (ff_outer_inner_init * 2)) + ff_inner_init) + 480))] = 0.000000e+00f;
            Conv2dOutput[(((((((nn_inner_init * 60) + (yy_inner_init * 12)) + (xx_outer_inner_init * 4)) + (ff_outer_inner_init * 2)) + ff_inner_init) + 600))] = 0.000000e+00f;
            Conv2dOutput[(((((((nn_inner_init * 60) + (yy_inner_init * 12)) + (xx_outer_inner_init * 4)) + (ff_outer_inner_init * 2)) + ff_inner_init) + 720))] = 0.000000e+00f;
            Conv2dOutput[(((((((nn_inner_init * 60) + (yy_inner_init * 12)) + (xx_outer_inner_init * 4)) + (ff_outer_inner_init * 2)) + ff_inner_init) + 840))] = 0.000000e+00f;
          }
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 257; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) < 5124) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 10248) {
          PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)))] = (((1 <= (((((int)blockIdx.x) >> 2) * 20) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) % 1281) / 61))) && (1 <= (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) % 61))) ? placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) / 1281) * 230400) + ((((int)blockIdx.x) >> 2) * 76800)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) % 1281) / 61) * 3840)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) >> 1)) % 61) * 64)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) - 3904))] : 0.000000e+00f);
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 15; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40) + ((int)threadIdx.x)) < 576) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40) + ((int)threadIdx.x)))] = placeholder1[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40) + ((int)threadIdx.x)) >> 6) * 8192) + (rc_outer_outer * 256)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40) + ((int)threadIdx.x)) & 63) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 40) + ((int)threadIdx.x)) & 31)))];
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 3; ++xx_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
          for (int ry_inner = 0; ry_inner < 3; ++ry_inner) {
            for (int rx_inner = 0; rx_inner < 3; ++rx_inner) {
              for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
                for (int yy_inner = 0; yy_inner < 5; ++yy_inner) {
                  for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
                    Conv2dOutput[((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner))] = (Conv2dOutput[((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner))] + (PaddedInput_shared[(((((((((nn_inner * 2562) + ((((int)threadIdx.x) / 20) * 1220)) + (yy_inner * 244)) + (ry_inner * 122)) + (((((int)threadIdx.x) % 20) >> 1) * 12)) + (xx_outer_inner * 4)) + (rx_inner * 2)) + rc_outer_inner))] * placeholder_shared[(((((((ry_inner * 192) + (rx_inner * 64)) + (rc_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
                    Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 120))] = (Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 120))] + (PaddedInput_shared[(((((((((nn_inner * 2562) + ((((int)threadIdx.x) / 20) * 1220)) + (yy_inner * 244)) + (ry_inner * 122)) + (((((int)threadIdx.x) % 20) >> 1) * 12)) + (xx_outer_inner * 4)) + (rx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((((((ry_inner * 192) + (rx_inner * 64)) + (rc_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 4)) + (ff_outer_inner * 2)) + ff_inner) + 8))]));
                    Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 240))] = (Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 240))] + (PaddedInput_shared[(((((((((nn_inner * 2562) + ((((int)threadIdx.x) / 20) * 1220)) + (yy_inner * 244)) + (ry_inner * 122)) + (((((int)threadIdx.x) % 20) >> 1) * 12)) + (xx_outer_inner * 4)) + (rx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((((((ry_inner * 192) + (rx_inner * 64)) + (rc_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 4)) + (ff_outer_inner * 2)) + ff_inner) + 16))]));
                    Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 360))] = (Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 360))] + (PaddedInput_shared[(((((((((nn_inner * 2562) + ((((int)threadIdx.x) / 20) * 1220)) + (yy_inner * 244)) + (ry_inner * 122)) + (((((int)threadIdx.x) % 20) >> 1) * 12)) + (xx_outer_inner * 4)) + (rx_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((((((ry_inner * 192) + (rx_inner * 64)) + (rc_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 4)) + (ff_outer_inner * 2)) + ff_inner) + 24))]));
                    Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 480))] = (Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 480))] + (PaddedInput_shared[((((((((((nn_inner * 2562) + ((((int)threadIdx.x) / 20) * 1220)) + (yy_inner * 244)) + (ry_inner * 122)) + (((((int)threadIdx.x) % 20) >> 1) * 12)) + (xx_outer_inner * 4)) + (rx_inner * 2)) + rc_outer_inner) + 5124))] * placeholder_shared[(((((((ry_inner * 192) + (rx_inner * 64)) + (rc_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 4)) + (ff_outer_inner * 2)) + ff_inner))]));
                    Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 600))] = (Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 600))] + (PaddedInput_shared[((((((((((nn_inner * 2562) + ((((int)threadIdx.x) / 20) * 1220)) + (yy_inner * 244)) + (ry_inner * 122)) + (((((int)threadIdx.x) % 20) >> 1) * 12)) + (xx_outer_inner * 4)) + (rx_inner * 2)) + rc_outer_inner) + 5124))] * placeholder_shared[((((((((ry_inner * 192) + (rx_inner * 64)) + (rc_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 4)) + (ff_outer_inner * 2)) + ff_inner) + 8))]));
                    Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 720))] = (Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 720))] + (PaddedInput_shared[((((((((((nn_inner * 2562) + ((((int)threadIdx.x) / 20) * 1220)) + (yy_inner * 244)) + (ry_inner * 122)) + (((((int)threadIdx.x) % 20) >> 1) * 12)) + (xx_outer_inner * 4)) + (rx_inner * 2)) + rc_outer_inner) + 5124))] * placeholder_shared[((((((((ry_inner * 192) + (rx_inner * 64)) + (rc_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 4)) + (ff_outer_inner * 2)) + ff_inner) + 16))]));
                    Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 840))] = (Conv2dOutput[(((((((nn_inner * 60) + (yy_inner * 12)) + (xx_outer_inner * 4)) + (ff_outer_inner * 2)) + ff_inner) + 840))] + (PaddedInput_shared[((((((((((nn_inner * 2562) + ((((int)threadIdx.x) / 20) * 1220)) + (yy_inner * 244)) + (ry_inner * 122)) + (((((int)threadIdx.x) % 20) >> 1) * 12)) + (xx_outer_inner * 4)) + (rx_inner * 2)) + rc_outer_inner) + 5124))] * placeholder_shared[((((((((ry_inner * 192) + (rx_inner * 64)) + (rc_outer_inner * 32)) + ((((int)threadIdx.x) & 1) * 4)) + (ff_outer_inner * 2)) + ff_inner) + 24))]));
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
    for (int ax1_inner = 0; ax1_inner < 5; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
          T_relu[((((((((((ax0_inner * 115200) + ((((int)blockIdx.x) >> 2) * 38400)) + ((((int)threadIdx.x) / 20) * 19200)) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 20) >> 1) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 60) + (ax1_inner * 12)) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 115200) + ((((int)blockIdx.x) >> 2) * 38400)) + ((((int)threadIdx.x) / 20) * 19200)) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 20) >> 1) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 8))] = max((Conv2dOutput[((((((ax0_inner * 60) + (ax1_inner * 12)) + (ax2_inner * 4)) + ax3_inner) + 120))] + placeholder2[((((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 8))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 115200) + ((((int)blockIdx.x) >> 2) * 38400)) + ((((int)threadIdx.x) / 20) * 19200)) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 20) >> 1) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 16))] = max((Conv2dOutput[((((((ax0_inner * 60) + (ax1_inner * 12)) + (ax2_inner * 4)) + ax3_inner) + 240))] + placeholder2[((((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 16))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 115200) + ((((int)blockIdx.x) >> 2) * 38400)) + ((((int)threadIdx.x) / 20) * 19200)) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 20) >> 1) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 24))] = max((Conv2dOutput[((((((ax0_inner * 60) + (ax1_inner * 12)) + (ax2_inner * 4)) + ax3_inner) + 360))] + placeholder2[((((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 24))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 115200) + ((((int)blockIdx.x) >> 2) * 38400)) + ((((int)threadIdx.x) / 20) * 19200)) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 20) >> 1) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 230400))] = max((Conv2dOutput[((((((ax0_inner * 60) + (ax1_inner * 12)) + (ax2_inner * 4)) + ax3_inner) + 480))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 115200) + ((((int)blockIdx.x) >> 2) * 38400)) + ((((int)threadIdx.x) / 20) * 19200)) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 20) >> 1) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 230408))] = max((Conv2dOutput[((((((ax0_inner * 60) + (ax1_inner * 12)) + (ax2_inner * 4)) + ax3_inner) + 600))] + placeholder2[((((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 8))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 115200) + ((((int)blockIdx.x) >> 2) * 38400)) + ((((int)threadIdx.x) / 20) * 19200)) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 20) >> 1) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 230416))] = max((Conv2dOutput[((((((ax0_inner * 60) + (ax1_inner * 12)) + (ax2_inner * 4)) + ax3_inner) + 720))] + placeholder2[((((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 16))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 115200) + ((((int)blockIdx.x) >> 2) * 38400)) + ((((int)threadIdx.x) / 20) * 19200)) + (ax1_inner * 3840)) + (((((int)threadIdx.x) % 20) >> 1) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 230424))] = max((Conv2dOutput[((((((ax0_inner * 60) + (ax1_inner * 12)) + (ax2_inner * 4)) + ax3_inner) + 840))] + placeholder2[((((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 1) * 4)) + ax3_inner) + 24))]), 0.000000e+00f);
        }
      }
    }
  }
}


