
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ Conv2dOutput) {
  float Conv2dOutput_local[64];
  __shared__ float PaddedInput_shared[196];
  __shared__ float placeholder_shared[256];
  for (int ff_c_outer_inner_init = 0; ff_c_outer_inner_init < 2; ++ff_c_outer_inner_init) {
    for (int ff_c_inner_init = 0; ff_c_inner_init < 32; ++ff_c_inner_init) {
      Conv2dOutput_local[(((ff_c_outer_inner_init * 32) + ff_c_inner_init))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 256; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 4; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 49) + ((int)threadIdx.x)))] = placeholder[((((((((((int)blockIdx.x) >> 4) * 100352) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 49) + ((int)threadIdx.x)) / 28) * 14336)) + (((((int)blockIdx.x) & 15) >> 3) * 7168)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 49) + ((int)threadIdx.x)) % 28) >> 2) * 1024)) + (rc_outer_outer * 4)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 49) + ((int)threadIdx.x)) & 3)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 8; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
      if (((((int)threadIdx.x) * 8) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 256) {
        if (((int)threadIdx.x) < 32) {
          placeholder_shared[(((((int)threadIdx.x) * 8) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = placeholder1[(((((rc_outer_outer * 2048) + ((((((int)threadIdx.x) * 8) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 8) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) & 63)))];
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int ff_c_outer_inner = 0; ff_c_outer_inner < 2; ++ff_c_outer_inner) {
        for (int ff_c_inner = 0; ff_c_inner < 32; ++ff_c_inner) {
          Conv2dOutput_local[(((ff_c_outer_inner * 32) + ff_c_inner))] = (Conv2dOutput_local[(((ff_c_outer_inner * 32) + ff_c_inner))] + (PaddedInput_shared[(((((int)threadIdx.x) * 4) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + (ff_c_outer_inner * 32)) + ff_c_inner))]));
        }
      }
    }
  }
  for (int ff_inner = 0; ff_inner < 64; ++ff_inner) {
    Conv2dOutput[((((((((((int)blockIdx.x) >> 4) * 50176) + ((((int)threadIdx.x) / 7) * 7168)) + (((((int)blockIdx.x) & 15) >> 3) * 3584)) + ((((int)threadIdx.x) % 7) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ff_inner))] = Conv2dOutput_local[(ff_inner)];
  }
}


