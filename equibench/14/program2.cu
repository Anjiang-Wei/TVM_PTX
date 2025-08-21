
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute, float* __restrict__ placeholder2) {
  float Conv2dOutput[8];
  __shared__ float PaddedInput_shared[256];
  __shared__ float placeholder_shared[768];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    Conv2dOutput[(yy_outer_inner_init)] = 0.000000e+00f;
    Conv2dOutput[((yy_outer_inner_init + 2))] = 0.000000e+00f;
    Conv2dOutput[((yy_outer_inner_init + 4))] = 0.000000e+00f;
    Conv2dOutput[((yy_outer_inner_init + 6))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 2; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 8; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 8) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 256) {
        if (((int)threadIdx.x) < 32) {
          PaddedInput_shared[(((((int)threadIdx.x) * 8) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder[((((((((((int)blockIdx.x) >> 6) * 8192) + ((((((int)threadIdx.x) * 8) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 5) * 1024)) + (((((int)blockIdx.x) & 63) >> 2) * 64)) + (((((((int)threadIdx.x) * 8) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 31) >> 4) * 32)) + (rc_outer_outer * 16)) + (((((int)threadIdx.x) * 8) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 15)))];
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1 < 6; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 576) + (((int)threadIdx.x) * 6)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) < 768) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 96) + ((int)threadIdx.x)) < 128) {
            placeholder_shared[((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + (((((int)threadIdx.x) * 6) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) / 48)) & 15) * 48) + (((((int)threadIdx.x) * 6) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) % 48)))] = placeholder1[(((((rc_outer_outer * 3072) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + (((((int)threadIdx.x) * 6) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) / 48)) & 15) * 192)) + ((((int)blockIdx.x) & 3) * 48)) + (((((int)threadIdx.x) * 6) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s1) % 48)))];
          }
        }
      }
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
      for (int rc_inner = 0; rc_inner < 16; ++rc_inner) {
        Conv2dOutput[(yy_outer_inner)] = (Conv2dOutput[(yy_outer_inner)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 48) * 64) + (yy_outer_inner * 32)) + rc_inner))] * placeholder_shared[(((rc_inner * 48) + (((int)threadIdx.x) % 48)))]));
        Conv2dOutput[((yy_outer_inner + 2))] = (Conv2dOutput[((yy_outer_inner + 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 48) * 64) + (yy_outer_inner * 32)) + rc_inner) + 16))] * placeholder_shared[(((rc_inner * 48) + (((int)threadIdx.x) % 48)))]));
        Conv2dOutput[((yy_outer_inner + 4))] = (Conv2dOutput[((yy_outer_inner + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 48) * 64) + (yy_outer_inner * 32)) + rc_inner) + 128))] * placeholder_shared[(((rc_inner * 48) + (((int)threadIdx.x) % 48)))]));
        Conv2dOutput[((yy_outer_inner + 6))] = (Conv2dOutput[((yy_outer_inner + 6))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 48) * 64) + (yy_outer_inner * 32)) + rc_inner) + 144))] * placeholder_shared[(((rc_inner * 48) + (((int)threadIdx.x) % 48)))]));
      }
    }
  }
  for (int i1_inner = 0; i1_inner < 2; ++i1_inner) {
    compute[((((((((((int)blockIdx.x) >> 6) * 49152) + ((((int)threadIdx.x) / 48) * 12288)) + (i1_inner * 6144)) + (((((int)blockIdx.x) & 63) >> 2) * 384)) + ((((int)blockIdx.x) & 3) * 48)) + (((int)threadIdx.x) % 48)))] = max(min((Conv2dOutput[(i1_inner)] + placeholder2[((((((int)blockIdx.x) & 3) * 48) + (((int)threadIdx.x) % 48)))]), 6.000000e+00f), 0.000000e+00f);
    compute[(((((((((((int)blockIdx.x) >> 6) * 49152) + ((((int)threadIdx.x) / 48) * 12288)) + (i1_inner * 6144)) + (((((int)blockIdx.x) & 63) >> 2) * 384)) + ((((int)blockIdx.x) & 3) * 48)) + (((int)threadIdx.x) % 48)) + 192))] = max(min((Conv2dOutput[((i1_inner + 2))] + placeholder2[((((((int)blockIdx.x) & 3) * 48) + (((int)threadIdx.x) % 48)))]), 6.000000e+00f), 0.000000e+00f);
    compute[(((((((((((int)blockIdx.x) >> 6) * 49152) + ((((int)threadIdx.x) / 48) * 12288)) + (i1_inner * 6144)) + (((((int)blockIdx.x) & 63) >> 2) * 384)) + ((((int)blockIdx.x) & 3) * 48)) + (((int)threadIdx.x) % 48)) + 24576))] = max(min((Conv2dOutput[((i1_inner + 4))] + placeholder2[((((((int)blockIdx.x) & 3) * 48) + (((int)threadIdx.x) % 48)))]), 6.000000e+00f), 0.000000e+00f);
    compute[(((((((((((int)blockIdx.x) >> 6) * 49152) + ((((int)threadIdx.x) / 48) * 12288)) + (i1_inner * 6144)) + (((((int)blockIdx.x) & 63) >> 2) * 384)) + ((((int)blockIdx.x) & 3) * 48)) + (((int)threadIdx.x) % 48)) + 24768))] = max(min((Conv2dOutput[((i1_inner + 6))] + placeholder2[((((((int)blockIdx.x) & 3) * 48) + (((int)threadIdx.x) % 48)))]), 6.000000e+00f), 0.000000e+00f);
  }
}


