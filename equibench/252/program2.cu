
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
  float Conv2dOutput[2];
  __shared__ float PaddedInput_shared[406];
  __shared__ float placeholder_shared[464];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((int)blockIdx.x) >> 4) * 928) + (rc_outer_outer * 58)) + ((int)threadIdx.x)))];
    PaddedInput_shared[((((int)threadIdx.x) + 28))] = placeholder[((((((((int)blockIdx.x) >> 4) * 928) + (rc_outer_outer * 58)) + ((int)threadIdx.x)) + 28))];
    PaddedInput_shared[((((int)threadIdx.x) + 56))] = placeholder[(((((((((int)threadIdx.x) + 56) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + ((((int)threadIdx.x) + 56) % 58)))];
    PaddedInput_shared[((((int)threadIdx.x) + 84))] = placeholder[(((((((((int)threadIdx.x) + 84) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 26)))];
    PaddedInput_shared[((((int)threadIdx.x) + 112))] = placeholder[(((((((((int)threadIdx.x) + 112) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + ((((int)threadIdx.x) + 54) % 58)))];
    PaddedInput_shared[((((int)threadIdx.x) + 140))] = placeholder[(((((((((int)threadIdx.x) + 140) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 24)))];
    PaddedInput_shared[((((int)threadIdx.x) + 168))] = placeholder[(((((((((int)threadIdx.x) + 168) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + ((((int)threadIdx.x) + 52) % 58)))];
    PaddedInput_shared[((((int)threadIdx.x) + 196))] = placeholder[(((((((((int)threadIdx.x) + 196) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 22)))];
    PaddedInput_shared[((((int)threadIdx.x) + 224))] = placeholder[(((((((((int)threadIdx.x) + 224) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + ((((int)threadIdx.x) + 50) % 58)))];
    PaddedInput_shared[((((int)threadIdx.x) + 252))] = placeholder[(((((((((int)threadIdx.x) + 252) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 20)))];
    PaddedInput_shared[((((int)threadIdx.x) + 280))] = placeholder[(((((((((int)threadIdx.x) + 280) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + ((((int)threadIdx.x) + 48) % 58)))];
    PaddedInput_shared[((((int)threadIdx.x) + 308))] = placeholder[(((((((((int)threadIdx.x) + 308) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 18)))];
    PaddedInput_shared[((((int)threadIdx.x) + 336))] = placeholder[(((((((((int)threadIdx.x) + 336) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + ((((int)threadIdx.x) + 46) % 58)))];
    PaddedInput_shared[((((int)threadIdx.x) + 364))] = placeholder[(((((((((int)threadIdx.x) + 364) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 16)))];
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[((((int)threadIdx.x) + 392))] = placeholder[(((((((((int)threadIdx.x) + 392) / 58) * 6496) + ((((int)blockIdx.x) >> 4) * 928)) + (rc_outer_outer * 58)) + (((int)threadIdx.x) + 44)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 58; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 58) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 464) {
        if (((int)threadIdx.x) < 8) {
          placeholder_shared[(((((int)threadIdx.x) * 58) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[(((((rc_outer_outer * 7424) + ((((((int)threadIdx.x) * 58) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 3) * 128)) + ((((int)blockIdx.x) & 15) * 8)) + (((((int)threadIdx.x) * 58) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 7)))];
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 58; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 2) * 58) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 3)))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 2) * 58) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 8) + (((int)threadIdx.x) & 3)) + 4))]));
    }
  }
  T_relu[(((((((int)threadIdx.x) >> 2) * 896) + (((int)blockIdx.x) * 8)) + (((int)threadIdx.x) & 3)))] = max((Conv2dOutput[(0)] + placeholder2[((((((int)blockIdx.x) & 15) * 8) + (((int)threadIdx.x) & 3)))]), 0.000000e+00f);
  T_relu[((((((((int)threadIdx.x) >> 2) * 896) + (((int)blockIdx.x) * 8)) + (((int)threadIdx.x) & 3)) + 4))] = max((Conv2dOutput[(1)] + placeholder2[(((((((int)blockIdx.x) & 15) * 8) + (((int)threadIdx.x) & 3)) + 4))]), 0.000000e+00f);
}


