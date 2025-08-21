
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
  float Conv2dOutput[320];
  __shared__ float PaddedInput_shared[1680];
  __shared__ float placeholder_shared[9216];
  for (int nn_inner_init = 0; nn_inner_init < 4; ++nn_inner_init) {
    for (int ff_inner_init = 0; ff_inner_init < 8; ++ff_inner_init) {
      Conv2dOutput[(((nn_inner_init * 8) + ff_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 8) + ff_inner_init) + 32))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 8) + ff_inner_init) + 64))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 8) + ff_inner_init) + 96))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 8) + ff_inner_init) + 128))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 8) + ff_inner_init) + 160))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 8) + ff_inner_init) + 192))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 8) + ff_inner_init) + 224))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 8) + ff_inner_init) + 256))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 8) + ff_inner_init) + 288))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 3; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      for (int ax0_ax1_fused_ax2_fused_ax3_fused_inner_s = 0; ax0_ax1_fused_ax2_fused_ax3_fused_inner_s < 12; ++ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) {
        if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 192) + (((int)threadIdx.x) * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) < 420) {
          if ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 768) + (((int)threadIdx.x) * 12)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s) < 1680) {
            if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + ((int)threadIdx.x)) < 140) {
              PaddedInput_shared[((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 768) + (((int)threadIdx.x) * 12)) + ax0_ax1_fused_ax2_fused_ax3_fused_inner_s))] = (((1 <= (((((int)blockIdx.x) / 3) * 4) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 192) + (((int)threadIdx.x) * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) % 105) / 21))) && (1 <= (((((int)blockIdx.x) % 3) * 20) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 192) + (((int)threadIdx.x) * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) % 21)))) ? placeholder[(((((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 192) + (((int)threadIdx.x) * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) / 105) * 921600) + ((((int)blockIdx.x) / 3) * 61440)) + ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 192) + (((int)threadIdx.x) * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) % 105) / 21) * 15360)) + ((((int)blockIdx.x) % 3) * 5120)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 192) + (((int)threadIdx.x) * 3)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s >> 2)) % 21) * 256)) + (rc_outer_outer * 4)) + (ax0_ax1_fused_ax2_fused_ax3_fused_inner_s & 3)) - 15616))] : 0.000000e+00f);
            }
          }
        }
      }
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 72; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      ((float2*)(placeholder_shared + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128) + (((int)threadIdx.x) * 2)))))[0] = ((float2*)(placeholder1 + (((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128) + (((int)threadIdx.x) * 2)) >> 10) * 65536) + (rc_outer_outer * 1024)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 128) + (((int)threadIdx.x) * 2)) & 1023)))))[0];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int ry_inner = 0; ry_inner < 3; ++ry_inner) {
        for (int rx_inner = 0; rx_inner < 3; ++rx_inner) {
          for (int nn_inner = 0; nn_inner < 4; ++nn_inner) {
            for (int ff_inner = 0; ff_inner < 8; ++ff_inner) {
              Conv2dOutput[(((nn_inner * 8) + ff_inner))] = (Conv2dOutput[(((nn_inner * 8) + ff_inner))] + (PaddedInput_shared[((((((nn_inner * 420) + ((((int)threadIdx.x) >> 5) * 168)) + (ry_inner * 84)) + (rx_inner * 4)) + rc_outer_inner))] * placeholder_shared[((((((ry_inner * 3072) + (rx_inner * 1024)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 31) * 8)) + ff_inner))]));
              Conv2dOutput[((((nn_inner * 8) + ff_inner) + 32))] = (Conv2dOutput[((((nn_inner * 8) + ff_inner) + 32))] + (PaddedInput_shared[(((((((nn_inner * 420) + ((((int)threadIdx.x) >> 5) * 168)) + (ry_inner * 84)) + (rx_inner * 4)) + rc_outer_inner) + 8))] * placeholder_shared[((((((ry_inner * 3072) + (rx_inner * 1024)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 31) * 8)) + ff_inner))]));
              Conv2dOutput[((((nn_inner * 8) + ff_inner) + 64))] = (Conv2dOutput[((((nn_inner * 8) + ff_inner) + 64))] + (PaddedInput_shared[(((((((nn_inner * 420) + ((((int)threadIdx.x) >> 5) * 168)) + (ry_inner * 84)) + (rx_inner * 4)) + rc_outer_inner) + 16))] * placeholder_shared[((((((ry_inner * 3072) + (rx_inner * 1024)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 31) * 8)) + ff_inner))]));
              Conv2dOutput[((((nn_inner * 8) + ff_inner) + 96))] = (Conv2dOutput[((((nn_inner * 8) + ff_inner) + 96))] + (PaddedInput_shared[(((((((nn_inner * 420) + ((((int)threadIdx.x) >> 5) * 168)) + (ry_inner * 84)) + (rx_inner * 4)) + rc_outer_inner) + 24))] * placeholder_shared[((((((ry_inner * 3072) + (rx_inner * 1024)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 31) * 8)) + ff_inner))]));
              Conv2dOutput[((((nn_inner * 8) + ff_inner) + 128))] = (Conv2dOutput[((((nn_inner * 8) + ff_inner) + 128))] + (PaddedInput_shared[(((((((nn_inner * 420) + ((((int)threadIdx.x) >> 5) * 168)) + (ry_inner * 84)) + (rx_inner * 4)) + rc_outer_inner) + 32))] * placeholder_shared[((((((ry_inner * 3072) + (rx_inner * 1024)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 31) * 8)) + ff_inner))]));
              Conv2dOutput[((((nn_inner * 8) + ff_inner) + 160))] = (Conv2dOutput[((((nn_inner * 8) + ff_inner) + 160))] + (PaddedInput_shared[(((((((nn_inner * 420) + ((((int)threadIdx.x) >> 5) * 168)) + (ry_inner * 84)) + (rx_inner * 4)) + rc_outer_inner) + 40))] * placeholder_shared[((((((ry_inner * 3072) + (rx_inner * 1024)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 31) * 8)) + ff_inner))]));
              Conv2dOutput[((((nn_inner * 8) + ff_inner) + 192))] = (Conv2dOutput[((((nn_inner * 8) + ff_inner) + 192))] + (PaddedInput_shared[(((((((nn_inner * 420) + ((((int)threadIdx.x) >> 5) * 168)) + (ry_inner * 84)) + (rx_inner * 4)) + rc_outer_inner) + 48))] * placeholder_shared[((((((ry_inner * 3072) + (rx_inner * 1024)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 31) * 8)) + ff_inner))]));
              Conv2dOutput[((((nn_inner * 8) + ff_inner) + 224))] = (Conv2dOutput[((((nn_inner * 8) + ff_inner) + 224))] + (PaddedInput_shared[(((((((nn_inner * 420) + ((((int)threadIdx.x) >> 5) * 168)) + (ry_inner * 84)) + (rx_inner * 4)) + rc_outer_inner) + 56))] * placeholder_shared[((((((ry_inner * 3072) + (rx_inner * 1024)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 31) * 8)) + ff_inner))]));
              Conv2dOutput[((((nn_inner * 8) + ff_inner) + 256))] = (Conv2dOutput[((((nn_inner * 8) + ff_inner) + 256))] + (PaddedInput_shared[(((((((nn_inner * 420) + ((((int)threadIdx.x) >> 5) * 168)) + (ry_inner * 84)) + (rx_inner * 4)) + rc_outer_inner) + 64))] * placeholder_shared[((((((ry_inner * 3072) + (rx_inner * 1024)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 31) * 8)) + ff_inner))]));
              Conv2dOutput[((((nn_inner * 8) + ff_inner) + 288))] = (Conv2dOutput[((((nn_inner * 8) + ff_inner) + 288))] + (PaddedInput_shared[(((((((nn_inner * 420) + ((((int)threadIdx.x) >> 5) * 168)) + (ry_inner * 84)) + (rx_inner * 4)) + rc_outer_inner) + 72))] * placeholder_shared[((((((ry_inner * 3072) + (rx_inner * 1024)) + (rc_outer_inner * 256)) + ((((int)threadIdx.x) & 31) * 8)) + ff_inner))]));
            }
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
      T_relu[(((((((ax0_inner * 230400) + ((((int)blockIdx.x) / 3) * 15360)) + ((((int)threadIdx.x) >> 5) * 7680)) + ((((int)blockIdx.x) % 3) * 2560)) + ((((int)threadIdx.x) & 31) * 8)) + ax3_inner))] = max((Conv2dOutput[(((ax0_inner * 8) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 31) * 8) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 230400) + ((((int)blockIdx.x) / 3) * 15360)) + ((((int)threadIdx.x) >> 5) * 7680)) + ((((int)blockIdx.x) % 3) * 2560)) + ((((int)threadIdx.x) & 31) * 8)) + ax3_inner) + 256))] = max((Conv2dOutput[((((ax0_inner * 8) + ax3_inner) + 32))] + placeholder2[((((((int)threadIdx.x) & 31) * 8) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 230400) + ((((int)blockIdx.x) / 3) * 15360)) + ((((int)threadIdx.x) >> 5) * 7680)) + ((((int)blockIdx.x) % 3) * 2560)) + ((((int)threadIdx.x) & 31) * 8)) + ax3_inner) + 512))] = max((Conv2dOutput[((((ax0_inner * 8) + ax3_inner) + 64))] + placeholder2[((((((int)threadIdx.x) & 31) * 8) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 230400) + ((((int)blockIdx.x) / 3) * 15360)) + ((((int)threadIdx.x) >> 5) * 7680)) + ((((int)blockIdx.x) % 3) * 2560)) + ((((int)threadIdx.x) & 31) * 8)) + ax3_inner) + 768))] = max((Conv2dOutput[((((ax0_inner * 8) + ax3_inner) + 96))] + placeholder2[((((((int)threadIdx.x) & 31) * 8) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 230400) + ((((int)blockIdx.x) / 3) * 15360)) + ((((int)threadIdx.x) >> 5) * 7680)) + ((((int)blockIdx.x) % 3) * 2560)) + ((((int)threadIdx.x) & 31) * 8)) + ax3_inner) + 1024))] = max((Conv2dOutput[((((ax0_inner * 8) + ax3_inner) + 128))] + placeholder2[((((((int)threadIdx.x) & 31) * 8) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 230400) + ((((int)blockIdx.x) / 3) * 15360)) + ((((int)threadIdx.x) >> 5) * 7680)) + ((((int)blockIdx.x) % 3) * 2560)) + ((((int)threadIdx.x) & 31) * 8)) + ax3_inner) + 1280))] = max((Conv2dOutput[((((ax0_inner * 8) + ax3_inner) + 160))] + placeholder2[((((((int)threadIdx.x) & 31) * 8) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 230400) + ((((int)blockIdx.x) / 3) * 15360)) + ((((int)threadIdx.x) >> 5) * 7680)) + ((((int)blockIdx.x) % 3) * 2560)) + ((((int)threadIdx.x) & 31) * 8)) + ax3_inner) + 1536))] = max((Conv2dOutput[((((ax0_inner * 8) + ax3_inner) + 192))] + placeholder2[((((((int)threadIdx.x) & 31) * 8) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 230400) + ((((int)blockIdx.x) / 3) * 15360)) + ((((int)threadIdx.x) >> 5) * 7680)) + ((((int)blockIdx.x) % 3) * 2560)) + ((((int)threadIdx.x) & 31) * 8)) + ax3_inner) + 1792))] = max((Conv2dOutput[((((ax0_inner * 8) + ax3_inner) + 224))] + placeholder2[((((((int)threadIdx.x) & 31) * 8) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 230400) + ((((int)blockIdx.x) / 3) * 15360)) + ((((int)threadIdx.x) >> 5) * 7680)) + ((((int)blockIdx.x) % 3) * 2560)) + ((((int)threadIdx.x) & 31) * 8)) + ax3_inner) + 2048))] = max((Conv2dOutput[((((ax0_inner * 8) + ax3_inner) + 256))] + placeholder2[((((((int)threadIdx.x) & 31) * 8) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 230400) + ((((int)blockIdx.x) / 3) * 15360)) + ((((int)threadIdx.x) >> 5) * 7680)) + ((((int)blockIdx.x) % 3) * 2560)) + ((((int)threadIdx.x) & 31) * 8)) + ax3_inner) + 2304))] = max((Conv2dOutput[((((ax0_inner * 8) + ax3_inner) + 288))] + placeholder2[((((((int)threadIdx.x) & 31) * 8) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


