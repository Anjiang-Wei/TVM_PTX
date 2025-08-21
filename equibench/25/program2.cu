
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
  float DepthwiseConv2d[40];
  __shared__ float PaddedInput_shared[680];
  __shared__ float placeholder_shared[12];
  for (int i_outer_inner_init = 0; i_outer_inner_init < 5; ++i_outer_inner_init) {
    DepthwiseConv2d[((i_outer_inner_init * 2))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_outer_inner_init * 2) + 10))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_outer_inner_init * 2) + 20))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_outer_inner_init * 2) + 30))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_outer_inner_init * 2) + 1))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_outer_inner_init * 2) + 11))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_outer_inner_init * 2) + 21))] = 0.000000e+00f;
    DepthwiseConv2d[(((i_outer_inner_init * 2) + 31))] = 0.000000e+00f;
  }
  for (int di_outer_outer = 0; di_outer_outer < 3; ++di_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 60; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 15) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) < 170) {
        if (((((int)threadIdx.x) * 60) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 680) {
          if (((int)threadIdx.x) < 12) {
            PaddedInput_shared[(((((int)threadIdx.x) * 60) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = (((((1 <= (((((((int)blockIdx.x) % 432) / 144) * 5) + ((((((int)threadIdx.x) * 15) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) % 85) / 17)) + di_outer_outer)) && ((((((((int)blockIdx.x) % 432) / 144) * 5) + ((((((int)threadIdx.x) * 15) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) % 85) / 17)) + di_outer_outer) < 16)) && (1 <= (((((int)threadIdx.x) * 15) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) % 17))) && ((((((int)threadIdx.x) * 15) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) % 17) < 16)) ? placeholder[(((((((((((((int)blockIdx.x) / 432) * 259200) + ((((((int)threadIdx.x) * 15) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) / 85) * 129600)) + (((((int)blockIdx.x) % 432) / 144) * 43200)) + (((((((int)threadIdx.x) * 15) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) % 85) / 17) * 8640)) + (di_outer_outer * 8640)) + ((((((int)threadIdx.x) * 15) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) % 17) * 576)) + ((((int)blockIdx.x) % 144) * 4)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s & 3)) - 9216))] : 0.000000e+00f);
          }
        }
      }
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[((((int)threadIdx.x) * 2))] = placeholder1[(((((di_outer_outer * 1728) + ((((int)threadIdx.x) >> 1) * 576)) + ((((int)blockIdx.x) % 144) * 4)) + ((((int)threadIdx.x) & 1) * 2)))];
    }
    if (((int)threadIdx.x) < 6) {
      placeholder_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder1[(((((di_outer_outer * 1728) + ((((((int)threadIdx.x) * 2) + 1) >> 2) * 576)) + ((((int)blockIdx.x) % 144) * 4)) + (((((int)threadIdx.x) * 2) + 1) & 3)))];
    }
    __syncthreads();
    for (int dj_outer_inner = 0; dj_outer_inner < 3; ++dj_outer_inner) {
      for (int i_outer_inner = 0; i_outer_inner < 5; ++i_outer_inner) {
        DepthwiseConv2d[((i_outer_inner * 2))] = (DepthwiseConv2d[((i_outer_inner * 2))] + (PaddedInput_shared[((((i_outer_inner * 68) + (((int)threadIdx.x) * 4)) + (dj_outer_inner * 4)))] * placeholder_shared[((dj_outer_inner * 4))]));
        DepthwiseConv2d[(((i_outer_inner * 2) + 10))] = (DepthwiseConv2d[(((i_outer_inner * 2) + 10))] + (PaddedInput_shared[(((((i_outer_inner * 68) + (((int)threadIdx.x) * 4)) + (dj_outer_inner * 4)) + 2))] * placeholder_shared[(((dj_outer_inner * 4) + 2))]));
        DepthwiseConv2d[(((i_outer_inner * 2) + 20))] = (DepthwiseConv2d[(((i_outer_inner * 2) + 20))] + (PaddedInput_shared[(((((i_outer_inner * 68) + (((int)threadIdx.x) * 4)) + (dj_outer_inner * 4)) + 340))] * placeholder_shared[((dj_outer_inner * 4))]));
        DepthwiseConv2d[(((i_outer_inner * 2) + 30))] = (DepthwiseConv2d[(((i_outer_inner * 2) + 30))] + (PaddedInput_shared[(((((i_outer_inner * 68) + (((int)threadIdx.x) * 4)) + (dj_outer_inner * 4)) + 342))] * placeholder_shared[(((dj_outer_inner * 4) + 2))]));
        DepthwiseConv2d[(((i_outer_inner * 2) + 1))] = (DepthwiseConv2d[(((i_outer_inner * 2) + 1))] + (PaddedInput_shared[(((((i_outer_inner * 68) + (((int)threadIdx.x) * 4)) + (dj_outer_inner * 4)) + 1))] * placeholder_shared[(((dj_outer_inner * 4) + 1))]));
        DepthwiseConv2d[(((i_outer_inner * 2) + 11))] = (DepthwiseConv2d[(((i_outer_inner * 2) + 11))] + (PaddedInput_shared[(((((i_outer_inner * 68) + (((int)threadIdx.x) * 4)) + (dj_outer_inner * 4)) + 3))] * placeholder_shared[(((dj_outer_inner * 4) + 3))]));
        DepthwiseConv2d[(((i_outer_inner * 2) + 21))] = (DepthwiseConv2d[(((i_outer_inner * 2) + 21))] + (PaddedInput_shared[(((((i_outer_inner * 68) + (((int)threadIdx.x) * 4)) + (dj_outer_inner * 4)) + 341))] * placeholder_shared[(((dj_outer_inner * 4) + 1))]));
        DepthwiseConv2d[(((i_outer_inner * 2) + 31))] = (DepthwiseConv2d[(((i_outer_inner * 2) + 31))] + (PaddedInput_shared[(((((i_outer_inner * 68) + (((int)threadIdx.x) * 4)) + (dj_outer_inner * 4)) + 343))] * placeholder_shared[(((dj_outer_inner * 4) + 3))]));
      }
    }
  }
  for (int i1_inner = 0; i1_inner < 5; ++i1_inner) {
    for (int i3_inner = 0; i3_inner < 2; ++i3_inner) {
      compute[((((((((((int)blockIdx.x) / 432) * 259200) + (((((int)blockIdx.x) % 432) / 144) * 43200)) + (i1_inner * 8640)) + (((int)threadIdx.x) * 576)) + ((((int)blockIdx.x) % 144) * 4)) + i3_inner))] = max(min((DepthwiseConv2d[(((i1_inner * 2) + i3_inner))] + placeholder2[((((((int)blockIdx.x) % 144) * 4) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((((int)blockIdx.x) / 432) * 259200) + (((((int)blockIdx.x) % 432) / 144) * 43200)) + (i1_inner * 8640)) + (((int)threadIdx.x) * 576)) + ((((int)blockIdx.x) % 144) * 4)) + i3_inner) + 2))] = max(min((DepthwiseConv2d[((((i1_inner * 2) + i3_inner) + 10))] + placeholder2[(((((((int)blockIdx.x) % 144) * 4) + i3_inner) + 2))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((((int)blockIdx.x) / 432) * 259200) + (((((int)blockIdx.x) % 432) / 144) * 43200)) + (i1_inner * 8640)) + (((int)threadIdx.x) * 576)) + ((((int)blockIdx.x) % 144) * 4)) + i3_inner) + 129600))] = max(min((DepthwiseConv2d[((((i1_inner * 2) + i3_inner) + 20))] + placeholder2[((((((int)blockIdx.x) % 144) * 4) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((((int)blockIdx.x) / 432) * 259200) + (((((int)blockIdx.x) % 432) / 144) * 43200)) + (i1_inner * 8640)) + (((int)threadIdx.x) * 576)) + ((((int)blockIdx.x) % 144) * 4)) + i3_inner) + 129602))] = max(min((DepthwiseConv2d[((((i1_inner * 2) + i3_inner) + 30))] + placeholder2[(((((((int)blockIdx.x) % 144) * 4) + i3_inner) + 2))]), 6.000000e+00f), 0.000000e+00f);
    }
  }
}


