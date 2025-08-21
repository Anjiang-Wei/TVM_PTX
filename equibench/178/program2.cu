
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
  float Conv2dOutput[64];
  __shared__ float PaddedInput_shared[3072];
  __shared__ float placeholder_shared[96];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 4; ++nn_outer_inner_init) {
    Conv2dOutput[((nn_outer_inner_init * 4))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 16))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 32))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 48))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 17))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 33))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 49))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 18))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 34))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 50))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 19))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 35))] = 0.000000e+00f;
    Conv2dOutput[(((nn_outer_inner_init * 4) + 51))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((int)blockIdx.x) >> 2) * 24576) + ((((int)threadIdx.x) / 3) * 96)) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 512))] = placeholder[((((((((((int)threadIdx.x) + 512) / 768) * 393216) + ((((int)blockIdx.x) >> 2) * 24576)) + ((((((int)threadIdx.x) + 512) % 768) / 3) * 96)) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1024))] = placeholder[((((((((((int)threadIdx.x) + 1024) / 768) * 393216) + ((((int)blockIdx.x) >> 2) * 24576)) + (((((int)threadIdx.x) + 256) / 3) * 96)) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1536))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 24576) + ((((int)threadIdx.x) / 3) * 96)) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 786432))];
    PaddedInput_shared[((((int)threadIdx.x) + 2048))] = placeholder[((((((((((int)threadIdx.x) + 2048) / 768) * 393216) + ((((int)blockIdx.x) >> 2) * 24576)) + ((((((int)threadIdx.x) + 512) % 768) / 3) * 96)) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2560))] = placeholder[((((((((((int)threadIdx.x) + 2560) / 768) * 393216) + ((((int)blockIdx.x) >> 2) * 24576)) + (((((int)threadIdx.x) + 256) / 3) * 96)) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[((((int)threadIdx.x) * 3))] = placeholder1[(((((rc_outer_outer * 384) + (((((int)threadIdx.x) * 3) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) * 3) & 31)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 3) + 1))] = placeholder1[(((((rc_outer_outer * 384) + ((((((int)threadIdx.x) * 3) + 1) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 3) + 1) & 31)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 3) + 2))] = placeholder1[(((((rc_outer_outer * 384) + ((((((int)threadIdx.x) * 3) + 2) >> 5) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((((int)threadIdx.x) * 3) + 2) & 31)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 3; ++rc_outer_inner) {
      for (int nn_outer_inner = 0; nn_outer_inner < 4; ++nn_outer_inner) {
        Conv2dOutput[((nn_outer_inner * 4))] = (Conv2dOutput[((nn_outer_inner * 4))] + (PaddedInput_shared[((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 16))] = (Conv2dOutput[(((nn_outer_inner * 4) + 16))] + (PaddedInput_shared[((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 32))] = (Conv2dOutput[(((nn_outer_inner * 4) + 32))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 384))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 48))] = (Conv2dOutput[(((nn_outer_inner * 4) + 48))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 384))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 1))] = (Conv2dOutput[(((nn_outer_inner * 4) + 1))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 3))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 17))] = (Conv2dOutput[(((nn_outer_inner * 4) + 17))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 3))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 33))] = (Conv2dOutput[(((nn_outer_inner * 4) + 33))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 387))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 49))] = (Conv2dOutput[(((nn_outer_inner * 4) + 49))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 387))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 2))] = (Conv2dOutput[(((nn_outer_inner * 4) + 2))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 6))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 18))] = (Conv2dOutput[(((nn_outer_inner * 4) + 18))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 6))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 34))] = (Conv2dOutput[(((nn_outer_inner * 4) + 34))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 390))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 50))] = (Conv2dOutput[(((nn_outer_inner * 4) + 50))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 390))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 3))] = (Conv2dOutput[(((nn_outer_inner * 4) + 3))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 9))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 19))] = (Conv2dOutput[(((nn_outer_inner * 4) + 19))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 9))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 35))] = (Conv2dOutput[(((nn_outer_inner * 4) + 35))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 393))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
        Conv2dOutput[(((nn_outer_inner * 4) + 51))] = (Conv2dOutput[(((nn_outer_inner * 4) + 51))] + (PaddedInput_shared[(((((nn_outer_inner * 768) + ((((int)threadIdx.x) >> 4) * 12)) + rc_outer_inner) + 393))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      T_relu[(((((((ax0_inner * 524288) + ((((int)blockIdx.x) >> 2) * 32768)) + ((((int)threadIdx.x) >> 4) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 15)))] = max((Conv2dOutput[(((ax0_inner * 4) + ax2_inner))] + placeholder2[((((((int)blockIdx.x) & 3) * 32) + (((int)threadIdx.x) & 15)))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 524288) + ((((int)blockIdx.x) >> 2) * 32768)) + ((((int)threadIdx.x) >> 4) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 15)) + 16))] = max((Conv2dOutput[((((ax0_inner * 4) + ax2_inner) + 16))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + (((int)threadIdx.x) & 15)) + 16))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 524288) + ((((int)blockIdx.x) >> 2) * 32768)) + ((((int)threadIdx.x) >> 4) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 15)) + 16384))] = max((Conv2dOutput[((((ax0_inner * 4) + ax2_inner) + 32))] + placeholder2[((((((int)blockIdx.x) & 3) * 32) + (((int)threadIdx.x) & 15)))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 524288) + ((((int)blockIdx.x) >> 2) * 32768)) + ((((int)threadIdx.x) >> 4) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 3) * 32)) + (((int)threadIdx.x) & 15)) + 16400))] = max((Conv2dOutput[((((ax0_inner * 4) + ax2_inner) + 48))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + (((int)threadIdx.x) & 15)) + 16))]), 0.000000e+00f);
    }
  }
}


