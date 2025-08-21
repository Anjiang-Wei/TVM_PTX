
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
  float Conv2dOutput[196];
  __shared__ float PaddedInput_shared[98];
  __shared__ float placeholder_shared[16];
  for (int yy_inner_init = 0; yy_inner_init < 14; ++yy_inner_init) {
    Conv2dOutput[(yy_inner_init)] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 14))] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 28))] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 42))] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 56))] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 70))] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 84))] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 98))] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 112))] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 126))] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 140))] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 154))] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 168))] = 0.000000e+00f;
    Conv2dOutput[((yy_inner_init + 182))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 992; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((int)threadIdx.x) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + ((((int)threadIdx.x) % 7) * 992)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 8))] = placeholder[(((((((((int)threadIdx.x) + 8) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + (((((int)threadIdx.x) + 1) % 7) * 992)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 16))] = placeholder[(((((((((int)threadIdx.x) + 16) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + (((((int)threadIdx.x) + 2) % 7) * 992)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 24))] = placeholder[(((((((((int)threadIdx.x) + 24) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + (((((int)threadIdx.x) + 3) % 7) * 992)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 32))] = placeholder[(((((((((int)threadIdx.x) + 32) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + (((((int)threadIdx.x) + 4) % 7) * 992)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 40))] = placeholder[(((((((((int)threadIdx.x) + 40) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + (((((int)threadIdx.x) + 5) % 7) * 992)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 48))] = placeholder[(((((((((int)threadIdx.x) + 48) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + (((((int)threadIdx.x) + 6) % 7) * 992)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 56))] = placeholder[(((((((((int)threadIdx.x) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + ((((int)threadIdx.x) % 7) * 992)) + rc_outer_outer) + 111104))];
    PaddedInput_shared[((((int)threadIdx.x) + 64))] = placeholder[(((((((((int)threadIdx.x) + 64) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + (((((int)threadIdx.x) + 1) % 7) * 992)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 72))] = placeholder[(((((((((int)threadIdx.x) + 72) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + (((((int)threadIdx.x) + 2) % 7) * 992)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 80))] = placeholder[(((((((((int)threadIdx.x) + 80) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + (((((int)threadIdx.x) + 3) % 7) * 992)) + rc_outer_outer))];
    PaddedInput_shared[((((int)threadIdx.x) + 88))] = placeholder[(((((((((int)threadIdx.x) + 88) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + (((((int)threadIdx.x) + 4) % 7) * 992)) + rc_outer_outer))];
    if (((int)threadIdx.x) < 2) {
      PaddedInput_shared[((((int)threadIdx.x) + 96))] = placeholder[(((((((((int)threadIdx.x) + 96) / 7) * 13888) + ((((int)blockIdx.x) >> 3) * 6944)) + ((((int)threadIdx.x) + 5) * 992)) + rc_outer_outer))];
    }
    ((float2*)(placeholder_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 128) + ((((int)blockIdx.x) & 7) * 16)) + (((int)threadIdx.x) * 2)))))[0];
    __syncthreads();
    for (int yy_inner = 0; yy_inner < 14; ++yy_inner) {
      Conv2dOutput[(yy_inner)] = (Conv2dOutput[(yy_inner)] + (PaddedInput_shared[((yy_inner * 7))] * placeholder_shared[(((int)threadIdx.x))]));
      Conv2dOutput[((yy_inner + 14))] = (Conv2dOutput[((yy_inner + 14))] + (PaddedInput_shared[((yy_inner * 7))] * placeholder_shared[((((int)threadIdx.x) + 8))]));
      Conv2dOutput[((yy_inner + 28))] = (Conv2dOutput[((yy_inner + 28))] + (PaddedInput_shared[(((yy_inner * 7) + 1))] * placeholder_shared[(((int)threadIdx.x))]));
      Conv2dOutput[((yy_inner + 42))] = (Conv2dOutput[((yy_inner + 42))] + (PaddedInput_shared[(((yy_inner * 7) + 1))] * placeholder_shared[((((int)threadIdx.x) + 8))]));
      Conv2dOutput[((yy_inner + 56))] = (Conv2dOutput[((yy_inner + 56))] + (PaddedInput_shared[(((yy_inner * 7) + 2))] * placeholder_shared[(((int)threadIdx.x))]));
      Conv2dOutput[((yy_inner + 70))] = (Conv2dOutput[((yy_inner + 70))] + (PaddedInput_shared[(((yy_inner * 7) + 2))] * placeholder_shared[((((int)threadIdx.x) + 8))]));
      Conv2dOutput[((yy_inner + 84))] = (Conv2dOutput[((yy_inner + 84))] + (PaddedInput_shared[(((yy_inner * 7) + 3))] * placeholder_shared[(((int)threadIdx.x))]));
      Conv2dOutput[((yy_inner + 98))] = (Conv2dOutput[((yy_inner + 98))] + (PaddedInput_shared[(((yy_inner * 7) + 3))] * placeholder_shared[((((int)threadIdx.x) + 8))]));
      Conv2dOutput[((yy_inner + 112))] = (Conv2dOutput[((yy_inner + 112))] + (PaddedInput_shared[(((yy_inner * 7) + 4))] * placeholder_shared[(((int)threadIdx.x))]));
      Conv2dOutput[((yy_inner + 126))] = (Conv2dOutput[((yy_inner + 126))] + (PaddedInput_shared[(((yy_inner * 7) + 4))] * placeholder_shared[((((int)threadIdx.x) + 8))]));
      Conv2dOutput[((yy_inner + 140))] = (Conv2dOutput[((yy_inner + 140))] + (PaddedInput_shared[(((yy_inner * 7) + 5))] * placeholder_shared[(((int)threadIdx.x))]));
      Conv2dOutput[((yy_inner + 154))] = (Conv2dOutput[((yy_inner + 154))] + (PaddedInput_shared[(((yy_inner * 7) + 5))] * placeholder_shared[((((int)threadIdx.x) + 8))]));
      Conv2dOutput[((yy_inner + 168))] = (Conv2dOutput[((yy_inner + 168))] + (PaddedInput_shared[(((yy_inner * 7) + 6))] * placeholder_shared[(((int)threadIdx.x))]));
      Conv2dOutput[((yy_inner + 182))] = (Conv2dOutput[((yy_inner + 182))] + (PaddedInput_shared[(((yy_inner * 7) + 6))] * placeholder_shared[((((int)threadIdx.x) + 8))]));
    }
  }
  for (int ax1_inner = 0; ax1_inner < 14; ++ax1_inner) {
    T_relu[(((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)))] = max((Conv2dOutput[(ax1_inner)] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 8))] = max((Conv2dOutput[((ax1_inner + 14))] + placeholder2[(((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)) + 8))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 128))] = max((Conv2dOutput[((ax1_inner + 28))] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 136))] = max((Conv2dOutput[((ax1_inner + 42))] + placeholder2[(((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)) + 8))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 256))] = max((Conv2dOutput[((ax1_inner + 56))] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 264))] = max((Conv2dOutput[((ax1_inner + 70))] + placeholder2[(((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)) + 8))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 384))] = max((Conv2dOutput[((ax1_inner + 84))] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 392))] = max((Conv2dOutput[((ax1_inner + 98))] + placeholder2[(((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)) + 8))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 512))] = max((Conv2dOutput[((ax1_inner + 112))] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 520))] = max((Conv2dOutput[((ax1_inner + 126))] + placeholder2[(((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)) + 8))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 640))] = max((Conv2dOutput[((ax1_inner + 140))] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 648))] = max((Conv2dOutput[((ax1_inner + 154))] + placeholder2[(((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)) + 8))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 768))] = max((Conv2dOutput[((ax1_inner + 168))] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)))]), 0.000000e+00f);
    T_relu[((((((ax1_inner * 1792) + ((((int)blockIdx.x) >> 3) * 896)) + ((((int)blockIdx.x) & 7) * 16)) + ((int)threadIdx.x)) + 776))] = max((Conv2dOutput[((ax1_inner + 182))] + placeholder2[(((((((int)blockIdx.x) & 7) * 16) + ((int)threadIdx.x)) + 8))]), 0.000000e+00f);
  }
}


