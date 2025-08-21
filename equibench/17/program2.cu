
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
  float DepthwiseConv2d[120];
  __shared__ float PaddedInput_shared[10736];
  __shared__ float placeholder_shared[18];
  for (int i_inner_init = 0; i_inner_init < 10; ++i_inner_init) {
    DepthwiseConv2d[((i_inner_init * 6))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_inner_init * 6) + 60))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_inner_init * 6) + 1))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_inner_init * 6) + 61))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_inner_init * 6) + 2))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_inner_init * 6) + 62))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_inner_init * 6) + 3))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_inner_init * 6) + 63))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_inner_init * 6) + 4))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_inner_init * 6) + 64))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_inner_init * 6) + 5))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_inner_init * 6) + 65))] = 0.000000e+00f;
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 135; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) >> 1)) < 5368) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + ((int)threadIdx.x)) < 10736) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + ((int)threadIdx.x)))] = (((((1 <= ((((((int)blockIdx.x) % 96) >> 4) * 20) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) >> 1)) % 2684) / 122))) && (((((((int)blockIdx.x) % 96) >> 4) * 20) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) >> 1)) % 2684) / 122)) < 121)) && (1 <= (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) >> 1)) % 122))) && ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) >> 1)) % 122) < 121)) ? placeholder[((((((((((((int)blockIdx.x) / 96) * 921600) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) >> 1)) / 2684) * 460800)) + (((((int)blockIdx.x) % 96) >> 4) * 76800)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) >> 1)) % 2684) / 122) * 3840)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) >> 1)) % 122) * 32)) + ((((int)blockIdx.x) & 15) * 2)) + (((int)threadIdx.x) & 1)) - 3872))] : 0.000000e+00f);
      }
    }
  }
  if (((int)threadIdx.x) < 6) {
    placeholder_shared[((((int)threadIdx.x) * 3))] = placeholder1[((((((((int)threadIdx.x) * 3) >> 1) * 32) + ((((int)blockIdx.x) & 15) * 2)) + ((((int)threadIdx.x) * 3) & 1)))];
  }
  if (((int)threadIdx.x) < 6) {
    placeholder_shared[(((((int)threadIdx.x) * 3) + 1))] = placeholder1[(((((((((int)threadIdx.x) * 3) + 1) >> 1) * 32) + ((((int)blockIdx.x) & 15) * 2)) + (((((int)threadIdx.x) * 3) + 1) & 1)))];
  }
  if (((int)threadIdx.x) < 6) {
    placeholder_shared[(((((int)threadIdx.x) * 3) + 2))] = placeholder1[(((((((((int)threadIdx.x) * 3) >> 1) * 32) + ((((int)blockIdx.x) & 15) * 2)) + ((((int)threadIdx.x) * 3) & 1)) + 32))];
  }
  __syncthreads();
  for (int di_outer_inner = 0; di_outer_inner < 3; ++di_outer_inner) {
    for (int dj_outer_inner = 0; dj_outer_inner < 3; ++dj_outer_inner) {
      for (int i_inner = 0; i_inner < 10; ++i_inner) {
        DepthwiseConv2d[((i_inner * 6))] = (DepthwiseConv2d[((i_inner * 6))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 40) * 5368) + (i_inner * 244)) + (di_outer_inner * 244)) + ((((int)threadIdx.x) % 40) * 6)) + (dj_outer_inner * 2)))] * placeholder_shared[(((di_outer_inner * 6) + (dj_outer_inner * 2)))]));
        DepthwiseConv2d[(((i_inner * 6) + 60))] = (DepthwiseConv2d[(((i_inner * 6) + 60))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 40) * 5368) + (i_inner * 244)) + (di_outer_inner * 244)) + ((((int)threadIdx.x) % 40) * 6)) + (dj_outer_inner * 2)) + 2440))] * placeholder_shared[(((di_outer_inner * 6) + (dj_outer_inner * 2)))]));
        DepthwiseConv2d[(((i_inner * 6) + 1))] = (DepthwiseConv2d[(((i_inner * 6) + 1))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 40) * 5368) + (i_inner * 244)) + (di_outer_inner * 244)) + ((((int)threadIdx.x) % 40) * 6)) + (dj_outer_inner * 2)) + 1))] * placeholder_shared[((((di_outer_inner * 6) + (dj_outer_inner * 2)) + 1))]));
        DepthwiseConv2d[(((i_inner * 6) + 61))] = (DepthwiseConv2d[(((i_inner * 6) + 61))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 40) * 5368) + (i_inner * 244)) + (di_outer_inner * 244)) + ((((int)threadIdx.x) % 40) * 6)) + (dj_outer_inner * 2)) + 2441))] * placeholder_shared[((((di_outer_inner * 6) + (dj_outer_inner * 2)) + 1))]));
        DepthwiseConv2d[(((i_inner * 6) + 2))] = (DepthwiseConv2d[(((i_inner * 6) + 2))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 40) * 5368) + (i_inner * 244)) + (di_outer_inner * 244)) + ((((int)threadIdx.x) % 40) * 6)) + (dj_outer_inner * 2)) + 2))] * placeholder_shared[(((di_outer_inner * 6) + (dj_outer_inner * 2)))]));
        DepthwiseConv2d[(((i_inner * 6) + 62))] = (DepthwiseConv2d[(((i_inner * 6) + 62))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 40) * 5368) + (i_inner * 244)) + (di_outer_inner * 244)) + ((((int)threadIdx.x) % 40) * 6)) + (dj_outer_inner * 2)) + 2442))] * placeholder_shared[(((di_outer_inner * 6) + (dj_outer_inner * 2)))]));
        DepthwiseConv2d[(((i_inner * 6) + 3))] = (DepthwiseConv2d[(((i_inner * 6) + 3))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 40) * 5368) + (i_inner * 244)) + (di_outer_inner * 244)) + ((((int)threadIdx.x) % 40) * 6)) + (dj_outer_inner * 2)) + 3))] * placeholder_shared[((((di_outer_inner * 6) + (dj_outer_inner * 2)) + 1))]));
        DepthwiseConv2d[(((i_inner * 6) + 63))] = (DepthwiseConv2d[(((i_inner * 6) + 63))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 40) * 5368) + (i_inner * 244)) + (di_outer_inner * 244)) + ((((int)threadIdx.x) % 40) * 6)) + (dj_outer_inner * 2)) + 2443))] * placeholder_shared[((((di_outer_inner * 6) + (dj_outer_inner * 2)) + 1))]));
        DepthwiseConv2d[(((i_inner * 6) + 4))] = (DepthwiseConv2d[(((i_inner * 6) + 4))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 40) * 5368) + (i_inner * 244)) + (di_outer_inner * 244)) + ((((int)threadIdx.x) % 40) * 6)) + (dj_outer_inner * 2)) + 4))] * placeholder_shared[(((di_outer_inner * 6) + (dj_outer_inner * 2)))]));
        DepthwiseConv2d[(((i_inner * 6) + 64))] = (DepthwiseConv2d[(((i_inner * 6) + 64))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 40) * 5368) + (i_inner * 244)) + (di_outer_inner * 244)) + ((((int)threadIdx.x) % 40) * 6)) + (dj_outer_inner * 2)) + 2444))] * placeholder_shared[(((di_outer_inner * 6) + (dj_outer_inner * 2)))]));
        DepthwiseConv2d[(((i_inner * 6) + 5))] = (DepthwiseConv2d[(((i_inner * 6) + 5))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 40) * 5368) + (i_inner * 244)) + (di_outer_inner * 244)) + ((((int)threadIdx.x) % 40) * 6)) + (dj_outer_inner * 2)) + 5))] * placeholder_shared[((((di_outer_inner * 6) + (dj_outer_inner * 2)) + 1))]));
        DepthwiseConv2d[(((i_inner * 6) + 65))] = (DepthwiseConv2d[(((i_inner * 6) + 65))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 40) * 5368) + (i_inner * 244)) + (di_outer_inner * 244)) + ((((int)threadIdx.x) % 40) * 6)) + (dj_outer_inner * 2)) + 2445))] * placeholder_shared[((((di_outer_inner * 6) + (dj_outer_inner * 2)) + 1))]));
      }
    }
  }
  for (int i1_inner = 0; i1_inner < 10; ++i1_inner) {
    for (int i2_inner = 0; i2_inner < 3; ++i2_inner) {
      for (int i3_inner = 0; i3_inner < 2; ++i3_inner) {
        compute[((((((((((((int)blockIdx.x) / 96) * 921600) + ((((int)threadIdx.x) / 40) * 460800)) + (((((int)blockIdx.x) % 96) >> 4) * 76800)) + (i1_inner * 3840)) + ((((int)threadIdx.x) % 40) * 96)) + (i2_inner * 32)) + ((((int)blockIdx.x) & 15) * 2)) + i3_inner))] = max(min((DepthwiseConv2d[((((i1_inner * 6) + (i2_inner * 2)) + i3_inner))] + placeholder2[((((((int)blockIdx.x) & 15) * 2) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
        compute[(((((((((((((int)blockIdx.x) / 96) * 921600) + ((((int)threadIdx.x) / 40) * 460800)) + (((((int)blockIdx.x) % 96) >> 4) * 76800)) + (i1_inner * 3840)) + ((((int)threadIdx.x) % 40) * 96)) + (i2_inner * 32)) + ((((int)blockIdx.x) & 15) * 2)) + i3_inner) + 38400))] = max(min((DepthwiseConv2d[(((((i1_inner * 6) + (i2_inner * 2)) + i3_inner) + 60))] + placeholder2[((((((int)blockIdx.x) & 15) * 2) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
      }
    }
  }
}


