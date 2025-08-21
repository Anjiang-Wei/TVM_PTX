
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
  float Conv2dOutput[128];
  __shared__ float PaddedInput_shared[128];
  __shared__ float placeholder_shared[160];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 8; ++xx_outer_inner_init) {
    Conv2dOutput[((xx_outer_inner_init * 4))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 64))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 32))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 96))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 65))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 33))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 97))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 66))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 34))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 98))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 67))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 35))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 4) + 99))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 92; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 23552) + ((((int)threadIdx.x) >> 4) * 2944)) + ((((int)blockIdx.x) & 1) * 1472)) + (((((int)threadIdx.x) & 15) >> 1) * 184)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 40))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 23552) + (((((int)threadIdx.x) + 40) >> 4) * 2944)) + ((((int)blockIdx.x) & 1) * 1472)) + ((((((int)threadIdx.x) >> 1) + 4) & 7) * 184)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 80))] = placeholder[(((((((((((int)blockIdx.x) >> 1) * 23552) + ((((int)threadIdx.x) >> 4) * 2944)) + ((((int)blockIdx.x) & 1) * 1472)) + (((((int)threadIdx.x) & 15) >> 1) * 184)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 14720))];
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[((((int)threadIdx.x) + 120))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 23552) + (((((int)threadIdx.x) + 120) >> 4) * 2944)) + ((((int)blockIdx.x) & 1) * 1472)) + (((((int)threadIdx.x) >> 1) + 4) * 184)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    }
    ((float4*)(placeholder_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(placeholder1 + (((rc_outer_outer * 160) + (((int)threadIdx.x) * 4)))))[0];
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 8; ++xx_outer_inner) {
      Conv2dOutput[((xx_outer_inner * 4))] = (Conv2dOutput[((xx_outer_inner * 4))] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)))] * placeholder_shared[(((((int)threadIdx.x) % 20) * 4))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 64))] = (Conv2dOutput[(((xx_outer_inner * 4) + 64))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 64))] * placeholder_shared[(((((int)threadIdx.x) % 20) * 4))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 32))] = (Conv2dOutput[(((xx_outer_inner * 4) + 32))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 16))] * placeholder_shared[(((((int)threadIdx.x) % 20) * 4))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 96))] = (Conv2dOutput[(((xx_outer_inner * 4) + 96))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 80))] * placeholder_shared[(((((int)threadIdx.x) % 20) * 4))]));
      Conv2dOutput[((xx_outer_inner * 4))] = (Conv2dOutput[((xx_outer_inner * 4))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 80))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 64))] = (Conv2dOutput[(((xx_outer_inner * 4) + 64))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 65))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 80))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 32))] = (Conv2dOutput[(((xx_outer_inner * 4) + 32))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 17))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 80))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 96))] = (Conv2dOutput[(((xx_outer_inner * 4) + 96))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 81))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 80))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 1))] = (Conv2dOutput[(((xx_outer_inner * 4) + 1))] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 65))] = (Conv2dOutput[(((xx_outer_inner * 4) + 65))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 33))] = (Conv2dOutput[(((xx_outer_inner * 4) + 33))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 16))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 97))] = (Conv2dOutput[(((xx_outer_inner * 4) + 97))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 80))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 1))] = (Conv2dOutput[(((xx_outer_inner * 4) + 1))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 81))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 65))] = (Conv2dOutput[(((xx_outer_inner * 4) + 65))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 65))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 81))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 33))] = (Conv2dOutput[(((xx_outer_inner * 4) + 33))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 17))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 81))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 97))] = (Conv2dOutput[(((xx_outer_inner * 4) + 97))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 81))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 81))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 2))] = (Conv2dOutput[(((xx_outer_inner * 4) + 2))] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 66))] = (Conv2dOutput[(((xx_outer_inner * 4) + 66))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 34))] = (Conv2dOutput[(((xx_outer_inner * 4) + 34))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 16))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 98))] = (Conv2dOutput[(((xx_outer_inner * 4) + 98))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 80))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 2))] = (Conv2dOutput[(((xx_outer_inner * 4) + 2))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 82))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 66))] = (Conv2dOutput[(((xx_outer_inner * 4) + 66))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 65))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 82))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 34))] = (Conv2dOutput[(((xx_outer_inner * 4) + 34))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 17))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 82))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 98))] = (Conv2dOutput[(((xx_outer_inner * 4) + 98))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 81))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 82))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 3))] = (Conv2dOutput[(((xx_outer_inner * 4) + 3))] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 3))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 67))] = (Conv2dOutput[(((xx_outer_inner * 4) + 67))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 3))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 35))] = (Conv2dOutput[(((xx_outer_inner * 4) + 35))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 16))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 3))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 99))] = (Conv2dOutput[(((xx_outer_inner * 4) + 99))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 80))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 3))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 3))] = (Conv2dOutput[(((xx_outer_inner * 4) + 3))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 83))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 67))] = (Conv2dOutput[(((xx_outer_inner * 4) + 67))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 65))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 83))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 35))] = (Conv2dOutput[(((xx_outer_inner * 4) + 35))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 17))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 83))]));
      Conv2dOutput[(((xx_outer_inner * 4) + 99))] = (Conv2dOutput[(((xx_outer_inner * 4) + 99))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 20) * 32) + (xx_outer_inner * 2)) + 81))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 83))]));
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 8; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_add[(((((((((((int)blockIdx.x) >> 1) * 10240) + ((((int)threadIdx.x) / 20) * 2560)) + (ax1_inner * 1280)) + ((((int)blockIdx.x) & 1) * 640)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 20) * 4)) + ax3_inner))] = ((Conv2dOutput[((((ax1_inner * 32) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) % 20) * 4) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) >> 1) * 10240) + ((((int)threadIdx.x) / 20) * 2560)) + (ax1_inner * 1280)) + ((((int)blockIdx.x) & 1) * 640)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 20) * 4)) + ax3_inner))]);
        T_add[((((((((((((int)blockIdx.x) >> 1) * 10240) + ((((int)threadIdx.x) / 20) * 2560)) + (ax1_inner * 1280)) + ((((int)blockIdx.x) & 1) * 640)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 20) * 4)) + ax3_inner) + 5120))] = ((Conv2dOutput[(((((ax1_inner * 32) + (ax2_inner * 4)) + ax3_inner) + 64))] + placeholder2[((((((int)threadIdx.x) % 20) * 4) + ax3_inner))]) + placeholder3[((((((((((((int)blockIdx.x) >> 1) * 10240) + ((((int)threadIdx.x) / 20) * 2560)) + (ax1_inner * 1280)) + ((((int)blockIdx.x) & 1) * 640)) + (ax2_inner * 80)) + ((((int)threadIdx.x) % 20) * 4)) + ax3_inner) + 5120))]);
      }
    }
  }
}


