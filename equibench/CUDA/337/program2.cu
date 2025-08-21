
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
  float Conv2dOutput[512];
  __shared__ float PaddedInput_shared[1530];
  __shared__ float placeholder_shared[576];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 4; ++yy_outer_inner_init) {
    for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 8; ++xx_inner_init) {
        Conv2dOutput[((((nn_inner_init * 128) + (yy_outer_inner_init * 32)) + (xx_inner_init * 4)))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_outer_inner_init * 32)) + (xx_inner_init * 4)) + 256))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_outer_inner_init * 32)) + (xx_inner_init * 4)) + 1))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_outer_inner_init * 32)) + (xx_inner_init * 4)) + 257))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_outer_inner_init * 32)) + (xx_inner_init * 4)) + 2))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_outer_inner_init * 32)) + (xx_inner_init * 4)) + 258))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_outer_inner_init * 32)) + (xx_inner_init * 4)) + 3))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_outer_inner_init * 32)) + (xx_inner_init * 4)) + 259))] = 0.000000e+00f;
      }
    }
  }
  for (int rx_outer_outer = 0; rx_outer_outer < 3; ++rx_outer_outer) {
    for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
      __syncthreads();
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 96; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) < 1530) {
          PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) / 45) * 3264) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) % 45) / 3) * 192)) + (rx_outer_outer * 192)) + (rc_outer_outer * 3)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) % 3)))];
        }
      }
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 36; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)))] = placeholder1[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)) / 192) * 110592) + (rx_outer_outer * 36864)) + (rc_outer_outer * 576)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)) % 192) >> 6) * 192)) + (((int)blockIdx.x) * 64)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)) & 63)))];
      }
      __syncthreads();
      for (int yy_outer_inner = 0; yy_outer_inner < 4; ++yy_outer_inner) {
        for (int ry_inner = 0; ry_inner < 3; ++ry_inner) {
          for (int rc_inner = 0; rc_inner < 3; ++rc_inner) {
            for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
              for (int xx_inner = 0; xx_inner < 8; ++xx_inner) {
                Conv2dOutput[((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)))] = (Conv2dOutput[((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)))] + (PaddedInput_shared[((((((nn_inner * 765) + (yy_outer_inner * 90)) + (ry_inner * 45)) + (xx_inner * 6)) + rc_inner))] * placeholder_shared[((((ry_inner * 192) + (rc_inner * 64)) + (((int)threadIdx.x) * 4)))]));
                Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 256))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 256))] + (PaddedInput_shared[(((((((nn_inner * 765) + (yy_outer_inner * 90)) + (ry_inner * 45)) + (xx_inner * 6)) + rc_inner) + 360))] * placeholder_shared[((((ry_inner * 192) + (rc_inner * 64)) + (((int)threadIdx.x) * 4)))]));
                Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 1))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 1))] + (PaddedInput_shared[((((((nn_inner * 765) + (yy_outer_inner * 90)) + (ry_inner * 45)) + (xx_inner * 6)) + rc_inner))] * placeholder_shared[(((((ry_inner * 192) + (rc_inner * 64)) + (((int)threadIdx.x) * 4)) + 1))]));
                Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 257))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 257))] + (PaddedInput_shared[(((((((nn_inner * 765) + (yy_outer_inner * 90)) + (ry_inner * 45)) + (xx_inner * 6)) + rc_inner) + 360))] * placeholder_shared[(((((ry_inner * 192) + (rc_inner * 64)) + (((int)threadIdx.x) * 4)) + 1))]));
                Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 2))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 2))] + (PaddedInput_shared[((((((nn_inner * 765) + (yy_outer_inner * 90)) + (ry_inner * 45)) + (xx_inner * 6)) + rc_inner))] * placeholder_shared[(((((ry_inner * 192) + (rc_inner * 64)) + (((int)threadIdx.x) * 4)) + 2))]));
                Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 258))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 258))] + (PaddedInput_shared[(((((((nn_inner * 765) + (yy_outer_inner * 90)) + (ry_inner * 45)) + (xx_inner * 6)) + rc_inner) + 360))] * placeholder_shared[(((((ry_inner * 192) + (rc_inner * 64)) + (((int)threadIdx.x) * 4)) + 2))]));
                Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 3))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 3))] + (PaddedInput_shared[((((((nn_inner * 765) + (yy_outer_inner * 90)) + (ry_inner * 45)) + (xx_inner * 6)) + rc_inner))] * placeholder_shared[(((((ry_inner * 192) + (rc_inner * 64)) + (((int)threadIdx.x) * 4)) + 3))]));
                Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 259))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_outer_inner * 32)) + (xx_inner * 4)) + 259))] + (PaddedInput_shared[(((((((nn_inner * 765) + (yy_outer_inner * 90)) + (ry_inner * 45)) + (xx_inner * 6)) + rc_inner) + 360))] * placeholder_shared[(((((ry_inner * 192) + (rc_inner * 64)) + (((int)threadIdx.x) * 4)) + 3))]));
              }
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 8; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
          T_relu[(((((((ax0_inner * 12288) + (ax1_inner * 1536)) + (ax2_inner * 192)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) * 4)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 128) + (ax1_inner * 32)) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 64) + (((int)threadIdx.x) * 4)) + ax3_inner))]), 0.000000e+00f);
          T_relu[((((((((ax0_inner * 12288) + (ax1_inner * 1536)) + (ax2_inner * 192)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) * 4)) + ax3_inner) + 6144))] = max((Conv2dOutput[((((((ax0_inner * 128) + (ax1_inner * 32)) + (ax2_inner * 4)) + ax3_inner) + 256))] + placeholder2[((((((int)blockIdx.x) * 64) + (((int)threadIdx.x) * 4)) + ax3_inner))]), 0.000000e+00f);
        }
      }
    }
  }
}


