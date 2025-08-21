
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
  float DepthwiseConv2d[100];
  __shared__ float PaddedInput_shared[3136];
  __shared__ float placeholder_shared[288];
  for (int b_outer_inner_init = 0; b_outer_inner_init < 2; ++b_outer_inner_init) {
    for (int j_outer_inner_init = 0; j_outer_inner_init < 5; ++j_outer_inner_init) {
      DepthwiseConv2d[(((b_outer_inner_init * 50) + (j_outer_inner_init * 2)))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 50) + (j_outer_inner_init * 2)) + 10))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 50) + (j_outer_inner_init * 2)) + 20))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 50) + (j_outer_inner_init * 2)) + 30))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 50) + (j_outer_inner_init * 2)) + 40))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 50) + (j_outer_inner_init * 2)) + 1))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 50) + (j_outer_inner_init * 2)) + 11))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 50) + (j_outer_inner_init * 2)) + 21))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 50) + (j_outer_inner_init * 2)) + 31))] = 0.000000e+00f;
      DepthwiseConv2d[((((b_outer_inner_init * 50) + (j_outer_inner_init * 2)) + 41))] = 0.000000e+00f;
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 5; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 42; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 672) + (((int)threadIdx.x) * 42)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 3136) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) < 75) {
          PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 672) + (((int)threadIdx.x) * 42)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 1568) * 1568) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 3) + (((((int)threadIdx.x) * 42) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 224)) % 7) * 224)) + (((((int)threadIdx.x) * 42) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 224)))] = (((((1 <= ((((((int)blockIdx.x) % 108) / 36) * 5) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 3) + (((((int)threadIdx.x) * 42) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 224)) % 7))) && (((((((int)blockIdx.x) % 108) / 36) * 5) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 3) + (((((int)threadIdx.x) * 42) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 224)) % 7)) < 16)) && (1 <= ((((((int)blockIdx.x) % 36) / 12) * 5) + ((((((int)threadIdx.x) * 42) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 224) >> 5)))) && (((((((int)blockIdx.x) % 36) / 12) * 5) + ((((((int)threadIdx.x) * 42) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 224) >> 5)) < 16)) ? placeholder[(((((((((((((int)blockIdx.x) / 108) * 172800) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 672) + (((int)threadIdx.x) * 42)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 1568) * 86400)) + (((((int)blockIdx.x) % 108) / 36) * 28800)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 3) + (((((int)threadIdx.x) * 42) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 224)) % 7) * 5760)) + (((((int)blockIdx.x) % 36) / 12) * 1920)) + (((((((int)threadIdx.x) * 42) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 224) >> 5) * 384)) + ((((int)blockIdx.x) % 12) * 32)) + (((((int)threadIdx.x) * 42) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 31)) - 6144))] : 0.000000e+00f);
        }
      }
    }
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 18; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
    placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)))] = placeholder1[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)) >> 5) * 384) + ((((int)blockIdx.x) % 12) * 32)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + ((int)threadIdx.x)) & 31)))];
  }
  __syncthreads();
  for (int di_outer_inner = 0; di_outer_inner < 3; ++di_outer_inner) {
    for (int b_outer_inner = 0; b_outer_inner < 2; ++b_outer_inner) {
      for (int j_outer_inner = 0; j_outer_inner < 5; ++j_outer_inner) {
        for (int c_outer_inner = 0; c_outer_inner < 2; ++c_outer_inner) {
          DepthwiseConv2d[((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner))] = (DepthwiseConv2d[((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner))] + (PaddedInput_shared[((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner))] * placeholder_shared[((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner))]));
          DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 10))] = (DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 10))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 224))] * placeholder_shared[((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner))]));
          DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 20))] = (DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 20))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 448))] * placeholder_shared[((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner))]));
          DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 30))] = (DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 30))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 672))] * placeholder_shared[((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner))]));
          DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 40))] = (DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 40))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 896))] * placeholder_shared[((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner))]));
          DepthwiseConv2d[((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner))] = (DepthwiseConv2d[((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 32))] * placeholder_shared[(((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 32))]));
          DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 10))] = (DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 10))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 256))] * placeholder_shared[(((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 32))]));
          DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 20))] = (DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 20))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 480))] * placeholder_shared[(((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 32))]));
          DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 30))] = (DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 30))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 704))] * placeholder_shared[(((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 32))]));
          DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 40))] = (DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 40))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 928))] * placeholder_shared[(((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 32))]));
          DepthwiseConv2d[((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner))] = (DepthwiseConv2d[((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 64))] * placeholder_shared[(((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 64))]));
          DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 10))] = (DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 10))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 288))] * placeholder_shared[(((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 64))]));
          DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 20))] = (DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 20))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 512))] * placeholder_shared[(((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 64))]));
          DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 30))] = (DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 30))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 736))] * placeholder_shared[(((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 64))]));
          DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 40))] = (DepthwiseConv2d[(((((b_outer_inner * 50) + (j_outer_inner * 2)) + c_outer_inner) + 40))] + (PaddedInput_shared[(((((((b_outer_inner * 1568) + (di_outer_inner * 224)) + (j_outer_inner * 32)) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 960))] * placeholder_shared[(((((di_outer_inner * 96) + (((int)threadIdx.x) * 2)) + c_outer_inner) + 64))]));
        }
      }
    }
  }
  for (int i0_inner = 0; i0_inner < 2; ++i0_inner) {
    for (int i1_inner = 0; i1_inner < 5; ++i1_inner) {
      for (int i2_inner = 0; i2_inner < 5; ++i2_inner) {
        for (int i3_inner = 0; i3_inner < 2; ++i3_inner) {
          compute[(((((((((((((int)blockIdx.x) / 108) * 172800) + (i0_inner * 86400)) + (((((int)blockIdx.x) % 108) / 36) * 28800)) + (i1_inner * 5760)) + (((((int)blockIdx.x) % 36) / 12) * 1920)) + (i2_inner * 384)) + ((((int)blockIdx.x) % 12) * 32)) + (((int)threadIdx.x) * 2)) + i3_inner))] = max(min((DepthwiseConv2d[(((((i0_inner * 50) + (i1_inner * 10)) + (i2_inner * 2)) + i3_inner))] + placeholder2[(((((((int)blockIdx.x) % 12) * 32) + (((int)threadIdx.x) * 2)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
        }
      }
    }
  }
}


