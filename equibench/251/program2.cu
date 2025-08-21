
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2) {
  float Conv2dOutput[14];
  __shared__ float PaddedInput_shared[406];
  __shared__ float placeholder_shared[3712];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((int)blockIdx.x) >> 1) * 928) + (rc_outer_outer * 58)) + ((int)threadIdx.x)))];
    PaddedInput_shared[((((int)threadIdx.x) + 32))] = placeholder[(((((((((int)threadIdx.x) + 32) / 58) * 6496) + ((((int)blockIdx.x) >> 1) * 928)) + (rc_outer_outer * 58)) + ((((int)threadIdx.x) + 32) % 58)))];
    PaddedInput_shared[((((int)threadIdx.x) + 64))] = placeholder[(((((((((int)threadIdx.x) + 64) / 58) * 6496) + ((((int)blockIdx.x) >> 1) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 6)))];
    PaddedInput_shared[((((int)threadIdx.x) + 96))] = placeholder[(((((((((int)threadIdx.x) + 96) / 58) * 6496) + ((((int)blockIdx.x) >> 1) * 928)) + (rc_outer_outer * 58)) + ((((int)threadIdx.x) + 38) % 58)))];
    PaddedInput_shared[((((int)threadIdx.x) + 128))] = placeholder[(((((((((int)threadIdx.x) + 128) / 58) * 6496) + ((((int)blockIdx.x) >> 1) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 12)))];
    PaddedInput_shared[((((int)threadIdx.x) + 160))] = placeholder[(((((((((int)threadIdx.x) + 160) / 58) * 6496) + ((((int)blockIdx.x) >> 1) * 928)) + (rc_outer_outer * 58)) + ((((int)threadIdx.x) + 44) % 58)))];
    PaddedInput_shared[((((int)threadIdx.x) + 192))] = placeholder[(((((((((int)threadIdx.x) + 192) / 58) * 6496) + ((((int)blockIdx.x) >> 1) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 18)))];
    PaddedInput_shared[((((int)threadIdx.x) + 224))] = placeholder[(((((((((int)threadIdx.x) + 224) / 58) * 6496) + ((((int)blockIdx.x) >> 1) * 928)) + (rc_outer_outer * 58)) + ((((int)threadIdx.x) + 50) % 58)))];
    PaddedInput_shared[((((int)threadIdx.x) + 256))] = placeholder[(((((((((int)threadIdx.x) + 256) / 58) * 6496) + ((((int)blockIdx.x) >> 1) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 288))] = placeholder[(((((((((int)threadIdx.x) + 288) / 58) * 6496) + ((((int)blockIdx.x) >> 1) * 928)) + (rc_outer_outer * 58)) + ((((int)threadIdx.x) + 56) % 58)))];
    PaddedInput_shared[((((int)threadIdx.x) + 320))] = placeholder[(((((((((int)threadIdx.x) + 320) / 58) * 6496) + ((((int)blockIdx.x) >> 1) * 928)) + (rc_outer_outer * 58)) + ((((int)threadIdx.x) + 30) % 58)))];
    PaddedInput_shared[((((int)threadIdx.x) + 352))] = placeholder[(((((((((int)threadIdx.x) + 352) / 58) * 6496) + ((((int)blockIdx.x) >> 1) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 4)))];
    if (((int)threadIdx.x) < 22) {
      PaddedInput_shared[((((int)threadIdx.x) + 384))] = placeholder[(((((((((int)threadIdx.x) + 384) / 58) * 6496) + ((((int)blockIdx.x) >> 1) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 36)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 116; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 7424) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) & 63)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int rc_inner = 0; rc_inner < 29; ++rc_inner) {
        Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((rc_outer_inner * 29) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)))]));
        Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((rc_outer_inner * 29) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)) + 1))]));
        Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((rc_outer_inner * 29) + rc_inner) + 58))] * placeholder_shared[((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)))]));
        Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((rc_outer_inner * 29) + rc_inner) + 58))] * placeholder_shared[(((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)) + 1))]));
        Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((rc_outer_inner * 29) + rc_inner) + 116))] * placeholder_shared[((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)))]));
        Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((rc_outer_inner * 29) + rc_inner) + 116))] * placeholder_shared[(((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)) + 1))]));
        Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((rc_outer_inner * 29) + rc_inner) + 174))] * placeholder_shared[((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)))]));
        Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((rc_outer_inner * 29) + rc_inner) + 174))] * placeholder_shared[(((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)) + 1))]));
        Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((rc_outer_inner * 29) + rc_inner) + 232))] * placeholder_shared[((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)))]));
        Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((rc_outer_inner * 29) + rc_inner) + 232))] * placeholder_shared[(((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)) + 1))]));
        Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((rc_outer_inner * 29) + rc_inner) + 290))] * placeholder_shared[((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)))]));
        Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((rc_outer_inner * 29) + rc_inner) + 290))] * placeholder_shared[(((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)) + 1))]));
        Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((rc_outer_inner * 29) + rc_inner) + 348))] * placeholder_shared[((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)))]));
        Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((rc_outer_inner * 29) + rc_inner) + 348))] * placeholder_shared[(((((rc_outer_inner * 1856) + (rc_inner * 64)) + (((int)threadIdx.x) * 2)) + 1))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 7; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_relu[(((((ax1_inner * 896) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) * 2)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 2) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + (((int)threadIdx.x) * 2)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


