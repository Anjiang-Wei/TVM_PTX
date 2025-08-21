
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
  float Conv2dOutput[128];
  __shared__ float PaddedInput_shared[448];
  __shared__ float placeholder_shared[512];
  for (int yy_inner_init = 0; yy_inner_init < 4; ++yy_inner_init) {
    Conv2dOutput[((yy_inner_init * 32))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 6))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 7))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 10))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 11))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 12))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 13))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 14))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 15))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 16))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 17))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 18))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 19))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 20))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 21))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 22))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 23))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 24))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 25))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 26))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 27))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 28))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 29))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 30))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 32) + 31))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    ((float4*)(PaddedInput_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(placeholder + (((((((((int)blockIdx.x) >> 2) * 57344) + ((((int)blockIdx.x) & 3) * 3584)) + ((((int)threadIdx.x) >> 1) * 256)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) & 1) * 4)))))[0];
    ((float4*)(PaddedInput_shared + (((((int)threadIdx.x) * 4) + 112))))[0] = ((float4*)(placeholder + ((((((((((int)blockIdx.x) >> 2) * 57344) + ((((int)blockIdx.x) & 3) * 3584)) + ((((int)threadIdx.x) >> 1) * 256)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 14336))))[0];
    ((float4*)(PaddedInput_shared + (((((int)threadIdx.x) * 4) + 224))))[0] = ((float4*)(placeholder + ((((((((((int)blockIdx.x) >> 2) * 57344) + ((((int)blockIdx.x) & 3) * 3584)) + ((((int)threadIdx.x) >> 1) * 256)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 28672))))[0];
    ((float4*)(PaddedInput_shared + (((((int)threadIdx.x) * 4) + 336))))[0] = ((float4*)(placeholder + ((((((((((int)blockIdx.x) >> 2) * 57344) + ((((int)blockIdx.x) & 3) * 3584)) + ((((int)threadIdx.x) >> 1) * 256)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 43008))))[0];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 512) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 28))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 28))];
    placeholder_shared[((((int)threadIdx.x) + 56))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 56))];
    placeholder_shared[((((int)threadIdx.x) + 84))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 84))];
    placeholder_shared[((((int)threadIdx.x) + 112))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 112))];
    placeholder_shared[((((int)threadIdx.x) + 140))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 140))];
    placeholder_shared[((((int)threadIdx.x) + 168))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 168))];
    placeholder_shared[((((int)threadIdx.x) + 196))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 196))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 224))];
    placeholder_shared[((((int)threadIdx.x) + 252))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 252))];
    placeholder_shared[((((int)threadIdx.x) + 280))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 280))];
    placeholder_shared[((((int)threadIdx.x) + 308))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 308))];
    placeholder_shared[((((int)threadIdx.x) + 336))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 336))];
    placeholder_shared[((((int)threadIdx.x) + 364))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 364))];
    placeholder_shared[((((int)threadIdx.x) + 392))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 392))];
    placeholder_shared[((((int)threadIdx.x) + 420))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 420))];
    placeholder_shared[((((int)threadIdx.x) + 448))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 448))];
    placeholder_shared[((((int)threadIdx.x) + 476))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 476))];
    if (((int)threadIdx.x) < 8) {
      placeholder_shared[((((int)threadIdx.x) + 504))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 504))];
    }
    __syncthreads();
    for (int rc_inner = 0; rc_inner < 8; ++rc_inner) {
      for (int yy_inner = 0; yy_inner < 4; ++yy_inner) {
        Conv2dOutput[((yy_inner * 32))] = (Conv2dOutput[((yy_inner * 32))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[(((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)))]));
        Conv2dOutput[(((yy_inner * 32) + 1))] = (Conv2dOutput[(((yy_inner * 32) + 1))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 1))]));
        Conv2dOutput[(((yy_inner * 32) + 2))] = (Conv2dOutput[(((yy_inner * 32) + 2))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 2))]));
        Conv2dOutput[(((yy_inner * 32) + 3))] = (Conv2dOutput[(((yy_inner * 32) + 3))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 3))]));
        Conv2dOutput[(((yy_inner * 32) + 4))] = (Conv2dOutput[(((yy_inner * 32) + 4))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 4))]));
        Conv2dOutput[(((yy_inner * 32) + 5))] = (Conv2dOutput[(((yy_inner * 32) + 5))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 5))]));
        Conv2dOutput[(((yy_inner * 32) + 6))] = (Conv2dOutput[(((yy_inner * 32) + 6))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 6))]));
        Conv2dOutput[(((yy_inner * 32) + 7))] = (Conv2dOutput[(((yy_inner * 32) + 7))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 7))]));
        Conv2dOutput[(((yy_inner * 32) + 8))] = (Conv2dOutput[(((yy_inner * 32) + 8))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 8))]));
        Conv2dOutput[(((yy_inner * 32) + 9))] = (Conv2dOutput[(((yy_inner * 32) + 9))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 9))]));
        Conv2dOutput[(((yy_inner * 32) + 10))] = (Conv2dOutput[(((yy_inner * 32) + 10))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 10))]));
        Conv2dOutput[(((yy_inner * 32) + 11))] = (Conv2dOutput[(((yy_inner * 32) + 11))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 11))]));
        Conv2dOutput[(((yy_inner * 32) + 12))] = (Conv2dOutput[(((yy_inner * 32) + 12))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 12))]));
        Conv2dOutput[(((yy_inner * 32) + 13))] = (Conv2dOutput[(((yy_inner * 32) + 13))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 13))]));
        Conv2dOutput[(((yy_inner * 32) + 14))] = (Conv2dOutput[(((yy_inner * 32) + 14))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 14))]));
        Conv2dOutput[(((yy_inner * 32) + 15))] = (Conv2dOutput[(((yy_inner * 32) + 15))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 15))]));
        Conv2dOutput[(((yy_inner * 32) + 16))] = (Conv2dOutput[(((yy_inner * 32) + 16))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 16))]));
        Conv2dOutput[(((yy_inner * 32) + 17))] = (Conv2dOutput[(((yy_inner * 32) + 17))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 17))]));
        Conv2dOutput[(((yy_inner * 32) + 18))] = (Conv2dOutput[(((yy_inner * 32) + 18))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 18))]));
        Conv2dOutput[(((yy_inner * 32) + 19))] = (Conv2dOutput[(((yy_inner * 32) + 19))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 19))]));
        Conv2dOutput[(((yy_inner * 32) + 20))] = (Conv2dOutput[(((yy_inner * 32) + 20))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 20))]));
        Conv2dOutput[(((yy_inner * 32) + 21))] = (Conv2dOutput[(((yy_inner * 32) + 21))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 21))]));
        Conv2dOutput[(((yy_inner * 32) + 22))] = (Conv2dOutput[(((yy_inner * 32) + 22))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 22))]));
        Conv2dOutput[(((yy_inner * 32) + 23))] = (Conv2dOutput[(((yy_inner * 32) + 23))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 23))]));
        Conv2dOutput[(((yy_inner * 32) + 24))] = (Conv2dOutput[(((yy_inner * 32) + 24))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 24))]));
        Conv2dOutput[(((yy_inner * 32) + 25))] = (Conv2dOutput[(((yy_inner * 32) + 25))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 25))]));
        Conv2dOutput[(((yy_inner * 32) + 26))] = (Conv2dOutput[(((yy_inner * 32) + 26))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 26))]));
        Conv2dOutput[(((yy_inner * 32) + 27))] = (Conv2dOutput[(((yy_inner * 32) + 27))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 27))]));
        Conv2dOutput[(((yy_inner * 32) + 28))] = (Conv2dOutput[(((yy_inner * 32) + 28))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 28))]));
        Conv2dOutput[(((yy_inner * 32) + 29))] = (Conv2dOutput[(((yy_inner * 32) + 29))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 29))]));
        Conv2dOutput[(((yy_inner * 32) + 30))] = (Conv2dOutput[(((yy_inner * 32) + 30))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 30))]));
        Conv2dOutput[(((yy_inner * 32) + 31))] = (Conv2dOutput[(((yy_inner * 32) + 31))] + (PaddedInput_shared[((((yy_inner * 112) + ((((int)threadIdx.x) >> 1) * 8)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 1) * 32)) + 31))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 32; ++ax3_inner) {
      T_relu[(((((((((int)blockIdx.x) >> 2) * 14336) + (ax1_inner * 3584)) + ((((int)blockIdx.x) & 3) * 896)) + (((int)threadIdx.x) * 32)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 32) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 1) * 32) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


