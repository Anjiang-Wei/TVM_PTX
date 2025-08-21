
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
  float Conv2dOutput[240];
  __shared__ float PaddedInput_shared[450];
  __shared__ float placeholder_shared[32];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 15; ++xx_outer_inner_init) {
      Conv2dOutput[(((nn_outer_inner_init * 60) + (xx_outer_inner_init * 4)))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (xx_outer_inner_init * 4)) + 120))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (xx_outer_inner_init * 4)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (xx_outer_inner_init * 4)) + 121))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (xx_outer_inner_init * 4)) + 2))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (xx_outer_inner_init * 4)) + 122))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (xx_outer_inner_init * 4)) + 3))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 60) + (xx_outer_inner_init * 4)) + 123))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 736; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((int)threadIdx.x) * 736) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 60))] = placeholder[((((((int)threadIdx.x) * 736) + rc_outer_outer) + 44160))];
    PaddedInput_shared[((((int)threadIdx.x) + 120))] = placeholder[((((((int)threadIdx.x) * 736) + rc_outer_outer) + 88320))];
    PaddedInput_shared[((((int)threadIdx.x) + 180))] = placeholder[((((((int)threadIdx.x) * 736) + rc_outer_outer) + 132480))];
    PaddedInput_shared[((((int)threadIdx.x) + 240))] = placeholder[((((((int)threadIdx.x) * 736) + rc_outer_outer) + 176640))];
    PaddedInput_shared[((((int)threadIdx.x) + 300))] = placeholder[((((((int)threadIdx.x) * 736) + rc_outer_outer) + 220800))];
    PaddedInput_shared[((((int)threadIdx.x) + 360))] = placeholder[((((((int)threadIdx.x) * 736) + rc_outer_outer) + 264960))];
    if (((int)threadIdx.x) < 30) {
      PaddedInput_shared[((((int)threadIdx.x) + 420))] = placeholder[((((((int)threadIdx.x) * 736) + rc_outer_outer) + 309120))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 128) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 15; ++xx_outer_inner) {
        Conv2dOutput[(((nn_outer_inner * 60) + (xx_outer_inner * 4)))] = (Conv2dOutput[(((nn_outer_inner * 60) + (xx_outer_inner * 4)))] + (PaddedInput_shared[((((nn_outer_inner * 225) + ((((int)threadIdx.x) >> 2) * 15)) + xx_outer_inner))] * placeholder_shared[(((((int)threadIdx.x) & 3) * 4))]));
        Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 120))] = (Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 120))] + (PaddedInput_shared[((((nn_outer_inner * 225) + ((((int)threadIdx.x) >> 2) * 15)) + xx_outer_inner))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 16))]));
        Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 1))] = (Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 1))] + (PaddedInput_shared[((((nn_outer_inner * 225) + ((((int)threadIdx.x) >> 2) * 15)) + xx_outer_inner))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 1))]));
        Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 121))] = (Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 121))] + (PaddedInput_shared[((((nn_outer_inner * 225) + ((((int)threadIdx.x) >> 2) * 15)) + xx_outer_inner))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 17))]));
        Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 2))] = (Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 2))] + (PaddedInput_shared[((((nn_outer_inner * 225) + ((((int)threadIdx.x) >> 2) * 15)) + xx_outer_inner))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 2))]));
        Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 122))] = (Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 122))] + (PaddedInput_shared[((((nn_outer_inner * 225) + ((((int)threadIdx.x) >> 2) * 15)) + xx_outer_inner))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 18))]));
        Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 3))] = (Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 3))] + (PaddedInput_shared[((((nn_outer_inner * 225) + ((((int)threadIdx.x) >> 2) * 15)) + xx_outer_inner))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 3))]));
        Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 123))] = (Conv2dOutput[((((nn_outer_inner * 60) + (xx_outer_inner * 4)) + 123))] + (PaddedInput_shared[((((nn_outer_inner * 225) + ((((int)threadIdx.x) >> 2) * 15)) + xx_outer_inner))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 19))]));
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 15; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_relu[(((((((ax0_inner * 28800) + ((((int)threadIdx.x) >> 2) * 1920)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 60) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((ax0_inner * 28800) + ((((int)threadIdx.x) >> 2) * 1920)) + (ax2_inner * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))] = max((Conv2dOutput[(((((ax0_inner * 60) + (ax2_inner * 4)) + ax3_inner) + 120))] + placeholder2[(((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))]), 0.000000e+00f);
      }
    }
  }
}


