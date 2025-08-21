
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
  float Conv2dOutput[16];
  __shared__ float PaddedInput_shared[64];
  __shared__ float placeholder_shared[128];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 240; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 16) {
      ((float4*)(PaddedInput_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(placeholder + ((((((((int)threadIdx.x) >> 1) * 7680) + ((((int)blockIdx.x) / 5) * 1920)) + ((((int)threadIdx.x) & 1) * 960)) + (rc_outer_outer * 4)))))[0];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 640) + ((((int)blockIdx.x) % 5) * 32)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 32))] = placeholder1[(((((rc_outer_outer * 640) + ((((int)blockIdx.x) % 5) * 32)) + ((int)threadIdx.x)) + 160))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[(((((rc_outer_outer * 640) + ((((int)blockIdx.x) % 5) * 32)) + ((int)threadIdx.x)) + 320))];
    placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[(((((rc_outer_outer * 640) + ((((int)blockIdx.x) % 5) * 32)) + ((int)threadIdx.x)) + 480))];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 32))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 32))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 4))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 4))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 36))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 36))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 8))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 8))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 40))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 40))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 12))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 12))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 44))] * placeholder_shared[(((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 16) + rc_outer_inner) + 44))] * placeholder_shared[((((rc_outer_inner * 32) + (((int)threadIdx.x) & 15)) + 16))]));
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      T_add[((((((((((int)threadIdx.x) >> 4) * 2560) + (ax1_inner * 1280)) + ((((int)blockIdx.x) / 5) * 320)) + (ax2_inner * 160)) + ((((int)blockIdx.x) % 5) * 32)) + (((int)threadIdx.x) & 15)))] = (placeholder2[((((((((((int)threadIdx.x) >> 4) * 2560) + (ax1_inner * 1280)) + ((((int)blockIdx.x) / 5) * 320)) + (ax2_inner * 160)) + ((((int)blockIdx.x) % 5) * 32)) + (((int)threadIdx.x) & 15)))] + (Conv2dOutput[(((ax1_inner * 2) + ax2_inner))] + placeholder3[((((((int)blockIdx.x) % 5) * 32) + (((int)threadIdx.x) & 15)))]));
      T_add[(((((((((((int)threadIdx.x) >> 4) * 2560) + (ax1_inner * 1280)) + ((((int)blockIdx.x) / 5) * 320)) + (ax2_inner * 160)) + ((((int)blockIdx.x) % 5) * 32)) + (((int)threadIdx.x) & 15)) + 16))] = (placeholder2[(((((((((((int)threadIdx.x) >> 4) * 2560) + (ax1_inner * 1280)) + ((((int)blockIdx.x) / 5) * 320)) + (ax2_inner * 160)) + ((((int)blockIdx.x) % 5) * 32)) + (((int)threadIdx.x) & 15)) + 16))] + (Conv2dOutput[((((ax1_inner * 2) + ax2_inner) + 4))] + placeholder3[(((((((int)blockIdx.x) % 5) * 32) + (((int)threadIdx.x) & 15)) + 16))]));
      T_add[(((((((((((int)threadIdx.x) >> 4) * 2560) + (ax1_inner * 1280)) + ((((int)blockIdx.x) / 5) * 320)) + (ax2_inner * 160)) + ((((int)blockIdx.x) % 5) * 32)) + (((int)threadIdx.x) & 15)) + 5120))] = (placeholder2[(((((((((((int)threadIdx.x) >> 4) * 2560) + (ax1_inner * 1280)) + ((((int)blockIdx.x) / 5) * 320)) + (ax2_inner * 160)) + ((((int)blockIdx.x) % 5) * 32)) + (((int)threadIdx.x) & 15)) + 5120))] + (Conv2dOutput[((((ax1_inner * 2) + ax2_inner) + 8))] + placeholder3[((((((int)blockIdx.x) % 5) * 32) + (((int)threadIdx.x) & 15)))]));
      T_add[(((((((((((int)threadIdx.x) >> 4) * 2560) + (ax1_inner * 1280)) + ((((int)blockIdx.x) / 5) * 320)) + (ax2_inner * 160)) + ((((int)blockIdx.x) % 5) * 32)) + (((int)threadIdx.x) & 15)) + 5136))] = (placeholder2[(((((((((((int)threadIdx.x) >> 4) * 2560) + (ax1_inner * 1280)) + ((((int)blockIdx.x) / 5) * 320)) + (ax2_inner * 160)) + ((((int)blockIdx.x) % 5) * 32)) + (((int)threadIdx.x) & 15)) + 5136))] + (Conv2dOutput[((((ax1_inner * 2) + ax2_inner) + 12))] + placeholder3[(((((((int)blockIdx.x) % 5) * 32) + (((int)threadIdx.x) & 15)) + 16))]));
    }
  }
}


