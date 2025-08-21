
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
  float Conv2dOutput[4];
  __shared__ float PaddedInput_shared[2560];
  __shared__ float placeholder_shared[1280];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2048) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 2560) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 512) + ((int)threadIdx.x)) < 640) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2048) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2048) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 1280) * 163840) + ((((int)blockIdx.x) >> 5) * 40960)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2048) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 1280) / 160) * 5120)) + (((((int)blockIdx.x) & 31) >> 2) * 640)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2048) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 160) / 40) * 160)) + (rc_outer_outer * 40)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2048) + (((int)threadIdx.x) * 4)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 40)))];
          }
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((int)threadIdx.x) >> 5)) < 40) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 512) + ((int)threadIdx.x)) < 1280) {
          placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 512) + ((int)threadIdx.x)))] = placeholder1[((((((rc_outer_outer * 5120) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 2048)) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)))];
        }
      }
    }
    __syncthreads();
    for (int rc_inner = 0; rc_inner < 40; ++rc_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 40) + rc_inner))] * placeholder_shared[(((rc_inner * 32) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 40) + rc_inner))] * placeholder_shared[((((rc_inner * 32) + (((int)threadIdx.x) & 7)) + 8))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 40) + rc_inner))] * placeholder_shared[((((rc_inner * 32) + (((int)threadIdx.x) & 7)) + 16))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 40) + rc_inner))] * placeholder_shared[((((rc_inner * 32) + (((int)threadIdx.x) & 7)) + 24))]));
    }
  }
  T_relu[(((((((((((int)threadIdx.x) >> 8) * 131072) + ((((int)blockIdx.x) >> 5) * 32768)) + (((((int)threadIdx.x) & 255) >> 5) * 4096)) + (((((int)blockIdx.x) & 31) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 7)))] = max((Conv2dOutput[(0)] + placeholder2[((((((int)blockIdx.x) & 3) * 32) + (((int)threadIdx.x) & 7)))]), 0.000000e+00f);
  T_relu[((((((((((((int)threadIdx.x) >> 8) * 131072) + ((((int)blockIdx.x) >> 5) * 32768)) + (((((int)threadIdx.x) & 255) >> 5) * 4096)) + (((((int)blockIdx.x) & 31) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 7)) + 8))] = max((Conv2dOutput[(1)] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + (((int)threadIdx.x) & 7)) + 8))]), 0.000000e+00f);
  T_relu[((((((((((((int)threadIdx.x) >> 8) * 131072) + ((((int)blockIdx.x) >> 5) * 32768)) + (((((int)threadIdx.x) & 255) >> 5) * 4096)) + (((((int)blockIdx.x) & 31) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 7)) + 16))] = max((Conv2dOutput[(2)] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + (((int)threadIdx.x) & 7)) + 16))]), 0.000000e+00f);
  T_relu[((((((((((((int)threadIdx.x) >> 8) * 131072) + ((((int)blockIdx.x) >> 5) * 32768)) + (((((int)threadIdx.x) & 255) >> 5) * 4096)) + (((((int)blockIdx.x) & 31) >> 2) * 512)) + (((((int)threadIdx.x) & 31) >> 3) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 7)) + 24))] = max((Conv2dOutput[(3)] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + (((int)threadIdx.x) & 7)) + 24))]), 0.000000e+00f);
}


