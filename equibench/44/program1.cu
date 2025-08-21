
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv2dOutput[768];
  __shared__ float PaddedInput_shared[256];
  __shared__ float placeholder_shared[96];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 4; ++xx_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 24; ++ff_outer_inner_init) {
      Conv2dOutput[(((xx_outer_inner_init * 48) + (ff_outer_inner_init * 2)))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 48) + (ff_outer_inner_init * 2)) + 384))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 48) + (ff_outer_inner_init * 2)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 48) + (ff_outer_inner_init * 2)) + 385))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 48) + (ff_outer_inner_init * 2)) + 192))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 48) + (ff_outer_inner_init * 2)) + 576))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 48) + (ff_outer_inner_init * 2)) + 193))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 48) + (ff_outer_inner_init * 2)) + 577))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 576; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 73728) + ((((int)threadIdx.x) >> 3) * 9216)) + ((((int)blockIdx.x) & 1) * 4608)) + ((((int)threadIdx.x) & 7) * 576)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 32))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 73728) + ((((int)threadIdx.x) >> 3) * 9216)) + ((((int)blockIdx.x) & 1) * 4608)) + ((((int)threadIdx.x) & 7) * 576)) + rc_outer_outer) + 36864))];
    PaddedInput_shared[((((int)threadIdx.x) + 64))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 73728) + ((((int)threadIdx.x) >> 3) * 9216)) + ((((int)blockIdx.x) & 1) * 4608)) + ((((int)threadIdx.x) & 7) * 576)) + rc_outer_outer) + 147456))];
    PaddedInput_shared[((((int)threadIdx.x) + 96))] = placeholder[(((((((((((int)threadIdx.x) + 96) >> 6) * 147456) + ((((int)blockIdx.x) >> 1) * 73728)) + (((((int)threadIdx.x) >> 3) + 4) * 9216)) + ((((int)blockIdx.x) & 1) * 4608)) + ((((int)threadIdx.x) & 7) * 576)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 128))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 73728) + ((((int)threadIdx.x) >> 3) * 9216)) + ((((int)blockIdx.x) & 1) * 4608)) + ((((int)threadIdx.x) & 7) * 576)) + rc_outer_outer) + 294912))];
    PaddedInput_shared[((((int)threadIdx.x) + 160))] = placeholder[(((((((((((int)threadIdx.x) + 160) >> 6) * 147456) + ((((int)blockIdx.x) >> 1) * 73728)) + (((((int)threadIdx.x) >> 3) + 4) * 9216)) + ((((int)blockIdx.x) & 1) * 4608)) + ((((int)threadIdx.x) & 7) * 576)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 192))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 73728) + ((((int)threadIdx.x) >> 3) * 9216)) + ((((int)blockIdx.x) & 1) * 4608)) + ((((int)threadIdx.x) & 7) * 576)) + rc_outer_outer) + 442368))];
    PaddedInput_shared[((((int)threadIdx.x) + 224))] = placeholder[(((((((((((int)threadIdx.x) + 224) >> 6) * 147456) + ((((int)blockIdx.x) >> 1) * 73728)) + (((((int)threadIdx.x) >> 3) + 4) * 9216)) + ((((int)blockIdx.x) & 1) * 4608)) + ((((int)threadIdx.x) & 7) * 576)) + rc_outer_outer))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 96) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 32))] = placeholder1[((((rc_outer_outer * 96) + ((int)threadIdx.x)) + 32))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[((((rc_outer_outer * 96) + ((int)threadIdx.x)) + 64))];
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 4; ++xx_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 24; ++ff_outer_inner) {
        Conv2dOutput[(((xx_outer_inner * 48) + (ff_outer_inner * 2)))] = (Conv2dOutput[(((xx_outer_inner * 48) + (ff_outer_inner * 2)))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 16) + ((((int)threadIdx.x) & 1) * 4)) + xx_outer_inner))] * placeholder_shared[((ff_outer_inner * 2))]));
        Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 384))] = (Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 384))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 16) + ((((int)threadIdx.x) & 1) * 4)) + xx_outer_inner))] * placeholder_shared[(((ff_outer_inner * 2) + 48))]));
        Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 1))] = (Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 1))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 16) + ((((int)threadIdx.x) & 1) * 4)) + xx_outer_inner))] * placeholder_shared[(((ff_outer_inner * 2) + 1))]));
        Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 385))] = (Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 385))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 16) + ((((int)threadIdx.x) & 1) * 4)) + xx_outer_inner))] * placeholder_shared[(((ff_outer_inner * 2) + 49))]));
        Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 192))] = (Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 192))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 16) + ((((int)threadIdx.x) & 1) * 4)) + xx_outer_inner) + 8))] * placeholder_shared[((ff_outer_inner * 2))]));
        Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 576))] = (Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 576))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 16) + ((((int)threadIdx.x) & 1) * 4)) + xx_outer_inner) + 8))] * placeholder_shared[(((ff_outer_inner * 2) + 48))]));
        Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 193))] = (Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 193))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 16) + ((((int)threadIdx.x) & 1) * 4)) + xx_outer_inner) + 8))] * placeholder_shared[(((ff_outer_inner * 2) + 1))]));
        Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 577))] = (Conv2dOutput[((((xx_outer_inner * 48) + (ff_outer_inner * 2)) + 577))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 16) + ((((int)threadIdx.x) & 1) * 4)) + xx_outer_inner) + 8))] * placeholder_shared[(((ff_outer_inner * 2) + 49))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 48; ++ax3_inner) {
        T_add[((((((((((((int)threadIdx.x) >> 3) * 24576) + ((((int)blockIdx.x) >> 1) * 12288)) + (((((int)threadIdx.x) & 7) >> 1) * 3072)) + (ax1_inner * 1536)) + ((((int)blockIdx.x) & 1) * 768)) + ((((int)threadIdx.x) & 1) * 384)) + (ax2_inner * 96)) + ax3_inner))] = (placeholder2[((((((((((((int)threadIdx.x) >> 3) * 24576) + ((((int)blockIdx.x) >> 1) * 12288)) + (((((int)threadIdx.x) & 7) >> 1) * 3072)) + (ax1_inner * 1536)) + ((((int)blockIdx.x) & 1) * 768)) + ((((int)threadIdx.x) & 1) * 384)) + (ax2_inner * 96)) + ax3_inner))] + (Conv2dOutput[((((ax1_inner * 192) + (ax2_inner * 48)) + ax3_inner))] + placeholder3[(ax3_inner)]));
        T_add[(((((((((((((int)threadIdx.x) >> 3) * 24576) + ((((int)blockIdx.x) >> 1) * 12288)) + (((((int)threadIdx.x) & 7) >> 1) * 3072)) + (ax1_inner * 1536)) + ((((int)blockIdx.x) & 1) * 768)) + ((((int)threadIdx.x) & 1) * 384)) + (ax2_inner * 96)) + ax3_inner) + 48))] = (placeholder2[(((((((((((((int)threadIdx.x) >> 3) * 24576) + ((((int)blockIdx.x) >> 1) * 12288)) + (((((int)threadIdx.x) & 7) >> 1) * 3072)) + (ax1_inner * 1536)) + ((((int)blockIdx.x) & 1) * 768)) + ((((int)threadIdx.x) & 1) * 384)) + (ax2_inner * 96)) + ax3_inner) + 48))] + (Conv2dOutput[(((((ax1_inner * 192) + (ax2_inner * 48)) + ax3_inner) + 384))] + placeholder3[((ax3_inner + 48))]));
      }
    }
  }
}


