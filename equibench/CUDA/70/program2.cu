
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_multiply, float* __restrict__ DepthwiseConv2d, float* __restrict__ placeholder) {
  T_multiply[(((((int)blockIdx.x) * 49) + ((int)threadIdx.x)))] = ((DepthwiseConv2d[(((((int)blockIdx.x) * 49) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 49) + ((int)threadIdx.x)) % 672))]) * (max(min(((DepthwiseConv2d[(((((int)blockIdx.x) * 49) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 49) + ((int)threadIdx.x)) % 672))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ DepthwiseConv2d) {
  float DepthwiseConv2d_local[56];
  __shared__ float PaddedInput_shared[2016];
  __shared__ float placeholder_shared[96];
  for (int i_c_outer_inner_init = 0; i_c_outer_inner_init < 7; ++i_c_outer_inner_init) {
    DepthwiseConv2d_local[(i_c_outer_inner_init)] = 0.000000e+00f;
    DepthwiseConv2d_local[((i_c_outer_inner_init + 7))] = 0.000000e+00f;
    DepthwiseConv2d_local[((i_c_outer_inner_init + 14))] = 0.000000e+00f;
    DepthwiseConv2d_local[((i_c_outer_inner_init + 21))] = 0.000000e+00f;
    DepthwiseConv2d_local[((i_c_outer_inner_init + 28))] = 0.000000e+00f;
    DepthwiseConv2d_local[((i_c_outer_inner_init + 35))] = 0.000000e+00f;
    DepthwiseConv2d_local[((i_c_outer_inner_init + 42))] = 0.000000e+00f;
    DepthwiseConv2d_local[((i_c_outer_inner_init + 49))] = 0.000000e+00f;
  }
  for (int di_outer_outer = 0; di_outer_outer < 3; ++di_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 72; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 28) + ((int)threadIdx.x)))] = (((((1 <= (((((((int)blockIdx.x) % 84) / 42) * 7) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 28) + ((int)threadIdx.x)) / 288)) + di_outer_outer)) && ((((((((int)blockIdx.x) % 84) / 42) * 7) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 28) + ((int)threadIdx.x)) / 288)) + di_outer_outer) < 15)) && (1 <= ((((((int)blockIdx.x) % 42) / 21) * 7) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 28) + ((int)threadIdx.x)) % 288) >> 5)))) && (((((((int)blockIdx.x) % 42) / 21) * 7) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 28) + ((int)threadIdx.x)) % 288) >> 5)) < 15)) ? placeholder[((((((((((((int)blockIdx.x) / 42) * 65856) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 28) + ((int)threadIdx.x)) / 288) * 9408)) + (di_outer_outer * 9408)) + (((((int)blockIdx.x) % 42) / 21) * 4704)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 28) + ((int)threadIdx.x)) % 288) >> 5) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 28) + ((int)threadIdx.x)) & 31)) - 10080))] : 0.000000e+00f);
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((di_outer_outer * 2016) + ((((int)blockIdx.x) % 21) * 32)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 28))] = placeholder1[(((((di_outer_outer * 2016) + (((((int)threadIdx.x) + 28) >> 5) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + ((((int)threadIdx.x) + 28) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 56))] = placeholder1[(((((di_outer_outer * 2016) + (((((int)threadIdx.x) + 56) >> 5) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + ((((int)threadIdx.x) + 24) & 31)))];
    if (((int)threadIdx.x) < 12) {
      placeholder_shared[((((int)threadIdx.x) + 84))] = placeholder1[(((((di_outer_outer * 2016) + (((((int)threadIdx.x) + 84) >> 5) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + (((int)threadIdx.x) + 20)))];
    }
    __syncthreads();
    for (int i_c_outer_inner = 0; i_c_outer_inner < 7; ++i_c_outer_inner) {
      for (int dj_inner = 0; dj_inner < 3; ++dj_inner) {
        DepthwiseConv2d_local[(i_c_outer_inner)] = (DepthwiseConv2d_local[(i_c_outer_inner)] + (PaddedInput_shared[(((((i_c_outer_inner * 288) + ((((int)threadIdx.x) >> 2) * 32)) + (dj_inner * 32)) + (((int)threadIdx.x) & 3)))] * placeholder_shared[(((dj_inner * 32) + (((int)threadIdx.x) & 3)))]));
        DepthwiseConv2d_local[((i_c_outer_inner + 7))] = (DepthwiseConv2d_local[((i_c_outer_inner + 7))] + (PaddedInput_shared[((((((i_c_outer_inner * 288) + ((((int)threadIdx.x) >> 2) * 32)) + (dj_inner * 32)) + (((int)threadIdx.x) & 3)) + 4))] * placeholder_shared[((((dj_inner * 32) + (((int)threadIdx.x) & 3)) + 4))]));
        DepthwiseConv2d_local[((i_c_outer_inner + 14))] = (DepthwiseConv2d_local[((i_c_outer_inner + 14))] + (PaddedInput_shared[((((((i_c_outer_inner * 288) + ((((int)threadIdx.x) >> 2) * 32)) + (dj_inner * 32)) + (((int)threadIdx.x) & 3)) + 8))] * placeholder_shared[((((dj_inner * 32) + (((int)threadIdx.x) & 3)) + 8))]));
        DepthwiseConv2d_local[((i_c_outer_inner + 21))] = (DepthwiseConv2d_local[((i_c_outer_inner + 21))] + (PaddedInput_shared[((((((i_c_outer_inner * 288) + ((((int)threadIdx.x) >> 2) * 32)) + (dj_inner * 32)) + (((int)threadIdx.x) & 3)) + 12))] * placeholder_shared[((((dj_inner * 32) + (((int)threadIdx.x) & 3)) + 12))]));
        DepthwiseConv2d_local[((i_c_outer_inner + 28))] = (DepthwiseConv2d_local[((i_c_outer_inner + 28))] + (PaddedInput_shared[((((((i_c_outer_inner * 288) + ((((int)threadIdx.x) >> 2) * 32)) + (dj_inner * 32)) + (((int)threadIdx.x) & 3)) + 16))] * placeholder_shared[((((dj_inner * 32) + (((int)threadIdx.x) & 3)) + 16))]));
        DepthwiseConv2d_local[((i_c_outer_inner + 35))] = (DepthwiseConv2d_local[((i_c_outer_inner + 35))] + (PaddedInput_shared[((((((i_c_outer_inner * 288) + ((((int)threadIdx.x) >> 2) * 32)) + (dj_inner * 32)) + (((int)threadIdx.x) & 3)) + 20))] * placeholder_shared[((((dj_inner * 32) + (((int)threadIdx.x) & 3)) + 20))]));
        DepthwiseConv2d_local[((i_c_outer_inner + 42))] = (DepthwiseConv2d_local[((i_c_outer_inner + 42))] + (PaddedInput_shared[((((((i_c_outer_inner * 288) + ((((int)threadIdx.x) >> 2) * 32)) + (dj_inner * 32)) + (((int)threadIdx.x) & 3)) + 24))] * placeholder_shared[((((dj_inner * 32) + (((int)threadIdx.x) & 3)) + 24))]));
        DepthwiseConv2d_local[((i_c_outer_inner + 49))] = (DepthwiseConv2d_local[((i_c_outer_inner + 49))] + (PaddedInput_shared[((((((i_c_outer_inner * 288) + ((((int)threadIdx.x) >> 2) * 32)) + (dj_inner * 32)) + (((int)threadIdx.x) & 3)) + 28))] * placeholder_shared[((((dj_inner * 32) + (((int)threadIdx.x) & 3)) + 28))]));
      }
    }
  }
  for (int i_inner = 0; i_inner < 7; ++i_inner) {
    DepthwiseConv2d[((((((((((int)blockIdx.x) / 42) * 65856) + (i_inner * 9408)) + (((((int)blockIdx.x) % 42) / 21) * 4704)) + ((((int)threadIdx.x) >> 2) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + (((int)threadIdx.x) & 3)))] = DepthwiseConv2d_local[(i_inner)];
    DepthwiseConv2d[(((((((((((int)blockIdx.x) / 42) * 65856) + (i_inner * 9408)) + (((((int)blockIdx.x) % 42) / 21) * 4704)) + ((((int)threadIdx.x) >> 2) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + (((int)threadIdx.x) & 3)) + 4))] = DepthwiseConv2d_local[((i_inner + 7))];
    DepthwiseConv2d[(((((((((((int)blockIdx.x) / 42) * 65856) + (i_inner * 9408)) + (((((int)blockIdx.x) % 42) / 21) * 4704)) + ((((int)threadIdx.x) >> 2) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + (((int)threadIdx.x) & 3)) + 8))] = DepthwiseConv2d_local[((i_inner + 14))];
    DepthwiseConv2d[(((((((((((int)blockIdx.x) / 42) * 65856) + (i_inner * 9408)) + (((((int)blockIdx.x) % 42) / 21) * 4704)) + ((((int)threadIdx.x) >> 2) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + (((int)threadIdx.x) & 3)) + 12))] = DepthwiseConv2d_local[((i_inner + 21))];
    DepthwiseConv2d[(((((((((((int)blockIdx.x) / 42) * 65856) + (i_inner * 9408)) + (((((int)blockIdx.x) % 42) / 21) * 4704)) + ((((int)threadIdx.x) >> 2) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + (((int)threadIdx.x) & 3)) + 16))] = DepthwiseConv2d_local[((i_inner + 28))];
    DepthwiseConv2d[(((((((((((int)blockIdx.x) / 42) * 65856) + (i_inner * 9408)) + (((((int)blockIdx.x) % 42) / 21) * 4704)) + ((((int)threadIdx.x) >> 2) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + (((int)threadIdx.x) & 3)) + 20))] = DepthwiseConv2d_local[((i_inner + 35))];
    DepthwiseConv2d[(((((((((((int)blockIdx.x) / 42) * 65856) + (i_inner * 9408)) + (((((int)blockIdx.x) % 42) / 21) * 4704)) + ((((int)threadIdx.x) >> 2) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + (((int)threadIdx.x) & 3)) + 24))] = DepthwiseConv2d_local[((i_inner + 42))];
    DepthwiseConv2d[(((((((((((int)blockIdx.x) / 42) * 65856) + (i_inner * 9408)) + (((((int)blockIdx.x) % 42) / 21) * 4704)) + ((((int)threadIdx.x) >> 2) * 672)) + ((((int)blockIdx.x) % 21) * 32)) + (((int)threadIdx.x) & 3)) + 28))] = DepthwiseConv2d_local[((i_inner + 49))];
  }
}


