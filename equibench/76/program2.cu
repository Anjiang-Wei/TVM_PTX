
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
  T_multiply[(((((int)blockIdx.x) * 8) + ((int)threadIdx.x)))] = ((DepthwiseConv2d[(((((int)blockIdx.x) * 8) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 8) + ((int)threadIdx.x)) % 480))]) * (max(min(((DepthwiseConv2d[(((((int)blockIdx.x) * 8) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 8) + ((int)threadIdx.x)) % 480))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ DepthwiseConv2d) {
  float DepthwiseConv2d_local[64];
  __shared__ float PaddedInput_shared[11520];
  __shared__ float placeholder_shared[60];
  DepthwiseConv2d_local[(0)] = 0.000000e+00f;
  DepthwiseConv2d_local[(16)] = 0.000000e+00f;
  DepthwiseConv2d_local[(32)] = 0.000000e+00f;
  DepthwiseConv2d_local[(48)] = 0.000000e+00f;
  DepthwiseConv2d_local[(1)] = 0.000000e+00f;
  DepthwiseConv2d_local[(17)] = 0.000000e+00f;
  DepthwiseConv2d_local[(33)] = 0.000000e+00f;
  DepthwiseConv2d_local[(49)] = 0.000000e+00f;
  DepthwiseConv2d_local[(2)] = 0.000000e+00f;
  DepthwiseConv2d_local[(18)] = 0.000000e+00f;
  DepthwiseConv2d_local[(34)] = 0.000000e+00f;
  DepthwiseConv2d_local[(50)] = 0.000000e+00f;
  DepthwiseConv2d_local[(3)] = 0.000000e+00f;
  DepthwiseConv2d_local[(19)] = 0.000000e+00f;
  DepthwiseConv2d_local[(35)] = 0.000000e+00f;
  DepthwiseConv2d_local[(51)] = 0.000000e+00f;
  DepthwiseConv2d_local[(4)] = 0.000000e+00f;
  DepthwiseConv2d_local[(20)] = 0.000000e+00f;
  DepthwiseConv2d_local[(36)] = 0.000000e+00f;
  DepthwiseConv2d_local[(52)] = 0.000000e+00f;
  DepthwiseConv2d_local[(5)] = 0.000000e+00f;
  DepthwiseConv2d_local[(21)] = 0.000000e+00f;
  DepthwiseConv2d_local[(37)] = 0.000000e+00f;
  DepthwiseConv2d_local[(53)] = 0.000000e+00f;
  DepthwiseConv2d_local[(6)] = 0.000000e+00f;
  DepthwiseConv2d_local[(22)] = 0.000000e+00f;
  DepthwiseConv2d_local[(38)] = 0.000000e+00f;
  DepthwiseConv2d_local[(54)] = 0.000000e+00f;
  DepthwiseConv2d_local[(7)] = 0.000000e+00f;
  DepthwiseConv2d_local[(23)] = 0.000000e+00f;
  DepthwiseConv2d_local[(39)] = 0.000000e+00f;
  DepthwiseConv2d_local[(55)] = 0.000000e+00f;
  DepthwiseConv2d_local[(8)] = 0.000000e+00f;
  DepthwiseConv2d_local[(24)] = 0.000000e+00f;
  DepthwiseConv2d_local[(40)] = 0.000000e+00f;
  DepthwiseConv2d_local[(56)] = 0.000000e+00f;
  DepthwiseConv2d_local[(9)] = 0.000000e+00f;
  DepthwiseConv2d_local[(25)] = 0.000000e+00f;
  DepthwiseConv2d_local[(41)] = 0.000000e+00f;
  DepthwiseConv2d_local[(57)] = 0.000000e+00f;
  DepthwiseConv2d_local[(10)] = 0.000000e+00f;
  DepthwiseConv2d_local[(26)] = 0.000000e+00f;
  DepthwiseConv2d_local[(42)] = 0.000000e+00f;
  DepthwiseConv2d_local[(58)] = 0.000000e+00f;
  DepthwiseConv2d_local[(11)] = 0.000000e+00f;
  DepthwiseConv2d_local[(27)] = 0.000000e+00f;
  DepthwiseConv2d_local[(43)] = 0.000000e+00f;
  DepthwiseConv2d_local[(59)] = 0.000000e+00f;
  DepthwiseConv2d_local[(12)] = 0.000000e+00f;
  DepthwiseConv2d_local[(28)] = 0.000000e+00f;
  DepthwiseConv2d_local[(44)] = 0.000000e+00f;
  DepthwiseConv2d_local[(60)] = 0.000000e+00f;
  DepthwiseConv2d_local[(13)] = 0.000000e+00f;
  DepthwiseConv2d_local[(29)] = 0.000000e+00f;
  DepthwiseConv2d_local[(45)] = 0.000000e+00f;
  DepthwiseConv2d_local[(61)] = 0.000000e+00f;
  DepthwiseConv2d_local[(14)] = 0.000000e+00f;
  DepthwiseConv2d_local[(30)] = 0.000000e+00f;
  DepthwiseConv2d_local[(46)] = 0.000000e+00f;
  DepthwiseConv2d_local[(62)] = 0.000000e+00f;
  DepthwiseConv2d_local[(15)] = 0.000000e+00f;
  DepthwiseConv2d_local[(31)] = 0.000000e+00f;
  DepthwiseConv2d_local[(47)] = 0.000000e+00f;
  DepthwiseConv2d_local[(63)] = 0.000000e+00f;
  for (int di_outer_outer = 0; di_outer_outer < 3; ++di_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 72; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 160) + ((int)threadIdx.x)))] = (((((1 <= ((((((int)blockIdx.x) / 24) * 4) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + (((int)threadIdx.x) / 20)) % 72) / 18)) + di_outer_outer)) && (((((((int)blockIdx.x) / 24) * 4) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + (((int)threadIdx.x) / 20)) % 72) / 18)) + di_outer_outer) < 17)) && (1 <= (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + (((int)threadIdx.x) / 20)) % 18))) && ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + (((int)threadIdx.x) / 20)) % 18) < 17)) ? placeholder[((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + (((int)threadIdx.x) / 20)) / 72) * 122880) + ((((int)blockIdx.x) / 24) * 30720)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + (((int)threadIdx.x) / 20)) % 72) / 18) * 7680)) + (di_outer_outer * 7680)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + (((int)threadIdx.x) / 20)) % 18) * 480)) + ((((int)blockIdx.x) % 24) * 20)) + (((int)threadIdx.x) % 20)) - 8160))] : 0.000000e+00f);
    }
    if (((int)threadIdx.x) < 60) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((di_outer_outer * 1440) + ((((int)threadIdx.x) / 20) * 480)) + ((((int)blockIdx.x) % 24) * 20)) + (((int)threadIdx.x) % 20)))];
    }
    __syncthreads();
    for (int b_c_outer_inner = 0; b_c_outer_inner < 4; ++b_c_outer_inner) {
      DepthwiseConv2d_local[((b_c_outer_inner * 4))] = (DepthwiseConv2d_local[((b_c_outer_inner * 4))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)))] * placeholder_shared[((((int)threadIdx.x) % 5))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 16))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 16))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 5))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 5))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 32))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 32))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 10))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 10))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 48))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 48))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 15))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 15))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 1))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 1))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 20))] * placeholder_shared[((((int)threadIdx.x) % 5))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 17))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 17))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 25))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 5))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 33))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 33))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 30))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 10))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 49))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 49))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 35))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 15))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 2))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 2))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 360))] * placeholder_shared[((((int)threadIdx.x) % 5))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 18))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 18))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 365))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 5))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 34))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 34))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 370))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 10))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 50))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 50))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 375))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 15))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 3))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 3))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 380))] * placeholder_shared[((((int)threadIdx.x) % 5))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 19))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 19))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 385))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 5))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 35))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 35))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 390))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 10))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 51))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 51))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 395))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 15))]));
      DepthwiseConv2d_local[((b_c_outer_inner * 4))] = (DepthwiseConv2d_local[((b_c_outer_inner * 4))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 20))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 20))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 16))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 16))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 25))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 25))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 32))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 32))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 30))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 30))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 48))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 48))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 35))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 35))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 1))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 1))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 40))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 20))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 17))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 17))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 45))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 25))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 33))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 33))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 50))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 30))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 49))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 49))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 55))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 35))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 2))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 2))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 380))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 20))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 18))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 18))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 385))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 25))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 34))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 34))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 390))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 30))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 50))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 50))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 395))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 35))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 3))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 3))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 400))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 20))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 19))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 19))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 405))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 25))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 35))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 35))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 410))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 30))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 51))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 51))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 415))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 35))]));
      DepthwiseConv2d_local[((b_c_outer_inner * 4))] = (DepthwiseConv2d_local[((b_c_outer_inner * 4))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 40))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 40))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 16))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 16))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 45))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 45))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 32))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 32))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 50))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 50))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 48))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 48))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 55))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 55))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 1))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 1))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 60))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 40))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 17))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 17))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 65))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 45))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 33))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 33))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 70))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 50))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 49))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 49))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 75))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 55))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 2))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 2))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 400))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 40))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 18))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 18))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 405))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 45))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 34))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 34))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 410))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 50))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 50))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 50))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 415))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 55))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 3))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 3))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 420))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 40))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 19))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 19))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 425))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 45))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 35))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 35))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 430))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 50))]));
      DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 51))] = (DepthwiseConv2d_local[(((b_c_outer_inner * 4) + 51))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 80) * 5760) + (b_c_outer_inner * 1440)) + (((((int)threadIdx.x) % 80) / 40) * 720)) + (((((int)threadIdx.x) % 40) / 5) * 40)) + (((int)threadIdx.x) % 5)) + 435))] * placeholder_shared[(((((int)threadIdx.x) % 5) + 55))]));
    }
  }
  for (int b_inner = 0; b_inner < 4; ++b_inner) {
    for (int i_inner = 0; i_inner < 2; ++i_inner) {
      for (int j_inner = 0; j_inner < 2; ++j_inner) {
        DepthwiseConv2d[(((((((((((((int)threadIdx.x) / 80) * 491520) + (b_inner * 122880)) + ((((int)blockIdx.x) / 24) * 30720)) + (((((int)threadIdx.x) % 80) / 40) * 15360)) + (i_inner * 7680)) + (((((int)threadIdx.x) % 40) / 5) * 960)) + (j_inner * 480)) + ((((int)blockIdx.x) % 24) * 20)) + (((int)threadIdx.x) % 5)))] = DepthwiseConv2d_local[((((b_inner * 4) + (i_inner * 2)) + j_inner))];
        DepthwiseConv2d[((((((((((((((int)threadIdx.x) / 80) * 491520) + (b_inner * 122880)) + ((((int)blockIdx.x) / 24) * 30720)) + (((((int)threadIdx.x) % 80) / 40) * 15360)) + (i_inner * 7680)) + (((((int)threadIdx.x) % 40) / 5) * 960)) + (j_inner * 480)) + ((((int)blockIdx.x) % 24) * 20)) + (((int)threadIdx.x) % 5)) + 5))] = DepthwiseConv2d_local[(((((b_inner * 4) + (i_inner * 2)) + j_inner) + 16))];
        DepthwiseConv2d[((((((((((((((int)threadIdx.x) / 80) * 491520) + (b_inner * 122880)) + ((((int)blockIdx.x) / 24) * 30720)) + (((((int)threadIdx.x) % 80) / 40) * 15360)) + (i_inner * 7680)) + (((((int)threadIdx.x) % 40) / 5) * 960)) + (j_inner * 480)) + ((((int)blockIdx.x) % 24) * 20)) + (((int)threadIdx.x) % 5)) + 10))] = DepthwiseConv2d_local[(((((b_inner * 4) + (i_inner * 2)) + j_inner) + 32))];
        DepthwiseConv2d[((((((((((((((int)threadIdx.x) / 80) * 491520) + (b_inner * 122880)) + ((((int)blockIdx.x) / 24) * 30720)) + (((((int)threadIdx.x) % 80) / 40) * 15360)) + (i_inner * 7680)) + (((((int)threadIdx.x) % 40) / 5) * 960)) + (j_inner * 480)) + ((((int)blockIdx.x) % 24) * 20)) + (((int)threadIdx.x) % 5)) + 15))] = DepthwiseConv2d_local[(((((b_inner * 4) + (i_inner * 2)) + j_inner) + 48))];
      }
    }
  }
}


