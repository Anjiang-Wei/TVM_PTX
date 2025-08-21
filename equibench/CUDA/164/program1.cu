
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
  float Conv2dOutput[192];
  __shared__ float PaddedInput_shared[2400];
  __shared__ float placeholder_shared[256];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 2; ++nn_outer_inner_init) {
    for (int yy_outer_inner_init = 0; yy_outer_inner_init < 6; ++yy_outer_inner_init) {
      Conv2dOutput[(((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 48))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 49))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 2))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 50))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 3))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 51))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 4))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 52))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 5))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 53))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 6))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 54))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 7))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 96) + (yy_outer_inner_init * 8)) + 55))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)threadIdx.x) / 20) * 7680) + (((int)blockIdx.x) * 2560)) + (((((int)threadIdx.x) % 20) >> 1) * 256)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 800))] = placeholder[((((((((((int)threadIdx.x) / 20) * 7680) + (((int)blockIdx.x) * 2560)) + (((((int)threadIdx.x) % 20) >> 1) * 256)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 307200))];
    PaddedInput_shared[((((int)threadIdx.x) + 1600))] = placeholder[((((((((((int)threadIdx.x) / 20) * 7680) + (((int)blockIdx.x) * 2560)) + (((((int)threadIdx.x) % 20) >> 1) * 256)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 614400))];
    if (((int)threadIdx.x) < 256) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 256) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 2; ++nn_outer_inner) {
        for (int yy_outer_inner = 0; yy_outer_inner < 6; ++yy_outer_inner) {
          Conv2dOutput[(((nn_outer_inner * 96) + (yy_outer_inner * 8)))] = (Conv2dOutput[(((nn_outer_inner * 96) + (yy_outer_inner * 8)))] + (PaddedInput_shared[((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 48))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 48))] + (PaddedInput_shared[(((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner) + 600))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 1))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 1))] + (PaddedInput_shared[((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 1))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 49))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 49))] + (PaddedInput_shared[(((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 1))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 2))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 2))] + (PaddedInput_shared[((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 2))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 50))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 50))] + (PaddedInput_shared[(((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 2))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 3))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 3))] + (PaddedInput_shared[((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 3))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 51))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 51))] + (PaddedInput_shared[(((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 3))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 4))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 4))] + (PaddedInput_shared[((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 4))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 52))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 52))] + (PaddedInput_shared[(((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 4))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 5))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 5))] + (PaddedInput_shared[((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 5))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 53))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 53))] + (PaddedInput_shared[(((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 5))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 6))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 6))] + (PaddedInput_shared[((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 6))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 54))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 54))] + (PaddedInput_shared[(((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 6))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 7))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 7))] + (PaddedInput_shared[((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 7))]));
          Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 55))] = (Conv2dOutput[((((nn_outer_inner * 96) + (yy_outer_inner * 8)) + 55))] + (PaddedInput_shared[(((((((nn_outer_inner * 1200) + ((((int)threadIdx.x) / 160) * 120)) + (yy_outer_inner * 20)) + (((((int)threadIdx.x) % 160) >> 4) * 2)) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 15) * 8)) + 7))]));
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 6; ++ax1_inner) {
      for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
        T_relu[(((((((ax0_inner * 115200) + ((((int)threadIdx.x) / 160) * 23040)) + (ax1_inner * 3840)) + (((int)blockIdx.x) * 1280)) + ((((int)threadIdx.x) % 160) * 8)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 48) + (ax1_inner * 8)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 15) * 8) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


