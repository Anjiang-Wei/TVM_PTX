
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2) {
  float Conv2dOutput[8];
  __shared__ float PaddedInput_shared[2432];
  __shared__ float placeholder_shared[9728];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 19; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + ((int)threadIdx.x)))] = placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + ((int)threadIdx.x)) / 608) * 119168) + ((((int)blockIdx.x) / 14) * 17024)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + ((int)threadIdx.x)) % 608) / 304) * 8512)) + (((((int)blockIdx.x) % 14) >> 1) * 1216)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + ((int)threadIdx.x)) % 304) / 152) * 608)) + (rc_outer_outer * 152)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + ((int)threadIdx.x)) % 152)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 10; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 1024) + (((int)threadIdx.x) * 8)) < 9728) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128) + ((int)threadIdx.x)) < 1216) {
          placeholder_shared[((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((int)threadIdx.x) >> 3)) % 152) * 64) + ((((int)threadIdx.x) & 7) * 8)))] = placeholder1[(((((rc_outer_outer * 19456) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((int)threadIdx.x) >> 3)) % 152) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 7) * 8)))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 1024) + (((int)threadIdx.x) * 8)) < 9727) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128) + ((int)threadIdx.x)) < 1216) {
          placeholder_shared[((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 1) >> 6)) % 152) * 64) + (((((int)threadIdx.x) * 8) + 1) & 63)))] = placeholder1[(((((rc_outer_outer * 19456) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 1) >> 6)) % 152) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 8) + 1) & 63)))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 1024) + (((int)threadIdx.x) * 8)) < 9726) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128) + ((int)threadIdx.x)) < 1216) {
          placeholder_shared[((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 2) >> 6)) % 152) * 64) + (((((int)threadIdx.x) * 8) + 2) & 63)))] = placeholder1[(((((rc_outer_outer * 19456) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 2) >> 6)) % 152) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 8) + 2) & 63)))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 1024) + (((int)threadIdx.x) * 8)) < 9725) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128) + ((int)threadIdx.x)) < 1216) {
          placeholder_shared[((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 3) >> 6)) % 152) * 64) + (((((int)threadIdx.x) * 8) + 3) & 63)))] = placeholder1[(((((rc_outer_outer * 19456) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 3) >> 6)) % 152) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 8) + 3) & 63)))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 1024) + (((int)threadIdx.x) * 8)) < 9724) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128) + ((int)threadIdx.x)) < 1216) {
          placeholder_shared[((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 4) >> 6)) % 152) * 64) + (((((int)threadIdx.x) * 8) + 4) & 63)))] = placeholder1[(((((rc_outer_outer * 19456) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 4) >> 6)) % 152) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 8) + 4) & 63)))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 1024) + (((int)threadIdx.x) * 8)) < 9723) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128) + ((int)threadIdx.x)) < 1216) {
          placeholder_shared[((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 5) >> 6)) % 152) * 64) + (((((int)threadIdx.x) * 8) + 5) & 63)))] = placeholder1[(((((rc_outer_outer * 19456) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 5) >> 6)) % 152) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 8) + 5) & 63)))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 1024) + (((int)threadIdx.x) * 8)) < 9722) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128) + ((int)threadIdx.x)) < 1216) {
          placeholder_shared[((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 6) >> 6)) % 152) * 64) + (((((int)threadIdx.x) * 8) + 6) & 63)))] = placeholder1[(((((rc_outer_outer * 19456) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 6) >> 6)) % 152) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 8) + 6) & 63)))];
        }
      }
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 1024) + (((int)threadIdx.x) * 8)) < 9721) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128) + ((int)threadIdx.x)) < 1216) {
          placeholder_shared[((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 7) >> 6)) % 152) * 64) + (((((int)threadIdx.x) * 8) + 7) & 63)))] = placeholder1[(((((rc_outer_outer * 19456) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 16) + (((((int)threadIdx.x) * 8) + 7) >> 6)) % 152) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 8) + 7) & 63)))];
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 152; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 608) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 5) * 608) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 608) + rc_outer_inner) + 152))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 608) + rc_outer_inner) + 152))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 608) + rc_outer_inner) + 304))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 608) + rc_outer_inner) + 304))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 608) + rc_outer_inner) + 456))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 608) + rc_outer_inner) + 456))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1))]));
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[((((((((((((int)threadIdx.x) >> 5) * 25088) + ((((int)blockIdx.x) / 14) * 3584)) + (ax1_inner * 1792)) + (((((int)blockIdx.x) % 14) >> 1) * 256)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


