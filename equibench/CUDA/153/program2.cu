
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
  float Conv2dOutput[60];
  __shared__ float PaddedInput_shared[2925];
  __shared__ float placeholder_shared[208];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 5; ++xx_outer_inner_init) {
    Conv2dOutput[((xx_outer_inner_init * 4))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 20))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 21))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 22))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 23))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 40))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 41))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 42))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 43))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 49; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 60) + ((int)threadIdx.x)) < 2925) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 60) + ((int)threadIdx.x)))] = placeholder[((((((((int)blockIdx.x) >> 3) * 187200) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 60) + ((int)threadIdx.x)) / 13) * 832)) + (rc_outer_outer * 13)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 60) + ((int)threadIdx.x)) % 13)))];
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 52; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 52) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 208) {
        if (((int)threadIdx.x) < 4) {
          placeholder_shared[(((((int)threadIdx.x) * 52) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[(((((rc_outer_outer * 1664) + ((((((int)threadIdx.x) * 52) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 52) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 15)))];
        }
      }
    }
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 5; ++xx_outer_inner) {
      for (int rc_inner = 0; rc_inner < 13; ++rc_inner) {
        Conv2dOutput[((xx_outer_inner * 4))] = (Conv2dOutput[((xx_outer_inner * 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 12) * 585) + (((((int)threadIdx.x) % 12) >> 2) * 65)) + (xx_outer_inner * 13)) + rc_inner))] * placeholder_shared[(((rc_inner * 16) + ((((int)threadIdx.x) & 3) * 4)))]));
        Conv2dOutput[(((xx_outer_inner * 4) + 1))] = (Conv2dOutput[(((xx_outer_inner * 4) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 12) * 585) + (((((int)threadIdx.x) % 12) >> 2) * 65)) + (xx_outer_inner * 13)) + rc_inner))] * placeholder_shared[((((rc_inner * 16) + ((((int)threadIdx.x) & 3) * 4)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 4) + 2))] = (Conv2dOutput[(((xx_outer_inner * 4) + 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 12) * 585) + (((((int)threadIdx.x) % 12) >> 2) * 65)) + (xx_outer_inner * 13)) + rc_inner))] * placeholder_shared[((((rc_inner * 16) + ((((int)threadIdx.x) & 3) * 4)) + 2))]));
        Conv2dOutput[(((xx_outer_inner * 4) + 3))] = (Conv2dOutput[(((xx_outer_inner * 4) + 3))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 12) * 585) + (((((int)threadIdx.x) % 12) >> 2) * 65)) + (xx_outer_inner * 13)) + rc_inner))] * placeholder_shared[((((rc_inner * 16) + ((((int)threadIdx.x) & 3) * 4)) + 3))]));
        Conv2dOutput[(((xx_outer_inner * 4) + 20))] = (Conv2dOutput[(((xx_outer_inner * 4) + 20))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 585) + (((((int)threadIdx.x) % 12) >> 2) * 65)) + (xx_outer_inner * 13)) + rc_inner) + 195))] * placeholder_shared[(((rc_inner * 16) + ((((int)threadIdx.x) & 3) * 4)))]));
        Conv2dOutput[(((xx_outer_inner * 4) + 21))] = (Conv2dOutput[(((xx_outer_inner * 4) + 21))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 585) + (((((int)threadIdx.x) % 12) >> 2) * 65)) + (xx_outer_inner * 13)) + rc_inner) + 195))] * placeholder_shared[((((rc_inner * 16) + ((((int)threadIdx.x) & 3) * 4)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 4) + 22))] = (Conv2dOutput[(((xx_outer_inner * 4) + 22))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 585) + (((((int)threadIdx.x) % 12) >> 2) * 65)) + (xx_outer_inner * 13)) + rc_inner) + 195))] * placeholder_shared[((((rc_inner * 16) + ((((int)threadIdx.x) & 3) * 4)) + 2))]));
        Conv2dOutput[(((xx_outer_inner * 4) + 23))] = (Conv2dOutput[(((xx_outer_inner * 4) + 23))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 585) + (((((int)threadIdx.x) % 12) >> 2) * 65)) + (xx_outer_inner * 13)) + rc_inner) + 195))] * placeholder_shared[((((rc_inner * 16) + ((((int)threadIdx.x) & 3) * 4)) + 3))]));
        Conv2dOutput[(((xx_outer_inner * 4) + 40))] = (Conv2dOutput[(((xx_outer_inner * 4) + 40))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 585) + (((((int)threadIdx.x) % 12) >> 2) * 65)) + (xx_outer_inner * 13)) + rc_inner) + 390))] * placeholder_shared[(((rc_inner * 16) + ((((int)threadIdx.x) & 3) * 4)))]));
        Conv2dOutput[(((xx_outer_inner * 4) + 41))] = (Conv2dOutput[(((xx_outer_inner * 4) + 41))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 585) + (((((int)threadIdx.x) % 12) >> 2) * 65)) + (xx_outer_inner * 13)) + rc_inner) + 390))] * placeholder_shared[((((rc_inner * 16) + ((((int)threadIdx.x) & 3) * 4)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 4) + 42))] = (Conv2dOutput[(((xx_outer_inner * 4) + 42))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 585) + (((((int)threadIdx.x) % 12) >> 2) * 65)) + (xx_outer_inner * 13)) + rc_inner) + 390))] * placeholder_shared[((((rc_inner * 16) + ((((int)threadIdx.x) & 3) * 4)) + 2))]));
        Conv2dOutput[(((xx_outer_inner * 4) + 43))] = (Conv2dOutput[(((xx_outer_inner * 4) + 43))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 12) * 585) + (((((int)threadIdx.x) % 12) >> 2) * 65)) + (xx_outer_inner * 13)) + rc_inner) + 390))] * placeholder_shared[((((rc_inner * 16) + ((((int)threadIdx.x) & 3) * 4)) + 3))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 3; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 5; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_relu[((((((((((((int)blockIdx.x) >> 3) * 28800) + ((((int)threadIdx.x) / 12) * 5760)) + (ax1_inner * 1920)) + (((((int)threadIdx.x) % 12) >> 2) * 640)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 7) * 16)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 20) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 7) * 16) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


