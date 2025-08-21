
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
  float DepthwiseConv2d[16];
  __shared__ float PaddedInput_shared[1792];
  __shared__ float placeholder_shared[48];
  DepthwiseConv2d[(0)] = 0.000000e+00f;
  DepthwiseConv2d[(8)] = 0.000000e+00f;
  DepthwiseConv2d[(1)] = 0.000000e+00f;
  DepthwiseConv2d[(9)] = 0.000000e+00f;
  DepthwiseConv2d[(2)] = 0.000000e+00f;
  DepthwiseConv2d[(10)] = 0.000000e+00f;
  DepthwiseConv2d[(3)] = 0.000000e+00f;
  DepthwiseConv2d[(11)] = 0.000000e+00f;
  DepthwiseConv2d[(4)] = 0.000000e+00f;
  DepthwiseConv2d[(12)] = 0.000000e+00f;
  DepthwiseConv2d[(5)] = 0.000000e+00f;
  DepthwiseConv2d[(13)] = 0.000000e+00f;
  DepthwiseConv2d[(6)] = 0.000000e+00f;
  DepthwiseConv2d[(14)] = 0.000000e+00f;
  DepthwiseConv2d[(7)] = 0.000000e+00f;
  DepthwiseConv2d[(15)] = 0.000000e+00f;
  for (int di_outer_outer = 0; di_outer_outer < 3; ++di_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 24; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 1792) {
        if (((int)threadIdx.x) < 75) {
          PaddedInput_shared[(((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = (((((1 <= ((((int)blockIdx.x) / 20) + di_outer_outer)) && (((((int)blockIdx.x) / 20) + di_outer_outer) < 121)) && (1 <= ((((((int)blockIdx.x) % 20) >> 1) * 12) + ((((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 224) >> 4)))) && (((((((int)blockIdx.x) % 20) >> 1) * 12) + ((((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 224) >> 4)) < 121)) ? placeholder[(((((((((((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 224) * 460800) + (di_outer_outer * 3840)) + ((((int)blockIdx.x) >> 1) * 384)) + (((((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 224) >> 4) * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 15)) - 3872))] : 0.000000e+00f);
        }
      }
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[((((int)threadIdx.x) * 3))] = placeholder1[(((((di_outer_outer * 96) + (((((int)threadIdx.x) * 3) >> 4) * 32)) + ((((int)blockIdx.x) & 1) * 16)) + ((((int)threadIdx.x) * 3) & 15)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 3) + 1))] = placeholder1[(((((di_outer_outer * 96) + ((((((int)threadIdx.x) * 3) + 1) >> 4) * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((((int)threadIdx.x) * 3) + 1) & 15)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 3) + 2))] = placeholder1[(((((di_outer_outer * 96) + ((((((int)threadIdx.x) * 3) + 2) >> 4) * 32)) + ((((int)blockIdx.x) & 1) * 16)) + (((((int)threadIdx.x) * 3) + 2) & 15)))];
    }
    __syncthreads();
    for (int c_outer_inner = 0; c_outer_inner < 8; ++c_outer_inner) {
      DepthwiseConv2d[(c_outer_inner)] = (DepthwiseConv2d[(c_outer_inner)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 12) * 224) + (((((int)threadIdx.x) % 12) >> 1) * 32)) + ((((int)threadIdx.x) & 1) * 8)) + c_outer_inner))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + c_outer_inner))]));
      DepthwiseConv2d[((c_outer_inner + 8))] = (DepthwiseConv2d[((c_outer_inner + 8))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 224) + (((((int)threadIdx.x) % 12) >> 1) * 32)) + ((((int)threadIdx.x) & 1) * 8)) + c_outer_inner) + 16))] * placeholder_shared[((((((int)threadIdx.x) & 1) * 8) + c_outer_inner))]));
      DepthwiseConv2d[(c_outer_inner)] = (DepthwiseConv2d[(c_outer_inner)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 224) + (((((int)threadIdx.x) % 12) >> 1) * 32)) + ((((int)threadIdx.x) & 1) * 8)) + c_outer_inner) + 16))] * placeholder_shared[(((((((int)threadIdx.x) & 1) * 8) + c_outer_inner) + 16))]));
      DepthwiseConv2d[((c_outer_inner + 8))] = (DepthwiseConv2d[((c_outer_inner + 8))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 224) + (((((int)threadIdx.x) % 12) >> 1) * 32)) + ((((int)threadIdx.x) & 1) * 8)) + c_outer_inner) + 32))] * placeholder_shared[(((((((int)threadIdx.x) & 1) * 8) + c_outer_inner) + 16))]));
      DepthwiseConv2d[(c_outer_inner)] = (DepthwiseConv2d[(c_outer_inner)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 224) + (((((int)threadIdx.x) % 12) >> 1) * 32)) + ((((int)threadIdx.x) & 1) * 8)) + c_outer_inner) + 32))] * placeholder_shared[(((((((int)threadIdx.x) & 1) * 8) + c_outer_inner) + 32))]));
      DepthwiseConv2d[((c_outer_inner + 8))] = (DepthwiseConv2d[((c_outer_inner + 8))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 224) + (((((int)threadIdx.x) % 12) >> 1) * 32)) + ((((int)threadIdx.x) & 1) * 8)) + c_outer_inner) + 48))] * placeholder_shared[(((((((int)threadIdx.x) & 1) * 8) + c_outer_inner) + 32))]));
    }
  }
  for (int i2_inner = 0; i2_inner < 2; ++i2_inner) {
    for (int i3_inner = 0; i3_inner < 8; ++i3_inner) {
      compute[(((((((((((int)threadIdx.x) / 12) * 460800) + ((((int)blockIdx.x) >> 1) * 384)) + (((((int)threadIdx.x) % 12) >> 1) * 64)) + (i2_inner * 32)) + ((((int)blockIdx.x) & 1) * 16)) + ((((int)threadIdx.x) & 1) * 8)) + i3_inner))] = max(min((DepthwiseConv2d[(((i2_inner * 8) + i3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 16) + ((((int)threadIdx.x) & 1) * 8)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
    }
  }
}


