
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
  float DepthwiseConv2d[32];
  __shared__ float PaddedInput_shared[8160];
  __shared__ float placeholder_shared[864];
  for (int c_outer_inner_init = 0; c_outer_inner_init < 16; ++c_outer_inner_init) {
    DepthwiseConv2d[(c_outer_inner_init)] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 16))] = 0.000000e+00f;
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 170; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)))] = (((1 <= (((((int)blockIdx.x) / 28) * 16) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)) / 480))) && (1 <= (((((int)blockIdx.x) % 28) * 4) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)) % 480) / 96)))) ? placeholder[(((((((((int)blockIdx.x) / 28) * 172032) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)) / 480) * 10752)) + ((((int)blockIdx.x) % 28) * 384)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 48) + ((int)threadIdx.x)) % 480)) - 10848))] : 0.000000e+00f);
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 48; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
    if (((((int)threadIdx.x) * 48) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 864) {
      if (((int)threadIdx.x) < 18) {
        placeholder_shared[(((((int)threadIdx.x) * 48) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[(((((int)threadIdx.x) * 48) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))];
      }
    }
  }
  __syncthreads();
  for (int c_outer_inner = 0; c_outer_inner < 16; ++c_outer_inner) {
    for (int di_inner = 0; di_inner < 3; ++di_inner) {
      DepthwiseConv2d[(c_outer_inner)] = (DepthwiseConv2d[(c_outer_inner)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 1920) + (di_inner * 480)) + (((((int)threadIdx.x) % 12) / 6) * 192)) + ((((int)threadIdx.x) % 6) * 16)) + c_outer_inner))] * placeholder_shared[((((di_inner * 288) + ((((int)threadIdx.x) % 6) * 16)) + c_outer_inner))]));
      DepthwiseConv2d[((c_outer_inner + 16))] = (DepthwiseConv2d[((c_outer_inner + 16))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 12) * 1920) + (di_inner * 480)) + (((((int)threadIdx.x) % 12) / 6) * 192)) + ((((int)threadIdx.x) % 6) * 16)) + c_outer_inner) + 960))] * placeholder_shared[((((di_inner * 288) + ((((int)threadIdx.x) % 6) * 16)) + c_outer_inner))]));
      DepthwiseConv2d[(c_outer_inner)] = (DepthwiseConv2d[(c_outer_inner)] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 12) * 1920) + (di_inner * 480)) + (((((int)threadIdx.x) % 12) / 6) * 192)) + ((((int)threadIdx.x) % 6) * 16)) + c_outer_inner) + 96))] * placeholder_shared[(((((di_inner * 288) + ((((int)threadIdx.x) % 6) * 16)) + c_outer_inner) + 96))]));
      DepthwiseConv2d[((c_outer_inner + 16))] = (DepthwiseConv2d[((c_outer_inner + 16))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 12) * 1920) + (di_inner * 480)) + (((((int)threadIdx.x) % 12) / 6) * 192)) + ((((int)threadIdx.x) % 6) * 16)) + c_outer_inner) + 1056))] * placeholder_shared[(((((di_inner * 288) + ((((int)threadIdx.x) % 6) * 16)) + c_outer_inner) + 96))]));
      DepthwiseConv2d[(c_outer_inner)] = (DepthwiseConv2d[(c_outer_inner)] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 12) * 1920) + (di_inner * 480)) + (((((int)threadIdx.x) % 12) / 6) * 192)) + ((((int)threadIdx.x) % 6) * 16)) + c_outer_inner) + 192))] * placeholder_shared[(((((di_inner * 288) + ((((int)threadIdx.x) % 6) * 16)) + c_outer_inner) + 192))]));
      DepthwiseConv2d[((c_outer_inner + 16))] = (DepthwiseConv2d[((c_outer_inner + 16))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 12) * 1920) + (di_inner * 480)) + (((((int)threadIdx.x) % 12) / 6) * 192)) + ((((int)threadIdx.x) % 6) * 16)) + c_outer_inner) + 1152))] * placeholder_shared[(((((di_inner * 288) + ((((int)threadIdx.x) % 6) * 16)) + c_outer_inner) + 192))]));
    }
  }
  for (int i1_inner = 0; i1_inner < 2; ++i1_inner) {
    for (int i3_inner = 0; i3_inner < 16; ++i3_inner) {
      compute[((((((((((int)blockIdx.x) / 28) * 43008) + ((((int)threadIdx.x) / 12) * 10752)) + (i1_inner * 5376)) + ((((int)blockIdx.x) % 28) * 192)) + ((((int)threadIdx.x) % 12) * 16)) + i3_inner))] = max(min((DepthwiseConv2d[(((i1_inner * 16) + i3_inner))] + placeholder2[((((((int)threadIdx.x) % 6) * 16) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
    }
  }
}


