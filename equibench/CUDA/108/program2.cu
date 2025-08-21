
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
  float Conv2dOutput[40];
  __shared__ float PaddedInput_shared[2880];
  __shared__ float placeholder_shared[128];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 5; ++xx_outer_inner_init) {
    Conv2dOutput[((xx_outer_inner_init * 4))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 20))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 21))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 22))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 23))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 27; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 320; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 9) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 9) + ((int)threadIdx.x)) / 1440) * 194400) + ((((int)blockIdx.x) >> 5) * 38880)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 9) + ((int)threadIdx.x)) % 1440) >> 5) * 864)) + (rc_outer_outer * 32)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 9) + ((int)threadIdx.x)) & 31)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + (((int)threadIdx.x) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 9))] = placeholder1[(((((rc_outer_outer * 4096) + (((((int)threadIdx.x) + 9) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + ((((int)threadIdx.x) + 1) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 18))] = placeholder1[(((((rc_outer_outer * 4096) + (((((int)threadIdx.x) + 18) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + ((((int)threadIdx.x) + 2) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 27))] = placeholder1[(((((rc_outer_outer * 4096) + (((((int)threadIdx.x) + 27) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + ((((int)threadIdx.x) + 3) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 36))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + (((int)threadIdx.x) & 3)) + 1152))];
    placeholder_shared[((((int)threadIdx.x) + 45))] = placeholder1[(((((rc_outer_outer * 4096) + (((((int)threadIdx.x) + 45) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + ((((int)threadIdx.x) + 1) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 54))] = placeholder1[(((((rc_outer_outer * 4096) + (((((int)threadIdx.x) + 54) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + ((((int)threadIdx.x) + 2) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 63))] = placeholder1[(((((rc_outer_outer * 4096) + (((((int)threadIdx.x) + 63) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + ((((int)threadIdx.x) + 3) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 72))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + (((int)threadIdx.x) & 3)) + 2304))];
    placeholder_shared[((((int)threadIdx.x) + 81))] = placeholder1[(((((rc_outer_outer * 4096) + (((((int)threadIdx.x) + 81) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + ((((int)threadIdx.x) + 1) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 90))] = placeholder1[(((((rc_outer_outer * 4096) + (((((int)threadIdx.x) + 90) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + ((((int)threadIdx.x) + 2) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 99))] = placeholder1[(((((rc_outer_outer * 4096) + (((((int)threadIdx.x) + 99) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + ((((int)threadIdx.x) + 3) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 108))] = placeholder1[((((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + (((int)threadIdx.x) & 3)) + 3456))];
    placeholder_shared[((((int)threadIdx.x) + 117))] = placeholder1[(((((rc_outer_outer * 4096) + (((((int)threadIdx.x) + 117) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + ((((int)threadIdx.x) + 1) & 3)))];
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[((((int)threadIdx.x) + 126))] = placeholder1[(((((rc_outer_outer * 4096) + (((((int)threadIdx.x) + 126) >> 2) * 128)) + ((((int)blockIdx.x) & 31) * 4)) + (((int)threadIdx.x) + 2)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 5; ++xx_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 4; ++ff_outer_inner) {
          Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] = (Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] + (PaddedInput_shared[((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)))] * placeholder_shared[(((rc_outer_inner * 32) + ff_outer_inner))]));
          Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] = (Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 1440))] * placeholder_shared[(((rc_outer_inner * 32) + ff_outer_inner))]));
          Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] = (Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 1))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 4))]));
          Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] = (Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 1441))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 4))]));
          Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] = (Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 2))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 8))]));
          Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] = (Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 1442))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 8))]));
          Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] = (Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 3))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 12))]));
          Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] = (Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 1443))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 12))]));
          Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] = (Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 4))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 16))]));
          Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] = (Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 1444))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 16))]));
          Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] = (Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 5))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 20))]));
          Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] = (Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 1445))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 20))]));
          Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] = (Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 6))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 24))]));
          Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] = (Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 1446))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 24))]));
          Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] = (Conv2dOutput[(((xx_outer_inner * 4) + ff_outer_inner))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 7))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 28))]));
          Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] = (Conv2dOutput[((((xx_outer_inner * 4) + ff_outer_inner) + 20))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 160) + (xx_outer_inner * 32)) + (rc_outer_inner * 8)) + 1447))] * placeholder_shared[((((rc_outer_inner * 32) + ff_outer_inner) + 28))]));
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 5; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_relu[(((((((ax0_inner * 28800) + ((((int)blockIdx.x) >> 5) * 5760)) + (((int)threadIdx.x) * 640)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 31) * 4)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 20) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) & 31) * 4) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


