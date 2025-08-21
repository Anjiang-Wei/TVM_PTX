
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
  float Conv2dOutput[32];
  __shared__ float PaddedInput_shared[5120];
  __shared__ float placeholder_shared[3200];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 4; ++yy_outer_inner_init) {
    Conv2dOutput[(yy_outer_inner_init)] = 0.000000e+00f;
    Conv2dOutput[((yy_outer_inner_init + 4))] = 0.000000e+00f;
    Conv2dOutput[((yy_outer_inner_init + 8))] = 0.000000e+00f;
    Conv2dOutput[((yy_outer_inner_init + 12))] = 0.000000e+00f;
    Conv2dOutput[((yy_outer_inner_init + 16))] = 0.000000e+00f;
    Conv2dOutput[((yy_outer_inner_init + 20))] = 0.000000e+00f;
    Conv2dOutput[((yy_outer_inner_init + 24))] = 0.000000e+00f;
    Conv2dOutput[((yy_outer_inner_init + 28))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 3; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 20; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1600) + (((int)threadIdx.x) * 20)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 5120) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + ((int)threadIdx.x)) < 256) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1600) + (((int)threadIdx.x) * 20)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 1280) * 1280) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((((int)threadIdx.x) * 20) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 80)) & 15) * 80)) + (((((int)threadIdx.x) * 20) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 80)))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 15360) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1600) + (((int)threadIdx.x) * 20)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 1280) * 3840)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((((int)threadIdx.x) * 20) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 80)) & 15) * 240)) + (rc_outer_outer * 80)) + (((((int)threadIdx.x) * 20) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 80)))];
          }
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 40; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 80) + ((int)threadIdx.x)))] = placeholder1[((((((rc_outer_outer * 6400) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 160)) + ((((int)threadIdx.x) / 40) * 80)) + ((((int)blockIdx.x) & 1) * 40)) + (((int)threadIdx.x) % 40)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 5; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 4; ++yy_outer_inner) {
        for (int rc_inner = 0; rc_inner < 16; ++rc_inner) {
          Conv2dOutput[(yy_outer_inner)] = (Conv2dOutput[(yy_outer_inner)] + (PaddedInput_shared[(((((yy_outer_inner * 1280) + ((((int)threadIdx.x) / 40) * 80)) + (rc_outer_inner * 16)) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 640) + (rc_inner * 40)) + (((int)threadIdx.x) % 40)))]));
          Conv2dOutput[((yy_outer_inner + 4))] = (Conv2dOutput[((yy_outer_inner + 4))] + (PaddedInput_shared[((((((yy_outer_inner * 1280) + ((((int)threadIdx.x) / 40) * 80)) + (rc_outer_inner * 16)) + rc_inner) + 160))] * placeholder_shared[((((rc_outer_inner * 640) + (rc_inner * 40)) + (((int)threadIdx.x) % 40)))]));
          Conv2dOutput[((yy_outer_inner + 8))] = (Conv2dOutput[((yy_outer_inner + 8))] + (PaddedInput_shared[((((((yy_outer_inner * 1280) + ((((int)threadIdx.x) / 40) * 80)) + (rc_outer_inner * 16)) + rc_inner) + 320))] * placeholder_shared[((((rc_outer_inner * 640) + (rc_inner * 40)) + (((int)threadIdx.x) % 40)))]));
          Conv2dOutput[((yy_outer_inner + 12))] = (Conv2dOutput[((yy_outer_inner + 12))] + (PaddedInput_shared[((((((yy_outer_inner * 1280) + ((((int)threadIdx.x) / 40) * 80)) + (rc_outer_inner * 16)) + rc_inner) + 480))] * placeholder_shared[((((rc_outer_inner * 640) + (rc_inner * 40)) + (((int)threadIdx.x) % 40)))]));
          Conv2dOutput[((yy_outer_inner + 16))] = (Conv2dOutput[((yy_outer_inner + 16))] + (PaddedInput_shared[((((((yy_outer_inner * 1280) + ((((int)threadIdx.x) / 40) * 80)) + (rc_outer_inner * 16)) + rc_inner) + 640))] * placeholder_shared[((((rc_outer_inner * 640) + (rc_inner * 40)) + (((int)threadIdx.x) % 40)))]));
          Conv2dOutput[((yy_outer_inner + 20))] = (Conv2dOutput[((yy_outer_inner + 20))] + (PaddedInput_shared[((((((yy_outer_inner * 1280) + ((((int)threadIdx.x) / 40) * 80)) + (rc_outer_inner * 16)) + rc_inner) + 800))] * placeholder_shared[((((rc_outer_inner * 640) + (rc_inner * 40)) + (((int)threadIdx.x) % 40)))]));
          Conv2dOutput[((yy_outer_inner + 24))] = (Conv2dOutput[((yy_outer_inner + 24))] + (PaddedInput_shared[((((((yy_outer_inner * 1280) + ((((int)threadIdx.x) / 40) * 80)) + (rc_outer_inner * 16)) + rc_inner) + 960))] * placeholder_shared[((((rc_outer_inner * 640) + (rc_inner * 40)) + (((int)threadIdx.x) % 40)))]));
          Conv2dOutput[((yy_outer_inner + 28))] = (Conv2dOutput[((yy_outer_inner + 28))] + (PaddedInput_shared[((((((yy_outer_inner * 1280) + ((((int)threadIdx.x) / 40) * 80)) + (rc_outer_inner * 16)) + rc_inner) + 1120))] * placeholder_shared[((((rc_outer_inner * 640) + (rc_inner * 40)) + (((int)threadIdx.x) % 40)))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
    T_add[(((((((((int)blockIdx.x) >> 1) * 5120) + (ax1_inner * 1280)) + ((((int)threadIdx.x) / 40) * 80)) + ((((int)blockIdx.x) & 1) * 40)) + (((int)threadIdx.x) % 40)))] = (Conv2dOutput[(ax1_inner)] + placeholder2[((((((int)blockIdx.x) & 1) * 40) + (((int)threadIdx.x) % 40)))]);
    T_add[((((((((((int)blockIdx.x) >> 1) * 5120) + (ax1_inner * 1280)) + ((((int)threadIdx.x) / 40) * 80)) + ((((int)blockIdx.x) & 1) * 40)) + (((int)threadIdx.x) % 40)) + 160))] = (Conv2dOutput[((ax1_inner + 4))] + placeholder2[((((((int)blockIdx.x) & 1) * 40) + (((int)threadIdx.x) % 40)))]);
    T_add[((((((((((int)blockIdx.x) >> 1) * 5120) + (ax1_inner * 1280)) + ((((int)threadIdx.x) / 40) * 80)) + ((((int)blockIdx.x) & 1) * 40)) + (((int)threadIdx.x) % 40)) + 320))] = (Conv2dOutput[((ax1_inner + 8))] + placeholder2[((((((int)blockIdx.x) & 1) * 40) + (((int)threadIdx.x) % 40)))]);
    T_add[((((((((((int)blockIdx.x) >> 1) * 5120) + (ax1_inner * 1280)) + ((((int)threadIdx.x) / 40) * 80)) + ((((int)blockIdx.x) & 1) * 40)) + (((int)threadIdx.x) % 40)) + 480))] = (Conv2dOutput[((ax1_inner + 12))] + placeholder2[((((((int)blockIdx.x) & 1) * 40) + (((int)threadIdx.x) % 40)))]);
    T_add[((((((((((int)blockIdx.x) >> 1) * 5120) + (ax1_inner * 1280)) + ((((int)threadIdx.x) / 40) * 80)) + ((((int)blockIdx.x) & 1) * 40)) + (((int)threadIdx.x) % 40)) + 640))] = (Conv2dOutput[((ax1_inner + 16))] + placeholder2[((((((int)blockIdx.x) & 1) * 40) + (((int)threadIdx.x) % 40)))]);
    T_add[((((((((((int)blockIdx.x) >> 1) * 5120) + (ax1_inner * 1280)) + ((((int)threadIdx.x) / 40) * 80)) + ((((int)blockIdx.x) & 1) * 40)) + (((int)threadIdx.x) % 40)) + 800))] = (Conv2dOutput[((ax1_inner + 20))] + placeholder2[((((((int)blockIdx.x) & 1) * 40) + (((int)threadIdx.x) % 40)))]);
    T_add[((((((((((int)blockIdx.x) >> 1) * 5120) + (ax1_inner * 1280)) + ((((int)threadIdx.x) / 40) * 80)) + ((((int)blockIdx.x) & 1) * 40)) + (((int)threadIdx.x) % 40)) + 960))] = (Conv2dOutput[((ax1_inner + 24))] + placeholder2[((((((int)blockIdx.x) & 1) * 40) + (((int)threadIdx.x) % 40)))]);
    T_add[((((((((((int)blockIdx.x) >> 1) * 5120) + (ax1_inner * 1280)) + ((((int)threadIdx.x) / 40) * 80)) + ((((int)blockIdx.x) & 1) * 40)) + (((int)threadIdx.x) % 40)) + 1120))] = (Conv2dOutput[((ax1_inner + 28))] + placeholder2[((((((int)blockIdx.x) & 1) * 40) + (((int)threadIdx.x) % 40)))]);
  }
}


