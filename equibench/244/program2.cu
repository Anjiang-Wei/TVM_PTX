
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
  __shared__ float PaddedInput_shared[1536];
  __shared__ float placeholder_shared[96];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 8; ++ff_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 16; ++yy_inner_init) {
      Conv2dOutput[(((yy_inner_init * 8) + ff_outer_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 8) + ff_outer_inner_init) + 128))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 8) + ff_outer_inner_init) + 256))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 8) + ff_outer_inner_init) + 384))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 48; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) / 24) * 12288) + ((((int)blockIdx.x) >> 2) * 1536)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) % 24) / 3) * 192)) + (rc_outer_outer * 3)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 32) + ((int)threadIdx.x)) % 3)))];
    }
    placeholder_shared[((((int)threadIdx.x) * 2))] = placeholder1[(((((rc_outer_outer * 384) + ((((int)threadIdx.x) >> 4) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)))];
    placeholder_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder1[(((((rc_outer_outer * 384) + ((((((int)threadIdx.x) * 2) + 1) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 2) + 1) & 31)))];
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 2) + 64))] = placeholder1[(((((rc_outer_outer * 384) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) * 2)) + 256))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 2) + 65))] = placeholder1[(((((rc_outer_outer * 384) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) * 2)) + 257))];
    }
    __syncthreads();
    for (int ff_outer_inner = 0; ff_outer_inner < 8; ++ff_outer_inner) {
      for (int rc_inner = 0; rc_inner < 3; ++rc_inner) {
        for (int yy_inner = 0; yy_inner < 16; ++yy_inner) {
          Conv2dOutput[(((yy_inner * 8) + ff_outer_inner))] = (Conv2dOutput[(((yy_inner * 8) + ff_outer_inner))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 384) + (yy_inner * 24)) + (((((int)threadIdx.x) & 7) >> 2) * 3)) + rc_inner))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 3) * 8)) + ff_outer_inner))]));
          Conv2dOutput[((((yy_inner * 8) + ff_outer_inner) + 128))] = (Conv2dOutput[((((yy_inner * 8) + ff_outer_inner) + 128))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 384) + (yy_inner * 24)) + (((((int)threadIdx.x) & 7) >> 2) * 3)) + rc_inner) + 6))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 3) * 8)) + ff_outer_inner))]));
          Conv2dOutput[((((yy_inner * 8) + ff_outer_inner) + 256))] = (Conv2dOutput[((((yy_inner * 8) + ff_outer_inner) + 256))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 384) + (yy_inner * 24)) + (((((int)threadIdx.x) & 7) >> 2) * 3)) + rc_inner) + 12))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 3) * 8)) + ff_outer_inner))]));
          Conv2dOutput[((((yy_inner * 8) + ff_outer_inner) + 384))] = (Conv2dOutput[((((yy_inner * 8) + ff_outer_inner) + 384))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 384) + (yy_inner * 24)) + (((((int)threadIdx.x) & 7) >> 2) * 3)) + rc_inner) + 18))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 3) * 8)) + ff_outer_inner))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 16; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
      T_relu[(((((((((((int)threadIdx.x) >> 3) * 131072) + (ax1_inner * 8192)) + ((((int)blockIdx.x) >> 2) * 1024)) + (((((int)threadIdx.x) & 7) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 8) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) >> 3) * 131072) + (ax1_inner * 8192)) + ((((int)blockIdx.x) >> 2) * 1024)) + (((((int)threadIdx.x) & 7) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner) + 256))] = max((Conv2dOutput[((((ax1_inner * 8) + ax3_inner) + 128))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) >> 3) * 131072) + (ax1_inner * 8192)) + ((((int)blockIdx.x) >> 2) * 1024)) + (((((int)threadIdx.x) & 7) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner) + 512))] = max((Conv2dOutput[((((ax1_inner * 8) + ax3_inner) + 256))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) >> 3) * 131072) + (ax1_inner * 8192)) + ((((int)blockIdx.x) >> 2) * 1024)) + (((((int)threadIdx.x) & 7) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner) + 768))] = max((Conv2dOutput[((((ax1_inner * 8) + ax3_inner) + 384))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 8)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


