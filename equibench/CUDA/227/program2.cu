
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
  float Conv2dOutput[8];
  __shared__ float PaddedInput_shared[1568];
  __shared__ float placeholder_shared[16];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 56; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((int)blockIdx.x) >> 5) * 87808) + ((((int)threadIdx.x) >> 2) * 224)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 196))] = placeholder[(((((((((int)blockIdx.x) >> 5) * 87808) + ((((int)threadIdx.x) >> 2) * 224)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 10976))];
    PaddedInput_shared[((((int)threadIdx.x) + 392))] = placeholder[(((((((((int)blockIdx.x) >> 5) * 87808) + ((((int)threadIdx.x) >> 2) * 224)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 21952))];
    PaddedInput_shared[((((int)threadIdx.x) + 588))] = placeholder[(((((((((int)blockIdx.x) >> 5) * 87808) + ((((int)threadIdx.x) >> 2) * 224)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 32928))];
    PaddedInput_shared[((((int)threadIdx.x) + 784))] = placeholder[(((((((((int)blockIdx.x) >> 5) * 87808) + ((((int)threadIdx.x) >> 2) * 224)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 43904))];
    PaddedInput_shared[((((int)threadIdx.x) + 980))] = placeholder[(((((((((int)blockIdx.x) >> 5) * 87808) + ((((int)threadIdx.x) >> 2) * 224)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 54880))];
    PaddedInput_shared[((((int)threadIdx.x) + 1176))] = placeholder[(((((((((int)blockIdx.x) >> 5) * 87808) + ((((int)threadIdx.x) >> 2) * 224)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 65856))];
    PaddedInput_shared[((((int)threadIdx.x) + 1372))] = placeholder[(((((((((int)blockIdx.x) >> 5) * 87808) + ((((int)threadIdx.x) >> 2) * 224)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 76832))];
    if (((int)threadIdx.x) < 4) {
      ((float4*)(placeholder_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(placeholder1 + ((((rc_outer_outer * 512) + (((int)threadIdx.x) * 128)) + ((((int)blockIdx.x) & 31) * 4)))))[0];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)))] * placeholder_shared[((((int)threadIdx.x) & 3))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 4))] * placeholder_shared[((((int)threadIdx.x) & 3))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 8))] * placeholder_shared[((((int)threadIdx.x) & 3))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 12))] * placeholder_shared[((((int)threadIdx.x) & 3))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 1))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 4))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 5))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 4))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 9))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 4))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 13))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 4))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 112))] * placeholder_shared[((((int)threadIdx.x) & 3))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 116))] * placeholder_shared[((((int)threadIdx.x) & 3))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 120))] * placeholder_shared[((((int)threadIdx.x) & 3))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 124))] * placeholder_shared[((((int)threadIdx.x) & 3))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 113))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 4))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 117))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 4))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 121))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 4))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 125))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 4))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 2))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 8))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 6))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 8))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 10))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 8))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 14))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 8))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 3))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 12))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 7))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 12))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 11))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 12))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 15))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 12))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 114))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 8))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 118))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 8))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 122))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 8))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 126))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 8))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 115))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 12))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 119))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 12))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 123))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 12))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 28) * 224) + (((((int)threadIdx.x) % 28) >> 2) * 16)) + 127))] * placeholder_shared[(((((int)threadIdx.x) & 3) + 12))]));
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      T_relu[(((((((((((int)blockIdx.x) >> 5) * 50176) + ((((int)threadIdx.x) / 28) * 7168)) + (ax1_inner * 3584)) + (((((int)threadIdx.x) % 28) >> 2) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 31) * 4)) + (((int)threadIdx.x) & 3)))] = max((Conv2dOutput[(((ax1_inner * 4) + ax2_inner))] + placeholder2[((((((int)blockIdx.x) & 31) * 4) + (((int)threadIdx.x) & 3)))]), 0.000000e+00f);
    }
  }
}


