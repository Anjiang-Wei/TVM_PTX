
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
  float Conv2dOutput[16];
  __shared__ float PaddedInput_shared[6144];
  __shared__ float placeholder_shared[96];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 12; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 96; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)))] = placeholder[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)) / 24) * 288) + (rc_outer_outer * 24)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)) % 24)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 24; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 6) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) < 24) {
        if (((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 96) {
          if (((int)threadIdx.x) < 4) {
            placeholder_shared[(((((int)threadIdx.x) * 24) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[((((((rc_outer_outer * 3072) + (((int)threadIdx.x) * 768)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2) * 128)) + (((int)blockIdx.x) * 4)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s & 3)))];
          }
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 24; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 48) + rc_outer_inner))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 48) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) * 48) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) * 48) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) * 48) + rc_outer_inner) + 3072))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) * 48) + rc_outer_inner) + 3072))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) * 48) + rc_outer_inner) + 3072))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) * 48) + rc_outer_inner) + 3072))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) * 48) + rc_outer_inner) + 24))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) * 48) + rc_outer_inner) + 24))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) * 48) + rc_outer_inner) + 24))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) * 48) + rc_outer_inner) + 24))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) * 48) + rc_outer_inner) + 3096))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) * 48) + rc_outer_inner) + 3096))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) * 48) + rc_outer_inner) + 3096))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) * 48) + rc_outer_inner) + 3096))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
    }
  }
  for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
    T_relu[((((((int)threadIdx.x) * 256) + (ax2_inner * 128)) + (((int)blockIdx.x) * 4)))] = max((Conv2dOutput[(ax2_inner)] + placeholder2[((((int)blockIdx.x) * 4))]), 0.000000e+00f);
    T_relu[(((((((int)threadIdx.x) * 256) + (ax2_inner * 128)) + (((int)blockIdx.x) * 4)) + 1))] = max((Conv2dOutput[((ax2_inner + 2))] + placeholder2[(((((int)blockIdx.x) * 4) + 1))]), 0.000000e+00f);
    T_relu[(((((((int)threadIdx.x) * 256) + (ax2_inner * 128)) + (((int)blockIdx.x) * 4)) + 2))] = max((Conv2dOutput[((ax2_inner + 4))] + placeholder2[(((((int)blockIdx.x) * 4) + 2))]), 0.000000e+00f);
    T_relu[(((((((int)threadIdx.x) * 256) + (ax2_inner * 128)) + (((int)blockIdx.x) * 4)) + 3))] = max((Conv2dOutput[((ax2_inner + 6))] + placeholder2[(((((int)blockIdx.x) * 4) + 3))]), 0.000000e+00f);
    T_relu[(((((((int)threadIdx.x) * 256) + (ax2_inner * 128)) + (((int)blockIdx.x) * 4)) + 16384))] = max((Conv2dOutput[((ax2_inner + 8))] + placeholder2[((((int)blockIdx.x) * 4))]), 0.000000e+00f);
    T_relu[(((((((int)threadIdx.x) * 256) + (ax2_inner * 128)) + (((int)blockIdx.x) * 4)) + 16385))] = max((Conv2dOutput[((ax2_inner + 10))] + placeholder2[(((((int)blockIdx.x) * 4) + 1))]), 0.000000e+00f);
    T_relu[(((((((int)threadIdx.x) * 256) + (ax2_inner * 128)) + (((int)blockIdx.x) * 4)) + 16386))] = max((Conv2dOutput[((ax2_inner + 12))] + placeholder2[(((((int)blockIdx.x) * 4) + 2))]), 0.000000e+00f);
    T_relu[(((((((int)threadIdx.x) * 256) + (ax2_inner * 128)) + (((int)blockIdx.x) * 4)) + 16387))] = max((Conv2dOutput[((ax2_inner + 14))] + placeholder2[(((((int)blockIdx.x) * 4) + 3))]), 0.000000e+00f);
  }
}


