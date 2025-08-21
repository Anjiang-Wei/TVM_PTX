
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
  float compute[28];
  __shared__ float pad_temp_shared[18560];
  __shared__ float placeholder_shared[18432];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 7; ++xx_outer_inner_init) {
    compute[((xx_outer_inner_init * 2))] = 0.000000e+00f;
    compute[(((xx_outer_inner_init * 2) + 14))] = 0.000000e+00f;
    compute[(((xx_outer_inner_init * 2) + 1))] = 0.000000e+00f;
    compute[(((xx_outer_inner_init * 2) + 15))] = 0.000000e+00f;
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 145; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    pad_temp_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + ((int)threadIdx.x)))] = (((1 <= (((((int)blockIdx.x) >> 2) * 4) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer / 29))) && (1 <= (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 29))) ? placeholder[((((((((((int)blockIdx.x) >> 2) * 57344) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer / 29) * 14336)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 29) * 512)) + ((((int)blockIdx.x) & 3) * 128)) + ((int)threadIdx.x)) - 14848))] : 0.000000e+00f);
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 144; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
    placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128) + ((int)threadIdx.x)))] = placeholder1[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 512) + ((((int)blockIdx.x) & 3) * 128)) + ((int)threadIdx.x)))];
  }
  __syncthreads();
  for (int rc_outer_inner = 0; rc_outer_inner < 16; ++rc_outer_inner) {
    for (int xx_outer_inner = 0; xx_outer_inner < 7; ++xx_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
        for (int ry_inner = 0; ry_inner < 3; ++ry_inner) {
          compute[(((xx_outer_inner * 2) + ff_outer_inner))] = (compute[(((xx_outer_inner * 2) + ff_outer_inner))] + (pad_temp_shared[(((((((((int)threadIdx.x) >> 6) * 7424) + (ry_inner * 3712)) + (xx_outer_inner * 256)) + (((((((int)threadIdx.x) & 63) * 2) + ff_outer_inner) >> 4) * 16)) + rc_outer_inner))] * placeholder_shared[(((((ry_inner * 6144) + (rc_outer_inner * 128)) + ((((int)threadIdx.x) & 63) * 2)) + ff_outer_inner))]));
          compute[((((xx_outer_inner * 2) + ff_outer_inner) + 14))] = (compute[((((xx_outer_inner * 2) + ff_outer_inner) + 14))] + (pad_temp_shared[((((((((((int)threadIdx.x) >> 6) * 7424) + (ry_inner * 3712)) + (xx_outer_inner * 256)) + (((((((int)threadIdx.x) & 63) * 2) + ff_outer_inner) >> 4) * 16)) + rc_outer_inner) + 1792))] * placeholder_shared[(((((ry_inner * 6144) + (rc_outer_inner * 128)) + ((((int)threadIdx.x) & 63) * 2)) + ff_outer_inner))]));
          compute[(((xx_outer_inner * 2) + ff_outer_inner))] = (compute[(((xx_outer_inner * 2) + ff_outer_inner))] + (pad_temp_shared[((((((((((int)threadIdx.x) >> 6) * 7424) + (ry_inner * 3712)) + (xx_outer_inner * 256)) + (((((((int)threadIdx.x) & 63) * 2) + ff_outer_inner) >> 4) * 16)) + rc_outer_inner) + 128))] * placeholder_shared[((((((ry_inner * 6144) + (rc_outer_inner * 128)) + ((((int)threadIdx.x) & 63) * 2)) + ff_outer_inner) + 2048))]));
          compute[((((xx_outer_inner * 2) + ff_outer_inner) + 14))] = (compute[((((xx_outer_inner * 2) + ff_outer_inner) + 14))] + (pad_temp_shared[((((((((((int)threadIdx.x) >> 6) * 7424) + (ry_inner * 3712)) + (xx_outer_inner * 256)) + (((((((int)threadIdx.x) & 63) * 2) + ff_outer_inner) >> 4) * 16)) + rc_outer_inner) + 1920))] * placeholder_shared[((((((ry_inner * 6144) + (rc_outer_inner * 128)) + ((((int)threadIdx.x) & 63) * 2)) + ff_outer_inner) + 2048))]));
          compute[(((xx_outer_inner * 2) + ff_outer_inner))] = (compute[(((xx_outer_inner * 2) + ff_outer_inner))] + (pad_temp_shared[((((((((((int)threadIdx.x) >> 6) * 7424) + (ry_inner * 3712)) + (xx_outer_inner * 256)) + (((((((int)threadIdx.x) & 63) * 2) + ff_outer_inner) >> 4) * 16)) + rc_outer_inner) + 256))] * placeholder_shared[((((((ry_inner * 6144) + (rc_outer_inner * 128)) + ((((int)threadIdx.x) & 63) * 2)) + ff_outer_inner) + 4096))]));
          compute[((((xx_outer_inner * 2) + ff_outer_inner) + 14))] = (compute[((((xx_outer_inner * 2) + ff_outer_inner) + 14))] + (pad_temp_shared[((((((((((int)threadIdx.x) >> 6) * 7424) + (ry_inner * 3712)) + (xx_outer_inner * 256)) + (((((((int)threadIdx.x) & 63) * 2) + ff_outer_inner) >> 4) * 16)) + rc_outer_inner) + 2048))] * placeholder_shared[((((((ry_inner * 6144) + (rc_outer_inner * 128)) + ((((int)threadIdx.x) & 63) * 2)) + ff_outer_inner) + 4096))]));
        }
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 7; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_relu[((((((((((int)blockIdx.x) >> 2) * 14336) + ((((int)threadIdx.x) >> 6) * 7168)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 3) * 128)) + ((((int)threadIdx.x) & 63) * 2)) + ax3_inner))] = max((compute[(((ax2_inner * 2) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 3) * 128) + ((((int)threadIdx.x) & 63) * 2)) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 14336) + ((((int)threadIdx.x) >> 6) * 7168)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 3) * 128)) + ((((int)threadIdx.x) & 63) * 2)) + ax3_inner) + 3584))] = max((compute[((((ax2_inner * 2) + ax3_inner) + 14))] + placeholder2[(((((((int)blockIdx.x) & 3) * 128) + ((((int)threadIdx.x) & 63) * 2)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


