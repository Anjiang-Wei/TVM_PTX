
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2) {
  float Conv2dOutput[448];
  __shared__ float PaddedInput_shared[3025];
  __shared__ float placeholder_shared[64];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 4; ++yy_outer_inner_init) {
    for (int xx_inner_init = 0; xx_inner_init < 14; ++xx_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 56) + (xx_inner_init * 4)))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 56) + (xx_inner_init * 4)) + 224))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 56) + (xx_inner_init * 4)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 56) + (xx_inner_init * 4)) + 225))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 56) + (xx_inner_init * 4)) + 2))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 56) + (xx_inner_init * 4)) + 226))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 56) + (xx_inner_init * 4)) + 3))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 56) + (xx_inner_init * 4)) + 227))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) < 3025) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) < 433) {
          PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)))] = placeholder[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) / 55) * 3584) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) % 55) * 64)) + rc_outer_outer))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) < 3024) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) < 433) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 1))] = placeholder[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 1) / 55) * 3584) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 1) % 55) * 64)) + rc_outer_outer))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) < 3023) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) < 433) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 2))] = placeholder[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 2) / 55) * 3584) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 2) % 55) * 64)) + rc_outer_outer))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) < 3022) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) < 433) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 3))] = placeholder[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 3) / 55) * 3584) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 3) % 55) * 64)) + rc_outer_outer))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) < 3021) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) < 433) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 4))] = placeholder[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 4) / 55) * 3584) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 4) % 55) * 64)) + rc_outer_outer))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) < 3020) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) < 433) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 5))] = placeholder[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 5) / 55) * 3584) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 5) % 55) * 64)) + rc_outer_outer))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) < 3019) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 112) + ((int)threadIdx.x)) < 433) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 6))] = placeholder[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 6) / 55) * 3584) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 784) + (((int)threadIdx.x) * 7)) + 6) % 55) * 64)) + rc_outer_outer))];
        }
      }
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 128) + (((int)blockIdx.x) * 64)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 4; ++yy_outer_inner) {
      for (int xx_inner = 0; xx_inner < 14; ++xx_inner) {
        Conv2dOutput[(((yy_outer_inner * 56) + (xx_inner * 4)))] = (Conv2dOutput[(((yy_outer_inner * 56) + (xx_inner * 4)))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 440) + (yy_outer_inner * 110)) + (xx_inner * 2)))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 4))]));
        Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 224))] = (Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 224))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 440) + (yy_outer_inner * 110)) + (xx_inner * 2)) + 28))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 4))]));
        Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 1))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 440) + (yy_outer_inner * 110)) + (xx_inner * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 225))] = (Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 225))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 440) + (yy_outer_inner * 110)) + (xx_inner * 2)) + 28))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 2))] = (Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 2))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 440) + (yy_outer_inner * 110)) + (xx_inner * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 2))]));
        Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 226))] = (Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 226))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 440) + (yy_outer_inner * 110)) + (xx_inner * 2)) + 28))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 2))]));
        Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 3))] = (Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 3))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 440) + (yy_outer_inner * 110)) + (xx_inner * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 3))]));
        Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 227))] = (Conv2dOutput[((((yy_outer_inner * 56) + (xx_inner * 4)) + 227))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 440) + (yy_outer_inner * 110)) + (xx_inner * 2)) + 28))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 3))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 14; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_add[((((((((((int)threadIdx.x) >> 4) * 14336) + (ax1_inner * 3584)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + ax3_inner))] = (Conv2dOutput[((((ax1_inner * 56) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 64) + ((((int)threadIdx.x) & 15) * 4)) + ax3_inner))]);
        T_add[(((((((((((int)threadIdx.x) >> 4) * 14336) + (ax1_inner * 3584)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + ax3_inner) + 1792))] = (Conv2dOutput[(((((ax1_inner * 56) + (ax2_inner * 4)) + ax3_inner) + 224))] + placeholder2[((((((int)blockIdx.x) * 64) + ((((int)threadIdx.x) & 15) * 4)) + ax3_inner))]);
      }
    }
  }
}


