
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
  float Conv2dOutput[896];
  __shared__ float PaddedInput_shared[100352];
  __shared__ float placeholder_shared[1024];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
      for (int ff_outer_inner_init = 0; ff_outer_inner_init < 8; ++ff_outer_inner_init) {
        for (int yy_inner_init = 0; yy_inner_init < 14; ++yy_inner_init) {
          Conv2dOutput[(((((nn_outer_inner_init * 448) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + ff_outer_inner_init))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_outer_inner_init * 448) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + ff_outer_inner_init) + 8))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 224; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + ((int)threadIdx.x)))] = placeholder[(((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1792) + ((((int)threadIdx.x) >> 4) * 64)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 2048) + ((((int)threadIdx.x) >> 6) * 128)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 448))] = placeholder1[((((((rc_outer_outer * 2048) + ((((int)threadIdx.x) >> 6) * 128)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) & 63)) + 896))];
    if (((int)threadIdx.x) < 128) {
      placeholder_shared[((((int)threadIdx.x) + 896))] = placeholder1[((((((rc_outer_outer * 2048) + ((((int)threadIdx.x) >> 6) * 128)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) & 63)) + 1792))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
        for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
          for (int ff_outer_inner = 0; ff_outer_inner < 8; ++ff_outer_inner) {
            for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
              for (int yy_inner = 0; yy_inner < 14; ++yy_inner) {
                Conv2dOutput[(((((nn_outer_inner * 448) + (yy_inner * 32)) + (xx_outer_inner * 16)) + ff_outer_inner))] = (Conv2dOutput[(((((nn_outer_inner * 448) + (yy_inner * 32)) + (xx_outer_inner * 16)) + ff_outer_inner))] + (PaddedInput_shared[((((((((nn_outer_inner * 50176) + ((((int)threadIdx.x) / 112) * 12544)) + (yy_inner * 896)) + (((((int)threadIdx.x) % 112) >> 3) * 64)) + (xx_outer_inner * 32)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 7) * 8)) + ff_outer_inner))]));
                Conv2dOutput[((((((nn_outer_inner * 448) + (yy_inner * 32)) + (xx_outer_inner * 16)) + ff_outer_inner) + 8))] = (Conv2dOutput[((((((nn_outer_inner * 448) + (yy_inner * 32)) + (xx_outer_inner * 16)) + ff_outer_inner) + 8))] + (PaddedInput_shared[(((((((((nn_outer_inner * 50176) + ((((int)threadIdx.x) / 112) * 12544)) + (yy_inner * 896)) + (((((int)threadIdx.x) % 112) >> 3) * 64)) + (xx_outer_inner * 32)) + (rc_outer_inner * 2)) + rc_inner) + 16))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 7) * 8)) + ff_outer_inner))]));
              }
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 14; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
          T_relu[(((((((((ax0_inner * 401408) + ((((int)threadIdx.x) / 112) * 100352)) + (ax1_inner * 7168)) + (((((int)threadIdx.x) % 112) >> 3) * 512)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 64)) + ((((int)threadIdx.x) & 7) * 8)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 448) + (ax1_inner * 32)) + (ax2_inner * 8)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 64) + ((((int)threadIdx.x) & 7) * 8)) + ax3_inner))]), 0.000000e+00f);
        }
      }
    }
  }
}


