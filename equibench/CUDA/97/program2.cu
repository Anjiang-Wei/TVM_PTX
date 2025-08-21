
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
  float Conv3dOutput[192];
  __shared__ float PaddedInput_shared[576];
  __shared__ float placeholder_shared[256];
  for (int dd_outer_inner_init = 0; dd_outer_inner_init < 2; ++dd_outer_inner_init) {
    for (int hh_outer_inner_init = 0; hh_outer_inner_init < 6; ++hh_outer_inner_init) {
      for (int cc_outer_inner_init = 0; cc_outer_inner_init < 2; ++cc_outer_inner_init) {
        for (int cc_inner_init = 0; cc_inner_init < 4; ++cc_inner_init) {
          Conv3dOutput[(((((dd_outer_inner_init * 48) + (hh_outer_inner_init * 8)) + (cc_outer_inner_init * 4)) + cc_inner_init))] = 0.000000e+00f;
          Conv3dOutput[((((((dd_outer_inner_init * 48) + (hh_outer_inner_init * 8)) + (cc_outer_inner_init * 4)) + cc_inner_init) + 96))] = 0.000000e+00f;
        }
      }
    }
  }
  for (int rd_outer_outer = 0; rd_outer_outer < 3; ++rd_outer_outer) {
    for (int rh_outer_outer = 0; rh_outer_outer < 3; ++rh_outer_outer) {
      for (int rw_outer_outer = 0; rw_outer_outer < 3; ++rw_outer_outer) {
        for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
          __syncthreads();
          for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) {
            if (((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s >> 1)) < 288) {
              if (((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) < 576) {
                if (((int)threadIdx.x) < 144) {
                  PaddedInput_shared[(((((int)threadIdx.x) * 4) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s))] = (((((((1 <= ((((((int)blockIdx.x) / 6) * 12) + (((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s >> 1)) / 24)) + rd_outer_outer)) && (((((((int)blockIdx.x) / 6) * 12) + (((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s >> 1)) / 24)) + rd_outer_outer) < 73)) && (1 <= ((((((int)blockIdx.x) % 6) * 6) + ((((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s >> 1)) % 24) >> 2)) + rh_outer_outer))) && (((((((int)blockIdx.x) % 6) * 6) + ((((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s >> 1)) % 24) >> 2)) + rh_outer_outer) < 37)) && (1 <= (rw_outer_outer + (((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s >> 1)) & 3)))) && ((rw_outer_outer + (((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s >> 1)) & 3)) < 5)) ? placeholder[((((((((((((((int)blockIdx.x) / 6) * 221184) + ((((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s >> 1)) / 24) * 18432)) + (rd_outer_outer * 18432)) + ((((int)blockIdx.x) % 6) * 3072)) + (rh_outer_outer * 512)) + (rw_outer_outer * 128)) + ((((((int)threadIdx.x) * 2) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s >> 1)) % 24) * 128)) + (rc_outer_outer * 2)) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s & 1)) - 19072))] : 0.000000e+00f);
                }
              }
            }
          }
          for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer < 2; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer) {
            if (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 192) + ((int)threadIdx.x)) < 256) {
              placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 192) + ((int)threadIdx.x)))] = placeholder1[(((((((rd_outer_outer * 147456) + (rh_outer_outer * 49152)) + (rw_outer_outer * 16384)) + (rc_outer_outer * 256)) + (ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 192)) + ((int)threadIdx.x)))];
            }
          }
          __syncthreads();
          for (int dd_outer_inner = 0; dd_outer_inner < 2; ++dd_outer_inner) {
            for (int hh_outer_inner = 0; hh_outer_inner < 6; ++hh_outer_inner) {
              for (int cc_outer_inner = 0; cc_outer_inner < 2; ++cc_outer_inner) {
                for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
                  for (int cc_inner = 0; cc_inner < 4; ++cc_inner) {
                    Conv3dOutput[(((((dd_outer_inner * 48) + (hh_outer_inner * 8)) + (cc_outer_inner * 4)) + cc_inner))] = (Conv3dOutput[(((((dd_outer_inner * 48) + (hh_outer_inner * 8)) + (cc_outer_inner * 4)) + cc_inner))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 96) + (dd_outer_inner * 48)) + (hh_outer_inner * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 2)) + rc_inner))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + (cc_outer_inner * 4)) + cc_inner))]));
                    Conv3dOutput[((((((dd_outer_inner * 48) + (hh_outer_inner * 8)) + (cc_outer_inner * 4)) + cc_inner) + 96))] = (Conv3dOutput[((((((dd_outer_inner * 48) + (hh_outer_inner * 8)) + (cc_outer_inner * 4)) + cc_inner) + 96))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 96) + (dd_outer_inner * 48)) + (hh_outer_inner * 8)) + (((((int)threadIdx.x) & 31) >> 4) * 2)) + rc_inner) + 4))] * placeholder_shared[(((((rc_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + (cc_outer_inner * 4)) + cc_inner))]));
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 6; ++ax2_inner) {
      for (int ax4_inner = 0; ax4_inner < 8; ++ax4_inner) {
        T_relu[(((((((((((int)blockIdx.x) / 6) * 221184) + ((((int)threadIdx.x) >> 5) * 36864)) + (ax1_inner * 18432)) + ((((int)blockIdx.x) % 6) * 3072)) + (ax2_inner * 512)) + ((((int)threadIdx.x) & 31) * 8)) + ax4_inner))] = max(((Conv3dOutput[((((ax1_inner * 48) + (ax2_inner * 8)) + ax4_inner))] * placeholder2[((((((int)threadIdx.x) & 15) * 8) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 15) * 8) + ax4_inner))]), 0.000000e+00f);
        T_relu[((((((((((((int)blockIdx.x) / 6) * 221184) + ((((int)threadIdx.x) >> 5) * 36864)) + (ax1_inner * 18432)) + ((((int)blockIdx.x) % 6) * 3072)) + (ax2_inner * 512)) + ((((int)threadIdx.x) & 31) * 8)) + ax4_inner) + 256))] = max(((Conv3dOutput[(((((ax1_inner * 48) + (ax2_inner * 8)) + ax4_inner) + 96))] * placeholder2[((((((int)threadIdx.x) & 15) * 8) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 15) * 8) + ax4_inner))]), 0.000000e+00f);
      }
    }
  }
}


