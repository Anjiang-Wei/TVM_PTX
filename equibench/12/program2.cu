
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute, float* __restrict__ placeholder2) {
  float Conv2dOutput[36];
  __shared__ float PaddedInput_shared[1800];
  __shared__ float placeholder_shared[192];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 6; ++yy_outer_inner_init) {
    Conv2dOutput[((yy_outer_inner_init * 3))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 3) + 18))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 3) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 3) + 19))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 3) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 3) + 20))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 225) {
      PaddedInput_shared[((((int)threadIdx.x) * 8))] = placeholder[(((((((((int)threadIdx.x) * 2) / 15) * 960) + ((((int)blockIdx.x) >> 2) * 480)) + (((((int)threadIdx.x) * 2) % 15) * 32)) + (rc_outer_outer * 4)))];
    }
    if (((int)threadIdx.x) < 225) {
      PaddedInput_shared[(((((int)threadIdx.x) * 8) + 1))] = placeholder[((((((((((int)threadIdx.x) * 2) / 15) * 960) + ((((int)blockIdx.x) >> 2) * 480)) + (((((int)threadIdx.x) * 2) % 15) * 32)) + (rc_outer_outer * 4)) + 1))];
    }
    if (((int)threadIdx.x) < 225) {
      PaddedInput_shared[(((((int)threadIdx.x) * 8) + 2))] = placeholder[((((((((((int)threadIdx.x) * 2) / 15) * 960) + ((((int)blockIdx.x) >> 2) * 480)) + (((((int)threadIdx.x) * 2) % 15) * 32)) + (rc_outer_outer * 4)) + 2))];
    }
    if (((int)threadIdx.x) < 225) {
      PaddedInput_shared[(((((int)threadIdx.x) * 8) + 3))] = placeholder[((((((((((int)threadIdx.x) * 2) / 15) * 960) + ((((int)blockIdx.x) >> 2) * 480)) + (((((int)threadIdx.x) * 2) % 15) * 32)) + (rc_outer_outer * 4)) + 3))];
    }
    if (((int)threadIdx.x) < 225) {
      PaddedInput_shared[(((((int)threadIdx.x) * 8) + 4))] = placeholder[((((((((((int)threadIdx.x) * 2) + 1) / 15) * 960) + ((((int)blockIdx.x) >> 2) * 480)) + ((((((int)threadIdx.x) * 2) + 1) % 15) * 32)) + (rc_outer_outer * 4)))];
    }
    if (((int)threadIdx.x) < 225) {
      PaddedInput_shared[(((((int)threadIdx.x) * 8) + 5))] = placeholder[(((((((((((int)threadIdx.x) * 2) + 1) / 15) * 960) + ((((int)blockIdx.x) >> 2) * 480)) + ((((((int)threadIdx.x) * 2) + 1) % 15) * 32)) + (rc_outer_outer * 4)) + 1))];
    }
    if (((int)threadIdx.x) < 225) {
      PaddedInput_shared[(((((int)threadIdx.x) * 8) + 6))] = placeholder[(((((((((((int)threadIdx.x) * 2) + 1) / 15) * 960) + ((((int)blockIdx.x) >> 2) * 480)) + ((((((int)threadIdx.x) * 2) + 1) % 15) * 32)) + (rc_outer_outer * 4)) + 2))];
    }
    if (((int)threadIdx.x) < 225) {
      PaddedInput_shared[(((((int)threadIdx.x) * 8) + 7))] = placeholder[(((((((((((int)threadIdx.x) * 2) + 1) / 15) * 960) + ((((int)blockIdx.x) >> 2) * 480)) + ((((((int)threadIdx.x) * 2) + 1) % 15) * 32)) + (rc_outer_outer * 4)) + 3))];
    }
    if (((int)threadIdx.x) < 48) {
      placeholder_shared[((((int)threadIdx.x) * 4))] = placeholder1[(((((rc_outer_outer * 768) + ((((int)threadIdx.x) / 12) * 192)) + ((((int)blockIdx.x) & 3) * 48)) + ((((int)threadIdx.x) % 12) * 4)))];
    }
    if (((int)threadIdx.x) < 48) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 1))] = placeholder1[(((((rc_outer_outer * 768) + ((((((int)threadIdx.x) * 4) + 1) / 48) * 192)) + ((((int)blockIdx.x) & 3) * 48)) + (((((int)threadIdx.x) * 4) + 1) % 48)))];
    }
    if (((int)threadIdx.x) < 48) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 2))] = placeholder1[(((((rc_outer_outer * 768) + ((((((int)threadIdx.x) * 4) + 2) / 48) * 192)) + ((((int)blockIdx.x) & 3) * 48)) + (((((int)threadIdx.x) * 4) + 2) % 48)))];
    }
    if (((int)threadIdx.x) < 48) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 3))] = placeholder1[(((((rc_outer_outer * 768) + ((((((int)threadIdx.x) * 4) + 3) / 48) * 192)) + ((((int)blockIdx.x) & 3) * 48)) + (((((int)threadIdx.x) * 4) + 3) % 48)))];
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 6; ++yy_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 3; ++ff_outer_inner) {
        Conv2dOutput[(((yy_outer_inner * 3) + ff_outer_inner))] = (Conv2dOutput[(((yy_outer_inner * 3) + ff_outer_inner))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 120) * 360) + (yy_outer_inner * 60)) + (((((int)threadIdx.x) % 120) >> 3) * 4)))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 3) + ff_outer_inner))]));
        Conv2dOutput[((((yy_outer_inner * 3) + ff_outer_inner) + 18))] = (Conv2dOutput[((((yy_outer_inner * 3) + ff_outer_inner) + 18))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 120) * 360) + (yy_outer_inner * 60)) + (((((int)threadIdx.x) % 120) >> 3) * 4)))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 3) + ff_outer_inner) + 24))]));
        Conv2dOutput[(((yy_outer_inner * 3) + ff_outer_inner))] = (Conv2dOutput[(((yy_outer_inner * 3) + ff_outer_inner))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 120) * 360) + (yy_outer_inner * 60)) + (((((int)threadIdx.x) % 120) >> 3) * 4)) + 1))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 3) + ff_outer_inner) + 48))]));
        Conv2dOutput[((((yy_outer_inner * 3) + ff_outer_inner) + 18))] = (Conv2dOutput[((((yy_outer_inner * 3) + ff_outer_inner) + 18))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 120) * 360) + (yy_outer_inner * 60)) + (((((int)threadIdx.x) % 120) >> 3) * 4)) + 1))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 3) + ff_outer_inner) + 72))]));
        Conv2dOutput[(((yy_outer_inner * 3) + ff_outer_inner))] = (Conv2dOutput[(((yy_outer_inner * 3) + ff_outer_inner))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 120) * 360) + (yy_outer_inner * 60)) + (((((int)threadIdx.x) % 120) >> 3) * 4)) + 2))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 3) + ff_outer_inner) + 96))]));
        Conv2dOutput[((((yy_outer_inner * 3) + ff_outer_inner) + 18))] = (Conv2dOutput[((((yy_outer_inner * 3) + ff_outer_inner) + 18))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 120) * 360) + (yy_outer_inner * 60)) + (((((int)threadIdx.x) % 120) >> 3) * 4)) + 2))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 3) + ff_outer_inner) + 120))]));
        Conv2dOutput[(((yy_outer_inner * 3) + ff_outer_inner))] = (Conv2dOutput[(((yy_outer_inner * 3) + ff_outer_inner))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 120) * 360) + (yy_outer_inner * 60)) + (((((int)threadIdx.x) % 120) >> 3) * 4)) + 3))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 3) + ff_outer_inner) + 144))]));
        Conv2dOutput[((((yy_outer_inner * 3) + ff_outer_inner) + 18))] = (Conv2dOutput[((((yy_outer_inner * 3) + ff_outer_inner) + 18))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 120) * 360) + (yy_outer_inner * 60)) + (((((int)threadIdx.x) % 120) >> 3) * 4)) + 3))] * placeholder_shared[(((((((int)threadIdx.x) & 7) * 3) + ff_outer_inner) + 168))]));
      }
    }
  }
  for (int i1_inner = 0; i1_inner < 6; ++i1_inner) {
    for (int i3_inner = 0; i3_inner < 3; ++i3_inner) {
      compute[(((((((((((int)threadIdx.x) / 120) * 34560) + (i1_inner * 5760)) + ((((int)blockIdx.x) >> 2) * 2880)) + (((((int)threadIdx.x) % 120) >> 3) * 192)) + ((((int)blockIdx.x) & 3) * 48)) + ((((int)threadIdx.x) & 7) * 3)) + i3_inner))] = max(min((Conv2dOutput[(((i1_inner * 3) + i3_inner))] + placeholder2[(((((((int)blockIdx.x) & 3) * 48) + ((((int)threadIdx.x) & 7) * 3)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
      compute[((((((((((((int)threadIdx.x) / 120) * 34560) + (i1_inner * 5760)) + ((((int)blockIdx.x) >> 2) * 2880)) + (((((int)threadIdx.x) % 120) >> 3) * 192)) + ((((int)blockIdx.x) & 3) * 48)) + ((((int)threadIdx.x) & 7) * 3)) + i3_inner) + 24))] = max(min((Conv2dOutput[((((i1_inner * 3) + i3_inner) + 18))] + placeholder2[((((((((int)blockIdx.x) & 3) * 48) + ((((int)threadIdx.x) & 7) * 3)) + i3_inner) + 24))]), 6.000000e+00f), 0.000000e+00f);
    }
  }
}


