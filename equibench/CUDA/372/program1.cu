
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
  float Conv2dOutput[48];
  __shared__ float PaddedInput_shared[6144];
  __shared__ float placeholder_shared[64];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
      for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
        Conv2dOutput[((((nn_inner_init * 4) + (yy_outer_inner_init * 2)) + ff_outer_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 4) + (yy_outer_inner_init * 2)) + ff_outer_inner_init) + 8))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 4) + (yy_outer_inner_init * 2)) + ff_outer_inner_init) + 16))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 4) + (yy_outer_inner_init * 2)) + ff_outer_inner_init) + 24))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 4) + (yy_outer_inner_init * 2)) + ff_outer_inner_init) + 32))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 4) + (yy_outer_inner_init * 2)) + ff_outer_inner_init) + 40))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 48; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + ((int)threadIdx.x)))] = placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 6)) / 12) * 460800) + ((((int)blockIdx.x) / 30) * 46080)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) >> 6)) % 12) * 3840)) + (((((int)blockIdx.x) % 30) >> 1) * 256)) + (((((int)threadIdx.x) & 63) >> 3) * 32)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 64) {
        if (((int)threadIdx.x) < 32) {
          placeholder_shared[(((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[(((((rc_outer_outer * 128) + ((((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 3) * 16)) + ((((int)blockIdx.x) & 1) * 8)) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 7)))];
        }
      }
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
        for (int rc_inner = 0; rc_inner < 8; ++rc_inner) {
          for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
            Conv2dOutput[((((nn_inner * 4) + (yy_outer_inner * 2)) + ff_outer_inner))] = (Conv2dOutput[((((nn_inner * 4) + (yy_outer_inner * 2)) + ff_outer_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 6) * 1536) + (nn_inner * 768)) + (((((int)threadIdx.x) & 63) >> 5) * 128)) + (yy_outer_inner * 64)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 8) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner))]));
            Conv2dOutput[(((((nn_inner * 4) + (yy_outer_inner * 2)) + ff_outer_inner) + 8))] = (Conv2dOutput[(((((nn_inner * 4) + (yy_outer_inner * 2)) + ff_outer_inner) + 8))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 6) * 1536) + (nn_inner * 768)) + (((((int)threadIdx.x) & 63) >> 5) * 128)) + (yy_outer_inner * 64)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + rc_inner) + 256))] * placeholder_shared[((((rc_inner * 8) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner))]));
            Conv2dOutput[(((((nn_inner * 4) + (yy_outer_inner * 2)) + ff_outer_inner) + 16))] = (Conv2dOutput[(((((nn_inner * 4) + (yy_outer_inner * 2)) + ff_outer_inner) + 16))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 6) * 1536) + (nn_inner * 768)) + (((((int)threadIdx.x) & 63) >> 5) * 128)) + (yy_outer_inner * 64)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + rc_inner) + 512))] * placeholder_shared[((((rc_inner * 8) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner))]));
            Conv2dOutput[(((((nn_inner * 4) + (yy_outer_inner * 2)) + ff_outer_inner) + 24))] = (Conv2dOutput[(((((nn_inner * 4) + (yy_outer_inner * 2)) + ff_outer_inner) + 24))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 6) * 1536) + (nn_inner * 768)) + (((((int)threadIdx.x) & 63) >> 5) * 128)) + (yy_outer_inner * 64)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + rc_inner) + 3072))] * placeholder_shared[((((rc_inner * 8) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner))]));
            Conv2dOutput[(((((nn_inner * 4) + (yy_outer_inner * 2)) + ff_outer_inner) + 32))] = (Conv2dOutput[(((((nn_inner * 4) + (yy_outer_inner * 2)) + ff_outer_inner) + 32))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 6) * 1536) + (nn_inner * 768)) + (((((int)threadIdx.x) & 63) >> 5) * 128)) + (yy_outer_inner * 64)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + rc_inner) + 3328))] * placeholder_shared[((((rc_inner * 8) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner))]));
            Conv2dOutput[(((((nn_inner * 4) + (yy_outer_inner * 2)) + ff_outer_inner) + 40))] = (Conv2dOutput[(((((nn_inner * 4) + (yy_outer_inner * 2)) + ff_outer_inner) + 40))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 6) * 1536) + (nn_inner * 768)) + (((((int)threadIdx.x) & 63) >> 5) * 128)) + (yy_outer_inner * 64)) + (((((int)threadIdx.x) & 31) >> 2) * 8)) + rc_inner) + 3584))] * placeholder_shared[((((rc_inner * 8) + ((((int)threadIdx.x) & 3) * 2)) + ff_outer_inner))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_add[((((((((((((((int)threadIdx.x) >> 6) * 460800) + (ax0_inner * 230400)) + ((((int)blockIdx.x) / 30) * 23040)) + (((((int)threadIdx.x) & 63) >> 5) * 3840)) + (ax1_inner * 1920)) + (((((int)blockIdx.x) % 30) >> 1) * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + ((((int)blockIdx.x) & 1) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))] = (Conv2dOutput[((((ax0_inner * 4) + (ax1_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 8) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))]);
        T_add[(((((((((((((((int)threadIdx.x) >> 6) * 460800) + (ax0_inner * 230400)) + ((((int)blockIdx.x) / 30) * 23040)) + (((((int)threadIdx.x) & 63) >> 5) * 3840)) + (ax1_inner * 1920)) + (((((int)blockIdx.x) % 30) >> 1) * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + ((((int)blockIdx.x) & 1) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 7680))] = (Conv2dOutput[(((((ax0_inner * 4) + (ax1_inner * 2)) + ax3_inner) + 8))] + placeholder2[(((((((int)blockIdx.x) & 1) * 8) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))]);
        T_add[(((((((((((((((int)threadIdx.x) >> 6) * 460800) + (ax0_inner * 230400)) + ((((int)blockIdx.x) / 30) * 23040)) + (((((int)threadIdx.x) & 63) >> 5) * 3840)) + (ax1_inner * 1920)) + (((((int)blockIdx.x) % 30) >> 1) * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + ((((int)blockIdx.x) & 1) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 15360))] = (Conv2dOutput[(((((ax0_inner * 4) + (ax1_inner * 2)) + ax3_inner) + 16))] + placeholder2[(((((((int)blockIdx.x) & 1) * 8) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))]);
        T_add[(((((((((((((((int)threadIdx.x) >> 6) * 460800) + (ax0_inner * 230400)) + ((((int)blockIdx.x) / 30) * 23040)) + (((((int)threadIdx.x) & 63) >> 5) * 3840)) + (ax1_inner * 1920)) + (((((int)blockIdx.x) % 30) >> 1) * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + ((((int)blockIdx.x) & 1) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 921600))] = (Conv2dOutput[(((((ax0_inner * 4) + (ax1_inner * 2)) + ax3_inner) + 24))] + placeholder2[(((((((int)blockIdx.x) & 1) * 8) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))]);
        T_add[(((((((((((((((int)threadIdx.x) >> 6) * 460800) + (ax0_inner * 230400)) + ((((int)blockIdx.x) / 30) * 23040)) + (((((int)threadIdx.x) & 63) >> 5) * 3840)) + (ax1_inner * 1920)) + (((((int)blockIdx.x) % 30) >> 1) * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + ((((int)blockIdx.x) & 1) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 929280))] = (Conv2dOutput[(((((ax0_inner * 4) + (ax1_inner * 2)) + ax3_inner) + 32))] + placeholder2[(((((((int)blockIdx.x) & 1) * 8) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))]);
        T_add[(((((((((((((((int)threadIdx.x) >> 6) * 460800) + (ax0_inner * 230400)) + ((((int)blockIdx.x) / 30) * 23040)) + (((((int)threadIdx.x) & 63) >> 5) * 3840)) + (ax1_inner * 1920)) + (((((int)blockIdx.x) % 30) >> 1) * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + ((((int)blockIdx.x) & 1) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner) + 936960))] = (Conv2dOutput[(((((ax0_inner * 4) + (ax1_inner * 2)) + ax3_inner) + 40))] + placeholder2[(((((((int)blockIdx.x) & 1) * 8) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))]);
      }
    }
  }
}


