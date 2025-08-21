
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
  float Conv2dOutput[36];
  __shared__ float PaddedInput_shared[9];
  __shared__ float placeholder_shared[128];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(24)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(26)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(28)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(30)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(32)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(34)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(25)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(27)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(29)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(31)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(33)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(35)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 608; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 9) {
      PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)blockIdx.x) / 5) * 27360) + ((((int)threadIdx.x) / 3) * 9120)) + ((((int)blockIdx.x) % 5) * 1824)) + ((((int)threadIdx.x) % 3) * 608)) + rc_outer_outer))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 128) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 32))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 32))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 64))];
    placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[((((rc_outer_outer * 128) + ((int)threadIdx.x)) + 96))];
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(0)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(1)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(2)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(3)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(4)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(5)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(6)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(7)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(8)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
  }
  for (int ax1_inner = 0; ax1_inner < 3; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[((((((((((int)blockIdx.x) / 5) * 5760) + (ax1_inner * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (ax2_inner * 128)) + (((int)threadIdx.x) * 2)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 6) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((int)blockIdx.x) / 5) * 5760) + (ax1_inner * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (ax2_inner * 128)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 64))] = max((Conv2dOutput[(((((ax1_inner * 6) + (ax2_inner * 2)) + ax3_inner) + 18))] + placeholder2[((((((int)threadIdx.x) * 2) + ax3_inner) + 64))]), 0.000000e+00f);
      }
    }
  }
}


