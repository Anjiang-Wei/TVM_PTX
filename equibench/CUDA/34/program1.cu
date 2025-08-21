
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
  float Conv3dOutput[16];
  __shared__ float PaddedInput_shared[108];
  __shared__ float placeholder_shared[144];
  Conv3dOutput[(0)] = 0.000000e+00f;
  Conv3dOutput[(8)] = 0.000000e+00f;
  Conv3dOutput[(1)] = 0.000000e+00f;
  Conv3dOutput[(9)] = 0.000000e+00f;
  Conv3dOutput[(2)] = 0.000000e+00f;
  Conv3dOutput[(10)] = 0.000000e+00f;
  Conv3dOutput[(3)] = 0.000000e+00f;
  Conv3dOutput[(11)] = 0.000000e+00f;
  Conv3dOutput[(4)] = 0.000000e+00f;
  Conv3dOutput[(12)] = 0.000000e+00f;
  Conv3dOutput[(5)] = 0.000000e+00f;
  Conv3dOutput[(13)] = 0.000000e+00f;
  Conv3dOutput[(6)] = 0.000000e+00f;
  Conv3dOutput[(14)] = 0.000000e+00f;
  Conv3dOutput[(7)] = 0.000000e+00f;
  Conv3dOutput[(15)] = 0.000000e+00f;
  for (int rh_outer_outer = 0; rh_outer_outer < 3; ++rh_outer_outer) {
    for (int rc_outer_outer = 0; rc_outer_outer < 512; ++rc_outer_outer) {
      __syncthreads();
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s < 18; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) {
        if (((((int)threadIdx.x) * 6) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s / 3)) < 36) {
          if (((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) < 108) {
            if (((int)threadIdx.x) < 6) {
              PaddedInput_shared[(((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s))] = (((((((1 <= (((((int)blockIdx.x) / 224) * 7) + (((((int)threadIdx.x) * 6) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s / 3)) % 9))) && ((((((int)blockIdx.x) / 224) * 7) + (((((int)threadIdx.x) * 6) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s / 3)) % 9)) < 15)) && (1 <= (((((int)blockIdx.x) % 224) >> 5) + rh_outer_outer))) && ((((((int)blockIdx.x) % 224) >> 5) + rh_outer_outer) < 8)) && (1 <= (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s % 3))) && ((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s % 3) < 2)) ? placeholder[((((((((((((((int)threadIdx.x) * 6) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s / 3)) / 9) * 50176) + ((((int)blockIdx.x) / 224) * 25088)) + ((((((int)threadIdx.x) * 6) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s / 3)) % 9) * 3584)) + (((((int)blockIdx.x) % 224) >> 5) * 512)) + (rh_outer_outer * 512)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s % 3) * 512)) + rc_outer_outer) - 4608))] : 0.000000e+00f);
            }
          }
        }
      }
      placeholder_shared[((((int)threadIdx.x) * 3))] = placeholder1[((((((((((int)threadIdx.x) >> 4) * 2359296) + (rh_outer_outer * 786432)) + ((((((int)threadIdx.x) & 15) * 3) >> 4) * 262144)) + (rc_outer_outer * 512)) + ((((int)blockIdx.x) & 31) * 16)) + ((((int)threadIdx.x) * 3) & 15)))];
      placeholder_shared[(((((int)threadIdx.x) * 3) + 1))] = placeholder1[((((((((((((int)threadIdx.x) * 3) + 1) / 48) * 2359296) + (rh_outer_outer * 786432)) + (((((((int)threadIdx.x) * 3) + 1) % 48) >> 4) * 262144)) + (rc_outer_outer * 512)) + ((((int)blockIdx.x) & 31) * 16)) + (((((int)threadIdx.x) * 3) + 1) & 15)))];
      placeholder_shared[(((((int)threadIdx.x) * 3) + 2))] = placeholder1[((((((((((((int)threadIdx.x) * 3) + 2) / 48) * 2359296) + (rh_outer_outer * 786432)) + (((((((int)threadIdx.x) * 3) + 2) % 48) >> 4) * 262144)) + (rc_outer_outer * 512)) + ((((int)blockIdx.x) & 31) * 16)) + (((((int)threadIdx.x) * 3) + 2) & 15)))];
      if (((int)threadIdx.x) < 20) {
        placeholder_shared[(((((int)threadIdx.x) * 3) + 84))] = placeholder1[((((((((((((int)threadIdx.x) * 3) + 84) / 48) * 2359296) + (rh_outer_outer * 786432)) + (((((((int)threadIdx.x) * 3) + 36) % 48) >> 4) * 262144)) + (rc_outer_outer * 512)) + ((((int)blockIdx.x) & 31) * 16)) + (((((int)threadIdx.x) * 3) + 4) & 15)))];
      }
      if (((int)threadIdx.x) < 20) {
        placeholder_shared[(((((int)threadIdx.x) * 3) + 85))] = placeholder1[((((((((((((int)threadIdx.x) * 3) + 85) / 48) * 2359296) + (rh_outer_outer * 786432)) + (((((((int)threadIdx.x) * 3) + 37) % 48) >> 4) * 262144)) + (rc_outer_outer * 512)) + ((((int)blockIdx.x) & 31) * 16)) + (((((int)threadIdx.x) * 3) + 5) & 15)))];
      }
      if (((int)threadIdx.x) < 20) {
        placeholder_shared[(((((int)threadIdx.x) * 3) + 86))] = placeholder1[((((((((((((int)threadIdx.x) * 3) + 86) / 48) * 2359296) + (rh_outer_outer * 786432)) + (((((((int)threadIdx.x) * 3) + 38) % 48) >> 4) * 262144)) + (rc_outer_outer * 512)) + ((((int)blockIdx.x) & 31) * 16)) + (((((int)threadIdx.x) * 3) + 6) & 15)))];
      }
      __syncthreads();
      for (int rd_inner = 0; rd_inner < 3; ++rd_inner) {
        for (int rw_inner = 0; rw_inner < 3; ++rw_inner) {
          Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner))] * placeholder_shared[((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)))]));
          Conv3dOutput[(8)] = (Conv3dOutput[(8)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 8))]));
          Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 1))]));
          Conv3dOutput[(9)] = (Conv3dOutput[(9)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 9))]));
          Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 2))]));
          Conv3dOutput[(10)] = (Conv3dOutput[(10)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 10))]));
          Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 3))]));
          Conv3dOutput[(11)] = (Conv3dOutput[(11)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 11))]));
          Conv3dOutput[(4)] = (Conv3dOutput[(4)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner) + 27))] * placeholder_shared[((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)))]));
          Conv3dOutput[(12)] = (Conv3dOutput[(12)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner) + 27))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 8))]));
          Conv3dOutput[(5)] = (Conv3dOutput[(5)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner) + 27))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 1))]));
          Conv3dOutput[(13)] = (Conv3dOutput[(13)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner) + 27))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 9))]));
          Conv3dOutput[(6)] = (Conv3dOutput[(6)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner) + 27))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 2))]));
          Conv3dOutput[(14)] = (Conv3dOutput[(14)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner) + 27))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 10))]));
          Conv3dOutput[(7)] = (Conv3dOutput[(7)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner) + 27))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 3))]));
          Conv3dOutput[(15)] = (Conv3dOutput[(15)] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 14) * 54) + (((((int)threadIdx.x) % 14) >> 1) * 3)) + (rd_inner * 3)) + rw_inner) + 27))] * placeholder_shared[(((((rd_inner * 48) + (rw_inner * 16)) + ((((int)threadIdx.x) & 1) * 4)) + 11))]));
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax4_inner = 0; ax4_inner < 4; ++ax4_inner) {
      T_relu[(((((((((((int)threadIdx.x) / 14) * 100352) + (ax0_inner * 50176)) + ((((int)blockIdx.x) / 224) * 25088)) + (((((int)threadIdx.x) % 14) >> 1) * 3584)) + ((((int)blockIdx.x) % 224) * 16)) + ((((int)threadIdx.x) & 1) * 4)) + ax4_inner))] = max((((Conv3dOutput[(((ax0_inner * 4) + ax4_inner))] * placeholder2[(((((((int)blockIdx.x) & 31) * 16) + ((((int)threadIdx.x) & 1) * 4)) + ax4_inner))]) + placeholder3[(((((((int)blockIdx.x) & 31) * 16) + ((((int)threadIdx.x) & 1) * 4)) + ax4_inner))]) + placeholder4[(((((((((((int)threadIdx.x) / 14) * 100352) + (ax0_inner * 50176)) + ((((int)blockIdx.x) / 224) * 25088)) + (((((int)threadIdx.x) % 14) >> 1) * 3584)) + ((((int)blockIdx.x) % 224) * 16)) + ((((int)threadIdx.x) & 1) * 4)) + ax4_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)threadIdx.x) / 14) * 100352) + (ax0_inner * 50176)) + ((((int)blockIdx.x) / 224) * 25088)) + (((((int)threadIdx.x) % 14) >> 1) * 3584)) + ((((int)blockIdx.x) % 224) * 16)) + ((((int)threadIdx.x) & 1) * 4)) + ax4_inner) + 8))] = max((((Conv3dOutput[((((ax0_inner * 4) + ax4_inner) + 8))] * placeholder2[((((((((int)blockIdx.x) & 31) * 16) + ((((int)threadIdx.x) & 1) * 4)) + ax4_inner) + 8))]) + placeholder3[((((((((int)blockIdx.x) & 31) * 16) + ((((int)threadIdx.x) & 1) * 4)) + ax4_inner) + 8))]) + placeholder4[((((((((((((int)threadIdx.x) / 14) * 100352) + (ax0_inner * 50176)) + ((((int)blockIdx.x) / 224) * 25088)) + (((((int)threadIdx.x) % 14) >> 1) * 3584)) + ((((int)blockIdx.x) % 224) * 16)) + ((((int)threadIdx.x) & 1) * 4)) + ax4_inner) + 8))]), 0.000000e+00f);
    }
  }
}


