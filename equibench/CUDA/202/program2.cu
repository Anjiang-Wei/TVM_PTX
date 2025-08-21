
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
  float Conv3dOutput[4096];
  __shared__ float PaddedInput_shared[3456];
  __shared__ float placeholder_shared[4608];
  for (int cc_outer_inner_init = 0; cc_outer_inner_init < 32; ++cc_outer_inner_init) {
    for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
      for (int dd_inner_init = 0; dd_inner_init < 8; ++dd_inner_init) {
        Conv3dOutput[((((nn_inner_init * 512) + (dd_inner_init * 64)) + cc_outer_inner_init))] = 0.000000e+00f;
        Conv3dOutput[(((((nn_inner_init * 512) + (dd_inner_init * 64)) + cc_outer_inner_init) + 1024))] = 0.000000e+00f;
        Conv3dOutput[(((((nn_inner_init * 512) + (dd_inner_init * 64)) + cc_outer_inner_init) + 2048))] = 0.000000e+00f;
        Conv3dOutput[(((((nn_inner_init * 512) + (dd_inner_init * 64)) + cc_outer_inner_init) + 3072))] = 0.000000e+00f;
        Conv3dOutput[(((((nn_inner_init * 512) + (dd_inner_init * 64)) + cc_outer_inner_init) + 32))] = 0.000000e+00f;
        Conv3dOutput[(((((nn_inner_init * 512) + (dd_inner_init * 64)) + cc_outer_inner_init) + 1056))] = 0.000000e+00f;
        Conv3dOutput[(((((nn_inner_init * 512) + (dd_inner_init * 64)) + cc_outer_inner_init) + 2080))] = 0.000000e+00f;
        Conv3dOutput[(((((nn_inner_init * 512) + (dd_inner_init * 64)) + cc_outer_inner_init) + 3104))] = 0.000000e+00f;
      }
    }
  }
  for (int rh_outer_outer = 0; rh_outer_outer < 3; ++rh_outer_outer) {
    for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
      __syncthreads();
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer < 108; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer) {
        PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 32) + ((int)threadIdx.x)))] = (((((((1 <= (((((int)blockIdx.x) >> 1) * 16) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 1)) % 864) / 48))) && ((((((int)blockIdx.x) >> 1) * 16) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 1)) % 864) / 48)) < 33)) && (1 <= (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 1)) % 48) / 3) + rh_outer_outer))) && ((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 1)) % 48) / 3) + rh_outer_outer) < 17)) && (1 <= ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 1)) % 3) + (((int)blockIdx.x) & 1)))) && (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 1)) % 3) + (((int)blockIdx.x) & 1)) < 3)) ? placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 1)) / 864) * 262144) + ((((int)blockIdx.x) >> 1) * 131072)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 1)) % 864) / 3) * 512)) + (rh_outer_outer * 512)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer * 16) + (((int)threadIdx.x) >> 1)) % 3) * 256)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) - 8960))] : 0.000000e+00f);
      }
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 < 144; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 * 32) + ((int)threadIdx.x)))] = placeholder1[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 * 32) + ((int)threadIdx.x)) / 1536) * 589824) + (rh_outer_outer * 196608)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 * 32) + ((int)threadIdx.x)) % 1536) >> 9) * 65536)) + (rc_outer_outer * 512)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_outer_outer1 * 32) + ((int)threadIdx.x)) & 511)))];
      }
      __syncthreads();
      for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
        for (int cc_outer_inner = 0; cc_outer_inner < 32; ++cc_outer_inner) {
          for (int rd_inner = 0; rd_inner < 3; ++rd_inner) {
            for (int rw_inner = 0; rw_inner < 3; ++rw_inner) {
              for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
                for (int dd_inner = 0; dd_inner < 8; ++dd_inner) {
                  Conv3dOutput[((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner))] = (Conv3dOutput[((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner))] + (PaddedInput_shared[((((((((nn_inner * 1728) + ((((int)threadIdx.x) >> 4) * 768)) + (dd_inner * 96)) + (rd_inner * 96)) + (((((int)threadIdx.x) & 15) >> 3) * 12)) + (rw_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((((rd_inner * 1536) + (rw_inner * 512)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 7) * 32)) + cc_outer_inner))]));
                  Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 1024))] = (Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 1024))] + (PaddedInput_shared[(((((((((nn_inner * 1728) + ((((int)threadIdx.x) >> 4) * 768)) + (dd_inner * 96)) + (rd_inner * 96)) + (((((int)threadIdx.x) & 15) >> 3) * 12)) + (rw_inner * 2)) + rc_outer_inner) + 24))] * placeholder_shared[((((((rd_inner * 1536) + (rw_inner * 512)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 7) * 32)) + cc_outer_inner))]));
                  Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 2048))] = (Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 2048))] + (PaddedInput_shared[(((((((((nn_inner * 1728) + ((((int)threadIdx.x) >> 4) * 768)) + (dd_inner * 96)) + (rd_inner * 96)) + (((((int)threadIdx.x) & 15) >> 3) * 12)) + (rw_inner * 2)) + rc_outer_inner) + 48))] * placeholder_shared[((((((rd_inner * 1536) + (rw_inner * 512)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 7) * 32)) + cc_outer_inner))]));
                  Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 3072))] = (Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 3072))] + (PaddedInput_shared[(((((((((nn_inner * 1728) + ((((int)threadIdx.x) >> 4) * 768)) + (dd_inner * 96)) + (rd_inner * 96)) + (((((int)threadIdx.x) & 15) >> 3) * 12)) + (rw_inner * 2)) + rc_outer_inner) + 72))] * placeholder_shared[((((((rd_inner * 1536) + (rw_inner * 512)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 7) * 32)) + cc_outer_inner))]));
                  Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 32))] = (Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 32))] + (PaddedInput_shared[(((((((((nn_inner * 1728) + ((((int)threadIdx.x) >> 4) * 768)) + (dd_inner * 96)) + (rd_inner * 96)) + (((((int)threadIdx.x) & 15) >> 3) * 12)) + (rw_inner * 2)) + rc_outer_inner) + 6))] * placeholder_shared[((((((rd_inner * 1536) + (rw_inner * 512)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 7) * 32)) + cc_outer_inner))]));
                  Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 1056))] = (Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 1056))] + (PaddedInput_shared[(((((((((nn_inner * 1728) + ((((int)threadIdx.x) >> 4) * 768)) + (dd_inner * 96)) + (rd_inner * 96)) + (((((int)threadIdx.x) & 15) >> 3) * 12)) + (rw_inner * 2)) + rc_outer_inner) + 30))] * placeholder_shared[((((((rd_inner * 1536) + (rw_inner * 512)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 7) * 32)) + cc_outer_inner))]));
                  Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 2080))] = (Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 2080))] + (PaddedInput_shared[(((((((((nn_inner * 1728) + ((((int)threadIdx.x) >> 4) * 768)) + (dd_inner * 96)) + (rd_inner * 96)) + (((((int)threadIdx.x) & 15) >> 3) * 12)) + (rw_inner * 2)) + rc_outer_inner) + 54))] * placeholder_shared[((((((rd_inner * 1536) + (rw_inner * 512)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 7) * 32)) + cc_outer_inner))]));
                  Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 3104))] = (Conv3dOutput[(((((nn_inner * 512) + (dd_inner * 64)) + cc_outer_inner) + 3104))] + (PaddedInput_shared[(((((((((nn_inner * 1728) + ((((int)threadIdx.x) >> 4) * 768)) + (dd_inner * 96)) + (rd_inner * 96)) + (((((int)threadIdx.x) & 15) >> 3) * 12)) + (rw_inner * 2)) + rc_outer_inner) + 78))] * placeholder_shared[((((((rd_inner * 1536) + (rw_inner * 512)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 7) * 32)) + cc_outer_inner))]));
                }
              }
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 8; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
        for (int ax4_inner = 0; ax4_inner < 32; ++ax4_inner) {
          T_relu[((((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 1) * 131072)) + ((((int)threadIdx.x) >> 4) * 65536)) + (ax1_inner * 8192)) + (((((int)threadIdx.x) & 15) >> 3) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 7) * 32)) + ax4_inner))] = max((((Conv3dOutput[(((((ax0_inner * 512) + (ax1_inner * 64)) + (ax2_inner * 32)) + ax4_inner))] * placeholder2[((((((int)threadIdx.x) & 7) * 32) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 7) * 32) + ax4_inner))]) + placeholder4[((((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 1) * 131072)) + ((((int)threadIdx.x) >> 4) * 65536)) + (ax1_inner * 8192)) + (((((int)threadIdx.x) & 15) >> 3) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 7) * 32)) + ax4_inner))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 1) * 131072)) + ((((int)threadIdx.x) >> 4) * 65536)) + (ax1_inner * 8192)) + (((((int)threadIdx.x) & 15) >> 3) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 7) * 32)) + ax4_inner) + 2048))] = max((((Conv3dOutput[((((((ax0_inner * 512) + (ax1_inner * 64)) + (ax2_inner * 32)) + ax4_inner) + 1024))] * placeholder2[((((((int)threadIdx.x) & 7) * 32) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 7) * 32) + ax4_inner))]) + placeholder4[(((((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 1) * 131072)) + ((((int)threadIdx.x) >> 4) * 65536)) + (ax1_inner * 8192)) + (((((int)threadIdx.x) & 15) >> 3) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 7) * 32)) + ax4_inner) + 2048))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 1) * 131072)) + ((((int)threadIdx.x) >> 4) * 65536)) + (ax1_inner * 8192)) + (((((int)threadIdx.x) & 15) >> 3) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 7) * 32)) + ax4_inner) + 4096))] = max((((Conv3dOutput[((((((ax0_inner * 512) + (ax1_inner * 64)) + (ax2_inner * 32)) + ax4_inner) + 2048))] * placeholder2[((((((int)threadIdx.x) & 7) * 32) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 7) * 32) + ax4_inner))]) + placeholder4[(((((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 1) * 131072)) + ((((int)threadIdx.x) >> 4) * 65536)) + (ax1_inner * 8192)) + (((((int)threadIdx.x) & 15) >> 3) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 7) * 32)) + ax4_inner) + 4096))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 1) * 131072)) + ((((int)threadIdx.x) >> 4) * 65536)) + (ax1_inner * 8192)) + (((((int)threadIdx.x) & 15) >> 3) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 7) * 32)) + ax4_inner) + 6144))] = max((((Conv3dOutput[((((((ax0_inner * 512) + (ax1_inner * 64)) + (ax2_inner * 32)) + ax4_inner) + 3072))] * placeholder2[((((((int)threadIdx.x) & 7) * 32) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 7) * 32) + ax4_inner))]) + placeholder4[(((((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 1) * 131072)) + ((((int)threadIdx.x) >> 4) * 65536)) + (ax1_inner * 8192)) + (((((int)threadIdx.x) & 15) >> 3) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 7) * 32)) + ax4_inner) + 6144))]), 0.000000e+00f);
        }
      }
    }
  }
}


