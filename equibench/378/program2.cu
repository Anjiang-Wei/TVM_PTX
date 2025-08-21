
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
  float DepthwiseConv2d[12];
  __shared__ float PaddedInput_shared[3072];
  __shared__ float placeholder_shared[288];
  DepthwiseConv2d[(0)] = 0.000000e+00f;
  DepthwiseConv2d[(1)] = 0.000000e+00f;
  DepthwiseConv2d[(2)] = 0.000000e+00f;
  DepthwiseConv2d[(3)] = 0.000000e+00f;
  DepthwiseConv2d[(4)] = 0.000000e+00f;
  DepthwiseConv2d[(5)] = 0.000000e+00f;
  DepthwiseConv2d[(6)] = 0.000000e+00f;
  DepthwiseConv2d[(7)] = 0.000000e+00f;
  DepthwiseConv2d[(8)] = 0.000000e+00f;
  DepthwiseConv2d[(9)] = 0.000000e+00f;
  DepthwiseConv2d[(10)] = 0.000000e+00f;
  DepthwiseConv2d[(11)] = 0.000000e+00f;
  for (int di_outer_outer = 0; di_outer_outer < 3; ++di_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = (((1 <= (((((int)blockIdx.x) >> 2) * 2) + di_outer_outer)) && (96 <= ((int)threadIdx.x))) ? placeholder[((((((((((int)blockIdx.x) >> 2) * 10752) + (di_outer_outer * 5376)) + ((((int)threadIdx.x) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((int)threadIdx.x) % 96)) - 5760))] : 0.000000e+00f);
    PaddedInput_shared[((((int)threadIdx.x) + 224))] = ((1 <= (((((int)blockIdx.x) >> 2) * 2) + di_outer_outer)) ? placeholder[((((((((((int)blockIdx.x) >> 2) * 10752) + (di_outer_outer * 5376)) + (((((int)threadIdx.x) + 224) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + ((((int)threadIdx.x) + 32) % 96)) - 5760))] : 0.000000e+00f);
    PaddedInput_shared[((((int)threadIdx.x) + 448))] = ((1 <= (((((int)blockIdx.x) >> 2) * 2) + di_outer_outer)) ? placeholder[((((((((((int)blockIdx.x) >> 2) * 10752) + (di_outer_outer * 5376)) + (((((int)threadIdx.x) + 448) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + ((((int)threadIdx.x) + 64) % 96)) - 5760))] : 0.000000e+00f);
    PaddedInput_shared[((((int)threadIdx.x) + 672))] = ((1 <= (((((int)blockIdx.x) >> 2) * 2) + di_outer_outer)) ? placeholder[((((((((((int)blockIdx.x) >> 2) * 10752) + (di_outer_outer * 5376)) + ((((int)threadIdx.x) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((int)threadIdx.x) % 96)) - 3072))] : 0.000000e+00f);
    PaddedInput_shared[((((int)threadIdx.x) + 896))] = ((1 <= (((((int)blockIdx.x) >> 2) * 2) + di_outer_outer)) ? placeholder[((((((((((int)blockIdx.x) >> 2) * 10752) + (di_outer_outer * 5376)) + (((((int)threadIdx.x) + 896) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + ((((int)threadIdx.x) + 32) % 96)) - 5760))] : 0.000000e+00f);
    PaddedInput_shared[((((int)threadIdx.x) + 1120))] = ((1 <= (((((int)blockIdx.x) >> 2) * 2) + di_outer_outer)) ? placeholder[((((((((((int)blockIdx.x) >> 2) * 10752) + (di_outer_outer * 5376)) + (((((int)threadIdx.x) + 1120) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + ((((int)threadIdx.x) + 64) % 96)) - 5760))] : 0.000000e+00f);
    PaddedInput_shared[((((int)threadIdx.x) + 1344))] = (((((1 <= ((((((int)blockIdx.x) >> 2) * 2) + ((((int)threadIdx.x) + 1344) / 1536)) + di_outer_outer)) && (((((((int)blockIdx.x) >> 2) * 2) + ((((int)threadIdx.x) + 1344) / 1536)) + di_outer_outer) < 15)) && (96 <= ((((int)threadIdx.x) + 1344) % 1536))) && (((((int)threadIdx.x) + 1344) % 1536) < 1440)) ? placeholder[(((((((((((int)blockIdx.x) >> 2) * 10752) + (((((int)threadIdx.x) + 1344) / 1536) * 5376)) + (di_outer_outer * 5376)) + ((((((int)threadIdx.x) + 1344) % 1536) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((int)threadIdx.x) % 96)) - 5760))] : 0.000000e+00f);
    PaddedInput_shared[((((int)threadIdx.x) + 1568))] = (((((((((int)blockIdx.x) >> 2) * 2) + ((((int)threadIdx.x) + 1568) / 1536)) + di_outer_outer) < 15) && (64 <= ((int)threadIdx.x))) ? placeholder[(((((((((((int)blockIdx.x) >> 2) * 10752) + (((((int)threadIdx.x) + 1568) / 1536) * 5376)) + (di_outer_outer * 5376)) + (((((int)threadIdx.x) + 32) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + ((((int)threadIdx.x) + 32) % 96)) - 5760))] : 0.000000e+00f);
    PaddedInput_shared[((((int)threadIdx.x) + 1792))] = ((((((((int)blockIdx.x) >> 2) * 2) + ((((int)threadIdx.x) + 1792) / 1536)) + di_outer_outer) < 15) ? placeholder[(((((((((((int)blockIdx.x) >> 2) * 10752) + (((((int)threadIdx.x) + 1792) / 1536) * 5376)) + (di_outer_outer * 5376)) + (((((int)threadIdx.x) + 256) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + ((((int)threadIdx.x) + 64) % 96)) - 5760))] : 0.000000e+00f);
    PaddedInput_shared[((((int)threadIdx.x) + 2016))] = ((((((((int)blockIdx.x) >> 2) * 2) + ((((int)threadIdx.x) + 2016) / 1536)) + di_outer_outer) < 15) ? placeholder[(((((((((((int)blockIdx.x) >> 2) * 10752) + (((((int)threadIdx.x) + 2016) / 1536) * 5376)) + (di_outer_outer * 5376)) + (((((int)threadIdx.x) + 480) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((int)threadIdx.x) % 96)) - 5760))] : 0.000000e+00f);
    PaddedInput_shared[((((int)threadIdx.x) + 2240))] = ((((((((int)blockIdx.x) >> 2) * 2) + ((((int)threadIdx.x) + 2240) / 1536)) + di_outer_outer) < 15) ? placeholder[(((((((((((int)blockIdx.x) >> 2) * 10752) + (((((int)threadIdx.x) + 2240) / 1536) * 5376)) + (di_outer_outer * 5376)) + (((((int)threadIdx.x) + 704) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + ((((int)threadIdx.x) + 32) % 96)) - 5760))] : 0.000000e+00f);
    PaddedInput_shared[((((int)threadIdx.x) + 2464))] = ((((((((int)blockIdx.x) >> 2) * 2) + ((((int)threadIdx.x) + 2464) / 1536)) + di_outer_outer) < 15) ? placeholder[(((((((((((int)blockIdx.x) >> 2) * 10752) + (((((int)threadIdx.x) + 2464) / 1536) * 5376)) + (di_outer_outer * 5376)) + (((((int)threadIdx.x) + 928) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + ((((int)threadIdx.x) + 64) % 96)) - 5760))] : 0.000000e+00f);
    PaddedInput_shared[((((int)threadIdx.x) + 2688))] = ((((((((int)blockIdx.x) >> 2) * 2) + ((((int)threadIdx.x) + 2688) / 1536)) + di_outer_outer) < 15) ? placeholder[(((((((((((int)blockIdx.x) >> 2) * 10752) + (((((int)threadIdx.x) + 2688) / 1536) * 5376)) + (di_outer_outer * 5376)) + (((((int)threadIdx.x) + 1152) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((int)threadIdx.x) % 96)) - 5760))] : 0.000000e+00f);
    if (((int)threadIdx.x) < 160) {
      PaddedInput_shared[((((int)threadIdx.x) + 2912))] = (((((((((int)blockIdx.x) >> 2) * 2) + ((((int)threadIdx.x) + 2912) / 1536)) + di_outer_outer) < 15) && (((int)threadIdx.x) < 64)) ? placeholder[(((((((((((int)blockIdx.x) >> 2) * 10752) + (((((int)threadIdx.x) + 2912) / 1536) * 5376)) + (di_outer_outer * 5376)) + (((((int)threadIdx.x) + 1376) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((int)threadIdx.x) + 32)) - 5760))] : 0.000000e+00f);
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 18; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 288) {
        if (((int)threadIdx.x) < 16) {
          placeholder_shared[(((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[(((((di_outer_outer * 1152) + ((((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) / 96) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + (((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) % 96)))];
        }
      }
    }
    __syncthreads();
    for (int c_outer_inner = 0; c_outer_inner < 4; ++c_outer_inner) {
      DepthwiseConv2d[((c_outer_inner * 3))] = (DepthwiseConv2d[((c_outer_inner * 3))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 112) * 1536) + ((((int)threadIdx.x) % 112) * 12)) + (c_outer_inner * 3)))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 12) + (c_outer_inner * 3)))]));
      DepthwiseConv2d[(((c_outer_inner * 3) + 1))] = (DepthwiseConv2d[(((c_outer_inner * 3) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 112) * 1536) + ((((int)threadIdx.x) % 112) * 12)) + (c_outer_inner * 3)) + 1))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 12) + (c_outer_inner * 3)) + 1))]));
      DepthwiseConv2d[(((c_outer_inner * 3) + 2))] = (DepthwiseConv2d[(((c_outer_inner * 3) + 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 112) * 1536) + ((((int)threadIdx.x) % 112) * 12)) + (c_outer_inner * 3)) + 2))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 12) + (c_outer_inner * 3)) + 2))]));
      DepthwiseConv2d[((c_outer_inner * 3))] = (DepthwiseConv2d[((c_outer_inner * 3))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 112) * 1536) + ((((int)threadIdx.x) % 112) * 12)) + (c_outer_inner * 3)) + 96))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 12) + (c_outer_inner * 3)) + 96))]));
      DepthwiseConv2d[(((c_outer_inner * 3) + 1))] = (DepthwiseConv2d[(((c_outer_inner * 3) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 112) * 1536) + ((((int)threadIdx.x) % 112) * 12)) + (c_outer_inner * 3)) + 97))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 12) + (c_outer_inner * 3)) + 97))]));
      DepthwiseConv2d[(((c_outer_inner * 3) + 2))] = (DepthwiseConv2d[(((c_outer_inner * 3) + 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 112) * 1536) + ((((int)threadIdx.x) % 112) * 12)) + (c_outer_inner * 3)) + 98))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 12) + (c_outer_inner * 3)) + 98))]));
      DepthwiseConv2d[((c_outer_inner * 3))] = (DepthwiseConv2d[((c_outer_inner * 3))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 112) * 1536) + ((((int)threadIdx.x) % 112) * 12)) + (c_outer_inner * 3)) + 192))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 12) + (c_outer_inner * 3)) + 192))]));
      DepthwiseConv2d[(((c_outer_inner * 3) + 1))] = (DepthwiseConv2d[(((c_outer_inner * 3) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 112) * 1536) + ((((int)threadIdx.x) % 112) * 12)) + (c_outer_inner * 3)) + 193))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 12) + (c_outer_inner * 3)) + 193))]));
      DepthwiseConv2d[(((c_outer_inner * 3) + 2))] = (DepthwiseConv2d[(((c_outer_inner * 3) + 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 112) * 1536) + ((((int)threadIdx.x) % 112) * 12)) + (c_outer_inner * 3)) + 194))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 12) + (c_outer_inner * 3)) + 194))]));
    }
  }
  for (int i3_inner = 0; i3_inner < 12; ++i3_inner) {
    compute[(((((((((int)blockIdx.x) >> 2) * 10752) + ((((int)threadIdx.x) >> 3) * 384)) + ((((int)blockIdx.x) & 3) * 96)) + ((((int)threadIdx.x) & 7) * 12)) + i3_inner))] = max(min((DepthwiseConv2d[(i3_inner)] + placeholder2[(((((((int)blockIdx.x) & 3) * 96) + ((((int)threadIdx.x) & 7) * 12)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
  }
}


