
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
  float Conv2dOutput[16];
  __shared__ float PaddedInput_shared[1024];
  __shared__ float placeholder_shared[1024];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 2; ++yy_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 2) + yy_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + yy_inner_init) + 4))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + yy_inner_init) + 8))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 2) + yy_inner_init) + 12))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 2; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 16; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer >> 3) * 262144) + ((((int)blockIdx.x) >> 7) * 32768)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer & 7) * 4096)) + (((((int)blockIdx.x) & 127) >> 2) * 128)) + ((((int)threadIdx.x) >> 5) * 64)) + (rc_outer_outer * 32)) + (((int)threadIdx.x) & 31)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 16; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 64) + ((int)threadIdx.x)))] = placeholder1[((((((rc_outer_outer * 4096) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 256)) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)))];
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
      for (int rc_inner = 0; rc_inner < 32; ++rc_inner) {
        for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
          Conv2dOutput[(((yy_outer_inner * 2) + yy_inner))] = (Conv2dOutput[(((yy_outer_inner * 2) + yy_inner))] + (PaddedInput_shared[(((((yy_outer_inner * 128) + (yy_inner * 64)) + ((((int)threadIdx.x) >> 5) * 32)) + rc_inner))] * placeholder_shared[(((rc_inner * 32) + (((int)threadIdx.x) & 31)))]));
          Conv2dOutput[((((yy_outer_inner * 2) + yy_inner) + 4))] = (Conv2dOutput[((((yy_outer_inner * 2) + yy_inner) + 4))] + (PaddedInput_shared[((((((yy_outer_inner * 128) + (yy_inner * 64)) + ((((int)threadIdx.x) >> 5) * 32)) + rc_inner) + 256))] * placeholder_shared[(((rc_inner * 32) + (((int)threadIdx.x) & 31)))]));
          Conv2dOutput[((((yy_outer_inner * 2) + yy_inner) + 8))] = (Conv2dOutput[((((yy_outer_inner * 2) + yy_inner) + 8))] + (PaddedInput_shared[((((((yy_outer_inner * 128) + (yy_inner * 64)) + ((((int)threadIdx.x) >> 5) * 32)) + rc_inner) + 512))] * placeholder_shared[(((rc_inner * 32) + (((int)threadIdx.x) & 31)))]));
          Conv2dOutput[((((yy_outer_inner * 2) + yy_inner) + 12))] = (Conv2dOutput[((((yy_outer_inner * 2) + yy_inner) + 12))] + (PaddedInput_shared[((((((yy_outer_inner * 128) + (yy_inner * 64)) + ((((int)threadIdx.x) >> 5) * 32)) + rc_inner) + 768))] * placeholder_shared[(((rc_inner * 32) + (((int)threadIdx.x) & 31)))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
    T_relu[((((((((((int)blockIdx.x) >> 7) * 65536) + (ax1_inner * 8192)) + (((((int)blockIdx.x) & 127) >> 2) * 256)) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)))] = max((Conv2dOutput[(ax1_inner)] + placeholder2[((((((int)blockIdx.x) & 3) * 32) + (((int)threadIdx.x) & 31)))]), 0.000000e+00f);
    T_relu[(((((((((((int)blockIdx.x) >> 7) * 65536) + (ax1_inner * 8192)) + (((((int)blockIdx.x) & 127) >> 2) * 256)) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 32768))] = max((Conv2dOutput[((ax1_inner + 4))] + placeholder2[((((((int)blockIdx.x) & 3) * 32) + (((int)threadIdx.x) & 31)))]), 0.000000e+00f);
    T_relu[(((((((((((int)blockIdx.x) >> 7) * 65536) + (ax1_inner * 8192)) + (((((int)blockIdx.x) & 127) >> 2) * 256)) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 524288))] = max((Conv2dOutput[((ax1_inner + 8))] + placeholder2[((((((int)blockIdx.x) & 3) * 32) + (((int)threadIdx.x) & 31)))]), 0.000000e+00f);
    T_relu[(((((((((((int)blockIdx.x) >> 7) * 65536) + (ax1_inner * 8192)) + (((((int)blockIdx.x) & 127) >> 2) * 256)) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)) + 557056))] = max((Conv2dOutput[((ax1_inner + 12))] + placeholder2[((((((int)blockIdx.x) & 3) * 32) + (((int)threadIdx.x) & 31)))]), 0.000000e+00f);
  }
}


