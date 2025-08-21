
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
  float Conv2dOutput[56];
  __shared__ float PaddedInput_shared[3136];
  __shared__ float placeholder_shared[256];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 4; ++nn_outer_inner_init) {
    for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
      Conv2dOutput[(((nn_outer_inner_init * 2) + yy_outer_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 2) + yy_outer_inner_init) + 8))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 2) + yy_outer_inner_init) + 16))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 2) + yy_outer_inner_init) + 24))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 2) + yy_outer_inner_init) + 32))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 2) + yy_outer_inner_init) + 40))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 2) + yy_outer_inner_init) + 48))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 14; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 14) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 3136) {
        if (((int)threadIdx.x) < 224) {
          PaddedInput_shared[(((((int)threadIdx.x) * 14) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[(((((((((int)threadIdx.x) * 14) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 2) * 256) + (rc_outer_outer * 4)) + (((((int)threadIdx.x) * 14) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 3)))];
        }
      }
    }
    if (((int)threadIdx.x) < 256) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 512) + ((((int)threadIdx.x) >> 6) * 128)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) & 63)))];
    }
    __syncthreads();
    for (int nn_outer_inner = 0; nn_outer_inner < 4; ++nn_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
        for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
          Conv2dOutput[(((nn_outer_inner * 2) + yy_outer_inner))] = (Conv2dOutput[(((nn_outer_inner * 2) + yy_outer_inner))] + (PaddedInput_shared[(((((nn_outer_inner * 784) + (yy_outer_inner * 56)) + ((((int)threadIdx.x) >> 6) * 4)) + rc_inner))] * placeholder_shared[(((rc_inner * 64) + (((int)threadIdx.x) & 63)))]));
          Conv2dOutput[((((nn_outer_inner * 2) + yy_outer_inner) + 8))] = (Conv2dOutput[((((nn_outer_inner * 2) + yy_outer_inner) + 8))] + (PaddedInput_shared[((((((nn_outer_inner * 784) + (yy_outer_inner * 56)) + ((((int)threadIdx.x) >> 6) * 4)) + rc_inner) + 112))] * placeholder_shared[(((rc_inner * 64) + (((int)threadIdx.x) & 63)))]));
          Conv2dOutput[((((nn_outer_inner * 2) + yy_outer_inner) + 16))] = (Conv2dOutput[((((nn_outer_inner * 2) + yy_outer_inner) + 16))] + (PaddedInput_shared[((((((nn_outer_inner * 784) + (yy_outer_inner * 56)) + ((((int)threadIdx.x) >> 6) * 4)) + rc_inner) + 224))] * placeholder_shared[(((rc_inner * 64) + (((int)threadIdx.x) & 63)))]));
          Conv2dOutput[((((nn_outer_inner * 2) + yy_outer_inner) + 24))] = (Conv2dOutput[((((nn_outer_inner * 2) + yy_outer_inner) + 24))] + (PaddedInput_shared[((((((nn_outer_inner * 784) + (yy_outer_inner * 56)) + ((((int)threadIdx.x) >> 6) * 4)) + rc_inner) + 336))] * placeholder_shared[(((rc_inner * 64) + (((int)threadIdx.x) & 63)))]));
          Conv2dOutput[((((nn_outer_inner * 2) + yy_outer_inner) + 32))] = (Conv2dOutput[((((nn_outer_inner * 2) + yy_outer_inner) + 32))] + (PaddedInput_shared[((((((nn_outer_inner * 784) + (yy_outer_inner * 56)) + ((((int)threadIdx.x) >> 6) * 4)) + rc_inner) + 448))] * placeholder_shared[(((rc_inner * 64) + (((int)threadIdx.x) & 63)))]));
          Conv2dOutput[((((nn_outer_inner * 2) + yy_outer_inner) + 40))] = (Conv2dOutput[((((nn_outer_inner * 2) + yy_outer_inner) + 40))] + (PaddedInput_shared[((((((nn_outer_inner * 784) + (yy_outer_inner * 56)) + ((((int)threadIdx.x) >> 6) * 4)) + rc_inner) + 560))] * placeholder_shared[(((rc_inner * 64) + (((int)threadIdx.x) & 63)))]));
          Conv2dOutput[((((nn_outer_inner * 2) + yy_outer_inner) + 48))] = (Conv2dOutput[((((nn_outer_inner * 2) + yy_outer_inner) + 48))] + (PaddedInput_shared[((((((nn_outer_inner * 784) + (yy_outer_inner * 56)) + ((((int)threadIdx.x) >> 6) * 4)) + rc_inner) + 672))] * placeholder_shared[(((rc_inner * 64) + (((int)threadIdx.x) & 63)))]));
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
      T_relu[((((((ax0_inner * 25088) + (ax1_inner * 1792)) + ((((int)threadIdx.x) >> 6) * 128)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) & 63)))] = max((Conv2dOutput[(((ax0_inner * 2) + ax1_inner))] + placeholder2[(((((int)blockIdx.x) * 64) + (((int)threadIdx.x) & 63)))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 25088) + (ax1_inner * 1792)) + ((((int)threadIdx.x) >> 6) * 128)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) & 63)) + 3584))] = max((Conv2dOutput[((((ax0_inner * 2) + ax1_inner) + 8))] + placeholder2[(((((int)blockIdx.x) * 64) + (((int)threadIdx.x) & 63)))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 25088) + (ax1_inner * 1792)) + ((((int)threadIdx.x) >> 6) * 128)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) & 63)) + 7168))] = max((Conv2dOutput[((((ax0_inner * 2) + ax1_inner) + 16))] + placeholder2[(((((int)blockIdx.x) * 64) + (((int)threadIdx.x) & 63)))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 25088) + (ax1_inner * 1792)) + ((((int)threadIdx.x) >> 6) * 128)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) & 63)) + 10752))] = max((Conv2dOutput[((((ax0_inner * 2) + ax1_inner) + 24))] + placeholder2[(((((int)blockIdx.x) * 64) + (((int)threadIdx.x) & 63)))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 25088) + (ax1_inner * 1792)) + ((((int)threadIdx.x) >> 6) * 128)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) & 63)) + 14336))] = max((Conv2dOutput[((((ax0_inner * 2) + ax1_inner) + 32))] + placeholder2[(((((int)blockIdx.x) * 64) + (((int)threadIdx.x) & 63)))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 25088) + (ax1_inner * 1792)) + ((((int)threadIdx.x) >> 6) * 128)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) & 63)) + 17920))] = max((Conv2dOutput[((((ax0_inner * 2) + ax1_inner) + 40))] + placeholder2[(((((int)blockIdx.x) * 64) + (((int)threadIdx.x) & 63)))]), 0.000000e+00f);
      T_relu[(((((((ax0_inner * 25088) + (ax1_inner * 1792)) + ((((int)threadIdx.x) >> 6) * 128)) + (((int)blockIdx.x) * 64)) + (((int)threadIdx.x) & 63)) + 21504))] = max((Conv2dOutput[((((ax0_inner * 2) + ax1_inner) + 48))] + placeholder2[(((((int)blockIdx.x) * 64) + (((int)threadIdx.x) & 63)))]), 0.000000e+00f);
    }
  }
}


