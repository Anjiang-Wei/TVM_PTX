
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2) {
  float Conv2dOutput[16];
  __shared__ float PaddedInput_shared[4608];
  __shared__ float placeholder_shared[65536];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)blockIdx.x) / 14) * 57344) + ((((int)threadIdx.x) / 384) * 14336)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + (((((int)threadIdx.x) % 384) >> 7) * 512)) + (rc_outer_outer * 128)) + (((int)threadIdx.x) & 127)))];
    PaddedInput_shared[((((int)threadIdx.x) + 512))] = placeholder[((((((((((int)blockIdx.x) / 14) * 57344) + (((((int)threadIdx.x) + 512) / 384) * 14336)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + ((((((int)threadIdx.x) >> 7) + 1) % 3) * 512)) + (rc_outer_outer * 128)) + (((int)threadIdx.x) & 127)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1024))] = placeholder[((((((((((((int)threadIdx.x) + 1024) / 1152) * 401408) + ((((int)blockIdx.x) / 14) * 57344)) + (((((((int)threadIdx.x) >> 7) + 8) % 9) / 3) * 14336)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + ((((((int)threadIdx.x) >> 7) + 2) % 3) * 512)) + (rc_outer_outer * 128)) + (((int)threadIdx.x) & 127)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1536))] = placeholder[((((((((((((int)threadIdx.x) + 1536) / 1152) * 401408) + ((((int)blockIdx.x) / 14) * 57344)) + ((((((int)threadIdx.x) >> 7) + 3) / 3) * 14336)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + (((((int)threadIdx.x) % 384) >> 7) * 512)) + (rc_outer_outer * 128)) + (((int)threadIdx.x) & 127)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2048))] = placeholder[((((((((((((int)threadIdx.x) + 2048) / 1152) * 401408) + ((((int)blockIdx.x) / 14) * 57344)) + (((((((int)threadIdx.x) >> 7) + 7) % 9) / 3) * 14336)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + ((((((int)threadIdx.x) >> 7) + 1) % 3) * 512)) + (rc_outer_outer * 128)) + (((int)threadIdx.x) & 127)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2560))] = placeholder[((((((((((((int)threadIdx.x) + 2560) / 1152) * 401408) + ((((int)blockIdx.x) / 14) * 57344)) + ((((((int)threadIdx.x) >> 7) + 2) / 3) * 14336)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + ((((((int)threadIdx.x) >> 7) + 2) % 3) * 512)) + (rc_outer_outer * 128)) + (((int)threadIdx.x) & 127)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3072))] = placeholder[((((((((((((int)threadIdx.x) + 3072) / 1152) * 401408) + ((((int)blockIdx.x) / 14) * 57344)) + (((((((int)threadIdx.x) >> 7) + 6) % 9) / 3) * 14336)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + (((((int)threadIdx.x) % 384) >> 7) * 512)) + (rc_outer_outer * 128)) + (((int)threadIdx.x) & 127)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3584))] = placeholder[((((((((((((int)threadIdx.x) + 3584) / 1152) * 401408) + ((((int)blockIdx.x) / 14) * 57344)) + ((((((int)threadIdx.x) >> 7) + 1) / 3) * 14336)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + ((((((int)threadIdx.x) >> 7) + 1) % 3) * 512)) + (rc_outer_outer * 128)) + (((int)threadIdx.x) & 127)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4096))] = placeholder[((((((((((((int)threadIdx.x) + 4096) / 1152) * 401408) + ((((int)blockIdx.x) / 14) * 57344)) + ((((((int)threadIdx.x) >> 7) + 5) / 3) * 14336)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + ((((((int)threadIdx.x) >> 7) + 2) % 3) * 512)) + (rc_outer_outer * 128)) + (((int)threadIdx.x) & 127)))];
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 128; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 512) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 131072) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 1024)) + ((((int)blockIdx.x) & 1) * 512)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
        for (int rc_inner = 0; rc_inner < 64; ++rc_inner) {
          Conv2dOutput[(xx_outer_inner)] = (Conv2dOutput[(xx_outer_inner)] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 8) * 2304) + (xx_outer_inner * 256)) + (rc_outer_inner * 64)) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 32768) + (rc_inner * 512)) + (((int)threadIdx.x) & 255)))]));
          Conv2dOutput[((xx_outer_inner + 4))] = (Conv2dOutput[((xx_outer_inner + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 8) * 2304) + (xx_outer_inner * 256)) + (rc_outer_inner * 64)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 32768) + (rc_inner * 512)) + (((int)threadIdx.x) & 255)) + 256))]));
          Conv2dOutput[((xx_outer_inner + 8))] = (Conv2dOutput[((xx_outer_inner + 8))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 8) * 2304) + (xx_outer_inner * 256)) + (rc_outer_inner * 64)) + rc_inner) + 768))] * placeholder_shared[((((rc_outer_inner * 32768) + (rc_inner * 512)) + (((int)threadIdx.x) & 255)))]));
          Conv2dOutput[((xx_outer_inner + 12))] = (Conv2dOutput[((xx_outer_inner + 12))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 8) * 2304) + (xx_outer_inner * 256)) + (rc_outer_inner * 64)) + rc_inner) + 768))] * placeholder_shared[(((((rc_outer_inner * 32768) + (rc_inner * 512)) + (((int)threadIdx.x) & 255)) + 256))]));
          Conv2dOutput[((xx_outer_inner + 2))] = (Conv2dOutput[((xx_outer_inner + 2))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 8) * 2304) + (xx_outer_inner * 256)) + (rc_outer_inner * 64)) + rc_inner) + 1152))] * placeholder_shared[((((rc_outer_inner * 32768) + (rc_inner * 512)) + (((int)threadIdx.x) & 255)))]));
          Conv2dOutput[((xx_outer_inner + 6))] = (Conv2dOutput[((xx_outer_inner + 6))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 8) * 2304) + (xx_outer_inner * 256)) + (rc_outer_inner * 64)) + rc_inner) + 1152))] * placeholder_shared[(((((rc_outer_inner * 32768) + (rc_inner * 512)) + (((int)threadIdx.x) & 255)) + 256))]));
          Conv2dOutput[((xx_outer_inner + 10))] = (Conv2dOutput[((xx_outer_inner + 10))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 8) * 2304) + (xx_outer_inner * 256)) + (rc_outer_inner * 64)) + rc_inner) + 1920))] * placeholder_shared[((((rc_outer_inner * 32768) + (rc_inner * 512)) + (((int)threadIdx.x) & 255)))]));
          Conv2dOutput[((xx_outer_inner + 14))] = (Conv2dOutput[((xx_outer_inner + 14))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 8) * 2304) + (xx_outer_inner * 256)) + (rc_outer_inner * 64)) + rc_inner) + 1920))] * placeholder_shared[(((((rc_outer_inner * 32768) + (rc_inner * 512)) + (((int)threadIdx.x) & 255)) + 256))]));
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      T_add[(((((((((((int)threadIdx.x) >> 8) * 401408) + (ax0_inner * 200704)) + ((((int)blockIdx.x) / 14) * 28672)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 1) * 512)) + (((int)threadIdx.x) & 255)))] = (Conv2dOutput[(((ax0_inner * 2) + ax2_inner))] + placeholder2[((((((int)blockIdx.x) & 1) * 512) + (((int)threadIdx.x) & 255)))]);
      T_add[((((((((((((int)threadIdx.x) >> 8) * 401408) + (ax0_inner * 200704)) + ((((int)blockIdx.x) / 14) * 28672)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 1) * 512)) + (((int)threadIdx.x) & 255)) + 256))] = (Conv2dOutput[((((ax0_inner * 2) + ax2_inner) + 4))] + placeholder2[(((((((int)blockIdx.x) & 1) * 512) + (((int)threadIdx.x) & 255)) + 256))]);
      T_add[((((((((((((int)threadIdx.x) >> 8) * 401408) + (ax0_inner * 200704)) + ((((int)blockIdx.x) / 14) * 28672)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 1) * 512)) + (((int)threadIdx.x) & 255)) + 14336))] = (Conv2dOutput[((((ax0_inner * 2) + ax2_inner) + 8))] + placeholder2[((((((int)blockIdx.x) & 1) * 512) + (((int)threadIdx.x) & 255)))]);
      T_add[((((((((((((int)threadIdx.x) >> 8) * 401408) + (ax0_inner * 200704)) + ((((int)blockIdx.x) / 14) * 28672)) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 1) * 512)) + (((int)threadIdx.x) & 255)) + 14592))] = (Conv2dOutput[((((ax0_inner * 2) + ax2_inner) + 12))] + placeholder2[(((((((int)blockIdx.x) & 1) * 512) + (((int)threadIdx.x) & 255)) + 256))]);
    }
  }
}


