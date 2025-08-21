
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv3dOutput[128];
  __shared__ float PaddedInput_shared[5616];
  __shared__ float placeholder_shared[672];
  for (int dd_outer_inner_init = 0; dd_outer_inner_init < 4; ++dd_outer_inner_init) {
    for (int dd_inner_init = 0; dd_inner_init < 2; ++dd_inner_init) {
      Conv3dOutput[(((dd_outer_inner_init * 16) + (dd_inner_init * 8)))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 64))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 1))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 65))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 2))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 66))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 3))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 67))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 4))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 68))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 5))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 69))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 6))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 70))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 7))] = 0.000000e+00f;
      Conv3dOutput[((((dd_outer_inner_init * 16) + (dd_inner_init * 8)) + 71))] = 0.000000e+00f;
    }
  }
  for (int rd_outer_outer = 0; rd_outer_outer < 3; ++rd_outer_outer) {
    for (int rw_outer_outer = 0; rw_outer_outer < 7; ++rw_outer_outer) {
      __syncthreads();
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer < 59; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + (((int)threadIdx.x) / 3)) < 1872) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 96) + ((int)threadIdx.x)) < 5616) {
            PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 96) + ((int)threadIdx.x)))] = (((((((1 <= (((((((int)blockIdx.x) % 432) / 144) * 48) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + (((int)threadIdx.x) / 3)) / 39)) + rd_outer_outer)) && ((((((((int)blockIdx.x) % 432) / 144) * 48) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + (((int)threadIdx.x) / 3)) / 39)) + rd_outer_outer) < 145)) && (3 <= ((((((int)blockIdx.x) % 144) >> 3) * 8) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + (((int)threadIdx.x) / 3)) % 39) / 3)))) && (((((((int)blockIdx.x) % 144) >> 3) * 8) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + (((int)threadIdx.x) / 3)) % 39) / 3)) < 147)) && (3 <= (((((((int)blockIdx.x) & 7) >> 1) * 4) + rw_outer_outer) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + (((int)threadIdx.x) / 3)) % 3)))) && ((((((((int)blockIdx.x) & 7) >> 1) * 4) + rw_outer_outer) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + (((int)threadIdx.x) / 3)) % 3)) < 19)) ? placeholder[((((((((((((((int)blockIdx.x) / 144) * 331776) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + (((int)threadIdx.x) / 3)) / 39) * 6912)) + (rd_outer_outer * 6912)) + (((((int)blockIdx.x) % 144) >> 3) * 384)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + (((int)threadIdx.x) / 3)) % 39) / 3) * 48)) + (((((int)blockIdx.x) & 7) >> 1) * 12)) + (rw_outer_outer * 3)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + (((int)threadIdx.x) / 3)) % 3) * 3)) + (((int)threadIdx.x) % 3)) - 7065))] : 0.000000e+00f);
          }
        }
      }
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((((rd_outer_outer * 9408) + (rw_outer_outer * 192)) + ((((int)threadIdx.x) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 31)))];
      placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[(((((((rd_outer_outer * 9408) + (rw_outer_outer * 192)) + ((((int)threadIdx.x) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 31)) + 1344))];
      placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[(((((((rd_outer_outer * 9408) + (rw_outer_outer * 192)) + ((((int)threadIdx.x) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 31)) + 2688))];
      placeholder_shared[((((int)threadIdx.x) + 288))] = placeholder1[(((((((rd_outer_outer * 9408) + (rw_outer_outer * 192)) + ((((int)threadIdx.x) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 31)) + 4032))];
      placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[(((((((rd_outer_outer * 9408) + (rw_outer_outer * 192)) + ((((int)threadIdx.x) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 31)) + 5376))];
      placeholder_shared[((((int)threadIdx.x) + 480))] = placeholder1[(((((((rd_outer_outer * 9408) + (rw_outer_outer * 192)) + ((((int)threadIdx.x) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 31)) + 6720))];
      placeholder_shared[((((int)threadIdx.x) + 576))] = placeholder1[(((((((rd_outer_outer * 9408) + (rw_outer_outer * 192)) + ((((int)threadIdx.x) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 31)) + 8064))];
      __syncthreads();
      for (int rh_outer_inner = 0; rh_outer_inner < 7; ++rh_outer_inner) {
        for (int rc_outer_inner = 0; rc_outer_inner < 3; ++rc_outer_inner) {
          for (int dd_outer_inner = 0; dd_outer_inner < 4; ++dd_outer_inner) {
            for (int dd_inner = 0; dd_inner < 2; ++dd_inner) {
              Conv3dOutput[(((dd_outer_inner * 16) + (dd_inner * 8)))] = (Conv3dOutput[(((dd_outer_inner * 16) + (dd_inner * 8)))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 64))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 64))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 2808))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 1))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 1))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 6))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 65))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 65))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 2814))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 2))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 2))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 18))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 66))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 66))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 2826))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 3))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 3))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 24))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 67))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 67))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 2832))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 4))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 4))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 36))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 68))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 68))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 2844))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 5))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 5))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 42))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 69))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 69))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 2850))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 6))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 6))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 54))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 70))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 70))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 2862))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 7))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 7))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 60))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
              Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 71))] = (Conv3dOutput[((((dd_outer_inner * 16) + (dd_inner * 8)) + 71))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 936) + (dd_outer_inner * 234)) + (dd_inner * 117)) + (rh_outer_inner * 9)) + rc_outer_inner) + 2868))] * placeholder_shared[((((rh_outer_inner * 96) + (rc_outer_inner * 32)) + (((int)threadIdx.x) & 31)))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 8; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[(((((((((((((int)blockIdx.x) / 144) * 1769472) + ((((int)threadIdx.x) >> 5) * 294912)) + (ax1_inner * 36864)) + (((((int)blockIdx.x) % 144) >> 3) * 2048)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 7) >> 1) * 128)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 31)))] = max(((Conv3dOutput[((((ax1_inner * 8) + (ax2_inner * 2)) + ax3_inner))] * placeholder2[((((((int)blockIdx.x) & 1) * 32) + (((int)threadIdx.x) & 31)))]) + placeholder3[((((((int)blockIdx.x) & 1) * 32) + (((int)threadIdx.x) & 31)))]), 0.000000e+00f);
        T_relu[((((((((((((((int)blockIdx.x) / 144) * 1769472) + ((((int)threadIdx.x) >> 5) * 294912)) + (ax1_inner * 36864)) + (((((int)blockIdx.x) % 144) >> 3) * 2048)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 7) >> 1) * 128)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 31)) + 884736))] = max(((Conv3dOutput[(((((ax1_inner * 8) + (ax2_inner * 2)) + ax3_inner) + 64))] * placeholder2[((((((int)blockIdx.x) & 1) * 32) + (((int)threadIdx.x) & 31)))]) + placeholder3[((((((int)blockIdx.x) & 1) * 32) + (((int)threadIdx.x) & 31)))]), 0.000000e+00f);
      }
    }
  }
}


