
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
  T_multiply[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] = ((DepthwiseConv2d[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) % 672))]) * (max(min(((DepthwiseConv2d[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) % 672))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ DepthwiseConv2d) {
  float DepthwiseConv2d_local[16];
  __shared__ float PaddedInput_shared[5880];
  __shared__ float placeholder_shared[280];
  DepthwiseConv2d_local[(0)] = 0.000000e+00f;
  DepthwiseConv2d_local[(8)] = 0.000000e+00f;
  DepthwiseConv2d_local[(1)] = 0.000000e+00f;
  DepthwiseConv2d_local[(9)] = 0.000000e+00f;
  DepthwiseConv2d_local[(2)] = 0.000000e+00f;
  DepthwiseConv2d_local[(10)] = 0.000000e+00f;
  DepthwiseConv2d_local[(3)] = 0.000000e+00f;
  DepthwiseConv2d_local[(11)] = 0.000000e+00f;
  DepthwiseConv2d_local[(4)] = 0.000000e+00f;
  DepthwiseConv2d_local[(12)] = 0.000000e+00f;
  DepthwiseConv2d_local[(5)] = 0.000000e+00f;
  DepthwiseConv2d_local[(13)] = 0.000000e+00f;
  DepthwiseConv2d_local[(6)] = 0.000000e+00f;
  DepthwiseConv2d_local[(14)] = 0.000000e+00f;
  DepthwiseConv2d_local[(7)] = 0.000000e+00f;
  DepthwiseConv2d_local[(15)] = 0.000000e+00f;
  for (int di_outer_outer = 0; di_outer_outer < 5; ++di_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 105; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)))] = (((((2 <= ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer / 7) + di_outer_outer)) && (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer / 7) + di_outer_outer) < 17)) && (2 <= (((((int)blockIdx.x) / 12) * 4) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 7)))) && ((((((int)blockIdx.x) / 12) * 4) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 7)) < 17)) ? placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer / 7) * 10080) + (di_outer_outer * 10080)) + ((((int)blockIdx.x) / 12) * 2688)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 7) * 672)) + ((((int)blockIdx.x) % 12) * 56)) + ((int)threadIdx.x)) - 21504))] : 0.000000e+00f);
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((di_outer_outer * 3360) + ((((int)blockIdx.x) % 12) * 56)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 56))] = placeholder1[(((((di_outer_outer * 3360) + ((((int)blockIdx.x) % 12) * 56)) + ((int)threadIdx.x)) + 672))];
    placeholder_shared[((((int)threadIdx.x) + 112))] = placeholder1[(((((di_outer_outer * 3360) + ((((int)blockIdx.x) % 12) * 56)) + ((int)threadIdx.x)) + 1344))];
    placeholder_shared[((((int)threadIdx.x) + 168))] = placeholder1[(((((di_outer_outer * 3360) + ((((int)blockIdx.x) % 12) * 56)) + ((int)threadIdx.x)) + 2016))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[(((((di_outer_outer * 3360) + ((((int)blockIdx.x) % 12) * 56)) + ((int)threadIdx.x)) + 2688))];
    __syncthreads();
    for (int dj_outer_inner = 0; dj_outer_inner < 5; ++dj_outer_inner) {
      DepthwiseConv2d_local[(0)] = (DepthwiseConv2d_local[(0)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)))] * placeholder_shared[(((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)))]));
      DepthwiseConv2d_local[(8)] = (DepthwiseConv2d_local[(8)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 3136))] * placeholder_shared[(((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)))]));
      DepthwiseConv2d_local[(1)] = (DepthwiseConv2d_local[(1)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 1))] * placeholder_shared[((((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)) + 1))]));
      DepthwiseConv2d_local[(9)] = (DepthwiseConv2d_local[(9)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 3137))] * placeholder_shared[((((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)) + 1))]));
      DepthwiseConv2d_local[(2)] = (DepthwiseConv2d_local[(2)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 2))] * placeholder_shared[((((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)) + 2))]));
      DepthwiseConv2d_local[(10)] = (DepthwiseConv2d_local[(10)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 3138))] * placeholder_shared[((((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)) + 2))]));
      DepthwiseConv2d_local[(3)] = (DepthwiseConv2d_local[(3)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 3))] * placeholder_shared[((((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)) + 3))]));
      DepthwiseConv2d_local[(11)] = (DepthwiseConv2d_local[(11)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 3139))] * placeholder_shared[((((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)) + 3))]));
      DepthwiseConv2d_local[(4)] = (DepthwiseConv2d_local[(4)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 784))] * placeholder_shared[(((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)))]));
      DepthwiseConv2d_local[(12)] = (DepthwiseConv2d_local[(12)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 3920))] * placeholder_shared[(((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)))]));
      DepthwiseConv2d_local[(5)] = (DepthwiseConv2d_local[(5)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 785))] * placeholder_shared[((((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)) + 1))]));
      DepthwiseConv2d_local[(13)] = (DepthwiseConv2d_local[(13)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 3921))] * placeholder_shared[((((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)) + 1))]));
      DepthwiseConv2d_local[(6)] = (DepthwiseConv2d_local[(6)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 786))] * placeholder_shared[((((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)) + 2))]));
      DepthwiseConv2d_local[(14)] = (DepthwiseConv2d_local[(14)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 3922))] * placeholder_shared[((((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)) + 2))]));
      DepthwiseConv2d_local[(7)] = (DepthwiseConv2d_local[(7)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 787))] * placeholder_shared[((((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)) + 3))]));
      DepthwiseConv2d_local[(15)] = (DepthwiseConv2d_local[(15)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 1568) + (((((int)threadIdx.x) % 28) / 14) * 112)) + (dj_outer_inner * 56)) + ((((int)threadIdx.x) % 14) * 4)) + 3923))] * placeholder_shared[((((dj_outer_inner * 56) + ((((int)threadIdx.x) % 14) * 4)) + 3))]));
    }
  }
  for (int i_inner = 0; i_inner < 2; ++i_inner) {
    for (int c_inner = 0; c_inner < 4; ++c_inner) {
      DepthwiseConv2d[(((((((((((int)threadIdx.x) / 28) * 10752) + (i_inner * 5376)) + ((((int)blockIdx.x) / 12) * 1344)) + (((((int)threadIdx.x) % 28) / 14) * 672)) + ((((int)blockIdx.x) % 12) * 56)) + ((((int)threadIdx.x) % 14) * 4)) + c_inner))] = DepthwiseConv2d_local[(((i_inner * 4) + c_inner))];
      DepthwiseConv2d[((((((((((((int)threadIdx.x) / 28) * 10752) + (i_inner * 5376)) + ((((int)blockIdx.x) / 12) * 1344)) + (((((int)threadIdx.x) % 28) / 14) * 672)) + ((((int)blockIdx.x) % 12) * 56)) + ((((int)threadIdx.x) % 14) * 4)) + c_inner) + 21504))] = DepthwiseConv2d_local[((((i_inner * 4) + c_inner) + 8))];
    }
  }
}


