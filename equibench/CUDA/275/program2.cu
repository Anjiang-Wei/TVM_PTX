
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
  float Conv2dOutput[1200];
  __shared__ float PaddedInput_shared[2242];
  __shared__ float placeholder_shared[64];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 15; ++yy_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 5; ++xx_outer_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 600))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 300))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 900))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 601))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 301))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 901))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 2))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 602))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 302))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 902))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 3))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 603))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 303))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 20) + (xx_outer_inner_init * 4)) + 903))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 71; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) < 2242) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)))] = placeholder[((((((((((int)blockIdx.x) / 6) * 460800) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) / 1121) * 230400)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) % 1121) / 19) * 3840)) + (((((int)blockIdx.x) % 6) >> 1) * 1280)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) % 19) * 64)) + rc_outer_outer))];
      }
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 32))] = placeholder1[(((((rc_outer_outer * 128) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)) + 32))];
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 15; ++yy_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 5; ++xx_outer_inner) {
        Conv2dOutput[(((yy_outer_inner * 20) + (xx_outer_inner * 4)))] = (Conv2dOutput[(((yy_outer_inner * 20) + (xx_outer_inner * 4)))] + (PaddedInput_shared[((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 4))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 600))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 600))] + (PaddedInput_shared[(((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)) + 570))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 4))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 300))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 300))] + (PaddedInput_shared[(((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)) + 1121))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 4))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 900))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 900))] + (PaddedInput_shared[(((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)) + 1691))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 4))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 1))] + (PaddedInput_shared[((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 601))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 601))] + (PaddedInput_shared[(((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)) + 570))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 301))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 301))] + (PaddedInput_shared[(((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)) + 1121))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 901))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 901))] + (PaddedInput_shared[(((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)) + 1691))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 2))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 2))] + (PaddedInput_shared[((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 2))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 602))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 602))] + (PaddedInput_shared[(((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)) + 570))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 2))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 302))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 302))] + (PaddedInput_shared[(((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)) + 1121))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 2))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 902))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 902))] + (PaddedInput_shared[(((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)) + 1691))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 2))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 3))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 3))] + (PaddedInput_shared[((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 3))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 603))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 603))] + (PaddedInput_shared[(((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)) + 570))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 3))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 303))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 303))] + (PaddedInput_shared[(((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)) + 1121))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 3))]));
        Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 903))] = (Conv2dOutput[((((yy_outer_inner * 20) + (xx_outer_inner * 4)) + 903))] + (PaddedInput_shared[(((((yy_outer_inner * 38) + ((((int)threadIdx.x) >> 4) * 10)) + (xx_outer_inner * 2)) + 1691))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 4) + 3))]));
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 15; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 5; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
          T_add[(((((((((((((int)blockIdx.x) / 6) * 230400) + (ax0_inner * 115200)) + (ax1_inner * 3840)) + (((((int)blockIdx.x) % 6) >> 1) * 1280)) + ((((int)threadIdx.x) >> 4) * 640)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + ax3_inner))] = (Conv2dOutput[(((((ax0_inner * 300) + (ax1_inner * 20)) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 4)) + ax3_inner))]);
          T_add[((((((((((((((int)blockIdx.x) / 6) * 230400) + (ax0_inner * 115200)) + (ax1_inner * 3840)) + (((((int)blockIdx.x) % 6) >> 1) * 1280)) + ((((int)threadIdx.x) >> 4) * 640)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + ax3_inner) + 57600))] = (Conv2dOutput[((((((ax0_inner * 300) + (ax1_inner * 20)) + (ax2_inner * 4)) + ax3_inner) + 600))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 4)) + ax3_inner))]);
        }
      }
    }
  }
}


