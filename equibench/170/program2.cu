
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
  float Conv2dOutput[1024];
  __shared__ float PaddedInput_shared[512];
  __shared__ float placeholder_shared[128];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
      for (int ff_outer_inner_init = 0; ff_outer_inner_init < 16; ++ff_outer_inner_init) {
        Conv2dOutput[((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 256))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 512))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 768))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 1))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 257))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 513))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 769))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 32))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 288))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 544))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 800))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 33))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 289))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 545))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_outer_inner_init * 128) + (yy_outer_inner_init * 64)) + (ff_outer_inner_init * 2)) + 801))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 512; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 262144) + ((((int)threadIdx.x) >> 3) * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + ((((int)threadIdx.x) & 7) * 512)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 64))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 262144) + ((((int)threadIdx.x) >> 3) * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + ((((int)threadIdx.x) & 7) * 512)) + rc_outer_outer) + 131072))];
    PaddedInput_shared[((((int)threadIdx.x) + 128))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 262144) + ((((int)threadIdx.x) >> 3) * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + ((((int)threadIdx.x) & 7) * 512)) + rc_outer_outer) + 524288))];
    PaddedInput_shared[((((int)threadIdx.x) + 192))] = placeholder[(((((((((((int)threadIdx.x) + 192) >> 7) * 524288) + ((((int)blockIdx.x) >> 2) * 262144)) + (((((int)threadIdx.x) >> 3) + 8) * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + ((((int)threadIdx.x) & 7) * 512)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 256))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 262144) + ((((int)threadIdx.x) >> 3) * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + ((((int)threadIdx.x) & 7) * 512)) + rc_outer_outer) + 1048576))];
    PaddedInput_shared[((((int)threadIdx.x) + 320))] = placeholder[(((((((((((int)threadIdx.x) + 320) >> 7) * 524288) + ((((int)blockIdx.x) >> 2) * 262144)) + (((((int)threadIdx.x) >> 3) + 8) * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + ((((int)threadIdx.x) & 7) * 512)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 384))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 262144) + ((((int)threadIdx.x) >> 3) * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + ((((int)threadIdx.x) & 7) * 512)) + rc_outer_outer) + 1572864))];
    PaddedInput_shared[((((int)threadIdx.x) + 448))] = placeholder[(((((((((((int)threadIdx.x) + 448) >> 7) * 524288) + ((((int)blockIdx.x) >> 2) * 262144)) + (((((int)threadIdx.x) >> 3) + 8) * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + ((((int)threadIdx.x) & 7) * 512)) + rc_outer_outer))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 128) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 64))];
    __syncthreads();
    for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 16; ++ff_outer_inner) {
          Conv2dOutput[((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)))] = (Conv2dOutput[((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)))] * placeholder_shared[((ff_outer_inner * 2))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 256))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 256))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)))] * placeholder_shared[(((ff_outer_inner * 2) + 32))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 512))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 512))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)))] * placeholder_shared[(((ff_outer_inner * 2) + 64))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 768))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 768))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)))] * placeholder_shared[(((ff_outer_inner * 2) + 96))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 1))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 1))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)))] * placeholder_shared[(((ff_outer_inner * 2) + 1))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 257))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 257))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)))] * placeholder_shared[(((ff_outer_inner * 2) + 33))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 513))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 513))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)))] * placeholder_shared[(((ff_outer_inner * 2) + 65))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 769))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 769))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)))] * placeholder_shared[(((ff_outer_inner * 2) + 97))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 32))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 32))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1))] * placeholder_shared[((ff_outer_inner * 2))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 288))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 288))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1))] * placeholder_shared[(((ff_outer_inner * 2) + 32))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 544))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 544))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1))] * placeholder_shared[(((ff_outer_inner * 2) + 64))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 800))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 800))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1))] * placeholder_shared[(((ff_outer_inner * 2) + 96))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 33))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 33))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1))] * placeholder_shared[(((ff_outer_inner * 2) + 1))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 289))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 289))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1))] * placeholder_shared[(((ff_outer_inner * 2) + 33))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 545))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 545))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1))] * placeholder_shared[(((ff_outer_inner * 2) + 65))]));
          Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 801))] = (Conv2dOutput[(((((nn_outer_inner * 128) + (yy_outer_inner * 64)) + (ff_outer_inner * 2)) + 801))] + (PaddedInput_shared[((((((((((int)threadIdx.x) >> 5) * 256) + (nn_outer_inner * 128)) + (((((int)threadIdx.x) & 31) >> 2) * 16)) + (yy_outer_inner * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 1))] * placeholder_shared[(((ff_outer_inner * 2) + 97))]));
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 32; ++ax3_inner) {
          T_relu[(((((((((((((int)threadIdx.x) >> 5) * 262144) + (ax0_inner * 131072)) + ((((int)blockIdx.x) >> 2) * 65536)) + (((((int)threadIdx.x) & 31) >> 2) * 8192)) + (ax1_inner * 4096)) + ((((int)blockIdx.x) & 3) * 1024)) + ((((int)threadIdx.x) & 3) * 256)) + (ax2_inner * 128)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 128) + (ax1_inner * 64)) + (ax2_inner * 32)) + ax3_inner))] + placeholder2[(ax3_inner)]), 0.000000e+00f);
          T_relu[((((((((((((((int)threadIdx.x) >> 5) * 262144) + (ax0_inner * 131072)) + ((((int)blockIdx.x) >> 2) * 65536)) + (((((int)threadIdx.x) & 31) >> 2) * 8192)) + (ax1_inner * 4096)) + ((((int)blockIdx.x) & 3) * 1024)) + ((((int)threadIdx.x) & 3) * 256)) + (ax2_inner * 128)) + ax3_inner) + 32))] = max((Conv2dOutput[((((((ax0_inner * 128) + (ax1_inner * 64)) + (ax2_inner * 32)) + ax3_inner) + 256))] + placeholder2[((ax3_inner + 32))]), 0.000000e+00f);
          T_relu[((((((((((((((int)threadIdx.x) >> 5) * 262144) + (ax0_inner * 131072)) + ((((int)blockIdx.x) >> 2) * 65536)) + (((((int)threadIdx.x) & 31) >> 2) * 8192)) + (ax1_inner * 4096)) + ((((int)blockIdx.x) & 3) * 1024)) + ((((int)threadIdx.x) & 3) * 256)) + (ax2_inner * 128)) + ax3_inner) + 64))] = max((Conv2dOutput[((((((ax0_inner * 128) + (ax1_inner * 64)) + (ax2_inner * 32)) + ax3_inner) + 512))] + placeholder2[((ax3_inner + 64))]), 0.000000e+00f);
          T_relu[((((((((((((((int)threadIdx.x) >> 5) * 262144) + (ax0_inner * 131072)) + ((((int)blockIdx.x) >> 2) * 65536)) + (((((int)threadIdx.x) & 31) >> 2) * 8192)) + (ax1_inner * 4096)) + ((((int)blockIdx.x) & 3) * 1024)) + ((((int)threadIdx.x) & 3) * 256)) + (ax2_inner * 128)) + ax3_inner) + 96))] = max((Conv2dOutput[((((((ax0_inner * 128) + (ax1_inner * 64)) + (ax2_inner * 32)) + ax3_inner) + 768))] + placeholder2[((ax3_inner + 96))]), 0.000000e+00f);
        }
      }
    }
  }
}


