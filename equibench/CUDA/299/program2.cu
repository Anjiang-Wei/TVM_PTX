
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
  float Conv2dOutput[2];
  __shared__ float PaddedInput_shared[1200];
  __shared__ float placeholder_shared[36];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 64; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 64) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 1200) {
        if (((int)threadIdx.x) < 19) {
          PaddedInput_shared[(((((int)threadIdx.x) * 64) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[((((((((((int)blockIdx.x) / 24) * 115200) + ((((((int)threadIdx.x) * 64) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 60) * 5760)) + (((((int)blockIdx.x) % 24) >> 2) * 960)) + (((((((int)threadIdx.x) * 64) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 60) / 6) * 96)) + (rc_outer_outer * 6)) + (((((int)threadIdx.x) * 64) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 6)))];
        }
      }
    }
    if (((int)threadIdx.x) < 36) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 144) + ((((int)threadIdx.x) / 6) * 24)) + ((((int)blockIdx.x) & 3) * 6)) + (((int)threadIdx.x) % 6)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 3; ++rc_outer_inner) {
      for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
        Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 6) * 6) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 12) + (rc_inner * 6)) + (((int)threadIdx.x) % 6)))]));
        Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 6) * 6) + (rc_outer_inner * 2)) + rc_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 12) + (rc_inner * 6)) + (((int)threadIdx.x) % 6)))]));
      }
    }
  }
  T_add[((((((((((int)blockIdx.x) / 24) * 28800) + ((((int)threadIdx.x) / 60) * 1440)) + (((((int)blockIdx.x) % 24) >> 2) * 240)) + (((((int)threadIdx.x) % 60) / 6) * 24)) + ((((int)blockIdx.x) & 3) * 6)) + (((int)threadIdx.x) % 6)))] = (Conv2dOutput[(0)] + placeholder2[((((((int)blockIdx.x) & 3) * 6) + (((int)threadIdx.x) % 6)))]);
  T_add[(((((((((((int)blockIdx.x) / 24) * 28800) + ((((int)threadIdx.x) / 60) * 1440)) + (((((int)blockIdx.x) % 24) >> 2) * 240)) + (((((int)threadIdx.x) % 60) / 6) * 24)) + ((((int)blockIdx.x) & 3) * 6)) + (((int)threadIdx.x) % 6)) + 14400))] = (Conv2dOutput[(1)] + placeholder2[((((((int)blockIdx.x) & 3) * 6) + (((int)threadIdx.x) % 6)))]);
}


