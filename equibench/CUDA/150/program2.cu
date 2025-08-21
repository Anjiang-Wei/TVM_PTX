
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
  float Conv2dOutput[4800];
  __shared__ float PaddedInput_shared[1800];
  __shared__ float placeholder_shared[512];
  for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 5; ++yy_inner_init) {
      for (int xx_inner_init = 0; xx_inner_init < 15; ++xx_inner_init) {
        Conv2dOutput[((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 1))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 2))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 3))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 4))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 5))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 6))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 7))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 8))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 9))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 10))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 11))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 12))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 13))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 14))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 15))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 16))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 17))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 18))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 19))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 20))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 21))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 22))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 23))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 24))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 25))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 26))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 27))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 28))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 29))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 30))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 2400) + (yy_inner_init * 480)) + (xx_inner_init * 32)) + 31))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 5; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 450) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1800) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)))] = placeholder[(((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 450) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1799) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 1))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 450) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1798) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 2))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 2))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 450) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1797) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 3))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 3))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 449) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1796) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 4))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 256))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 449) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1795) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 5))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 257))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 449) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1794) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 6))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 258))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 449) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1793) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 7))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 259))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 448) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1792) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 8))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 512))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 448) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1791) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 9))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 513))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 448) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1790) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 10))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 514))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 448) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1789) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 11))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 515))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 447) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1788) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 12))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 768))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 447) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1787) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 13))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 769))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 447) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1786) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 14))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 770))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 447) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1785) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 15))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 771))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 446) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1784) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 16))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1024))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 446) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1783) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 17))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1025))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 446) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1782) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 18))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1026))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 446) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1781) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 19))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1027))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 445) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1780) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 20))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1280))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 445) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1779) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 21))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1281))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 445) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1778) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 22))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1282))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 445) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1777) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 23))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1283))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 444) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1776) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 24))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1536))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 444) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1775) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 25))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1537))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 444) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1774) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 26))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1538))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 444) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1773) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 27))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1539))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 443) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1772) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 28))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1792))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 443) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1771) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 29))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1793))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 443) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1770) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 30))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1794))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + (((int)threadIdx.x) * 8)) < 443) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) < 1769) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) < 57) {
            PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 384) + (((int)threadIdx.x) * 32)) + 31))] = placeholder[((((((((int)blockIdx.x) * 115200) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 24576)) + (((int)threadIdx.x) * 2048)) + (rc_outer_outer * 4)) + 1795))];
          }
        }
      }
    }
    placeholder_shared[((((int)threadIdx.x) * 4))] = placeholder1[(((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 1))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 1))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 2))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 2))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 3))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 3))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 48))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 48))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 49))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 49))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 50))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 50))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 51))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 51))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 96))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 96))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 97))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 97))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 98))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 98))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 99))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 99))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 144))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 144))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 145))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 145))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 146))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 146))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 147))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 147))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 192))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 192))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 193))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 193))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 194))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 194))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 195))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 195))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 240))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 240))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 241))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 241))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 242))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 242))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 243))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 243))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 288))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 288))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 289))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 289))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 290))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 290))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 291))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 291))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 336))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 336))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 337))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 337))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 338))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 338))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 339))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 339))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 384))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 384))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 385))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 385))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 386))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 386))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 387))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 387))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 432))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 432))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 433))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 433))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 434))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 434))];
    placeholder_shared[(((((int)threadIdx.x) * 4) + 435))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 435))];
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 480))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 480))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 481))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 481))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 482))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 482))];
    }
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 483))] = placeholder1[((((rc_outer_outer * 512) + (((int)threadIdx.x) * 4)) + 483))];
    }
    __syncthreads();
    for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
      for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
        for (int yy_inner = 0; yy_inner < 5; ++yy_inner) {
          for (int xx_inner = 0; xx_inner < 15; ++xx_inner) {
            Conv2dOutput[((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)))] = (Conv2dOutput[((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[(((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 1))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 1))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 1))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 2))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 2))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 2))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 3))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 3))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 3))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 4))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 4))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 4))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 5))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 5))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 5))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 6))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 6))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 6))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 7))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 7))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 7))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 8))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 8))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 8))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 9))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 9))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 9))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 10))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 10))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 10))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 11))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 11))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 11))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 12))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 12))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 12))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 13))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 13))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 13))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 14))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 14))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 14))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 15))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 15))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 15))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 16))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 16))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 16))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 17))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 17))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 17))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 18))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 18))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 18))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 19))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 19))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 19))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 20))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 20))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 20))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 21))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 21))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 21))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 22))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 22))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 22))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 23))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 23))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 23))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 24))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 24))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 24))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 25))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 25))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 25))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 26))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 26))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 26))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 27))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 27))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 27))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 28))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 28))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 28))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 29))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 29))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 29))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 30))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 30))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 30))]));
            Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 31))] = (Conv2dOutput[(((((nn_inner * 2400) + (yy_inner * 480)) + (xx_inner * 32)) + 31))] + (PaddedInput_shared[((((((nn_inner * 900) + ((((int)threadIdx.x) >> 2) * 300)) + (yy_inner * 60)) + (xx_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 3) * 32)) + 31))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 5; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 15; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 32; ++ax3_inner) {
          T_relu[((((((((((int)blockIdx.x) * 57600) + (ax0_inner * 28800)) + ((((int)threadIdx.x) >> 2) * 9600)) + (ax1_inner * 1920)) + (ax2_inner * 128)) + ((((int)threadIdx.x) & 3) * 32)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 2400) + (ax1_inner * 480)) + (ax2_inner * 32)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 3) * 32) + ax3_inner))]), 0.000000e+00f);
        }
      }
    }
  }
}


