
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
  float Conv3dOutput[6912];
  __shared__ float PaddedInput_shared[340992];
  __shared__ float placeholder_shared[147456];
  for (int dd_outer_inner_init = 0; dd_outer_inner_init < 6; ++dd_outer_inner_init) {
    for (int hh_outer_inner_init = 0; hh_outer_inner_init < 2; ++hh_outer_inner_init) {
      for (int ww_outer_inner_init = 0; ww_outer_inner_init < 2; ++ww_outer_inner_init) {
        for (int cc_outer_inner_init = 0; cc_outer_inner_init < 16; ++cc_outer_inner_init) {
          for (int hh_inner_init = 0; hh_inner_init < 3; ++hh_inner_init) {
            Conv3dOutput[((((((dd_outer_inner_init * 192) + (hh_outer_inner_init * 96)) + (hh_inner_init * 32)) + (ww_outer_inner_init * 16)) + cc_outer_inner_init))] = 0.000000e+00f;
            Conv3dOutput[(((((((dd_outer_inner_init * 192) + (hh_outer_inner_init * 96)) + (hh_inner_init * 32)) + (ww_outer_inner_init * 16)) + cc_outer_inner_init) + 1152))] = 0.000000e+00f;
            Conv3dOutput[(((((((dd_outer_inner_init * 192) + (hh_outer_inner_init * 96)) + (hh_inner_init * 32)) + (ww_outer_inner_init * 16)) + cc_outer_inner_init) + 2304))] = 0.000000e+00f;
            Conv3dOutput[(((((((dd_outer_inner_init * 192) + (hh_outer_inner_init * 96)) + (hh_inner_init * 32)) + (ww_outer_inner_init * 16)) + cc_outer_inner_init) + 3456))] = 0.000000e+00f;
            Conv3dOutput[(((((((dd_outer_inner_init * 192) + (hh_outer_inner_init * 96)) + (hh_inner_init * 32)) + (ww_outer_inner_init * 16)) + cc_outer_inner_init) + 4608))] = 0.000000e+00f;
            Conv3dOutput[(((((((dd_outer_inner_init * 192) + (hh_outer_inner_init * 96)) + (hh_inner_init * 32)) + (ww_outer_inner_init * 16)) + cc_outer_inner_init) + 5760))] = 0.000000e+00f;
          }
        }
      }
    }
  }
  for (int rh_outer_outer = 0; rh_outer_outer < 3; ++rh_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer < 10656; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + ((int)threadIdx.x)))] = (((((((4608 <= ((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + ((int)threadIdx.x))) && (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + ((int)threadIdx.x)) < 336384)) && (1 <= (((((int)blockIdx.x) * 6) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + ((int)threadIdx.x)) % 4608) / 768)) + rh_outer_outer))) && ((((((int)blockIdx.x) * 6) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + ((int)threadIdx.x)) % 4608) / 768)) + rh_outer_outer) < 37)) && (128 <= (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + ((int)threadIdx.x)) % 768))) && ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + ((int)threadIdx.x)) % 768) < 640)) ? placeholder[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + ((int)threadIdx.x)) / 4608) * 18432) + (((int)blockIdx.x) * 3072)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + ((int)threadIdx.x)) % 4608) / 768) * 512)) + (rh_outer_outer * 512)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + ((int)threadIdx.x)) % 768)) - 19072))] : 0.000000e+00f);
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 < 4608; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 * 32) + ((int)threadIdx.x)))] = placeholder1[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 * 32) + ((int)threadIdx.x)) / 49152) * 147456) + (rh_outer_outer * 49152)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 * 32) + ((int)threadIdx.x)) % 49152)))];
    }
    __syncthreads();
    for (int rd_outer_inner = 0; rd_outer_inner < 3; ++rd_outer_inner) {
      for (int rc_outer_inner = 0; rc_outer_inner < 16; ++rc_outer_inner) {
        for (int dd_outer_inner = 0; dd_outer_inner < 6; ++dd_outer_inner) {
          for (int hh_outer_inner = 0; hh_outer_inner < 2; ++hh_outer_inner) {
            for (int ww_outer_inner = 0; ww_outer_inner < 2; ++ww_outer_inner) {
              for (int cc_outer_inner = 0; cc_outer_inner < 16; ++cc_outer_inner) {
                for (int rw_inner = 0; rw_inner < 3; ++rw_inner) {
                  for (int rc_inner = 0; rc_inner < 8; ++rc_inner) {
                    for (int hh_inner = 0; hh_inner < 3; ++hh_inner) {
                      Conv3dOutput[((((((dd_outer_inner * 192) + (hh_outer_inner * 96)) + (hh_inner * 32)) + (ww_outer_inner * 16)) + cc_outer_inner))] = (Conv3dOutput[((((((dd_outer_inner * 192) + (hh_outer_inner * 96)) + (hh_inner * 32)) + (ww_outer_inner * 16)) + cc_outer_inner))] + (PaddedInput_shared[(((((((((((((int)threadIdx.x) >> 3) * 27648) + (dd_outer_inner * 4608)) + (rd_outer_inner * 4608)) + (hh_outer_inner * 2304)) + (hh_inner * 768)) + (ww_outer_inner * 128)) + (rw_inner * 128)) + (rc_outer_inner * 8)) + rc_inner))] * placeholder_shared[(((((((rd_outer_inner * 49152) + (rw_inner * 16384)) + (rc_outer_inner * 1024)) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + cc_outer_inner))]));
                      Conv3dOutput[(((((((dd_outer_inner * 192) + (hh_outer_inner * 96)) + (hh_inner * 32)) + (ww_outer_inner * 16)) + cc_outer_inner) + 1152))] = (Conv3dOutput[(((((((dd_outer_inner * 192) + (hh_outer_inner * 96)) + (hh_inner * 32)) + (ww_outer_inner * 16)) + cc_outer_inner) + 1152))] + (PaddedInput_shared[((((((((((((((int)threadIdx.x) >> 3) * 27648) + (dd_outer_inner * 4608)) + (rd_outer_inner * 4608)) + (hh_outer_inner * 2304)) + (hh_inner * 768)) + (ww_outer_inner * 128)) + (rw_inner * 128)) + (rc_outer_inner * 8)) + rc_inner) + 256))] * placeholder_shared[(((((((rd_outer_inner * 49152) + (rw_inner * 16384)) + (rc_outer_inner * 1024)) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + cc_outer_inner))]));
                      Conv3dOutput[(((((((dd_outer_inner * 192) + (hh_outer_inner * 96)) + (hh_inner * 32)) + (ww_outer_inner * 16)) + cc_outer_inner) + 2304))] = (Conv3dOutput[(((((((dd_outer_inner * 192) + (hh_outer_inner * 96)) + (hh_inner * 32)) + (ww_outer_inner * 16)) + cc_outer_inner) + 2304))] + (PaddedInput_shared[((((((((((((((int)threadIdx.x) >> 3) * 27648) + (dd_outer_inner * 4608)) + (rd_outer_inner * 4608)) + (hh_outer_inner * 2304)) + (hh_inner * 768)) + (ww_outer_inner * 128)) + (rw_inner * 128)) + (rc_outer_inner * 8)) + rc_inner) + 110592))] * placeholder_shared[(((((((rd_outer_inner * 49152) + (rw_inner * 16384)) + (rc_outer_inner * 1024)) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + cc_outer_inner))]));
                      Conv3dOutput[(((((((dd_outer_inner * 192) + (hh_outer_inner * 96)) + (hh_inner * 32)) + (ww_outer_inner * 16)) + cc_outer_inner) + 3456))] = (Conv3dOutput[(((((((dd_outer_inner * 192) + (hh_outer_inner * 96)) + (hh_inner * 32)) + (ww_outer_inner * 16)) + cc_outer_inner) + 3456))] + (PaddedInput_shared[((((((((((((((int)threadIdx.x) >> 3) * 27648) + (dd_outer_inner * 4608)) + (rd_outer_inner * 4608)) + (hh_outer_inner * 2304)) + (hh_inner * 768)) + (ww_outer_inner * 128)) + (rw_inner * 128)) + (rc_outer_inner * 8)) + rc_inner) + 110848))] * placeholder_shared[(((((((rd_outer_inner * 49152) + (rw_inner * 16384)) + (rc_outer_inner * 1024)) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + cc_outer_inner))]));
                      Conv3dOutput[(((((((dd_outer_inner * 192) + (hh_outer_inner * 96)) + (hh_inner * 32)) + (ww_outer_inner * 16)) + cc_outer_inner) + 4608))] = (Conv3dOutput[(((((((dd_outer_inner * 192) + (hh_outer_inner * 96)) + (hh_inner * 32)) + (ww_outer_inner * 16)) + cc_outer_inner) + 4608))] + (PaddedInput_shared[((((((((((((((int)threadIdx.x) >> 3) * 27648) + (dd_outer_inner * 4608)) + (rd_outer_inner * 4608)) + (hh_outer_inner * 2304)) + (hh_inner * 768)) + (ww_outer_inner * 128)) + (rw_inner * 128)) + (rc_outer_inner * 8)) + rc_inner) + 221184))] * placeholder_shared[(((((((rd_outer_inner * 49152) + (rw_inner * 16384)) + (rc_outer_inner * 1024)) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + cc_outer_inner))]));
                      Conv3dOutput[(((((((dd_outer_inner * 192) + (hh_outer_inner * 96)) + (hh_inner * 32)) + (ww_outer_inner * 16)) + cc_outer_inner) + 5760))] = (Conv3dOutput[(((((((dd_outer_inner * 192) + (hh_outer_inner * 96)) + (hh_inner * 32)) + (ww_outer_inner * 16)) + cc_outer_inner) + 5760))] + (PaddedInput_shared[((((((((((((((int)threadIdx.x) >> 3) * 27648) + (dd_outer_inner * 4608)) + (rd_outer_inner * 4608)) + (hh_outer_inner * 2304)) + (hh_inner * 768)) + (ww_outer_inner * 128)) + (rw_inner * 128)) + (rc_outer_inner * 8)) + rc_inner) + 221440))] * placeholder_shared[(((((((rd_outer_inner * 49152) + (rw_inner * 16384)) + (rc_outer_inner * 1024)) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + cc_outer_inner))]));
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 6; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 6; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        for (int ax4_inner = 0; ax4_inner < 16; ++ax4_inner) {
          T_relu[(((((((((((int)threadIdx.x) >> 3) * 110592) + (ax1_inner * 18432)) + (((int)blockIdx.x) * 3072)) + (ax2_inner * 512)) + (ax3_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + ax4_inner))] = max(((Conv3dOutput[(((((ax1_inner * 192) + (ax2_inner * 32)) + (ax3_inner * 16)) + ax4_inner))] * placeholder2[((((((int)threadIdx.x) & 7) * 16) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 7) * 16) + ax4_inner))]), 0.000000e+00f);
          T_relu[((((((((((((int)threadIdx.x) >> 3) * 110592) + (ax1_inner * 18432)) + (((int)blockIdx.x) * 3072)) + (ax2_inner * 512)) + (ax3_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + ax4_inner) + 256))] = max(((Conv3dOutput[((((((ax1_inner * 192) + (ax2_inner * 32)) + (ax3_inner * 16)) + ax4_inner) + 1152))] * placeholder2[((((((int)threadIdx.x) & 7) * 16) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 7) * 16) + ax4_inner))]), 0.000000e+00f);
          T_relu[((((((((((((int)threadIdx.x) >> 3) * 110592) + (ax1_inner * 18432)) + (((int)blockIdx.x) * 3072)) + (ax2_inner * 512)) + (ax3_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + ax4_inner) + 442368))] = max(((Conv3dOutput[((((((ax1_inner * 192) + (ax2_inner * 32)) + (ax3_inner * 16)) + ax4_inner) + 2304))] * placeholder2[((((((int)threadIdx.x) & 7) * 16) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 7) * 16) + ax4_inner))]), 0.000000e+00f);
          T_relu[((((((((((((int)threadIdx.x) >> 3) * 110592) + (ax1_inner * 18432)) + (((int)blockIdx.x) * 3072)) + (ax2_inner * 512)) + (ax3_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + ax4_inner) + 442624))] = max(((Conv3dOutput[((((((ax1_inner * 192) + (ax2_inner * 32)) + (ax3_inner * 16)) + ax4_inner) + 3456))] * placeholder2[((((((int)threadIdx.x) & 7) * 16) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 7) * 16) + ax4_inner))]), 0.000000e+00f);
          T_relu[((((((((((((int)threadIdx.x) >> 3) * 110592) + (ax1_inner * 18432)) + (((int)blockIdx.x) * 3072)) + (ax2_inner * 512)) + (ax3_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + ax4_inner) + 884736))] = max(((Conv3dOutput[((((((ax1_inner * 192) + (ax2_inner * 32)) + (ax3_inner * 16)) + ax4_inner) + 4608))] * placeholder2[((((((int)threadIdx.x) & 7) * 16) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 7) * 16) + ax4_inner))]), 0.000000e+00f);
          T_relu[((((((((((((int)threadIdx.x) >> 3) * 110592) + (ax1_inner * 18432)) + (((int)blockIdx.x) * 3072)) + (ax2_inner * 512)) + (ax3_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + ax4_inner) + 884992))] = max(((Conv3dOutput[((((((ax1_inner * 192) + (ax2_inner * 32)) + (ax3_inner * 16)) + ax4_inner) + 5760))] * placeholder2[((((((int)threadIdx.x) & 7) * 16) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 7) * 16) + ax4_inner))]), 0.000000e+00f);
        }
      }
    }
  }
}


