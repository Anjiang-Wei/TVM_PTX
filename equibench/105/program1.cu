
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
  __shared__ float PaddedInput_shared[3136];
  __shared__ float placeholder_shared[256];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 4; ++ff_outer_inner_init) {
    for (int xx_inner_init = 0; xx_inner_init < 14; ++xx_inner_init) {
      Conv2dOutput[(((xx_inner_init * 16) + (ff_outer_inner_init * 4)))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 224))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 448))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 672))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 225))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 449))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 673))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 2))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 226))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 450))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 674))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 3))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 227))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 451))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + (ff_outer_inner_init * 4)) + 675))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 68; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 224; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 14) + ((int)threadIdx.x)))] = placeholder[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 14) + ((int)threadIdx.x)) >> 3) * 544) + (rc_outer_outer * 8)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 14) + ((int)threadIdx.x)) & 7)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 1024) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 14))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)) + 14))];
    placeholder_shared[((((int)threadIdx.x) + 28))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 28) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 28) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 42))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 42) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 10)))];
    placeholder_shared[((((int)threadIdx.x) + 56))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 56) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 24) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 70))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 70) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 6)))];
    placeholder_shared[((((int)threadIdx.x) + 84))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 84) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 20) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 98))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 98) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 2)))];
    placeholder_shared[((((int)threadIdx.x) + 112))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 112) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 16)))];
    placeholder_shared[((((int)threadIdx.x) + 126))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 126) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 30) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 140))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 140) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 12)))];
    placeholder_shared[((((int)threadIdx.x) + 154))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 154) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 26) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 168))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 168) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 8)))];
    placeholder_shared[((((int)threadIdx.x) + 182))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 182) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 22) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 196))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 196) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 4)))];
    placeholder_shared[((((int)threadIdx.x) + 210))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 210) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 18)))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)) + 896))];
    placeholder_shared[((((int)threadIdx.x) + 238))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 238) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 14)))];
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[((((int)threadIdx.x) + 252))] = placeholder1[(((((rc_outer_outer * 1024) + (((((int)threadIdx.x) + 252) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 28)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 4; ++ff_outer_inner) {
        for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
          for (int xx_inner = 0; xx_inner < 14; ++xx_inner) {
            Conv2dOutput[(((xx_inner * 16) + (ff_outer_inner * 4)))] = (Conv2dOutput[(((xx_inner * 16) + (ff_outer_inner * 4)))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 224))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 224))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 784))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 448))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 448))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 1568))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 672))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 672))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 2352))] * placeholder_shared[(((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 1))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 1))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 225))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 225))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 784))] * placeholder_shared[((((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 1))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 449))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 449))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 1568))] * placeholder_shared[((((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 1))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 673))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 673))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 2352))] * placeholder_shared[((((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 1))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 2))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 2))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 226))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 226))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 784))] * placeholder_shared[((((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 2))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 450))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 450))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 1568))] * placeholder_shared[((((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 2))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 674))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 674))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 2352))] * placeholder_shared[((((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 2))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 3))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 3))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 3))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 227))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 227))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 784))] * placeholder_shared[((((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 3))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 451))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 451))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 1568))] * placeholder_shared[((((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 3))]));
            Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 675))] = (Conv2dOutput[((((xx_inner * 16) + (ff_outer_inner * 4)) + 675))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 1) * 112) + (xx_inner * 8)) + (rc_outer_inner * 2)) + rc_inner) + 2352))] * placeholder_shared[((((((rc_outer_inner * 64) + (rc_inner * 32)) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 3))]));
          }
        }
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 14; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 16; ++ax3_inner) {
      T_relu[(((((((((int)threadIdx.x) >> 1) * 1792) + (ax2_inner * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner))] = max((Conv2dOutput[(((ax2_inner * 16) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 1) * 1792) + (ax2_inner * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner) + 12544))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 224))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 1) * 1792) + (ax2_inner * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner) + 25088))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 448))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((int)threadIdx.x) >> 1) * 1792) + (ax2_inner * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner) + 37632))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 672))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


