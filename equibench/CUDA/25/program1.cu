
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
  float DepthwiseConv2d[96];
  __shared__ float PaddedInput_shared[8064];
  __shared__ float placeholder_shared[432];
  for (int b_outer_inner_init = 0; b_outer_inner_init < 4; ++b_outer_inner_init) {
    for (int c_outer_inner_init = 0; c_outer_inner_init < 4; ++c_outer_inner_init) {
      DepthwiseConv2d[(((b_outer_inner_init * 4) + c_outer_inner_init))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 4) + c_outer_inner_init) + 16))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 4) + c_outer_inner_init) + 32))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 4) + c_outer_inner_init) + 48))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 4) + c_outer_inner_init) + 64))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 4) + c_outer_inner_init) + 80))] = 0.000000e+00f;
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 17; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 24; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 480) + (((int)threadIdx.x) * 24)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 8064) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + ((int)threadIdx.x)) < 336) {
          PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 480) + (((int)threadIdx.x) * 24)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 144) * 144) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 10) + (((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 48)) % 3) * 48)) + (((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 48)))] = (((((1 <= (((((int)blockIdx.x) / 120) * 5) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 480) + (((int)threadIdx.x) * 24)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 1008) / 144))) && ((((((int)blockIdx.x) / 120) * 5) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 480) + (((int)threadIdx.x) * 24)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 1008) / 144)) < 16)) && (1 <= (((((int)blockIdx.x) % 120) >> 3) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 10) + (((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 48)) % 3)))) && ((((((int)blockIdx.x) % 120) >> 3) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 10) + (((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 48)) % 3)) < 16)) ? placeholder[((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 480) + (((int)threadIdx.x) * 24)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 1008) * 86400) + ((((int)blockIdx.x) / 120) * 28800)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 480) + (((int)threadIdx.x) * 24)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 1008) / 144) * 5760)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 10) + (((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 48)) % 3) * 384)) + ((((int)blockIdx.x) % 120) * 48)) + (((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 48)) - 6144))] : 0.000000e+00f);
        }
      }
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
    if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) < 432) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 20) + ((int)threadIdx.x)) < 72) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)))] = placeholder1[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) / 48) * 384) + ((((int)blockIdx.x) & 7) * 48)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) % 48)))];
      }
    }
    if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) < 431) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 20) + ((int)threadIdx.x)) < 72) {
        placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 1))] = placeholder1[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 1) / 48) * 384) + ((((int)blockIdx.x) & 7) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 1) % 48)))];
      }
    }
    if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) < 430) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 20) + ((int)threadIdx.x)) < 72) {
        placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 2))] = placeholder1[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 2) / 48) * 384) + ((((int)blockIdx.x) & 7) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 2) % 48)))];
      }
    }
    if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) < 429) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 20) + ((int)threadIdx.x)) < 72) {
        placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 3))] = placeholder1[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 3) / 48) * 384) + ((((int)blockIdx.x) & 7) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 3) % 48)))];
      }
    }
    if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) < 428) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 20) + ((int)threadIdx.x)) < 72) {
        placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 4))] = placeholder1[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 4) / 48) * 384) + ((((int)blockIdx.x) & 7) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 4) % 48)))];
      }
    }
    if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) < 427) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 20) + ((int)threadIdx.x)) < 72) {
        placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 5))] = placeholder1[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 5) / 48) * 384) + ((((int)blockIdx.x) & 7) * 48)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 120) + (((int)threadIdx.x) * 6)) + 5) % 48)))];
      }
    }
  }
  __syncthreads();
  for (int di_outer_inner = 0; di_outer_inner < 3; ++di_outer_inner) {
    for (int dj_outer_inner = 0; dj_outer_inner < 3; ++dj_outer_inner) {
      for (int b_outer_inner = 0; b_outer_inner < 4; ++b_outer_inner) {
        for (int c_outer_inner = 0; c_outer_inner < 4; ++c_outer_inner) {
          DepthwiseConv2d[(((b_outer_inner * 4) + c_outer_inner))] = (DepthwiseConv2d[(((b_outer_inner * 4) + c_outer_inner))] + (PaddedInput_shared[(((((((b_outer_inner * 1008) + ((((int)threadIdx.x) >> 2) * 144)) + (di_outer_inner * 144)) + (dj_outer_inner * 48)) + ((((int)threadIdx.x) & 3) * 4)) + c_outer_inner))] * placeholder_shared[(((((di_outer_inner * 144) + (dj_outer_inner * 48)) + ((((int)threadIdx.x) & 3) * 4)) + c_outer_inner))]));
          DepthwiseConv2d[((((b_outer_inner * 4) + c_outer_inner) + 16))] = (DepthwiseConv2d[((((b_outer_inner * 4) + c_outer_inner) + 16))] + (PaddedInput_shared[((((((((b_outer_inner * 1008) + ((((int)threadIdx.x) >> 2) * 144)) + (di_outer_inner * 144)) + (dj_outer_inner * 48)) + ((((int)threadIdx.x) & 3) * 4)) + c_outer_inner) + 16))] * placeholder_shared[((((((di_outer_inner * 144) + (dj_outer_inner * 48)) + ((((int)threadIdx.x) & 3) * 4)) + c_outer_inner) + 16))]));
          DepthwiseConv2d[((((b_outer_inner * 4) + c_outer_inner) + 32))] = (DepthwiseConv2d[((((b_outer_inner * 4) + c_outer_inner) + 32))] + (PaddedInput_shared[((((((((b_outer_inner * 1008) + ((((int)threadIdx.x) >> 2) * 144)) + (di_outer_inner * 144)) + (dj_outer_inner * 48)) + ((((int)threadIdx.x) & 3) * 4)) + c_outer_inner) + 32))] * placeholder_shared[((((((di_outer_inner * 144) + (dj_outer_inner * 48)) + ((((int)threadIdx.x) & 3) * 4)) + c_outer_inner) + 32))]));
          DepthwiseConv2d[((((b_outer_inner * 4) + c_outer_inner) + 48))] = (DepthwiseConv2d[((((b_outer_inner * 4) + c_outer_inner) + 48))] + (PaddedInput_shared[((((((((b_outer_inner * 1008) + ((((int)threadIdx.x) >> 2) * 144)) + (di_outer_inner * 144)) + (dj_outer_inner * 48)) + ((((int)threadIdx.x) & 3) * 4)) + c_outer_inner) + 4032))] * placeholder_shared[(((((di_outer_inner * 144) + (dj_outer_inner * 48)) + ((((int)threadIdx.x) & 3) * 4)) + c_outer_inner))]));
          DepthwiseConv2d[((((b_outer_inner * 4) + c_outer_inner) + 64))] = (DepthwiseConv2d[((((b_outer_inner * 4) + c_outer_inner) + 64))] + (PaddedInput_shared[((((((((b_outer_inner * 1008) + ((((int)threadIdx.x) >> 2) * 144)) + (di_outer_inner * 144)) + (dj_outer_inner * 48)) + ((((int)threadIdx.x) & 3) * 4)) + c_outer_inner) + 4048))] * placeholder_shared[((((((di_outer_inner * 144) + (dj_outer_inner * 48)) + ((((int)threadIdx.x) & 3) * 4)) + c_outer_inner) + 16))]));
          DepthwiseConv2d[((((b_outer_inner * 4) + c_outer_inner) + 80))] = (DepthwiseConv2d[((((b_outer_inner * 4) + c_outer_inner) + 80))] + (PaddedInput_shared[((((((((b_outer_inner * 1008) + ((((int)threadIdx.x) >> 2) * 144)) + (di_outer_inner * 144)) + (dj_outer_inner * 48)) + ((((int)threadIdx.x) & 3) * 4)) + c_outer_inner) + 4064))] * placeholder_shared[((((((di_outer_inner * 144) + (dj_outer_inner * 48)) + ((((int)threadIdx.x) & 3) * 4)) + c_outer_inner) + 32))]));
        }
      }
    }
  }
  for (int i0_inner = 0; i0_inner < 4; ++i0_inner) {
    for (int i3_inner = 0; i3_inner < 4; ++i3_inner) {
      compute[(((((((i0_inner * 86400) + ((((int)blockIdx.x) / 120) * 28800)) + ((((int)threadIdx.x) >> 2) * 5760)) + ((((int)blockIdx.x) % 120) * 48)) + ((((int)threadIdx.x) & 3) * 4)) + i3_inner))] = max(min((DepthwiseConv2d[(((i0_inner * 4) + i3_inner))] + placeholder2[(((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 4)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
      compute[((((((((i0_inner * 86400) + ((((int)blockIdx.x) / 120) * 28800)) + ((((int)threadIdx.x) >> 2) * 5760)) + ((((int)blockIdx.x) % 120) * 48)) + ((((int)threadIdx.x) & 3) * 4)) + i3_inner) + 16))] = max(min((DepthwiseConv2d[((((i0_inner * 4) + i3_inner) + 16))] + placeholder2[((((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 4)) + i3_inner) + 16))]), 6.000000e+00f), 0.000000e+00f);
      compute[((((((((i0_inner * 86400) + ((((int)blockIdx.x) / 120) * 28800)) + ((((int)threadIdx.x) >> 2) * 5760)) + ((((int)blockIdx.x) % 120) * 48)) + ((((int)threadIdx.x) & 3) * 4)) + i3_inner) + 32))] = max(min((DepthwiseConv2d[((((i0_inner * 4) + i3_inner) + 32))] + placeholder2[((((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 4)) + i3_inner) + 32))]), 6.000000e+00f), 0.000000e+00f);
      compute[((((((((i0_inner * 86400) + ((((int)blockIdx.x) / 120) * 28800)) + ((((int)threadIdx.x) >> 2) * 5760)) + ((((int)blockIdx.x) % 120) * 48)) + ((((int)threadIdx.x) & 3) * 4)) + i3_inner) + 345600))] = max(min((DepthwiseConv2d[((((i0_inner * 4) + i3_inner) + 48))] + placeholder2[(((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 4)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
      compute[((((((((i0_inner * 86400) + ((((int)blockIdx.x) / 120) * 28800)) + ((((int)threadIdx.x) >> 2) * 5760)) + ((((int)blockIdx.x) % 120) * 48)) + ((((int)threadIdx.x) & 3) * 4)) + i3_inner) + 345616))] = max(min((DepthwiseConv2d[((((i0_inner * 4) + i3_inner) + 64))] + placeholder2[((((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 4)) + i3_inner) + 16))]), 6.000000e+00f), 0.000000e+00f);
      compute[((((((((i0_inner * 86400) + ((((int)blockIdx.x) / 120) * 28800)) + ((((int)threadIdx.x) >> 2) * 5760)) + ((((int)blockIdx.x) % 120) * 48)) + ((((int)threadIdx.x) & 3) * 4)) + i3_inner) + 345632))] = max(min((DepthwiseConv2d[((((i0_inner * 4) + i3_inner) + 80))] + placeholder2[((((((((int)blockIdx.x) & 7) * 48) + ((((int)threadIdx.x) & 3) * 4)) + i3_inner) + 32))]), 6.000000e+00f), 0.000000e+00f);
    }
  }
}


