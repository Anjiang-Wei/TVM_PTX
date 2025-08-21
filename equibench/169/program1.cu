
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
  float Conv2dOutput[512];
  __shared__ float PaddedInput_shared[2048];
  __shared__ float placeholder_shared[32];
  for (int xx_inner_init = 0; xx_inner_init < 8; ++xx_inner_init) {
    for (int ff_inner_init = 0; ff_inner_init < 16; ++ff_inner_init) {
      Conv2dOutput[(((xx_inner_init * 16) + ff_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + ff_inner_init) + 128))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + ff_inner_init) + 256))] = 0.000000e+00f;
      Conv2dOutput[((((xx_inner_init * 16) + ff_inner_init) + 384))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 64; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 262144) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 4096)) + (((((int)blockIdx.x) & 15) >> 3) * 2048)) + ((((int)threadIdx.x) >> 1) * 128)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 32) {
        if (((int)threadIdx.x) < 16) {
          placeholder_shared[(((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[(((((rc_outer_outer * 256) + ((((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 2) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 15)))];
        }
      }
    }
    __syncthreads();
    for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
      for (int xx_inner = 0; xx_inner < 8; ++xx_inner) {
        for (int ff_inner = 0; ff_inner < 16; ++ff_inner) {
          Conv2dOutput[(((xx_inner * 16) + ff_inner))] = (Conv2dOutput[(((xx_inner * 16) + ff_inner))] + (PaddedInput_shared[((((((int)threadIdx.x) * 16) + (xx_inner * 2)) + rc_inner))] * placeholder_shared[(((rc_inner * 16) + ff_inner))]));
          Conv2dOutput[((((xx_inner * 16) + ff_inner) + 128))] = (Conv2dOutput[((((xx_inner * 16) + ff_inner) + 128))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 16) + (xx_inner * 2)) + rc_inner) + 512))] * placeholder_shared[(((rc_inner * 16) + ff_inner))]));
          Conv2dOutput[((((xx_inner * 16) + ff_inner) + 256))] = (Conv2dOutput[((((xx_inner * 16) + ff_inner) + 256))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 16) + (xx_inner * 2)) + rc_inner) + 1024))] * placeholder_shared[(((rc_inner * 16) + ff_inner))]));
          Conv2dOutput[((((xx_inner * 16) + ff_inner) + 384))] = (Conv2dOutput[((((xx_inner * 16) + ff_inner) + 384))] + (PaddedInput_shared[(((((((int)threadIdx.x) * 16) + (xx_inner * 2)) + rc_inner) + 1536))] * placeholder_shared[(((rc_inner * 16) + ff_inner))]));
        }
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 8; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 16; ++ax3_inner) {
      T_relu[(((((((((((int)blockIdx.x) >> 4) * 262144) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 3) * 2048)) + ((((int)threadIdx.x) & 1) * 1024)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 7) * 16)) + ax3_inner))] = max((Conv2dOutput[(((ax2_inner * 16) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 4) * 262144) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 3) * 2048)) + ((((int)threadIdx.x) & 1) * 1024)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 7) * 16)) + ax3_inner) + 65536))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 128))] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 4) * 262144) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 3) * 2048)) + ((((int)threadIdx.x) & 1) * 1024)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 7) * 16)) + ax3_inner) + 131072))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 256))] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 4) * 262144) + ((((int)threadIdx.x) >> 1) * 4096)) + (((((int)blockIdx.x) & 15) >> 3) * 2048)) + ((((int)threadIdx.x) & 1) * 1024)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 7) * 16)) + ax3_inner) + 196608))] = max((Conv2dOutput[((((ax2_inner * 16) + ax3_inner) + 384))] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


