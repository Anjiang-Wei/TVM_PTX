
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2) {
  float Conv2dOutput[64];
  __shared__ float PaddedInput_shared[1024];
  __shared__ float placeholder_shared[128];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 2; ++yy_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 2; ++xx_inner_init) {
        Conv2dOutput[((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_outer_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_outer_inner_init) + 8))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_outer_inner_init) + 16))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_outer_inner_init) + 24))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_outer_inner_init) + 32))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_outer_inner_init) + 40))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_outer_inner_init) + 48))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_outer_inner_init) + 56))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 36; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 8; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + ((int)threadIdx.x)))] = placeholder[((((((((int)blockIdx.x) * 36864) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4608)) + ((((int)threadIdx.x) >> 2) * 144)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 128) + ((int)threadIdx.x)))];
    __syncthreads();
    for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
      for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
        for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
          for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
            Conv2dOutput[((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner))] = (Conv2dOutput[((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 256) + (yy_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner))]));
            Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 8))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 8))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 256) + (yy_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_inner * 32) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner) + 8))]));
            Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 16))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 16))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 256) + (yy_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_inner * 32) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner) + 16))]));
            Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 24))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 24))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 256) + (yy_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_inner * 32) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner) + 24))]));
            Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 32))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 32))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 256) + (yy_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + (xx_inner * 4)) + rc_inner) + 64))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner))]));
            Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 40))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 40))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 256) + (yy_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + (xx_inner * 4)) + rc_inner) + 64))] * placeholder_shared[(((((rc_inner * 32) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner) + 8))]));
            Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 48))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 48))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 256) + (yy_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + (xx_inner * 4)) + rc_inner) + 64))] * placeholder_shared[(((((rc_inner * 32) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner) + 16))]));
            Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 56))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_outer_inner) + 56))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 256) + (yy_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + (xx_inner * 4)) + rc_inner) + 64))] * placeholder_shared[(((((rc_inner * 32) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner) + 24))]));
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_add[((((((((((int)blockIdx.x) * 8192) + ((((int)threadIdx.x) >> 5) * 2048)) + (ax1_inner * 1024)) + (((((int)threadIdx.x) & 31) >> 2) * 64)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))] = (Conv2dOutput[((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 3) * 2) + ax3_inner))]);
        T_add[(((((((((((int)blockIdx.x) * 8192) + ((((int)threadIdx.x) >> 5) * 2048)) + (ax1_inner * 1024)) + (((((int)threadIdx.x) & 31) >> 2) * 64)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 8))] = (Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 8))] + placeholder2[(((((((int)threadIdx.x) & 3) * 2) + ax3_inner) + 8))]);
        T_add[(((((((((((int)blockIdx.x) * 8192) + ((((int)threadIdx.x) >> 5) * 2048)) + (ax1_inner * 1024)) + (((((int)threadIdx.x) & 31) >> 2) * 64)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 16))] = (Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 16))] + placeholder2[(((((((int)threadIdx.x) & 3) * 2) + ax3_inner) + 16))]);
        T_add[(((((((((((int)blockIdx.x) * 8192) + ((((int)threadIdx.x) >> 5) * 2048)) + (ax1_inner * 1024)) + (((((int)threadIdx.x) & 31) >> 2) * 64)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 24))] = (Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 24))] + placeholder2[(((((((int)threadIdx.x) & 3) * 2) + ax3_inner) + 24))]);
        T_add[(((((((((((int)blockIdx.x) * 8192) + ((((int)threadIdx.x) >> 5) * 2048)) + (ax1_inner * 1024)) + (((((int)threadIdx.x) & 31) >> 2) * 64)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 512))] = (Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 32))] + placeholder2[((((((int)threadIdx.x) & 3) * 2) + ax3_inner))]);
        T_add[(((((((((((int)blockIdx.x) * 8192) + ((((int)threadIdx.x) >> 5) * 2048)) + (ax1_inner * 1024)) + (((((int)threadIdx.x) & 31) >> 2) * 64)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 520))] = (Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 40))] + placeholder2[(((((((int)threadIdx.x) & 3) * 2) + ax3_inner) + 8))]);
        T_add[(((((((((((int)blockIdx.x) * 8192) + ((((int)threadIdx.x) >> 5) * 2048)) + (ax1_inner * 1024)) + (((((int)threadIdx.x) & 31) >> 2) * 64)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 528))] = (Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 48))] + placeholder2[(((((((int)threadIdx.x) & 3) * 2) + ax3_inner) + 16))]);
        T_add[(((((((((((int)blockIdx.x) * 8192) + ((((int)threadIdx.x) >> 5) * 2048)) + (ax1_inner * 1024)) + (((((int)threadIdx.x) & 31) >> 2) * 64)) + (ax2_inner * 32)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 536))] = (Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 56))] + placeholder2[(((((((int)threadIdx.x) & 3) * 2) + ax3_inner) + 24))]);
      }
    }
  }
}


