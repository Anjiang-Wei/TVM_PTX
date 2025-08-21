
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
  float Conv3dOutput[256];
  __shared__ float PaddedInput_shared[640];
  __shared__ float placeholder_shared[96];
  for (int hh_outer_inner_init = 0; hh_outer_inner_init < 16; ++hh_outer_inner_init) {
    Conv3dOutput[((hh_outer_inner_init * 8))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 128))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 1))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 129))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 2))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 130))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 3))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 131))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 4))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 132))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 5))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 133))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 6))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 134))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 7))] = 0.000000e+00f;
    Conv3dOutput[(((hh_outer_inner_init * 8) + 135))] = 0.000000e+00f;
  }
  for (int rd_outer_outer = 0; rd_outer_outer < 3; ++rd_outer_outer) {
    for (int rh_outer_outer = 0; rh_outer_outer < 3; ++rh_outer_outer) {
      for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
        __syncthreads();
        for (int ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s < 18; ++ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) {
          if (((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) < 640) {
            if (((int)threadIdx.x) < 36) {
              PaddedInput_shared[(((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s))] = (((((((1 <= ((((((int)blockIdx.x) >> 3) * 4) + (((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) / 160)) + rd_outer_outer)) && (((((((int)blockIdx.x) >> 3) * 4) + (((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) / 160)) + rd_outer_outer) < 129)) && (1 <= (((((((int)blockIdx.x) & 7) >> 1) * 16) + ((((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) % 160) / 10)) + rh_outer_outer))) && ((((((((int)blockIdx.x) & 7) >> 1) * 16) + ((((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) % 160) / 10)) + rh_outer_outer) < 65)) && (1 <= (((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) % 10))) && ((((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) % 10) < 9)) ? placeholder[(((((((((((((int)blockIdx.x) >> 3) * 131072) + ((((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) / 160) * 32768)) + (rd_outer_outer * 32768)) + (((((int)blockIdx.x) & 7) >> 1) * 8192)) + (((((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) % 160) / 10) * 512)) + (rh_outer_outer * 512)) + ((((((int)threadIdx.x) * 18) + ax0_ax1_fused_ax2_fused_ax3_fused_ax4_fused_inner_s) % 10) * 64)) + rc_outer_outer) - 33344))] : 0.000000e+00f);
            }
          }
        }
        placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((((rd_outer_outer * 36864) + (rh_outer_outer * 12288)) + ((((int)threadIdx.x) >> 5) * 4096)) + (rc_outer_outer * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 31)))];
        if (((int)threadIdx.x) < 32) {
          placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[(((((((rd_outer_outer * 36864) + (rh_outer_outer * 12288)) + (rc_outer_outer * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((int)threadIdx.x)) + 8192))];
        }
        __syncthreads();
        for (int rw_outer_inner = 0; rw_outer_inner < 3; ++rw_outer_inner) {
          for (int hh_outer_inner = 0; hh_outer_inner < 16; ++hh_outer_inner) {
            Conv3dOutput[((hh_outer_inner * 8))] = (Conv3dOutput[((hh_outer_inner * 8))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner))] * placeholder_shared[(((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 128))] = (Conv3dOutput[(((hh_outer_inner * 8) + 128))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner))] * placeholder_shared[((((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 1))] = (Conv3dOutput[(((hh_outer_inner * 8) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 1))] * placeholder_shared[(((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 129))] = (Conv3dOutput[(((hh_outer_inner * 8) + 129))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 1))] * placeholder_shared[((((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 2))] = (Conv3dOutput[(((hh_outer_inner * 8) + 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 2))] * placeholder_shared[(((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 130))] = (Conv3dOutput[(((hh_outer_inner * 8) + 130))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 2))] * placeholder_shared[((((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 3))] = (Conv3dOutput[(((hh_outer_inner * 8) + 3))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 3))] * placeholder_shared[(((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 131))] = (Conv3dOutput[(((hh_outer_inner * 8) + 131))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 3))] * placeholder_shared[((((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 4))] = (Conv3dOutput[(((hh_outer_inner * 8) + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 4))] * placeholder_shared[(((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 132))] = (Conv3dOutput[(((hh_outer_inner * 8) + 132))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 4))] * placeholder_shared[((((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 5))] = (Conv3dOutput[(((hh_outer_inner * 8) + 5))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 5))] * placeholder_shared[(((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 133))] = (Conv3dOutput[(((hh_outer_inner * 8) + 133))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 5))] * placeholder_shared[((((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 6))] = (Conv3dOutput[(((hh_outer_inner * 8) + 6))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 6))] * placeholder_shared[(((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 134))] = (Conv3dOutput[(((hh_outer_inner * 8) + 134))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 6))] * placeholder_shared[((((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 7))] = (Conv3dOutput[(((hh_outer_inner * 8) + 7))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 7))] * placeholder_shared[(((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
            Conv3dOutput[(((hh_outer_inner * 8) + 135))] = (Conv3dOutput[(((hh_outer_inner * 8) + 135))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 160) + (hh_outer_inner * 10)) + rw_outer_inner) + 7))] * placeholder_shared[((((rw_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
          }
        }
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 16; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
      T_relu[(((((((((((int)blockIdx.x) >> 3) * 131072) + ((((int)threadIdx.x) >> 4) * 32768)) + (((((int)blockIdx.x) & 7) >> 1) * 8192)) + (ax2_inner * 512)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 15)))] = max((((Conv3dOutput[(((ax2_inner * 8) + ax3_inner))] * placeholder2[((((((int)blockIdx.x) & 1) * 32) + (((int)threadIdx.x) & 15)))]) + placeholder3[((((((int)blockIdx.x) & 1) * 32) + (((int)threadIdx.x) & 15)))]) + placeholder4[(((((((((((int)blockIdx.x) >> 3) * 131072) + ((((int)threadIdx.x) >> 4) * 32768)) + (((((int)blockIdx.x) & 7) >> 1) * 8192)) + (ax2_inner * 512)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 15)))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 3) * 131072) + ((((int)threadIdx.x) >> 4) * 32768)) + (((((int)blockIdx.x) & 7) >> 1) * 8192)) + (ax2_inner * 512)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 15)) + 16))] = max((((Conv3dOutput[((((ax2_inner * 8) + ax3_inner) + 128))] * placeholder2[(((((((int)blockIdx.x) & 1) * 32) + (((int)threadIdx.x) & 15)) + 16))]) + placeholder3[(((((((int)blockIdx.x) & 1) * 32) + (((int)threadIdx.x) & 15)) + 16))]) + placeholder4[((((((((((((int)blockIdx.x) >> 3) * 131072) + ((((int)threadIdx.x) >> 4) * 32768)) + (((((int)blockIdx.x) & 7) >> 1) * 8192)) + (ax2_inner * 512)) + (ax3_inner * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) & 15)) + 16))]), 0.000000e+00f);
    }
  }
}


