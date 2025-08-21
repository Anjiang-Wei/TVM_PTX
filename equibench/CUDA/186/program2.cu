
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
  float Conv2dOutput[16];
  __shared__ float PaddedInput_shared[896];
  __shared__ float placeholder_shared[160];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 10; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)threadIdx.x) / 112) * 31360) + ((((int)blockIdx.x) / 3) * 1120)) + (((((int)threadIdx.x) % 112) >> 2) * 40)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    if (((int)threadIdx.x) < 336) {
      PaddedInput_shared[((((int)threadIdx.x) + 560))] = placeholder[((((((((((int)threadIdx.x) / 112) * 31360) + ((((int)blockIdx.x) / 3) * 1120)) + (((((int)threadIdx.x) % 112) >> 2) * 40)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 156800))];
    }
    if (((int)threadIdx.x) < 160) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 480) + ((((int)threadIdx.x) / 40) * 120)) + ((((int)blockIdx.x) % 3) * 40)) + (((int)threadIdx.x) % 40)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 4))] * placeholder_shared[(((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)) + 1))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 4))] * placeholder_shared[((((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)) + 1))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 8))] * placeholder_shared[(((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 12))] * placeholder_shared[(((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 8))] * placeholder_shared[((((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)) + 1))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 12))] * placeholder_shared[((((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)) + 1))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 112))] * placeholder_shared[(((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 116))] * placeholder_shared[(((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 112))] * placeholder_shared[((((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)) + 1))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 116))] * placeholder_shared[((((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)) + 1))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 120))] * placeholder_shared[(((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 124))] * placeholder_shared[(((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 120))] * placeholder_shared[((((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)) + 1))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((((int)threadIdx.x) / 140) * 224) + (((((int)threadIdx.x) % 140) / 20) * 16)) + rc_outer_inner) + 124))] * placeholder_shared[((((rc_outer_inner * 40) + ((((int)threadIdx.x) % 20) * 2)) + 1))]));
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[((((((((((((int)threadIdx.x) / 140) * 188160) + (ax0_inner * 94080)) + ((((int)blockIdx.x) / 3) * 3360)) + (((((int)threadIdx.x) % 140) / 20) * 480)) + (ax2_inner * 120)) + ((((int)blockIdx.x) % 3) * 40)) + ((((int)threadIdx.x) % 20) * 2)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 8) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) % 3) * 40) + ((((int)threadIdx.x) % 20) * 2)) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


