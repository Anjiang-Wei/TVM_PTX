
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv2dOutput[16];
  __shared__ float PaddedInput_shared[4608];
  __shared__ float placeholder_shared[432];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 48; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + ((int)threadIdx.x)))] = placeholder[((((((((((int)blockIdx.x) >> 3) * 73728) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + ((int)threadIdx.x)) / 576) * 9216)) + (((((int)blockIdx.x) & 7) >> 1) * 2304)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + ((int)threadIdx.x)) % 576) / 36) * 144)) + (rc_outer_outer * 36)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + ((int)threadIdx.x)) % 36)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 864) + ((((int)threadIdx.x) / 12) * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)))];
    placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[((((((rc_outer_outer * 864) + ((((int)threadIdx.x) / 12) * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)) + 192))];
    placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[((((((rc_outer_outer * 864) + ((((int)threadIdx.x) / 12) * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)) + 384))];
    placeholder_shared[((((int)threadIdx.x) + 288))] = placeholder1[((((((rc_outer_outer * 864) + ((((int)threadIdx.x) / 12) * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)) + 576))];
    if (((int)threadIdx.x) < 48) {
      placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[((((((rc_outer_outer * 864) + ((((int)threadIdx.x) / 12) * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)) + 768))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 36; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 144))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 288))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 432))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 36))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 180))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 324))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 468))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 72))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 216))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 360))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 504))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 108))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 252))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 396))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 12) * 576) + rc_outer_inner) + 540))] * placeholder_shared[(((rc_outer_inner * 12) + (((int)threadIdx.x) % 12)))]));
    }
  }
  for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
    T_add[((((((((((int)blockIdx.x) >> 3) * 12288) + ((((int)threadIdx.x) / 12) * 1536)) + (((((int)blockIdx.x) & 7) >> 1) * 384)) + (ax2_inner * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)))] = (placeholder2[((((((((((int)blockIdx.x) >> 3) * 12288) + ((((int)threadIdx.x) / 12) * 1536)) + (((((int)blockIdx.x) & 7) >> 1) * 384)) + (ax2_inner * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)))] + (Conv2dOutput[(ax2_inner)] + placeholder3[((((((int)blockIdx.x) & 1) * 12) + (((int)threadIdx.x) % 12)))]));
    T_add[(((((((((((int)blockIdx.x) >> 3) * 12288) + ((((int)threadIdx.x) / 12) * 1536)) + (((((int)blockIdx.x) & 7) >> 1) * 384)) + (ax2_inner * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)) + 96))] = (placeholder2[(((((((((((int)blockIdx.x) >> 3) * 12288) + ((((int)threadIdx.x) / 12) * 1536)) + (((((int)blockIdx.x) & 7) >> 1) * 384)) + (ax2_inner * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)) + 96))] + (Conv2dOutput[((ax2_inner + 4))] + placeholder3[((((((int)blockIdx.x) & 1) * 12) + (((int)threadIdx.x) % 12)))]));
    T_add[(((((((((((int)blockIdx.x) >> 3) * 12288) + ((((int)threadIdx.x) / 12) * 1536)) + (((((int)blockIdx.x) & 7) >> 1) * 384)) + (ax2_inner * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)) + 192))] = (placeholder2[(((((((((((int)blockIdx.x) >> 3) * 12288) + ((((int)threadIdx.x) / 12) * 1536)) + (((((int)blockIdx.x) & 7) >> 1) * 384)) + (ax2_inner * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)) + 192))] + (Conv2dOutput[((ax2_inner + 8))] + placeholder3[((((((int)blockIdx.x) & 1) * 12) + (((int)threadIdx.x) % 12)))]));
    T_add[(((((((((((int)blockIdx.x) >> 3) * 12288) + ((((int)threadIdx.x) / 12) * 1536)) + (((((int)blockIdx.x) & 7) >> 1) * 384)) + (ax2_inner * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)) + 288))] = (placeholder2[(((((((((((int)blockIdx.x) >> 3) * 12288) + ((((int)threadIdx.x) / 12) * 1536)) + (((((int)blockIdx.x) & 7) >> 1) * 384)) + (ax2_inner * 24)) + ((((int)blockIdx.x) & 1) * 12)) + (((int)threadIdx.x) % 12)) + 288))] + (Conv2dOutput[((ax2_inner + 12))] + placeholder3[((((((int)blockIdx.x) & 1) * 12) + (((int)threadIdx.x) % 12)))]));
  }
}


