
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_multiply, float* __restrict__ Conv2dOutput, float* __restrict__ placeholder) {
  T_multiply[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] = ((Conv2dOutput[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((int)threadIdx.x) & 15))]) * (max(min(((Conv2dOutput[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((int)threadIdx.x) & 15))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ Conv2dOutput) {
  float Conv2dOutput_local[32];
  __shared__ float PaddedInput_shared[1548];
  __shared__ float placeholder_shared[36];
  for (int xx_c_inner_init = 0; xx_c_inner_init < 8; ++xx_c_inner_init) {
    Conv2dOutput_local[(xx_c_inner_init)] = 0.000000e+00f;
    Conv2dOutput_local[((xx_c_inner_init + 8))] = 0.000000e+00f;
    Conv2dOutput_local[((xx_c_inner_init + 16))] = 0.000000e+00f;
    Conv2dOutput_local[((xx_c_inner_init + 24))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 3; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 49; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) < 1548) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)))] = (((1 <= ((((((int)blockIdx.x) & 1023) >> 3) * 2) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) % 387) / 129))) && (1 <= ((((((int)blockIdx.x) & 7) >> 2) * 128) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) % 129)))) ? placeholder[((((((((((((int)blockIdx.x) >> 10) * 786432) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) / 387) * 196608)) + (((((int)blockIdx.x) & 1023) >> 3) * 1536)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) % 387) / 129) * 768)) + (((((int)blockIdx.x) & 7) >> 2) * 384)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) % 129) * 3)) + rc_outer_outer) - 771))] : 0.000000e+00f);
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 3) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 36) {
        if (((int)threadIdx.x) < 12) {
          placeholder_shared[(((((int)threadIdx.x) * 3) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[((((((((((int)threadIdx.x) * 3) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 2) * 48) + (rc_outer_outer * 16)) + ((((int)blockIdx.x) & 3) * 4)) + (((((int)threadIdx.x) * 3) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 3)))];
        }
      }
    }
    __syncthreads();
    for (int ry_inner = 0; ry_inner < 3; ++ry_inner) {
      for (int rx_inner = 0; rx_inner < 3; ++rx_inner) {
        for (int xx_c_inner = 0; xx_c_inner < 8; ++xx_c_inner) {
          Conv2dOutput_local[(xx_c_inner)] = (Conv2dOutput_local[(xx_c_inner)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 387) + (ry_inner * 129)) + ((((int)threadIdx.x) & 7) * 16)) + (xx_c_inner * 2)) + rx_inner))] * placeholder_shared[(((ry_inner * 12) + (rx_inner * 4)))]));
          Conv2dOutput_local[((xx_c_inner + 8))] = (Conv2dOutput_local[((xx_c_inner + 8))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 387) + (ry_inner * 129)) + ((((int)threadIdx.x) & 7) * 16)) + (xx_c_inner * 2)) + rx_inner))] * placeholder_shared[((((ry_inner * 12) + (rx_inner * 4)) + 1))]));
          Conv2dOutput_local[((xx_c_inner + 16))] = (Conv2dOutput_local[((xx_c_inner + 16))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 387) + (ry_inner * 129)) + ((((int)threadIdx.x) & 7) * 16)) + (xx_c_inner * 2)) + rx_inner))] * placeholder_shared[((((ry_inner * 12) + (rx_inner * 4)) + 2))]));
          Conv2dOutput_local[((xx_c_inner + 24))] = (Conv2dOutput_local[((xx_c_inner + 24))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 387) + (ry_inner * 129)) + ((((int)threadIdx.x) & 7) * 16)) + (xx_c_inner * 2)) + rx_inner))] * placeholder_shared[((((ry_inner * 12) + (rx_inner * 4)) + 3))]));
        }
      }
    }
  }
  for (int xx_inner = 0; xx_inner < 8; ++xx_inner) {
    Conv2dOutput[((((((((((int)blockIdx.x) >> 10) * 1048576) + ((((int)threadIdx.x) >> 3) * 262144)) + (((((int)blockIdx.x) & 1023) >> 2) * 1024)) + ((((int)threadIdx.x) & 7) * 128)) + (xx_inner * 16)) + ((((int)blockIdx.x) & 3) * 4)))] = Conv2dOutput_local[(xx_inner)];
    Conv2dOutput[(((((((((((int)blockIdx.x) >> 10) * 1048576) + ((((int)threadIdx.x) >> 3) * 262144)) + (((((int)blockIdx.x) & 1023) >> 2) * 1024)) + ((((int)threadIdx.x) & 7) * 128)) + (xx_inner * 16)) + ((((int)blockIdx.x) & 3) * 4)) + 1))] = Conv2dOutput_local[((xx_inner + 8))];
    Conv2dOutput[(((((((((((int)blockIdx.x) >> 10) * 1048576) + ((((int)threadIdx.x) >> 3) * 262144)) + (((((int)blockIdx.x) & 1023) >> 2) * 1024)) + ((((int)threadIdx.x) & 7) * 128)) + (xx_inner * 16)) + ((((int)blockIdx.x) & 3) * 4)) + 2))] = Conv2dOutput_local[((xx_inner + 16))];
    Conv2dOutput[(((((((((((int)blockIdx.x) >> 10) * 1048576) + ((((int)threadIdx.x) >> 3) * 262144)) + (((((int)blockIdx.x) & 1023) >> 2) * 1024)) + ((((int)threadIdx.x) & 7) * 128)) + (xx_inner * 16)) + ((((int)blockIdx.x) & 3) * 4)) + 3))] = Conv2dOutput_local[((xx_inner + 24))];
  }
}


