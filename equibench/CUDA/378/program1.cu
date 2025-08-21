
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute, float* __restrict__ placeholder2) {
  float DepthwiseConv2d[84];
  __shared__ float PaddedInput_shared[5376];
  __shared__ float placeholder_shared[144];
  for (int c_outer_inner_init = 0; c_outer_inner_init < 4; ++c_outer_inner_init) {
    for (int c_inner_init = 0; c_inner_init < 3; ++c_inner_init) {
      DepthwiseConv2d[(((c_outer_inner_init * 3) + c_inner_init))] = 0.000000e+00f;
      DepthwiseConv2d[((((c_outer_inner_init * 3) + c_inner_init) + 12))] = 0.000000e+00f;
      DepthwiseConv2d[((((c_outer_inner_init * 3) + c_inner_init) + 24))] = 0.000000e+00f;
      DepthwiseConv2d[((((c_outer_inner_init * 3) + c_inner_init) + 36))] = 0.000000e+00f;
      DepthwiseConv2d[((((c_outer_inner_init * 3) + c_inner_init) + 48))] = 0.000000e+00f;
      DepthwiseConv2d[((((c_outer_inner_init * 3) + c_inner_init) + 60))] = 0.000000e+00f;
      DepthwiseConv2d[((((c_outer_inner_init * 3) + c_inner_init) + 72))] = 0.000000e+00f;
    }
  }
  for (int dj_outer_outer = 0; dj_outer_outer < 3; ++dj_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 96; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)))] = (((((336 <= ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x))) && (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) < 5040)) && (1 <= ((((((int)blockIdx.x) >> 3) * 7) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 336) / 48)) + dj_outer_outer))) && (((((((int)blockIdx.x) >> 3) * 7) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 336) / 48)) + dj_outer_outer) < 15)) ? placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) / 336) * 5376) + ((((int)blockIdx.x) >> 3) * 2688)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 336) / 48) * 384)) + (dj_outer_outer * 384)) + ((((int)blockIdx.x) & 7) * 48)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 48)) - 5760))] : 0.000000e+00f);
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 144) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)))] = placeholder1[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) / 48) * 1152) + (dj_outer_outer * 384)) + ((((int)blockIdx.x) & 7) * 48)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) % 48)))];
      }
    }
    __syncthreads();
    for (int c_outer_inner = 0; c_outer_inner < 4; ++c_outer_inner) {
      for (int di_inner = 0; di_inner < 3; ++di_inner) {
        for (int c_inner = 0; c_inner < 3; ++c_inner) {
          DepthwiseConv2d[(((c_outer_inner * 3) + c_inner))] = (DepthwiseConv2d[(((c_outer_inner * 3) + c_inner))] + (PaddedInput_shared[(((((di_inner * 336) + (((int)threadIdx.x) * 12)) + (c_outer_inner * 3)) + c_inner))] * placeholder_shared[(((((di_inner * 48) + ((((int)threadIdx.x) & 3) * 12)) + (c_outer_inner * 3)) + c_inner))]));
          DepthwiseConv2d[((((c_outer_inner * 3) + c_inner) + 12))] = (DepthwiseConv2d[((((c_outer_inner * 3) + c_inner) + 12))] + (PaddedInput_shared[((((((di_inner * 336) + (((int)threadIdx.x) * 12)) + (c_outer_inner * 3)) + c_inner) + 672))] * placeholder_shared[(((((di_inner * 48) + ((((int)threadIdx.x) & 3) * 12)) + (c_outer_inner * 3)) + c_inner))]));
          DepthwiseConv2d[((((c_outer_inner * 3) + c_inner) + 24))] = (DepthwiseConv2d[((((c_outer_inner * 3) + c_inner) + 24))] + (PaddedInput_shared[((((((di_inner * 336) + (((int)threadIdx.x) * 12)) + (c_outer_inner * 3)) + c_inner) + 1344))] * placeholder_shared[(((((di_inner * 48) + ((((int)threadIdx.x) & 3) * 12)) + (c_outer_inner * 3)) + c_inner))]));
          DepthwiseConv2d[((((c_outer_inner * 3) + c_inner) + 36))] = (DepthwiseConv2d[((((c_outer_inner * 3) + c_inner) + 36))] + (PaddedInput_shared[((((((di_inner * 336) + (((int)threadIdx.x) * 12)) + (c_outer_inner * 3)) + c_inner) + 2016))] * placeholder_shared[(((((di_inner * 48) + ((((int)threadIdx.x) & 3) * 12)) + (c_outer_inner * 3)) + c_inner))]));
          DepthwiseConv2d[((((c_outer_inner * 3) + c_inner) + 48))] = (DepthwiseConv2d[((((c_outer_inner * 3) + c_inner) + 48))] + (PaddedInput_shared[((((((di_inner * 336) + (((int)threadIdx.x) * 12)) + (c_outer_inner * 3)) + c_inner) + 2688))] * placeholder_shared[(((((di_inner * 48) + ((((int)threadIdx.x) & 3) * 12)) + (c_outer_inner * 3)) + c_inner))]));
          DepthwiseConv2d[((((c_outer_inner * 3) + c_inner) + 60))] = (DepthwiseConv2d[((((c_outer_inner * 3) + c_inner) + 60))] + (PaddedInput_shared[((((((di_inner * 336) + (((int)threadIdx.x) * 12)) + (c_outer_inner * 3)) + c_inner) + 3360))] * placeholder_shared[(((((di_inner * 48) + ((((int)threadIdx.x) & 3) * 12)) + (c_outer_inner * 3)) + c_inner))]));
          DepthwiseConv2d[((((c_outer_inner * 3) + c_inner) + 72))] = (DepthwiseConv2d[((((c_outer_inner * 3) + c_inner) + 72))] + (PaddedInput_shared[((((((di_inner * 336) + (((int)threadIdx.x) * 12)) + (c_outer_inner * 3)) + c_inner) + 4032))] * placeholder_shared[(((((di_inner * 48) + ((((int)threadIdx.x) & 3) * 12)) + (c_outer_inner * 3)) + c_inner))]));
        }
      }
    }
  }
  for (int i3_inner = 0; i3_inner < 12; ++i3_inner) {
    compute[((((((((((int)threadIdx.x) / 28) * 5376) + ((((int)blockIdx.x) >> 3) * 2688)) + (((((int)threadIdx.x) % 28) >> 2) * 384)) + ((((int)blockIdx.x) & 7) * 48)) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner))] = max(min((DepthwiseConv2d[(i3_inner)] + placeholder2[(((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
    compute[(((((((((((int)threadIdx.x) / 28) * 5376) + ((((int)blockIdx.x) >> 3) * 2688)) + (((((int)threadIdx.x) % 28) >> 2) * 384)) + ((((int)blockIdx.x) & 7) * 48)) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner) + 10752))] = max(min((DepthwiseConv2d[((i3_inner + 12))] + placeholder2[(((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
    compute[(((((((((((int)threadIdx.x) / 28) * 5376) + ((((int)blockIdx.x) >> 3) * 2688)) + (((((int)threadIdx.x) % 28) >> 2) * 384)) + ((((int)blockIdx.x) & 7) * 48)) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner) + 21504))] = max(min((DepthwiseConv2d[((i3_inner + 24))] + placeholder2[(((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
    compute[(((((((((((int)threadIdx.x) / 28) * 5376) + ((((int)blockIdx.x) >> 3) * 2688)) + (((((int)threadIdx.x) % 28) >> 2) * 384)) + ((((int)blockIdx.x) & 7) * 48)) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner) + 32256))] = max(min((DepthwiseConv2d[((i3_inner + 36))] + placeholder2[(((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
    compute[(((((((((((int)threadIdx.x) / 28) * 5376) + ((((int)blockIdx.x) >> 3) * 2688)) + (((((int)threadIdx.x) % 28) >> 2) * 384)) + ((((int)blockIdx.x) & 7) * 48)) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner) + 43008))] = max(min((DepthwiseConv2d[((i3_inner + 48))] + placeholder2[(((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
    compute[(((((((((((int)threadIdx.x) / 28) * 5376) + ((((int)blockIdx.x) >> 3) * 2688)) + (((((int)threadIdx.x) % 28) >> 2) * 384)) + ((((int)blockIdx.x) & 7) * 48)) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner) + 53760))] = max(min((DepthwiseConv2d[((i3_inner + 60))] + placeholder2[(((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
    compute[(((((((((((int)threadIdx.x) / 28) * 5376) + ((((int)blockIdx.x) >> 3) * 2688)) + (((((int)threadIdx.x) % 28) >> 2) * 384)) + ((((int)blockIdx.x) & 7) * 48)) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner) + 64512))] = max(min((DepthwiseConv2d[((i3_inner + 72))] + placeholder2[(((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 12)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
  }
}


