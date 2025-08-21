
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
  float Conv2dOutput[896];
  __shared__ float PaddedInput_shared[448];
  __shared__ float placeholder_shared[512];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 8; ++yy_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 14; ++xx_outer_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 28) + (xx_outer_inner_init * 2)))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 28) + (xx_outer_inner_init * 2)) + 224))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 28) + (xx_outer_inner_init * 2)) + 448))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 28) + (xx_outer_inner_init * 2)) + 672))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 28) + (xx_outer_inner_init * 2)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 28) + (xx_outer_inner_init * 2)) + 225))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 28) + (xx_outer_inner_init * 2)) + 449))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 28) + (xx_outer_inner_init * 2)) + 673))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[((((int)threadIdx.x) * 2))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 57344) + ((((int)threadIdx.x) / 28) * 7168)) + ((((int)blockIdx.x) & 1) * 3584)) + ((((int)threadIdx.x) % 28) * 128)) + (rc_outer_outer * 2)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 57344) + ((((int)threadIdx.x) / 28) * 7168)) + ((((int)blockIdx.x) & 1) * 3584)) + ((((int)threadIdx.x) % 28) * 128)) + (rc_outer_outer * 2)) + 1))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 128))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 57344) + (((((int)threadIdx.x) + 64) / 28) * 7168)) + ((((int)blockIdx.x) & 1) * 3584)) + (((((int)threadIdx.x) + 8) % 28) * 128)) + (rc_outer_outer * 2)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 129))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 57344) + (((((int)threadIdx.x) + 64) / 28) * 7168)) + ((((int)blockIdx.x) & 1) * 3584)) + (((((int)threadIdx.x) + 8) % 28) * 128)) + (rc_outer_outer * 2)) + 1))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 256))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 57344) + (((((int)threadIdx.x) + 128) / 28) * 7168)) + ((((int)blockIdx.x) & 1) * 3584)) + (((((int)threadIdx.x) + 16) % 28) * 128)) + (rc_outer_outer * 2)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 257))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 57344) + (((((int)threadIdx.x) + 128) / 28) * 7168)) + ((((int)blockIdx.x) & 1) * 3584)) + (((((int)threadIdx.x) + 16) % 28) * 128)) + (rc_outer_outer * 2)) + 1))];
    if (((int)threadIdx.x) < 32) {
      PaddedInput_shared[(((((int)threadIdx.x) * 2) + 384))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 57344) + (((((int)threadIdx.x) + 192) / 28) * 7168)) + ((((int)blockIdx.x) & 1) * 3584)) + (((((int)threadIdx.x) + 24) % 28) * 128)) + (rc_outer_outer * 2)))];
      PaddedInput_shared[(((((int)threadIdx.x) * 2) + 385))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 57344) + (((((int)threadIdx.x) + 192) / 28) * 7168)) + ((((int)blockIdx.x) & 1) * 3584)) + (((((int)threadIdx.x) + 24) % 28) * 128)) + (rc_outer_outer * 2)) + 1))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 512) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 64))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 128))];
    placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 192))];
    placeholder_shared[((((int)threadIdx.x) + 256))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 256))];
    placeholder_shared[((((int)threadIdx.x) + 320))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 320))];
    placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 384))];
    placeholder_shared[((((int)threadIdx.x) + 448))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 448))];
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 8; ++yy_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 14; ++xx_outer_inner) {
        Conv2dOutput[(((yy_outer_inner * 28) + (xx_outer_inner * 2)))] = (Conv2dOutput[(((yy_outer_inner * 28) + (xx_outer_inner * 2)))] + (PaddedInput_shared[(((yy_outer_inner * 56) + (xx_outer_inner * 2)))] * placeholder_shared[((((int)threadIdx.x) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 224))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 224))] + (PaddedInput_shared[(((yy_outer_inner * 56) + (xx_outer_inner * 2)))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 448))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 448))] + (PaddedInput_shared[((((yy_outer_inner * 56) + (xx_outer_inner * 2)) + 28))] * placeholder_shared[((((int)threadIdx.x) * 2))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 672))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 672))] + (PaddedInput_shared[((((yy_outer_inner * 56) + (xx_outer_inner * 2)) + 28))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 1))] + (PaddedInput_shared[(((yy_outer_inner * 56) + (xx_outer_inner * 2)))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 225))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 225))] + (PaddedInput_shared[(((yy_outer_inner * 56) + (xx_outer_inner * 2)))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 449))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 449))] + (PaddedInput_shared[((((yy_outer_inner * 56) + (xx_outer_inner * 2)) + 28))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 673))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 673))] + (PaddedInput_shared[((((yy_outer_inner * 56) + (xx_outer_inner * 2)) + 28))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
        Conv2dOutput[(((yy_outer_inner * 28) + (xx_outer_inner * 2)))] = (Conv2dOutput[(((yy_outer_inner * 28) + (xx_outer_inner * 2)))] + (PaddedInput_shared[((((yy_outer_inner * 56) + (xx_outer_inner * 2)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 256))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 224))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 224))] + (PaddedInput_shared[((((yy_outer_inner * 56) + (xx_outer_inner * 2)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 384))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 448))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 448))] + (PaddedInput_shared[((((yy_outer_inner * 56) + (xx_outer_inner * 2)) + 29))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 256))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 672))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 672))] + (PaddedInput_shared[((((yy_outer_inner * 56) + (xx_outer_inner * 2)) + 29))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 384))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 1))] + (PaddedInput_shared[((((yy_outer_inner * 56) + (xx_outer_inner * 2)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 257))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 225))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 225))] + (PaddedInput_shared[((((yy_outer_inner * 56) + (xx_outer_inner * 2)) + 1))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 385))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 449))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 449))] + (PaddedInput_shared[((((yy_outer_inner * 56) + (xx_outer_inner * 2)) + 29))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 257))]));
        Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 673))] = (Conv2dOutput[((((yy_outer_inner * 28) + (xx_outer_inner * 2)) + 673))] + (PaddedInput_shared[((((yy_outer_inner * 56) + (xx_outer_inner * 2)) + 29))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 385))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 8; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 14; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[((((((((((int)blockIdx.x) >> 1) * 114688) + (ax1_inner * 14336)) + ((((int)blockIdx.x) & 1) * 7168)) + (ax2_inner * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner))] = max(((Conv2dOutput[((((ax1_inner * 28) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]) + placeholder3[((((((((((int)blockIdx.x) >> 1) * 114688) + (ax1_inner * 14336)) + ((((int)blockIdx.x) & 1) * 7168)) + (ax2_inner * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((int)blockIdx.x) >> 1) * 114688) + (ax1_inner * 14336)) + ((((int)blockIdx.x) & 1) * 7168)) + (ax2_inner * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 128))] = max(((Conv2dOutput[(((((ax1_inner * 28) + (ax2_inner * 2)) + ax3_inner) + 224))] + placeholder2[((((((int)threadIdx.x) * 2) + ax3_inner) + 128))]) + placeholder3[(((((((((((int)blockIdx.x) >> 1) * 114688) + (ax1_inner * 14336)) + ((((int)blockIdx.x) & 1) * 7168)) + (ax2_inner * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 128))]), 0.000000e+00f);
        T_relu[(((((((((((int)blockIdx.x) >> 1) * 114688) + (ax1_inner * 14336)) + ((((int)blockIdx.x) & 1) * 7168)) + (ax2_inner * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 3584))] = max(((Conv2dOutput[(((((ax1_inner * 28) + (ax2_inner * 2)) + ax3_inner) + 448))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 1) * 114688) + (ax1_inner * 14336)) + ((((int)blockIdx.x) & 1) * 7168)) + (ax2_inner * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 3584))]), 0.000000e+00f);
        T_relu[(((((((((((int)blockIdx.x) >> 1) * 114688) + (ax1_inner * 14336)) + ((((int)blockIdx.x) & 1) * 7168)) + (ax2_inner * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 3712))] = max(((Conv2dOutput[(((((ax1_inner * 28) + (ax2_inner * 2)) + ax3_inner) + 672))] + placeholder2[((((((int)threadIdx.x) * 2) + ax3_inner) + 128))]) + placeholder3[(((((((((((int)blockIdx.x) >> 1) * 114688) + (ax1_inner * 14336)) + ((((int)blockIdx.x) & 1) * 7168)) + (ax2_inner * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 3712))]), 0.000000e+00f);
      }
    }
  }
}


