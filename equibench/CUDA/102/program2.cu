
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
  float Conv2dOutput[896];
  __shared__ float PaddedInput_shared[4704];
  __shared__ float placeholder_shared[1536];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 8; ++ff_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 7; ++yy_inner_init) {
      Conv2dOutput[(((yy_inner_init * 64) + (ff_outer_inner_init * 8)))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 448))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 449))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 2))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 450))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 3))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 451))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 4))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 452))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 5))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 453))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 6))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 454))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 7))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 64) + (ff_outer_inner_init * 8)) + 455))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 84; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)))] = placeholder[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) / 12) * 384) + (rc_outer_outer * 12)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 12)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) < 1536) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 128) {
          placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)))] = placeholder1[((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672)) + (((int)threadIdx.x) * 12)))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) < 1535) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 128) {
          placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) + 1))] = placeholder1[(((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672)) + (((int)threadIdx.x) * 12)) + 1))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) < 1534) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 128) {
          placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) + 2))] = placeholder1[(((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672)) + (((int)threadIdx.x) * 12)) + 2))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) < 1533) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 128) {
          placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) + 3))] = placeholder1[(((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672)) + (((int)threadIdx.x) * 12)) + 3))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) < 1532) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 128) {
          placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) + 4))] = placeholder1[(((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672)) + (((int)threadIdx.x) * 12)) + 4))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) < 1531) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 128) {
          placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) + 5))] = placeholder1[(((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672)) + (((int)threadIdx.x) * 12)) + 5))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) < 1530) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 128) {
          placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) + 6))] = placeholder1[(((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672)) + (((int)threadIdx.x) * 12)) + 6))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) < 1529) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 128) {
          placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) + 7))] = placeholder1[(((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672)) + (((int)threadIdx.x) * 12)) + 7))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) < 1528) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 128) {
          placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) + 8))] = placeholder1[(((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672)) + (((int)threadIdx.x) * 12)) + 8))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) < 1527) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 128) {
          placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) + 9))] = placeholder1[(((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672)) + (((int)threadIdx.x) * 12)) + 9))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) < 1526) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 128) {
          placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) + 10))] = placeholder1[(((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672)) + (((int)threadIdx.x) * 12)) + 10))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) < 1525) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 56) + ((int)threadIdx.x)) < 128) {
          placeholder_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672) + (((int)threadIdx.x) * 12)) + 11))] = placeholder1[(((((rc_outer_outer * 1536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 672)) + (((int)threadIdx.x) * 12)) + 11))];
        }
      }
    }
    __syncthreads();
    for (int ff_outer_inner = 0; ff_outer_inner < 8; ++ff_outer_inner) {
      for (int rc_inner = 0; rc_inner < 12; ++rc_inner) {
        for (int yy_inner = 0; yy_inner < 7; ++yy_inner) {
          Conv2dOutput[(((yy_inner * 64) + (ff_outer_inner * 8)))] = (Conv2dOutput[(((yy_inner * 64) + (ff_outer_inner * 8)))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 448))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 448))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner) + 1176))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 1))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 1))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 449))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 449))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner) + 1176))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 1))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 2))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 2))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 450))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 450))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner) + 1176))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 2))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 3))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 3))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 3))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 451))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 451))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner) + 1176))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 3))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 4))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 4))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 452))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 452))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner) + 1176))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 4))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 5))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 5))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 5))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 453))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 453))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner) + 1176))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 5))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 6))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 6))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 6))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 454))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 454))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner) + 1176))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 6))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 7))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 7))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 7))]));
          Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 455))] = (Conv2dOutput[((((yy_inner * 64) + (ff_outer_inner * 8)) + 455))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 28) * 2352) + (yy_inner * 168)) + (((((int)threadIdx.x) % 28) >> 1) * 12)) + rc_inner) + 1176))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 1) * 64)) + (ff_outer_inner * 8)) + 7))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 7; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 64; ++ax3_inner) {
      T_relu[((((((((int)threadIdx.x) / 28) * 25088) + (ax1_inner * 1792)) + ((((int)threadIdx.x) % 28) * 64)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 64) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 1) * 64) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((int)threadIdx.x) / 28) * 25088) + (ax1_inner * 1792)) + ((((int)threadIdx.x) % 28) * 64)) + ax3_inner) + 12544))] = max((Conv2dOutput[((((ax1_inner * 64) + ax3_inner) + 448))] + placeholder2[((((((int)threadIdx.x) & 1) * 64) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


