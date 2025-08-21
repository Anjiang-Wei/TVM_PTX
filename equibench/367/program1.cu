
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
  float Conv2dOutput[2048];
  __shared__ float PaddedInput_shared[8192];
  __shared__ float placeholder_shared[640];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 4; ++xx_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
      for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
        for (int yy_inner_init = 0; yy_inner_init < 4; ++yy_inner_init) {
          Conv2dOutput[(((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 512))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1024))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1536))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 513))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1025))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1537))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 2))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 514))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1026))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1538))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 3))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 515))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1027))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1539))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 4))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 516))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1028))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1540))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 5))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 517))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1029))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1541))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 6))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 518))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1030))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1542))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 7))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 519))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1031))] = 0.000000e+00f;
          Conv2dOutput[((((((nn_inner_init * 256) + (yy_inner_init * 64)) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 8)) + 1543))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 30; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 13; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1024) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8192) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 128)) + ((((int)threadIdx.x) & 7) * 16)))] = placeholder[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 3840)) + ((((int)threadIdx.x) & 7) * 480)) + (rc_outer_outer * 8)))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1024) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8191) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 1))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 3840)) + ((((int)threadIdx.x) & 7) * 480)) + (rc_outer_outer * 8)) + 1))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1024) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8190) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 2))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 3840)) + ((((int)threadIdx.x) & 7) * 480)) + (rc_outer_outer * 8)) + 2))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1024) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8189) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 3))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 3840)) + ((((int)threadIdx.x) & 7) * 480)) + (rc_outer_outer * 8)) + 3))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1024) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8188) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 4))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 3840)) + ((((int)threadIdx.x) & 7) * 480)) + (rc_outer_outer * 8)) + 4))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1024) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8187) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 5))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 3840)) + ((((int)threadIdx.x) & 7) * 480)) + (rc_outer_outer * 8)) + 5))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1024) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8186) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 6))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 3840)) + ((((int)threadIdx.x) & 7) * 480)) + (rc_outer_outer * 8)) + 6))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1024) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8185) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 7))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((int)threadIdx.x) >> 3)) & 15) * 3840)) + ((((int)threadIdx.x) & 7) * 480)) + (rc_outer_outer * 8)) + 7))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1023) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8184) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 128)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 8)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 3840)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 240)) + (rc_outer_outer * 8)))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1023) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8183) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 128)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 8)) + 1))] = placeholder[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 3840)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 240)) + (rc_outer_outer * 8)) + 1))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1023) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8182) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 128)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 8)) + 2))] = placeholder[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 3840)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 240)) + (rc_outer_outer * 8)) + 2))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1023) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8181) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 128)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 8)) + 3))] = placeholder[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 3840)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 240)) + (rc_outer_outer * 8)) + 3))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1023) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8180) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 128)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 8)) + 4))] = placeholder[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 3840)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 240)) + (rc_outer_outer * 8)) + 4))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1023) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8179) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 128)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 8)) + 5))] = placeholder[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 3840)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 240)) + (rc_outer_outer * 8)) + 5))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1023) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8178) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 128)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 8)) + 6))] = placeholder[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 3840)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 240)) + (rc_outer_outer * 8)) + 6))];
          }
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) < 1023) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 640) + (((int)threadIdx.x) * 16)) < 8177) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + ((int)threadIdx.x)) < 512) {
            PaddedInput_shared[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 2048) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 128)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 8)) + 7))] = placeholder[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 80) + (((int)threadIdx.x) * 2)) + 1) >> 8) * 61440) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 5) + (((((int)threadIdx.x) * 2) + 1) >> 4)) & 15) * 3840)) + ((((((int)threadIdx.x) * 2) + 1) & 15) * 240)) + (rc_outer_outer * 8)) + 7))];
          }
        }
      }
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 640) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 40))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 40))];
    placeholder_shared[((((int)threadIdx.x) + 80))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 80))];
    placeholder_shared[((((int)threadIdx.x) + 120))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 120))];
    placeholder_shared[((((int)threadIdx.x) + 160))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 160))];
    placeholder_shared[((((int)threadIdx.x) + 200))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 200))];
    placeholder_shared[((((int)threadIdx.x) + 240))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 240))];
    placeholder_shared[((((int)threadIdx.x) + 280))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 280))];
    placeholder_shared[((((int)threadIdx.x) + 320))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 320))];
    placeholder_shared[((((int)threadIdx.x) + 360))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 360))];
    placeholder_shared[((((int)threadIdx.x) + 400))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 400))];
    placeholder_shared[((((int)threadIdx.x) + 440))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 440))];
    placeholder_shared[((((int)threadIdx.x) + 480))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 480))];
    placeholder_shared[((((int)threadIdx.x) + 520))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 520))];
    placeholder_shared[((((int)threadIdx.x) + 560))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 560))];
    placeholder_shared[((((int)threadIdx.x) + 600))] = placeholder1[((((rc_outer_outer * 640) + ((int)threadIdx.x)) + 600))];
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 4; ++xx_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
        for (int rc_inner = 0; rc_inner < 8; ++rc_inner) {
          for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
            for (int yy_inner = 0; yy_inner < 4; ++yy_inner) {
              Conv2dOutput[(((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)))] = (Conv2dOutput[(((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)))] + (PaddedInput_shared[(((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 512))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 512))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 1024))] * placeholder_shared[((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1024))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1024))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 4096))] * placeholder_shared[((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1536))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1536))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 5120))] * placeholder_shared[((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1))] + (PaddedInput_shared[(((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 1))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 513))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 513))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 1024))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 1))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1025))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1025))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 4096))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 1))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1537))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1537))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 5120))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 1))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 2))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 2))] + (PaddedInput_shared[(((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 2))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 514))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 514))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 1024))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 2))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1026))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1026))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 4096))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 2))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1538))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1538))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 5120))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 2))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 3))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 3))] + (PaddedInput_shared[(((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 3))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 515))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 515))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 1024))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 3))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1027))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1027))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 4096))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 3))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1539))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1539))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 5120))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 3))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 4))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 4))] + (PaddedInput_shared[(((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 4))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 516))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 516))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 1024))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 4))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1028))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1028))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 4096))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 4))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1540))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1540))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 5120))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 4))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 5))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 5))] + (PaddedInput_shared[(((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 5))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 517))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 517))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 1024))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 5))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1029))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1029))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 4096))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 5))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1541))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1541))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 5120))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 5))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 6))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 6))] + (PaddedInput_shared[(((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 6))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 518))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 518))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 1024))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 6))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1030))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1030))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 4096))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 6))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1542))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1542))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 5120))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 6))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 7))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 7))] + (PaddedInput_shared[(((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 7))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 519))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 519))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 1024))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 7))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1031))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1031))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 4096))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 7))]));
              Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1543))] = (Conv2dOutput[((((((nn_inner * 256) + (yy_inner * 64)) + (xx_outer_inner * 16)) + (ff_outer_inner * 8)) + 1543))] + (PaddedInput_shared[((((((((nn_inner * 2048) + ((((int)threadIdx.x) / 20) * 512)) + (yy_inner * 128)) + (((((int)threadIdx.x) % 20) / 5) * 32)) + (xx_outer_inner * 8)) + rc_inner) + 5120))] * placeholder_shared[(((((rc_inner * 80) + ((((int)threadIdx.x) % 5) * 16)) + (ff_outer_inner * 8)) + 7))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 16; ++ax3_inner) {
          T_add[((((((((ax0_inner * 20480) + ((((int)threadIdx.x) / 20) * 5120)) + (ax1_inner * 1280)) + (((((int)threadIdx.x) % 20) / 5) * 320)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 5) * 16)) + ax3_inner))] = (Conv2dOutput[(((((ax0_inner * 256) + (ax1_inner * 64)) + (ax2_inner * 16)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) % 5) * 16) + ax3_inner))]);
          T_add[(((((((((ax0_inner * 20480) + ((((int)threadIdx.x) / 20) * 5120)) + (ax1_inner * 1280)) + (((((int)threadIdx.x) % 20) / 5) * 320)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 5) * 16)) + ax3_inner) + 10240))] = (Conv2dOutput[((((((ax0_inner * 256) + (ax1_inner * 64)) + (ax2_inner * 16)) + ax3_inner) + 512))] + placeholder2[((((((int)threadIdx.x) % 5) * 16) + ax3_inner))]);
          T_add[(((((((((ax0_inner * 20480) + ((((int)threadIdx.x) / 20) * 5120)) + (ax1_inner * 1280)) + (((((int)threadIdx.x) % 20) / 5) * 320)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 5) * 16)) + ax3_inner) + 40960))] = (Conv2dOutput[((((((ax0_inner * 256) + (ax1_inner * 64)) + (ax2_inner * 16)) + ax3_inner) + 1024))] + placeholder2[((((((int)threadIdx.x) % 5) * 16) + ax3_inner))]);
          T_add[(((((((((ax0_inner * 20480) + ((((int)threadIdx.x) / 20) * 5120)) + (ax1_inner * 1280)) + (((((int)threadIdx.x) % 20) / 5) * 320)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 5) * 16)) + ax3_inner) + 51200))] = (Conv2dOutput[((((((ax0_inner * 256) + (ax1_inner * 64)) + (ax2_inner * 16)) + ax3_inner) + 1536))] + placeholder2[((((((int)threadIdx.x) % 5) * 16) + ax3_inner))]);
        }
      }
    }
  }
}


