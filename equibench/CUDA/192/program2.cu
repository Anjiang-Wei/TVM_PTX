
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
  float Conv3dOutput[28];
  __shared__ float PaddedInput_shared[5184];
  __shared__ float placeholder_shared[1008];
  for (int dd_outer_inner_init = 0; dd_outer_inner_init < 7; ++dd_outer_inner_init) {
    for (int hh_outer_inner_init = 0; hh_outer_inner_init < 2; ++hh_outer_inner_init) {
      for (int dd_inner_init = 0; dd_inner_init < 2; ++dd_inner_init) {
        Conv3dOutput[((((dd_outer_inner_init * 4) + (dd_inner_init * 2)) + hh_outer_inner_init))] = 0.000000e+00f;
      }
    }
  }
  for (int rw_outer_outer = 0; rw_outer_outer < 7; ++rw_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer < 41; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)) < 5184) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)))] = (((((((1 <= (((((int)blockIdx.x) / 448) * 14) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)) % 1296) / 81))) && ((((((int)blockIdx.x) / 448) * 14) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)) % 1296) / 81)) < 113)) && (3 <= ((((((int)blockIdx.x) % 448) >> 4) * 4) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)) % 81) / 9)))) && (((((((int)blockIdx.x) % 448) >> 4) * 4) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)) % 81) / 9)) < 115)) && (3 <= (((((((int)blockIdx.x) & 15) >> 2) * 4) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)) % 9) / 3)) + rw_outer_outer))) && ((((((((int)blockIdx.x) & 15) >> 2) * 4) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)) % 9) / 3)) + rw_outer_outer) < 19)) ? placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)) / 1296) * 602112) + ((((int)blockIdx.x) / 448) * 75264)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)) % 1296) / 81) * 5376)) + (((((int)blockIdx.x) % 448) >> 4) * 192)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)) % 81) / 9) * 48)) + (((((int)blockIdx.x) & 15) >> 2) * 12)) + (rw_outer_outer * 3)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 128) + ((int)threadIdx.x)) % 9)) - 5529))] : 0.000000e+00f);
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 < 8; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 * 8) + (((int)threadIdx.x) >> 4)) < 63) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 * 128) + ((int)threadIdx.x)) < 1008) {
          placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 * 128) + ((int)threadIdx.x)))] = placeholder1[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 * 8) + (((int)threadIdx.x) >> 4)) / 3) * 1344) + (rw_outer_outer * 192)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 * 8) + (((int)threadIdx.x) >> 4)) % 3) * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((int)threadIdx.x) & 15)))];
        }
      }
    }
    __syncthreads();
    for (int rd_outer_inner = 0; rd_outer_inner < 3; ++rd_outer_inner) {
      for (int rh_outer_inner = 0; rh_outer_inner < 7; ++rh_outer_inner) {
        for (int rc_outer_inner = 0; rc_outer_inner < 3; ++rc_outer_inner) {
          for (int dd_outer_inner = 0; dd_outer_inner < 7; ++dd_outer_inner) {
            for (int hh_outer_inner = 0; hh_outer_inner < 2; ++hh_outer_inner) {
              for (int dd_inner = 0; dd_inner < 2; ++dd_inner) {
                Conv3dOutput[((((dd_outer_inner * 4) + (dd_inner * 2)) + hh_outer_inner))] = (Conv3dOutput[((((dd_outer_inner * 4) + (dd_inner * 2)) + hh_outer_inner))] + (PaddedInput_shared[((((((((((((int)threadIdx.x) >> 5) * 1296) + (dd_outer_inner * 162)) + (dd_inner * 81)) + (rd_outer_inner * 81)) + (hh_outer_inner * 18)) + (rh_outer_inner * 9)) + (((((int)threadIdx.x) & 31) >> 4) * 6)) + rc_outer_inner))] * placeholder_shared[(((((rd_outer_inner * 336) + (rh_outer_inner * 48)) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 15)))]));
              }
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 14; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      T_relu[(((((((((((((int)threadIdx.x) >> 5) * 3211264) + ((((int)blockIdx.x) / 448) * 401408)) + (ax1_inner * 28672)) + (((((int)blockIdx.x) % 448) >> 4) * 1024)) + (ax2_inner * 512)) + (((((int)blockIdx.x) & 15) >> 2) * 128)) + (((((int)threadIdx.x) & 31) >> 4) * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((int)threadIdx.x) & 15)))] = max(((Conv3dOutput[(((ax1_inner * 2) + ax2_inner))] * placeholder2[((((((int)blockIdx.x) & 3) * 16) + (((int)threadIdx.x) & 15)))]) + placeholder3[((((((int)blockIdx.x) & 3) * 16) + (((int)threadIdx.x) & 15)))]), 0.000000e+00f);
    }
  }
}


