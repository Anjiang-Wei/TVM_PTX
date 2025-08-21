
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
  float Conv2dOutput[256];
  __shared__ float PaddedInput_shared[128];
  __shared__ float placeholder_shared[256];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 8; ++xx_outer_inner_init) {
    for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
      Conv2dOutput[(((nn_inner_init * 16) + xx_outer_inner_init))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 32))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 64))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 96))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 128))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 160))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 192))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 224))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 8))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 40))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 72))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 104))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 136))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 168))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 200))] = 0.000000e+00f;
      Conv2dOutput[((((nn_inner_init * 16) + xx_outer_inner_init) + 232))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 368; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((int)blockIdx.x) * 11776) + ((((int)threadIdx.x) >> 1) * 736)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 32))] = placeholder[((((((((int)blockIdx.x) * 11776) + ((((int)threadIdx.x) >> 1) * 736)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 47104))];
    PaddedInput_shared[((((int)threadIdx.x) + 64))] = placeholder[((((((((int)blockIdx.x) * 11776) + ((((int)threadIdx.x) >> 1) * 736)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 94208))];
    PaddedInput_shared[((((int)threadIdx.x) + 96))] = placeholder[((((((((int)blockIdx.x) * 11776) + ((((int)threadIdx.x) >> 1) * 736)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 141312))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 256) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 32))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 32))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 64))];
    placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 96))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 128))];
    placeholder_shared[((((int)threadIdx.x) + 160))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 160))];
    placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 192))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 224))];
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 8; ++xx_outer_inner) {
      for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
        for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
          Conv2dOutput[(((nn_inner * 16) + xx_outer_inner))] = (Conv2dOutput[(((nn_inner * 16) + xx_outer_inner))] + (PaddedInput_shared[((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((rc_inner * 128) + ((int)threadIdx.x)))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 32))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 32))] + (PaddedInput_shared[((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((int)threadIdx.x)) + 32))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 64))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 64))] + (PaddedInput_shared[((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((int)threadIdx.x)) + 64))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 96))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 96))] + (PaddedInput_shared[((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((int)threadIdx.x)) + 96))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 128))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 128))] + (PaddedInput_shared[(((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner) + 64))] * placeholder_shared[(((rc_inner * 128) + ((int)threadIdx.x)))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 160))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 160))] + (PaddedInput_shared[(((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner) + 64))] * placeholder_shared[((((rc_inner * 128) + ((int)threadIdx.x)) + 32))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 192))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 192))] + (PaddedInput_shared[(((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner) + 64))] * placeholder_shared[((((rc_inner * 128) + ((int)threadIdx.x)) + 64))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 224))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 224))] + (PaddedInput_shared[(((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner) + 64))] * placeholder_shared[((((rc_inner * 128) + ((int)threadIdx.x)) + 96))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 8))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 8))] + (PaddedInput_shared[(((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner) + 16))] * placeholder_shared[(((rc_inner * 128) + ((int)threadIdx.x)))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 40))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 40))] + (PaddedInput_shared[(((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner) + 16))] * placeholder_shared[((((rc_inner * 128) + ((int)threadIdx.x)) + 32))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 72))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 72))] + (PaddedInput_shared[(((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner) + 16))] * placeholder_shared[((((rc_inner * 128) + ((int)threadIdx.x)) + 64))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 104))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 104))] + (PaddedInput_shared[(((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner) + 16))] * placeholder_shared[((((rc_inner * 128) + ((int)threadIdx.x)) + 96))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 136))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 136))] + (PaddedInput_shared[(((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner) + 80))] * placeholder_shared[(((rc_inner * 128) + ((int)threadIdx.x)))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 168))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 168))] + (PaddedInput_shared[(((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner) + 80))] * placeholder_shared[((((rc_inner * 128) + ((int)threadIdx.x)) + 32))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 200))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 200))] + (PaddedInput_shared[(((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner) + 80))] * placeholder_shared[((((rc_inner * 128) + ((int)threadIdx.x)) + 64))]));
          Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 232))] = (Conv2dOutput[((((nn_inner * 16) + xx_outer_inner) + 232))] + (PaddedInput_shared[(((((nn_inner * 32) + (xx_outer_inner * 2)) + rc_inner) + 80))] * placeholder_shared[((((rc_inner * 128) + ((int)threadIdx.x)) + 96))]));
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 8; ++ax2_inner) {
        T_relu[((((((ax0_inner * 8192) + (((int)blockIdx.x) * 2048)) + (ax1_inner * 1024)) + (ax2_inner * 128)) + ((int)threadIdx.x)))] = max((Conv2dOutput[((((ax0_inner * 16) + (ax1_inner * 8)) + ax2_inner))] + placeholder2[(((int)threadIdx.x))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 8192) + (((int)blockIdx.x) * 2048)) + (ax1_inner * 1024)) + (ax2_inner * 128)) + ((int)threadIdx.x)) + 32))] = max((Conv2dOutput[(((((ax0_inner * 16) + (ax1_inner * 8)) + ax2_inner) + 32))] + placeholder2[((((int)threadIdx.x) + 32))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 8192) + (((int)blockIdx.x) * 2048)) + (ax1_inner * 1024)) + (ax2_inner * 128)) + ((int)threadIdx.x)) + 64))] = max((Conv2dOutput[(((((ax0_inner * 16) + (ax1_inner * 8)) + ax2_inner) + 64))] + placeholder2[((((int)threadIdx.x) + 64))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 8192) + (((int)blockIdx.x) * 2048)) + (ax1_inner * 1024)) + (ax2_inner * 128)) + ((int)threadIdx.x)) + 96))] = max((Conv2dOutput[(((((ax0_inner * 16) + (ax1_inner * 8)) + ax2_inner) + 96))] + placeholder2[((((int)threadIdx.x) + 96))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 8192) + (((int)blockIdx.x) * 2048)) + (ax1_inner * 1024)) + (ax2_inner * 128)) + ((int)threadIdx.x)) + 16384))] = max((Conv2dOutput[(((((ax0_inner * 16) + (ax1_inner * 8)) + ax2_inner) + 128))] + placeholder2[(((int)threadIdx.x))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 8192) + (((int)blockIdx.x) * 2048)) + (ax1_inner * 1024)) + (ax2_inner * 128)) + ((int)threadIdx.x)) + 16416))] = max((Conv2dOutput[(((((ax0_inner * 16) + (ax1_inner * 8)) + ax2_inner) + 160))] + placeholder2[((((int)threadIdx.x) + 32))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 8192) + (((int)blockIdx.x) * 2048)) + (ax1_inner * 1024)) + (ax2_inner * 128)) + ((int)threadIdx.x)) + 16448))] = max((Conv2dOutput[(((((ax0_inner * 16) + (ax1_inner * 8)) + ax2_inner) + 192))] + placeholder2[((((int)threadIdx.x) + 64))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 8192) + (((int)blockIdx.x) * 2048)) + (ax1_inner * 1024)) + (ax2_inner * 128)) + ((int)threadIdx.x)) + 16480))] = max((Conv2dOutput[(((((ax0_inner * 16) + (ax1_inner * 8)) + ax2_inner) + 224))] + placeholder2[((((int)threadIdx.x) + 96))]), 0.000000e+00f);
      }
    }
  }
}


