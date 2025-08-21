
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2, float* __restrict__ placeholder3, float* __restrict__ placeholder4) {
  float Conv3dOutput[32];
  __shared__ float PaddedInput_shared[5280];
  __shared__ float placeholder_shared[144];
  for (int ww_outer_inner_init = 0; ww_outer_inner_init < 2; ++ww_outer_inner_init) {
    Conv3dOutput[((ww_outer_inner_init * 2))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 8))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 16))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 24))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 4))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 12))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 20))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 28))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 1))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 9))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 17))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 25))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 5))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 13))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 21))] = 0.000000e+00f;
    Conv3dOutput[(((ww_outer_inner_init * 2) + 29))] = 0.000000e+00f;
  }
  for (int rw_outer_outer = 0; rw_outer_outer < 3; ++rw_outer_outer) {
    for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
      __syncthreads();
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer < 42; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 3)) < 660) {
          if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + (((int)threadIdx.x) >> 2)) < 1320) {
            if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)) < 5280) {
              PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)))] = (((((((1 <= (((((int)blockIdx.x) >> 6) * 8) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 3)) / 66))) && ((((((int)blockIdx.x) >> 6) * 8) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 3)) / 66)) < 129)) && (1 <= (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 3)) % 66))) && ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 3)) % 66) < 65)) && (1 <= (((((((int)blockIdx.x) & 63) >> 4) * 2) + ((((int)threadIdx.x) & 7) >> 2)) + rw_outer_outer))) && ((((((((int)blockIdx.x) & 63) >> 4) * 2) + ((((int)threadIdx.x) & 7) >> 2)) + rw_outer_outer) < 9)) ? placeholder[(((((((((((((int)blockIdx.x) >> 6) * 262144) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 3)) / 66) * 32768)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 3)) % 66) * 512)) + (((((int)blockIdx.x) & 63) >> 4) * 128)) + (((((int)threadIdx.x) & 7) >> 2) * 64)) + (rw_outer_outer * 64)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 33344))] : 0.000000e+00f);
            }
          }
        }
      }
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((((((((int)threadIdx.x) >> 4) * 12288) + (rw_outer_outer * 4096)) + (rc_outer_outer * 256)) + (((((int)threadIdx.x) & 15) >> 2) * 64)) + ((((int)blockIdx.x) & 15) * 4)) + (((int)threadIdx.x) & 3)))];
      if (((int)threadIdx.x) < 16) {
        placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[(((((((rw_outer_outer * 4096) + (rc_outer_outer * 256)) + ((((int)threadIdx.x) >> 2) * 64)) + ((((int)blockIdx.x) & 15) * 4)) + (((int)threadIdx.x) & 3)) + 98304))];
      }
      __syncthreads();
      for (int ww_outer_inner = 0; ww_outer_inner < 2; ++ww_outer_inner) {
        for (int cc_outer_inner = 0; cc_outer_inner < 2; ++cc_outer_inner) {
          for (int rd_inner = 0; rd_inner < 3; ++rd_inner) {
            for (int rh_inner = 0; rh_inner < 3; ++rh_inner) {
              for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
                Conv3dOutput[(((ww_outer_inner * 2) + cc_outer_inner))] = (Conv3dOutput[(((ww_outer_inner * 2) + cc_outer_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 4) * 528) + (rd_inner * 528)) + ((((int)threadIdx.x) & 15) * 16)) + (rh_inner * 8)) + (ww_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rd_inner * 48) + (rh_inner * 16)) + (rc_inner * 4)) + cc_outer_inner))]));
                Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 8))] = (Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 8))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 4) * 528) + (rd_inner * 528)) + ((((int)threadIdx.x) & 15) * 16)) + (rh_inner * 8)) + (ww_outer_inner * 4)) + rc_inner))] * placeholder_shared[((((((rd_inner * 48) + (rh_inner * 16)) + (rc_inner * 4)) + cc_outer_inner) + 2))]));
                Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 16))] = (Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 16))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 4) * 528) + (rd_inner * 528)) + ((((int)threadIdx.x) & 15) * 16)) + (rh_inner * 8)) + (ww_outer_inner * 4)) + rc_inner) + 256))] * placeholder_shared[(((((rd_inner * 48) + (rh_inner * 16)) + (rc_inner * 4)) + cc_outer_inner))]));
                Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 24))] = (Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 24))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 4) * 528) + (rd_inner * 528)) + ((((int)threadIdx.x) & 15) * 16)) + (rh_inner * 8)) + (ww_outer_inner * 4)) + rc_inner) + 256))] * placeholder_shared[((((((rd_inner * 48) + (rh_inner * 16)) + (rc_inner * 4)) + cc_outer_inner) + 2))]));
                Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 4))] = (Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 4))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 4) * 528) + (rd_inner * 528)) + ((((int)threadIdx.x) & 15) * 16)) + (rh_inner * 8)) + (ww_outer_inner * 4)) + rc_inner) + 8))] * placeholder_shared[(((((rd_inner * 48) + (rh_inner * 16)) + (rc_inner * 4)) + cc_outer_inner))]));
                Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 12))] = (Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 12))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 4) * 528) + (rd_inner * 528)) + ((((int)threadIdx.x) & 15) * 16)) + (rh_inner * 8)) + (ww_outer_inner * 4)) + rc_inner) + 8))] * placeholder_shared[((((((rd_inner * 48) + (rh_inner * 16)) + (rc_inner * 4)) + cc_outer_inner) + 2))]));
                Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 20))] = (Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 20))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 4) * 528) + (rd_inner * 528)) + ((((int)threadIdx.x) & 15) * 16)) + (rh_inner * 8)) + (ww_outer_inner * 4)) + rc_inner) + 264))] * placeholder_shared[(((((rd_inner * 48) + (rh_inner * 16)) + (rc_inner * 4)) + cc_outer_inner))]));
                Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 28))] = (Conv3dOutput[((((ww_outer_inner * 2) + cc_outer_inner) + 28))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) >> 4) * 528) + (rd_inner * 528)) + ((((int)threadIdx.x) & 15) * 16)) + (rh_inner * 8)) + (ww_outer_inner * 4)) + rc_inner) + 264))] * placeholder_shared[((((((rd_inner * 48) + (rh_inner * 16)) + (rc_inner * 4)) + cc_outer_inner) + 2))]));
              }
            }
          }
        }
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      for (int ax4_inner = 0; ax4_inner < 2; ++ax4_inner) {
        T_relu[((((((((((((int)blockIdx.x) >> 6) * 262144) + ((((int)threadIdx.x) >> 4) * 32768)) + ((((int)threadIdx.x) & 15) * 1024)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 63) >> 4) * 128)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 15) * 4)) + ax4_inner))] = max((((Conv3dOutput[((((ax2_inner * 4) + (ax3_inner * 2)) + ax4_inner))] * placeholder2[((((((int)blockIdx.x) & 15) * 4) + ax4_inner))]) + placeholder3[((((((int)blockIdx.x) & 15) * 4) + ax4_inner))]) + placeholder4[((((((((((((int)blockIdx.x) >> 6) * 262144) + ((((int)threadIdx.x) >> 4) * 32768)) + ((((int)threadIdx.x) & 15) * 1024)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 63) >> 4) * 128)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 15) * 4)) + ax4_inner))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) >> 6) * 262144) + ((((int)threadIdx.x) >> 4) * 32768)) + ((((int)threadIdx.x) & 15) * 1024)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 63) >> 4) * 128)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 15) * 4)) + ax4_inner) + 2))] = max((((Conv3dOutput[(((((ax2_inner * 4) + (ax3_inner * 2)) + ax4_inner) + 8))] * placeholder2[(((((((int)blockIdx.x) & 15) * 4) + ax4_inner) + 2))]) + placeholder3[(((((((int)blockIdx.x) & 15) * 4) + ax4_inner) + 2))]) + placeholder4[(((((((((((((int)blockIdx.x) >> 6) * 262144) + ((((int)threadIdx.x) >> 4) * 32768)) + ((((int)threadIdx.x) & 15) * 1024)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 63) >> 4) * 128)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 15) * 4)) + ax4_inner) + 2))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) >> 6) * 262144) + ((((int)threadIdx.x) >> 4) * 32768)) + ((((int)threadIdx.x) & 15) * 1024)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 63) >> 4) * 128)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 15) * 4)) + ax4_inner) + 16384))] = max((((Conv3dOutput[(((((ax2_inner * 4) + (ax3_inner * 2)) + ax4_inner) + 16))] * placeholder2[((((((int)blockIdx.x) & 15) * 4) + ax4_inner))]) + placeholder3[((((((int)blockIdx.x) & 15) * 4) + ax4_inner))]) + placeholder4[(((((((((((((int)blockIdx.x) >> 6) * 262144) + ((((int)threadIdx.x) >> 4) * 32768)) + ((((int)threadIdx.x) & 15) * 1024)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 63) >> 4) * 128)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 15) * 4)) + ax4_inner) + 16384))]), 0.000000e+00f);
        T_relu[(((((((((((((int)blockIdx.x) >> 6) * 262144) + ((((int)threadIdx.x) >> 4) * 32768)) + ((((int)threadIdx.x) & 15) * 1024)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 63) >> 4) * 128)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 15) * 4)) + ax4_inner) + 16386))] = max((((Conv3dOutput[(((((ax2_inner * 4) + (ax3_inner * 2)) + ax4_inner) + 24))] * placeholder2[(((((((int)blockIdx.x) & 15) * 4) + ax4_inner) + 2))]) + placeholder3[(((((((int)blockIdx.x) & 15) * 4) + ax4_inner) + 2))]) + placeholder4[(((((((((((((int)blockIdx.x) >> 6) * 262144) + ((((int)threadIdx.x) >> 4) * 32768)) + ((((int)threadIdx.x) & 15) * 1024)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 63) >> 4) * 128)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 15) * 4)) + ax4_inner) + 16386))]), 0.000000e+00f);
      }
    }
  }
}


