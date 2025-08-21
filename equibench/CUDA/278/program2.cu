
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv3dOutput[32];
  __shared__ float PaddedInput_shared[10080];
  __shared__ float placeholder_shared[32];
  Conv3dOutput[(0)] = 0.000000e+00f;
  Conv3dOutput[(16)] = 0.000000e+00f;
  Conv3dOutput[(2)] = 0.000000e+00f;
  Conv3dOutput[(18)] = 0.000000e+00f;
  Conv3dOutput[(4)] = 0.000000e+00f;
  Conv3dOutput[(20)] = 0.000000e+00f;
  Conv3dOutput[(6)] = 0.000000e+00f;
  Conv3dOutput[(22)] = 0.000000e+00f;
  Conv3dOutput[(8)] = 0.000000e+00f;
  Conv3dOutput[(24)] = 0.000000e+00f;
  Conv3dOutput[(10)] = 0.000000e+00f;
  Conv3dOutput[(26)] = 0.000000e+00f;
  Conv3dOutput[(12)] = 0.000000e+00f;
  Conv3dOutput[(28)] = 0.000000e+00f;
  Conv3dOutput[(14)] = 0.000000e+00f;
  Conv3dOutput[(30)] = 0.000000e+00f;
  Conv3dOutput[(1)] = 0.000000e+00f;
  Conv3dOutput[(17)] = 0.000000e+00f;
  Conv3dOutput[(3)] = 0.000000e+00f;
  Conv3dOutput[(19)] = 0.000000e+00f;
  Conv3dOutput[(5)] = 0.000000e+00f;
  Conv3dOutput[(21)] = 0.000000e+00f;
  Conv3dOutput[(7)] = 0.000000e+00f;
  Conv3dOutput[(23)] = 0.000000e+00f;
  Conv3dOutput[(9)] = 0.000000e+00f;
  Conv3dOutput[(25)] = 0.000000e+00f;
  Conv3dOutput[(11)] = 0.000000e+00f;
  Conv3dOutput[(27)] = 0.000000e+00f;
  Conv3dOutput[(13)] = 0.000000e+00f;
  Conv3dOutput[(29)] = 0.000000e+00f;
  Conv3dOutput[(15)] = 0.000000e+00f;
  Conv3dOutput[(31)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer < 79; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) < 630) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10080) {
          PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)))] = placeholder[((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10079) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 1))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 1))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10078) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 2))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 2))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10077) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 3))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 3))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10076) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 4))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 4))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10075) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 5))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 5))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10074) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 6))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 6))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10073) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 7))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 7))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10072) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 8))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 8))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10071) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 9))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 9))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10070) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 10))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 10))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10069) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 11))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 11))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10068) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 12))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 12))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10067) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 13))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 13))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10066) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 14))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 14))];
        }
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) < 10065) {
          PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + (((int)threadIdx.x) * 16)) + 15))] = placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) / 315) * 4194304) + ((((int)blockIdx.x) >> 10) * 524288)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 315) / 21) * 32768)) + (((((int)blockIdx.x) & 1023) >> 7) * 4096)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 21) / 3) * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 8) + ((int)threadIdx.x)) % 3) * 64)) + (rc_outer_outer * 16)) + 15))];
        }
      }
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 2048) + ((((int)threadIdx.x) >> 1) * 128)) + ((((int)blockIdx.x) & 63) * 2)) + (((int)threadIdx.x) & 1)))];
    placeholder_shared[((((int)threadIdx.x) + 8))] = placeholder1[((((((rc_outer_outer * 2048) + ((((int)threadIdx.x) >> 1) * 128)) + ((((int)blockIdx.x) & 63) * 2)) + (((int)threadIdx.x) & 1)) + 512))];
    placeholder_shared[((((int)threadIdx.x) + 16))] = placeholder1[((((((rc_outer_outer * 2048) + ((((int)threadIdx.x) >> 1) * 128)) + ((((int)blockIdx.x) & 63) * 2)) + (((int)threadIdx.x) & 1)) + 1024))];
    placeholder_shared[((((int)threadIdx.x) + 24))] = placeholder1[((((((rc_outer_outer * 2048) + ((((int)threadIdx.x) >> 1) * 128)) + ((((int)blockIdx.x) & 63) * 2)) + (((int)threadIdx.x) & 1)) + 1536))];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(16)] = (Conv3dOutput[(16)] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 672))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(18)] = (Conv3dOutput[(18)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 672))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(4)] = (Conv3dOutput[(4)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 1344))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(20)] = (Conv3dOutput[(20)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 1344))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(6)] = (Conv3dOutput[(6)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2016))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(22)] = (Conv3dOutput[(22)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2016))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(8)] = (Conv3dOutput[(8)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2688))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(24)] = (Conv3dOutput[(24)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2688))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(10)] = (Conv3dOutput[(10)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 3360))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(26)] = (Conv3dOutput[(26)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 3360))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(12)] = (Conv3dOutput[(12)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4032))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(28)] = (Conv3dOutput[(28)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4032))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(14)] = (Conv3dOutput[(14)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4704))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(30)] = (Conv3dOutput[(30)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4704))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(16)] = (Conv3dOutput[(16)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 673))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(18)] = (Conv3dOutput[(18)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 673))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(4)] = (Conv3dOutput[(4)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 1345))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(20)] = (Conv3dOutput[(20)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 1345))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(6)] = (Conv3dOutput[(6)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2017))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(22)] = (Conv3dOutput[(22)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2017))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(8)] = (Conv3dOutput[(8)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2689))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(24)] = (Conv3dOutput[(24)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2689))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(10)] = (Conv3dOutput[(10)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 3361))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(26)] = (Conv3dOutput[(26)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 3361))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(12)] = (Conv3dOutput[(12)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4033))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(28)] = (Conv3dOutput[(28)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4033))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(14)] = (Conv3dOutput[(14)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4705))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(30)] = (Conv3dOutput[(30)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4705))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 96))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(17)] = (Conv3dOutput[(17)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 96))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 768))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(19)] = (Conv3dOutput[(19)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 768))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(5)] = (Conv3dOutput[(5)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 1440))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(21)] = (Conv3dOutput[(21)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 1440))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(7)] = (Conv3dOutput[(7)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2112))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(23)] = (Conv3dOutput[(23)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2112))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(9)] = (Conv3dOutput[(9)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2784))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(25)] = (Conv3dOutput[(25)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2784))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(11)] = (Conv3dOutput[(11)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 3456))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(27)] = (Conv3dOutput[(27)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 3456))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(13)] = (Conv3dOutput[(13)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4128))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(29)] = (Conv3dOutput[(29)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4128))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(15)] = (Conv3dOutput[(15)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4800))] * placeholder_shared[((rc_outer_inner * 4))]));
      Conv3dOutput[(31)] = (Conv3dOutput[(31)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4800))] * placeholder_shared[(((rc_outer_inner * 4) + 1))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 97))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(17)] = (Conv3dOutput[(17)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 97))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 769))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(19)] = (Conv3dOutput[(19)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 769))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(5)] = (Conv3dOutput[(5)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 1441))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(21)] = (Conv3dOutput[(21)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 1441))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(7)] = (Conv3dOutput[(7)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2113))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(23)] = (Conv3dOutput[(23)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2113))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(9)] = (Conv3dOutput[(9)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2785))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(25)] = (Conv3dOutput[(25)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 2785))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(11)] = (Conv3dOutput[(11)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 3457))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(27)] = (Conv3dOutput[(27)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 3457))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(13)] = (Conv3dOutput[(13)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4129))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(29)] = (Conv3dOutput[(29)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4129))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
      Conv3dOutput[(15)] = (Conv3dOutput[(15)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4801))] * placeholder_shared[(((rc_outer_inner * 4) + 2))]));
      Conv3dOutput[(31)] = (Conv3dOutput[(31)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 2) * 5040) + (((((int)threadIdx.x) & 3) >> 1) * 192)) + ((((int)threadIdx.x) & 1) * 32)) + (rc_outer_inner * 2)) + 4801))] * placeholder_shared[(((rc_outer_inner * 4) + 3))]));
    }
  }
  for (int ax1_inner = 0; ax1_inner < 8; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      T_add[(((((((((((((int)threadIdx.x) >> 2) * 1048576) + ((((int)blockIdx.x) >> 10) * 131072)) + (ax1_inner * 16384)) + (((((int)blockIdx.x) & 1023) >> 7) * 2048)) + (((((int)threadIdx.x) & 3) >> 1) * 1024)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((int)threadIdx.x) & 1) * 128)) + ((((int)blockIdx.x) & 63) * 2)))] = ((Conv3dOutput[(((ax1_inner * 2) + ax2_inner))] * placeholder2[(((((int)blockIdx.x) & 63) * 2))]) + placeholder3[(((((int)blockIdx.x) & 63) * 2))]);
      T_add[((((((((((((((int)threadIdx.x) >> 2) * 1048576) + ((((int)blockIdx.x) >> 10) * 131072)) + (ax1_inner * 16384)) + (((((int)blockIdx.x) & 1023) >> 7) * 2048)) + (((((int)threadIdx.x) & 3) >> 1) * 1024)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 127) >> 6) * 256)) + ((((int)threadIdx.x) & 1) * 128)) + ((((int)blockIdx.x) & 63) * 2)) + 1))] = ((Conv3dOutput[((((ax1_inner * 2) + ax2_inner) + 16))] * placeholder2[((((((int)blockIdx.x) & 63) * 2) + 1))]) + placeholder3[((((((int)blockIdx.x) & 63) * 2) + 1))]);
    }
  }
}


