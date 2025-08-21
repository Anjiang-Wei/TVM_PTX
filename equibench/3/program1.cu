
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
  float Conv2dOutput[56];
  __shared__ float PaddedInput_shared[50176];
  __shared__ float placeholder_shared[8192];
  for (int yy_inner_init = 0; yy_inner_init < 2; ++yy_inner_init) {
    for (int xx_inner_init = 0; xx_inner_init < 2; ++xx_inner_init) {
      for (int ff_inner_init = 0; ff_inner_init < 2; ++ff_inner_init) {
        Conv2dOutput[((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_inner_init) + 8))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_inner_init) + 16))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_inner_init) + 24))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_inner_init) + 32))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_inner_init) + 40))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_inner_init * 4) + (xx_inner_init * 2)) + ff_inner_init) + 48))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 2; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 112; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + ((int)threadIdx.x)))] = placeholder[(((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + ((int)threadIdx.x)) / 1792) * 7168) + ((((int)blockIdx.x) >> 3) * 3584)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + ((int)threadIdx.x)) % 1792) >> 7) * 256)) + (rc_outer_outer * 128)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 448) + ((int)threadIdx.x)) & 127)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 19; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 7) + (((int)threadIdx.x) >> 6)) < 128) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 448) + ((int)threadIdx.x)) < 8192) {
          placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 448) + ((int)threadIdx.x)))] = placeholder1[((((((rc_outer_outer * 65536) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 3584)) + ((((int)threadIdx.x) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) & 63)))];
        }
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 64; ++rc_outer_inner) {
      for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
        for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
          for (int xx_inner = 0; xx_inner < 2; ++xx_inner) {
            for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
              Conv2dOutput[((((yy_inner * 4) + (xx_inner * 2)) + ff_inner))] = (Conv2dOutput[((((yy_inner * 4) + (xx_inner * 2)) + ff_inner))] + (PaddedInput_shared[((((((((((int)threadIdx.x) / 224) * 3584) + (yy_inner * 1792)) + (((((int)threadIdx.x) % 224) >> 5) * 256)) + (xx_inner * 128)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ff_inner))]));
              Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_inner) + 8))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_inner) + 8))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 224) * 3584) + (yy_inner * 1792)) + (((((int)threadIdx.x) % 224) >> 5) * 256)) + (xx_inner * 128)) + (rc_outer_inner * 2)) + rc_inner) + 7168))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ff_inner))]));
              Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_inner) + 16))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_inner) + 16))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 224) * 3584) + (yy_inner * 1792)) + (((((int)threadIdx.x) % 224) >> 5) * 256)) + (xx_inner * 128)) + (rc_outer_inner * 2)) + rc_inner) + 14336))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ff_inner))]));
              Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_inner) + 24))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_inner) + 24))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 224) * 3584) + (yy_inner * 1792)) + (((((int)threadIdx.x) % 224) >> 5) * 256)) + (xx_inner * 128)) + (rc_outer_inner * 2)) + rc_inner) + 21504))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ff_inner))]));
              Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_inner) + 32))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_inner) + 32))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 224) * 3584) + (yy_inner * 1792)) + (((((int)threadIdx.x) % 224) >> 5) * 256)) + (xx_inner * 128)) + (rc_outer_inner * 2)) + rc_inner) + 28672))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ff_inner))]));
              Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_inner) + 40))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_inner) + 40))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 224) * 3584) + (yy_inner * 1792)) + (((((int)threadIdx.x) % 224) >> 5) * 256)) + (xx_inner * 128)) + (rc_outer_inner * 2)) + rc_inner) + 35840))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ff_inner))]));
              Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_inner) + 48))] = (Conv2dOutput[(((((yy_inner * 4) + (xx_inner * 2)) + ff_inner) + 48))] + (PaddedInput_shared[(((((((((((int)threadIdx.x) / 224) * 3584) + (yy_inner * 1792)) + (((((int)threadIdx.x) % 224) >> 5) * 256)) + (xx_inner * 128)) + (rc_outer_inner * 2)) + rc_inner) + 43008))] * placeholder_shared[(((((rc_outer_inner * 128) + (rc_inner * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ff_inner))]));
            }
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))] = max(((Conv2dOutput[((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]) + placeholder3[((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 57344))] = max(((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 8))] + placeholder2[(((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]) + placeholder3[(((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 57344))]), 0.000000e+00f);
        T_relu[(((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 114688))] = max(((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 16))] + placeholder2[(((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]) + placeholder3[(((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 114688))]), 0.000000e+00f);
        T_relu[(((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 172032))] = max(((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 24))] + placeholder2[(((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]) + placeholder3[(((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 172032))]), 0.000000e+00f);
        T_relu[(((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 229376))] = max(((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 32))] + placeholder2[(((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]) + placeholder3[(((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 229376))]), 0.000000e+00f);
        T_relu[(((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 286720))] = max(((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 40))] + placeholder2[(((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]) + placeholder3[(((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 286720))]), 0.000000e+00f);
        T_relu[(((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 344064))] = max(((Conv2dOutput[(((((ax1_inner * 4) + (ax2_inner * 2)) + ax3_inner) + 48))] + placeholder2[(((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]) + placeholder3[(((((((((((((int)threadIdx.x) / 224) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 3) * 7168)) + (((((int)threadIdx.x) % 224) >> 5) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 344064))]), 0.000000e+00f);
      }
    }
  }
}


