
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
  float DepthwiseConv2d[48];
  __shared__ float PaddedInput_shared[5376];
  __shared__ float placeholder_shared[6];
  for (int c_outer_inner_init = 0; c_outer_inner_init < 3; ++c_outer_inner_init) {
    DepthwiseConv2d[(c_outer_inner_init)] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 12))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 24))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 36))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 3))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 15))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 27))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 39))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 6))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 18))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 30))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 42))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 9))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 21))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 33))] = 0.000000e+00f;
    DepthwiseConv2d[((c_outer_inner_init + 45))] = 0.000000e+00f;
  }
  for (int di_outer_outer = 0; di_outer_outer < 3; ++di_outer_outer) {
    for (int dj_outer_outer = 0; dj_outer_outer < 3; ++dj_outer_outer) {
      __syncthreads();
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 12; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)))] = (((((1 <= ((((((int)blockIdx.x) / 168) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) % 1344) / 48)) + di_outer_outer)) && (((((((int)blockIdx.x) / 168) * 28) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) % 1344) / 48)) + di_outer_outer) < 57)) && (1 <= (((((((int)blockIdx.x) % 168) / 24) * 8) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) % 48) / 6)) + dj_outer_outer))) && ((((((((int)blockIdx.x) % 168) / 24) * 8) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) % 48) / 6)) + dj_outer_outer) < 57)) ? placeholder[((((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) / 1344) * 451584) + ((((int)blockIdx.x) / 168) * 225792)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) % 1344) / 48) * 8064)) + (di_outer_outer * 8064)) + (((((int)blockIdx.x) % 168) / 24) * 1152)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) % 48) / 6) * 144)) + (dj_outer_outer * 144)) + ((((int)blockIdx.x) % 24) * 6)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) % 6)) - 8208))] : 0.000000e+00f);
        PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 1))] = (((((1 <= ((((((int)blockIdx.x) / 168) * 28) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 1) % 1344) / 48)) + di_outer_outer)) && (((((((int)blockIdx.x) / 168) * 28) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 1) % 1344) / 48)) + di_outer_outer) < 57)) && (1 <= (((((((int)blockIdx.x) % 168) / 24) * 8) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 1) % 48) / 6)) + dj_outer_outer))) && ((((((((int)blockIdx.x) % 168) / 24) * 8) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 1) % 48) / 6)) + dj_outer_outer) < 57)) ? placeholder[(((((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 1) / 1344) * 451584) + ((((int)blockIdx.x) / 168) * 225792)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 1) % 1344) / 48) * 8064)) + (di_outer_outer * 8064)) + (((((int)blockIdx.x) % 168) / 24) * 1152)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 1) % 48) / 6) * 144)) + (dj_outer_outer * 144)) + ((((int)blockIdx.x) % 24) * 6)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 1) % 6)) - 8208))] : 0.000000e+00f);
        PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 2))] = (((((1 <= ((((((int)blockIdx.x) / 168) * 28) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 2) % 1344) / 48)) + di_outer_outer)) && (((((((int)blockIdx.x) / 168) * 28) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 2) % 1344) / 48)) + di_outer_outer) < 57)) && (1 <= (((((((int)blockIdx.x) % 168) / 24) * 8) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 2) % 48) / 6)) + dj_outer_outer))) && ((((((((int)blockIdx.x) % 168) / 24) * 8) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 2) % 48) / 6)) + dj_outer_outer) < 57)) ? placeholder[(((((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 2) / 1344) * 451584) + ((((int)blockIdx.x) / 168) * 225792)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 2) % 1344) / 48) * 8064)) + (di_outer_outer * 8064)) + (((((int)blockIdx.x) % 168) / 24) * 1152)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 2) % 48) / 6) * 144)) + (dj_outer_outer * 144)) + ((((int)blockIdx.x) % 24) * 6)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 2) % 6)) - 8208))] : 0.000000e+00f);
        PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 3))] = (((((1 <= ((((((int)blockIdx.x) / 168) * 28) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 3) % 1344) / 48)) + di_outer_outer)) && (((((((int)blockIdx.x) / 168) * 28) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 3) % 1344) / 48)) + di_outer_outer) < 57)) && (1 <= (((((((int)blockIdx.x) % 168) / 24) * 8) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 3) % 48) / 6)) + dj_outer_outer))) && ((((((((int)blockIdx.x) % 168) / 24) * 8) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 3) % 48) / 6)) + dj_outer_outer) < 57)) ? placeholder[(((((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 3) / 1344) * 451584) + ((((int)blockIdx.x) / 168) * 225792)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 3) % 1344) / 48) * 8064)) + (di_outer_outer * 8064)) + (((((int)blockIdx.x) % 168) / 24) * 1152)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 3) % 48) / 6) * 144)) + (dj_outer_outer * 144)) + ((((int)blockIdx.x) % 24) * 6)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + (((int)threadIdx.x) * 4)) + 3) % 6)) - 8208))] : 0.000000e+00f);
      }
      if (((int)threadIdx.x) < 2) {
        placeholder_shared[((((int)threadIdx.x) * 3))] = placeholder1[(((((di_outer_outer * 432) + (dj_outer_outer * 144)) + ((((int)blockIdx.x) % 24) * 6)) + (((int)threadIdx.x) * 3)))];
      }
      if (((int)threadIdx.x) < 2) {
        placeholder_shared[(((((int)threadIdx.x) * 3) + 1))] = placeholder1[((((((di_outer_outer * 432) + (dj_outer_outer * 144)) + ((((int)blockIdx.x) % 24) * 6)) + (((int)threadIdx.x) * 3)) + 1))];
      }
      if (((int)threadIdx.x) < 2) {
        placeholder_shared[(((((int)threadIdx.x) * 3) + 2))] = placeholder1[((((((di_outer_outer * 432) + (dj_outer_outer * 144)) + ((((int)blockIdx.x) % 24) * 6)) + (((int)threadIdx.x) * 3)) + 2))];
      }
      __syncthreads();
      for (int c_outer_inner = 0; c_outer_inner < 3; ++c_outer_inner) {
        DepthwiseConv2d[(c_outer_inner)] = (DepthwiseConv2d[(c_outer_inner)] + (PaddedInput_shared[(((((int)threadIdx.x) * 6) + c_outer_inner))] * placeholder_shared[(c_outer_inner)]));
        DepthwiseConv2d[((c_outer_inner + 12))] = (DepthwiseConv2d[((c_outer_inner + 12))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 3))] * placeholder_shared[((c_outer_inner + 3))]));
        DepthwiseConv2d[((c_outer_inner + 24))] = (DepthwiseConv2d[((c_outer_inner + 24))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 672))] * placeholder_shared[(c_outer_inner)]));
        DepthwiseConv2d[((c_outer_inner + 36))] = (DepthwiseConv2d[((c_outer_inner + 36))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 675))] * placeholder_shared[((c_outer_inner + 3))]));
        DepthwiseConv2d[((c_outer_inner + 3))] = (DepthwiseConv2d[((c_outer_inner + 3))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 1344))] * placeholder_shared[(c_outer_inner)]));
        DepthwiseConv2d[((c_outer_inner + 15))] = (DepthwiseConv2d[((c_outer_inner + 15))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 1347))] * placeholder_shared[((c_outer_inner + 3))]));
        DepthwiseConv2d[((c_outer_inner + 27))] = (DepthwiseConv2d[((c_outer_inner + 27))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 2016))] * placeholder_shared[(c_outer_inner)]));
        DepthwiseConv2d[((c_outer_inner + 39))] = (DepthwiseConv2d[((c_outer_inner + 39))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 2019))] * placeholder_shared[((c_outer_inner + 3))]));
        DepthwiseConv2d[((c_outer_inner + 6))] = (DepthwiseConv2d[((c_outer_inner + 6))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 2688))] * placeholder_shared[(c_outer_inner)]));
        DepthwiseConv2d[((c_outer_inner + 18))] = (DepthwiseConv2d[((c_outer_inner + 18))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 2691))] * placeholder_shared[((c_outer_inner + 3))]));
        DepthwiseConv2d[((c_outer_inner + 30))] = (DepthwiseConv2d[((c_outer_inner + 30))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 3360))] * placeholder_shared[(c_outer_inner)]));
        DepthwiseConv2d[((c_outer_inner + 42))] = (DepthwiseConv2d[((c_outer_inner + 42))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 3363))] * placeholder_shared[((c_outer_inner + 3))]));
        DepthwiseConv2d[((c_outer_inner + 9))] = (DepthwiseConv2d[((c_outer_inner + 9))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 4032))] * placeholder_shared[(c_outer_inner)]));
        DepthwiseConv2d[((c_outer_inner + 21))] = (DepthwiseConv2d[((c_outer_inner + 21))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 4035))] * placeholder_shared[((c_outer_inner + 3))]));
        DepthwiseConv2d[((c_outer_inner + 33))] = (DepthwiseConv2d[((c_outer_inner + 33))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 4704))] * placeholder_shared[(c_outer_inner)]));
        DepthwiseConv2d[((c_outer_inner + 45))] = (DepthwiseConv2d[((c_outer_inner + 45))] + (PaddedInput_shared[((((((int)threadIdx.x) * 6) + c_outer_inner) + 4707))] * placeholder_shared[((c_outer_inner + 3))]));
      }
    }
  }
  for (int i0_inner = 0; i0_inner < 4; ++i0_inner) {
    for (int i3_inner = 0; i3_inner < 3; ++i3_inner) {
      compute[((((((((i0_inner * 451584) + ((((int)blockIdx.x) / 168) * 225792)) + ((((int)threadIdx.x) >> 3) * 8064)) + (((((int)blockIdx.x) % 168) / 24) * 1152)) + ((((int)threadIdx.x) & 7) * 144)) + ((((int)blockIdx.x) % 24) * 6)) + i3_inner))] = max(min((DepthwiseConv2d[(((i0_inner * 3) + i3_inner))] + placeholder2[((((((int)blockIdx.x) % 24) * 6) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((i0_inner * 451584) + ((((int)blockIdx.x) / 168) * 225792)) + ((((int)threadIdx.x) >> 3) * 8064)) + (((((int)blockIdx.x) % 168) / 24) * 1152)) + ((((int)threadIdx.x) & 7) * 144)) + ((((int)blockIdx.x) % 24) * 6)) + i3_inner) + 3))] = max(min((DepthwiseConv2d[((((i0_inner * 3) + i3_inner) + 12))] + placeholder2[(((((((int)blockIdx.x) % 24) * 6) + i3_inner) + 3))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((i0_inner * 451584) + ((((int)blockIdx.x) / 168) * 225792)) + ((((int)threadIdx.x) >> 3) * 8064)) + (((((int)blockIdx.x) % 168) / 24) * 1152)) + ((((int)threadIdx.x) & 7) * 144)) + ((((int)blockIdx.x) % 24) * 6)) + i3_inner) + 112896))] = max(min((DepthwiseConv2d[((((i0_inner * 3) + i3_inner) + 24))] + placeholder2[((((((int)blockIdx.x) % 24) * 6) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
      compute[(((((((((i0_inner * 451584) + ((((int)blockIdx.x) / 168) * 225792)) + ((((int)threadIdx.x) >> 3) * 8064)) + (((((int)blockIdx.x) % 168) / 24) * 1152)) + ((((int)threadIdx.x) & 7) * 144)) + ((((int)blockIdx.x) % 24) * 6)) + i3_inner) + 112899))] = max(min((DepthwiseConv2d[((((i0_inner * 3) + i3_inner) + 36))] + placeholder2[(((((((int)blockIdx.x) % 24) * 6) + i3_inner) + 3))]), 6.000000e+00f), 0.000000e+00f);
    }
  }
}


