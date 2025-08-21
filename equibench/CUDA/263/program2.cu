
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
  float Conv2dOutput_local[300];
  __shared__ float PaddedInput_shared[2400];
  __shared__ float placeholder_shared[64];
  for (int xx_c_outer_inner_init = 0; xx_c_outer_inner_init < 5; ++xx_c_outer_inner_init) {
    for (int yy_c_inner_init = 0; yy_c_inner_init < 5; ++yy_c_inner_init) {
      for (int ff_c_inner_init = 0; ff_c_inner_init < 2; ++ff_c_inner_init) {
        Conv2dOutput_local[((((yy_c_inner_init * 10) + (xx_c_outer_inner_init * 2)) + ff_c_inner_init))] = 0.000000e+00f;
        Conv2dOutput_local[(((((yy_c_inner_init * 10) + (xx_c_outer_inner_init * 2)) + ff_c_inner_init) + 50))] = 0.000000e+00f;
        Conv2dOutput_local[(((((yy_c_inner_init * 10) + (xx_c_outer_inner_init * 2)) + ff_c_inner_init) + 100))] = 0.000000e+00f;
        Conv2dOutput_local[(((((yy_c_inner_init * 10) + (xx_c_outer_inner_init * 2)) + ff_c_inner_init) + 150))] = 0.000000e+00f;
        Conv2dOutput_local[(((((yy_c_inner_init * 10) + (xx_c_outer_inner_init * 2)) + ff_c_inner_init) + 200))] = 0.000000e+00f;
        Conv2dOutput_local[(((((yy_c_inner_init * 10) + (xx_c_outer_inner_init * 2)) + ff_c_inner_init) + 250))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 19; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + (((int)threadIdx.x) >> 1)) < 1200) {
        if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + ((int)threadIdx.x)) < 2400) {
          PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 128) + ((int)threadIdx.x)))] = placeholder[((((((((((int)blockIdx.x) / 12) * 921600) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + (((int)threadIdx.x) >> 1)) / 20) * 15360)) + (((((int)blockIdx.x) % 12) >> 2) * 5120)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 64) + (((int)threadIdx.x) >> 1)) % 20) * 256)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
        }
      }
    }
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 256) + ((((int)threadIdx.x) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 31)))];
    }
    __syncthreads();
    for (int xx_c_outer_inner = 0; xx_c_outer_inner < 5; ++xx_c_outer_inner) {
      for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
        for (int yy_c_inner = 0; yy_c_inner < 5; ++yy_c_inner) {
          for (int ff_c_inner = 0; ff_c_inner < 2; ++ff_c_inner) {
            Conv2dOutput_local[((((yy_c_inner * 10) + (xx_c_outer_inner * 2)) + ff_c_inner))] = (Conv2dOutput_local[((((yy_c_inner * 10) + (xx_c_outer_inner * 2)) + ff_c_inner))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 200) + (yy_c_inner * 40)) + (((((int)threadIdx.x) & 63) >> 4) * 10)) + (xx_c_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + ff_c_inner))]));
            Conv2dOutput_local[(((((yy_c_inner * 10) + (xx_c_outer_inner * 2)) + ff_c_inner) + 50))] = (Conv2dOutput_local[(((((yy_c_inner * 10) + (xx_c_outer_inner * 2)) + ff_c_inner) + 50))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 6) * 200) + (yy_c_inner * 40)) + (((((int)threadIdx.x) & 63) >> 4) * 10)) + (xx_c_outer_inner * 2)) + rc_inner) + 400))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + ff_c_inner))]));
            Conv2dOutput_local[(((((yy_c_inner * 10) + (xx_c_outer_inner * 2)) + ff_c_inner) + 100))] = (Conv2dOutput_local[(((((yy_c_inner * 10) + (xx_c_outer_inner * 2)) + ff_c_inner) + 100))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 6) * 200) + (yy_c_inner * 40)) + (((((int)threadIdx.x) & 63) >> 4) * 10)) + (xx_c_outer_inner * 2)) + rc_inner) + 800))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + ff_c_inner))]));
            Conv2dOutput_local[(((((yy_c_inner * 10) + (xx_c_outer_inner * 2)) + ff_c_inner) + 150))] = (Conv2dOutput_local[(((((yy_c_inner * 10) + (xx_c_outer_inner * 2)) + ff_c_inner) + 150))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 6) * 200) + (yy_c_inner * 40)) + (((((int)threadIdx.x) & 63) >> 4) * 10)) + (xx_c_outer_inner * 2)) + rc_inner) + 1200))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + ff_c_inner))]));
            Conv2dOutput_local[(((((yy_c_inner * 10) + (xx_c_outer_inner * 2)) + ff_c_inner) + 200))] = (Conv2dOutput_local[(((((yy_c_inner * 10) + (xx_c_outer_inner * 2)) + ff_c_inner) + 200))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 6) * 200) + (yy_c_inner * 40)) + (((((int)threadIdx.x) & 63) >> 4) * 10)) + (xx_c_outer_inner * 2)) + rc_inner) + 1600))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + ff_c_inner))]));
            Conv2dOutput_local[(((((yy_c_inner * 10) + (xx_c_outer_inner * 2)) + ff_c_inner) + 250))] = (Conv2dOutput_local[(((((yy_c_inner * 10) + (xx_c_outer_inner * 2)) + ff_c_inner) + 250))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 6) * 200) + (yy_c_inner * 40)) + (((((int)threadIdx.x) & 63) >> 4) * 10)) + (xx_c_outer_inner * 2)) + rc_inner) + 2000))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 15) * 2)) + ff_c_inner))]));
          }
        }
      }
    }
  }
  for (int yy_inner = 0; yy_inner < 5; ++yy_inner) {
    for (int xx_inner = 0; xx_inner < 5; ++xx_inner) {
      for (int ff_inner = 0; ff_inner < 2; ++ff_inner) {
        Conv2dOutput[(((((((((((((int)blockIdx.x) / 12) * 460800) + ((((int)threadIdx.x) >> 6) * 38400)) + (yy_inner * 7680)) + (((((int)blockIdx.x) % 12) >> 2) * 2560)) + (((((int)threadIdx.x) & 63) >> 4) * 640)) + (xx_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ff_inner))] = Conv2dOutput_local[((((yy_inner * 10) + (xx_inner * 2)) + ff_inner))];
        Conv2dOutput[((((((((((((((int)blockIdx.x) / 12) * 460800) + ((((int)threadIdx.x) >> 6) * 38400)) + (yy_inner * 7680)) + (((((int)blockIdx.x) % 12) >> 2) * 2560)) + (((((int)threadIdx.x) & 63) >> 4) * 640)) + (xx_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ff_inner) + 76800))] = Conv2dOutput_local[(((((yy_inner * 10) + (xx_inner * 2)) + ff_inner) + 50))];
        Conv2dOutput[((((((((((((((int)blockIdx.x) / 12) * 460800) + ((((int)threadIdx.x) >> 6) * 38400)) + (yy_inner * 7680)) + (((((int)blockIdx.x) % 12) >> 2) * 2560)) + (((((int)threadIdx.x) & 63) >> 4) * 640)) + (xx_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ff_inner) + 153600))] = Conv2dOutput_local[(((((yy_inner * 10) + (xx_inner * 2)) + ff_inner) + 100))];
        Conv2dOutput[((((((((((((((int)blockIdx.x) / 12) * 460800) + ((((int)threadIdx.x) >> 6) * 38400)) + (yy_inner * 7680)) + (((((int)blockIdx.x) % 12) >> 2) * 2560)) + (((((int)threadIdx.x) & 63) >> 4) * 640)) + (xx_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ff_inner) + 230400))] = Conv2dOutput_local[(((((yy_inner * 10) + (xx_inner * 2)) + ff_inner) + 150))];
        Conv2dOutput[((((((((((((((int)blockIdx.x) / 12) * 460800) + ((((int)threadIdx.x) >> 6) * 38400)) + (yy_inner * 7680)) + (((((int)blockIdx.x) % 12) >> 2) * 2560)) + (((((int)threadIdx.x) & 63) >> 4) * 640)) + (xx_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ff_inner) + 307200))] = Conv2dOutput_local[(((((yy_inner * 10) + (xx_inner * 2)) + ff_inner) + 200))];
        Conv2dOutput[((((((((((((((int)blockIdx.x) / 12) * 460800) + ((((int)threadIdx.x) >> 6) * 38400)) + (yy_inner * 7680)) + (((((int)blockIdx.x) % 12) >> 2) * 2560)) + (((((int)threadIdx.x) & 63) >> 4) * 640)) + (xx_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 15) * 2)) + ff_inner) + 384000))] = Conv2dOutput_local[(((((yy_inner * 10) + (xx_inner * 2)) + ff_inner) + 250))];
      }
    }
  }
}


