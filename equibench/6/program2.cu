
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv2dOutput[72];
  __shared__ float PaddedInput_shared[180];
  __shared__ float placeholder_shared[512];
  for (int yy_inner_init = 0; yy_inner_init < 3; ++yy_inner_init) {
    for (int xx_inner_init = 0; xx_inner_init < 3; ++xx_inner_init) {
      Conv2dOutput[(((yy_inner_init * 3) + xx_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 9))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 18))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 27))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 36))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 45))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 54))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 3) + xx_inner_init) + 63))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 3) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 1)) < 90) {
        if (((((int)threadIdx.x) * 6) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 180) {
          if (((int)threadIdx.x) < 30) {
            PaddedInput_shared[(((((int)threadIdx.x) * 6) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 46080) + ((((((int)threadIdx.x) * 3) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 1)) / 15) * 7680)) + (((((int)blockIdx.x) & 3) >> 1) * 3840)) + ((((((int)threadIdx.x) * 3) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 1)) % 15) * 256)) + (rc_outer_outer * 2)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s & 1)))];
          }
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 320) + ((int)threadIdx.x)) < 512) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 320) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 1024) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 320) + ((int)threadIdx.x)) >> 8) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 320) + ((int)threadIdx.x)) & 255)))];
      }
    }
    __syncthreads();
    for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
      for (int yy_inner = 0; yy_inner < 3; ++yy_inner) {
        for (int xx_inner = 0; xx_inner < 3; ++xx_inner) {
          Conv2dOutput[(((yy_inner * 3) + xx_inner))] = (Conv2dOutput[(((yy_inner * 3) + xx_inner))] + (PaddedInput_shared[(((((yy_inner * 30) + ((((int)threadIdx.x) >> 6) * 6)) + (xx_inner * 2)) + rc_inner))] * placeholder_shared[(((rc_inner * 256) + (((int)threadIdx.x) & 63)))]));
          Conv2dOutput[((((yy_inner * 3) + xx_inner) + 9))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 9))] + (PaddedInput_shared[(((((yy_inner * 30) + ((((int)threadIdx.x) >> 6) * 6)) + (xx_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_inner * 256) + (((int)threadIdx.x) & 63)) + 64))]));
          Conv2dOutput[((((yy_inner * 3) + xx_inner) + 18))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 18))] + (PaddedInput_shared[(((((yy_inner * 30) + ((((int)threadIdx.x) >> 6) * 6)) + (xx_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_inner * 256) + (((int)threadIdx.x) & 63)) + 128))]));
          Conv2dOutput[((((yy_inner * 3) + xx_inner) + 27))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 27))] + (PaddedInput_shared[(((((yy_inner * 30) + ((((int)threadIdx.x) >> 6) * 6)) + (xx_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_inner * 256) + (((int)threadIdx.x) & 63)) + 192))]));
          Conv2dOutput[((((yy_inner * 3) + xx_inner) + 36))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 36))] + (PaddedInput_shared[((((((yy_inner * 30) + ((((int)threadIdx.x) >> 6) * 6)) + (xx_inner * 2)) + rc_inner) + 90))] * placeholder_shared[(((rc_inner * 256) + (((int)threadIdx.x) & 63)))]));
          Conv2dOutput[((((yy_inner * 3) + xx_inner) + 45))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 45))] + (PaddedInput_shared[((((((yy_inner * 30) + ((((int)threadIdx.x) >> 6) * 6)) + (xx_inner * 2)) + rc_inner) + 90))] * placeholder_shared[((((rc_inner * 256) + (((int)threadIdx.x) & 63)) + 64))]));
          Conv2dOutput[((((yy_inner * 3) + xx_inner) + 54))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 54))] + (PaddedInput_shared[((((((yy_inner * 30) + ((((int)threadIdx.x) >> 6) * 6)) + (xx_inner * 2)) + rc_inner) + 90))] * placeholder_shared[((((rc_inner * 256) + (((int)threadIdx.x) & 63)) + 128))]));
          Conv2dOutput[((((yy_inner * 3) + xx_inner) + 63))] = (Conv2dOutput[((((yy_inner * 3) + xx_inner) + 63))] + (PaddedInput_shared[((((((yy_inner * 30) + ((((int)threadIdx.x) >> 6) * 6)) + (xx_inner * 2)) + rc_inner) + 90))] * placeholder_shared[((((rc_inner * 256) + (((int)threadIdx.x) & 63)) + 192))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 3; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)))] = max(((Conv2dOutput[(((ax1_inner * 3) + ax2_inner))] + placeholder2[((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) & 63)))]) + placeholder3[(((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 64))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 9))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) & 63)) + 64))]) + placeholder3[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 64))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 128))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 18))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) & 63)) + 128))]) + placeholder3[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 128))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 192))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 27))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) & 63)) + 192))]) + placeholder3[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 192))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 46080))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 36))] + placeholder2[((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) & 63)))]) + placeholder3[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 46080))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 46144))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 45))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) & 63)) + 64))]) + placeholder3[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 46144))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 46208))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 54))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) & 63)) + 128))]) + placeholder3[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 46208))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 46272))] = max(((Conv2dOutput[((((ax1_inner * 3) + ax2_inner) + 63))] + placeholder2[(((((((int)blockIdx.x) & 1) * 256) + (((int)threadIdx.x) & 63)) + 192))]) + placeholder3[((((((((((((int)blockIdx.x) >> 2) * 92160) + (ax1_inner * 15360)) + (((((int)blockIdx.x) & 3) >> 1) * 7680)) + ((((int)threadIdx.x) >> 6) * 1536)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (((int)threadIdx.x) & 63)) + 46272))]), 0.000000e+00f);
    }
  }
}


