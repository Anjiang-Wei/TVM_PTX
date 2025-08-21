
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_multiply, float* __restrict__ Conv2dOutput, float* __restrict__ placeholder) {
  T_multiply[(((int)blockIdx.x))] = ((Conv2dOutput[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) % 960))]) * (max(min(((Conv2dOutput[(((int)blockIdx.x))] + placeholder[((((int)blockIdx.x) % 960))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ Conv2dOutput) {
  float Conv2dOutput_local[42];
  __shared__ float PaddedInput_shared[35];
  __shared__ float placeholder_shared[4800];
  for (int yy_c_outer_inner_init = 0; yy_c_outer_inner_init < 7; ++yy_c_outer_inner_init) {
    Conv2dOutput_local[((yy_c_outer_inner_init * 6))] = 0.000000e+00f;
    Conv2dOutput_local[(((yy_c_outer_inner_init * 6) + 1))] = 0.000000e+00f;
    Conv2dOutput_local[(((yy_c_outer_inner_init * 6) + 2))] = 0.000000e+00f;
    Conv2dOutput_local[(((yy_c_outer_inner_init * 6) + 3))] = 0.000000e+00f;
    Conv2dOutput_local[(((yy_c_outer_inner_init * 6) + 4))] = 0.000000e+00f;
    Conv2dOutput_local[(((yy_c_outer_inner_init * 6) + 5))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[((((int)threadIdx.x) * 7))] = placeholder[(((((((((int)threadIdx.x) * 7) / 5) * 1120) + (((int)blockIdx.x) * 160)) + (rc_outer_outer * 5)) + ((((int)threadIdx.x) * 7) % 5)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 1))] = placeholder[((((((((((int)threadIdx.x) * 7) + 1) / 5) * 1120) + (((int)blockIdx.x) * 160)) + (rc_outer_outer * 5)) + (((((int)threadIdx.x) * 7) + 1) % 5)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 2))] = placeholder[((((((((((int)threadIdx.x) * 7) + 2) / 5) * 1120) + (((int)blockIdx.x) * 160)) + (rc_outer_outer * 5)) + (((((int)threadIdx.x) * 7) + 2) % 5)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 3))] = placeholder[((((((((((int)threadIdx.x) * 7) + 3) / 5) * 1120) + (((int)blockIdx.x) * 160)) + (rc_outer_outer * 5)) + (((((int)threadIdx.x) * 7) + 3) % 5)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 4))] = placeholder[((((((((((int)threadIdx.x) * 7) + 4) / 5) * 1120) + (((int)blockIdx.x) * 160)) + (rc_outer_outer * 5)) + (((((int)threadIdx.x) * 7) + 4) % 5)))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 5))] = placeholder[((((((((((int)threadIdx.x) * 7) / 5) * 1120) + (((int)blockIdx.x) * 160)) + (rc_outer_outer * 5)) + ((((int)threadIdx.x) * 7) % 5)) + 1120))];
    }
    if (((int)threadIdx.x) < 5) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 6))] = placeholder[((((((((((int)threadIdx.x) * 7) + 6) / 5) * 1120) + (((int)blockIdx.x) * 160)) + (rc_outer_outer * 5)) + (((((int)threadIdx.x) * 7) + 1) % 5)))];
    }
    ((float3*)(placeholder_shared + ((((int)threadIdx.x) * 3))))[0] = ((float3*)(placeholder1 + (((rc_outer_outer * 4800) + (((int)threadIdx.x) * 3)))))[0];
    ((float3*)(placeholder_shared + (((((int)threadIdx.x) * 3) + 480))))[0] = ((float3*)(placeholder1 + ((((rc_outer_outer * 4800) + (((int)threadIdx.x) * 3)) + 480))))[0];
    ((float3*)(placeholder_shared + (((((int)threadIdx.x) * 3) + 960))))[0] = ((float3*)(placeholder1 + ((((rc_outer_outer * 4800) + (((int)threadIdx.x) * 3)) + 960))))[0];
    ((float3*)(placeholder_shared + (((((int)threadIdx.x) * 3) + 1440))))[0] = ((float3*)(placeholder1 + ((((rc_outer_outer * 4800) + (((int)threadIdx.x) * 3)) + 1440))))[0];
    ((float3*)(placeholder_shared + (((((int)threadIdx.x) * 3) + 1920))))[0] = ((float3*)(placeholder1 + ((((rc_outer_outer * 4800) + (((int)threadIdx.x) * 3)) + 1920))))[0];
    ((float3*)(placeholder_shared + (((((int)threadIdx.x) * 3) + 2400))))[0] = ((float3*)(placeholder1 + ((((rc_outer_outer * 4800) + (((int)threadIdx.x) * 3)) + 2400))))[0];
    ((float3*)(placeholder_shared + (((((int)threadIdx.x) * 3) + 2880))))[0] = ((float3*)(placeholder1 + ((((rc_outer_outer * 4800) + (((int)threadIdx.x) * 3)) + 2880))))[0];
    ((float3*)(placeholder_shared + (((((int)threadIdx.x) * 3) + 3360))))[0] = ((float3*)(placeholder1 + ((((rc_outer_outer * 4800) + (((int)threadIdx.x) * 3)) + 3360))))[0];
    ((float3*)(placeholder_shared + (((((int)threadIdx.x) * 3) + 3840))))[0] = ((float3*)(placeholder1 + ((((rc_outer_outer * 4800) + (((int)threadIdx.x) * 3)) + 3840))))[0];
    ((float3*)(placeholder_shared + (((((int)threadIdx.x) * 3) + 4320))))[0] = ((float3*)(placeholder1 + ((((rc_outer_outer * 4800) + (((int)threadIdx.x) * 3)) + 4320))))[0];
    __syncthreads();
    for (int yy_c_outer_inner = 0; yy_c_outer_inner < 7; ++yy_c_outer_inner) {
      for (int ff_c_outer_inner = 0; ff_c_outer_inner < 3; ++ff_c_outer_inner) {
        Conv2dOutput_local[(((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)))] = (Conv2dOutput_local[(((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)))] + (PaddedInput_shared[((yy_c_outer_inner * 5))] * placeholder_shared[(((((int)threadIdx.x) * 6) + (ff_c_outer_inner * 2)))]));
        Conv2dOutput_local[((((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)) + 1))] = (Conv2dOutput_local[((((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)) + 1))] + (PaddedInput_shared[((yy_c_outer_inner * 5))] * placeholder_shared[((((((int)threadIdx.x) * 6) + (ff_c_outer_inner * 2)) + 1))]));
        Conv2dOutput_local[(((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)))] = (Conv2dOutput_local[(((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)))] + (PaddedInput_shared[(((yy_c_outer_inner * 5) + 1))] * placeholder_shared[((((((int)threadIdx.x) * 6) + (ff_c_outer_inner * 2)) + 960))]));
        Conv2dOutput_local[((((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)) + 1))] = (Conv2dOutput_local[((((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)) + 1))] + (PaddedInput_shared[(((yy_c_outer_inner * 5) + 1))] * placeholder_shared[((((((int)threadIdx.x) * 6) + (ff_c_outer_inner * 2)) + 961))]));
        Conv2dOutput_local[(((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)))] = (Conv2dOutput_local[(((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)))] + (PaddedInput_shared[(((yy_c_outer_inner * 5) + 2))] * placeholder_shared[((((((int)threadIdx.x) * 6) + (ff_c_outer_inner * 2)) + 1920))]));
        Conv2dOutput_local[((((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)) + 1))] = (Conv2dOutput_local[((((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)) + 1))] + (PaddedInput_shared[(((yy_c_outer_inner * 5) + 2))] * placeholder_shared[((((((int)threadIdx.x) * 6) + (ff_c_outer_inner * 2)) + 1921))]));
        Conv2dOutput_local[(((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)))] = (Conv2dOutput_local[(((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)))] + (PaddedInput_shared[(((yy_c_outer_inner * 5) + 3))] * placeholder_shared[((((((int)threadIdx.x) * 6) + (ff_c_outer_inner * 2)) + 2880))]));
        Conv2dOutput_local[((((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)) + 1))] = (Conv2dOutput_local[((((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)) + 1))] + (PaddedInput_shared[(((yy_c_outer_inner * 5) + 3))] * placeholder_shared[((((((int)threadIdx.x) * 6) + (ff_c_outer_inner * 2)) + 2881))]));
        Conv2dOutput_local[(((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)))] = (Conv2dOutput_local[(((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)))] + (PaddedInput_shared[(((yy_c_outer_inner * 5) + 4))] * placeholder_shared[((((((int)threadIdx.x) * 6) + (ff_c_outer_inner * 2)) + 3840))]));
        Conv2dOutput_local[((((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)) + 1))] = (Conv2dOutput_local[((((yy_c_outer_inner * 6) + (ff_c_outer_inner * 2)) + 1))] + (PaddedInput_shared[(((yy_c_outer_inner * 5) + 4))] * placeholder_shared[((((((int)threadIdx.x) * 6) + (ff_c_outer_inner * 2)) + 3841))]));
      }
    }
  }
  for (int yy_inner = 0; yy_inner < 7; ++yy_inner) {
    for (int ff_inner = 0; ff_inner < 6; ++ff_inner) {
      Conv2dOutput[(((((yy_inner * 6720) + (((int)blockIdx.x) * 960)) + (((int)threadIdx.x) * 6)) + ff_inner))] = Conv2dOutput_local[(((yy_inner * 6) + ff_inner))];
    }
  }
}


