
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
  float Conv2dOutput[28];
  __shared__ float PaddedInput_shared[539];
  __shared__ float placeholder_shared[352];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 4; ++ff_outer_inner_init) {
    Conv2dOutput[(ff_outer_inner_init)] = 0.000000e+00f;
    Conv2dOutput[((ff_outer_inner_init + 4))] = 0.000000e+00f;
    Conv2dOutput[((ff_outer_inner_init + 8))] = 0.000000e+00f;
    Conv2dOutput[((ff_outer_inner_init + 12))] = 0.000000e+00f;
    Conv2dOutput[((ff_outer_inner_init + 16))] = 0.000000e+00f;
    Conv2dOutput[((ff_outer_inner_init + 20))] = 0.000000e+00f;
    Conv2dOutput[((ff_outer_inner_init + 24))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[((((int)threadIdx.x) * 7))] = placeholder[((((((((int)threadIdx.x) * 7) / 11) * 704) + (rc_outer_outer * 11)) + ((((int)threadIdx.x) * 7) % 11)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 7) + 1))] = placeholder[(((((((((int)threadIdx.x) * 7) + 1) / 11) * 704) + (rc_outer_outer * 11)) + (((((int)threadIdx.x) * 7) + 1) % 11)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 7) + 2))] = placeholder[(((((((((int)threadIdx.x) * 7) + 2) / 11) * 704) + (rc_outer_outer * 11)) + (((((int)threadIdx.x) * 7) + 2) % 11)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 7) + 3))] = placeholder[(((((((((int)threadIdx.x) * 7) + 3) / 11) * 704) + (rc_outer_outer * 11)) + (((((int)threadIdx.x) * 7) + 3) % 11)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 7) + 4))] = placeholder[(((((((((int)threadIdx.x) * 7) + 4) / 11) * 704) + (rc_outer_outer * 11)) + (((((int)threadIdx.x) * 7) + 4) % 11)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 7) + 5))] = placeholder[(((((((((int)threadIdx.x) * 7) + 5) / 11) * 704) + (rc_outer_outer * 11)) + (((((int)threadIdx.x) * 7) + 5) % 11)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 7) + 6))] = placeholder[(((((((((int)threadIdx.x) * 7) + 6) / 11) * 704) + (rc_outer_outer * 11)) + (((((int)threadIdx.x) * 7) + 6) % 11)))];
    if (((int)threadIdx.x) < 21) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 392))] = placeholder[(((((((((int)threadIdx.x) * 7) + 392) / 11) * 704) + (rc_outer_outer * 11)) + (((((int)threadIdx.x) * 7) + 7) % 11)))];
    }
    if (((int)threadIdx.x) < 21) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 393))] = placeholder[(((((((((int)threadIdx.x) * 7) + 393) / 11) * 704) + (rc_outer_outer * 11)) + (((((int)threadIdx.x) * 7) + 8) % 11)))];
    }
    if (((int)threadIdx.x) < 21) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 394))] = placeholder[(((((((((int)threadIdx.x) * 7) + 394) / 11) * 704) + (rc_outer_outer * 11)) + (((((int)threadIdx.x) * 7) + 9) % 11)))];
    }
    if (((int)threadIdx.x) < 21) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 395))] = placeholder[(((((((((int)threadIdx.x) * 7) + 395) / 11) * 704) + (rc_outer_outer * 11)) + (((((int)threadIdx.x) * 7) + 10) % 11)))];
    }
    if (((int)threadIdx.x) < 21) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 396))] = placeholder[(((((((((int)threadIdx.x) * 7) / 11) * 704) + (rc_outer_outer * 11)) + ((((int)threadIdx.x) * 7) % 11)) + 25344))];
    }
    if (((int)threadIdx.x) < 21) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 397))] = placeholder[(((((((((int)threadIdx.x) * 7) + 397) / 11) * 704) + (rc_outer_outer * 11)) + (((((int)threadIdx.x) * 7) + 1) % 11)))];
    }
    if (((int)threadIdx.x) < 21) {
      PaddedInput_shared[(((((int)threadIdx.x) * 7) + 398))] = placeholder[(((((((((int)threadIdx.x) * 7) + 398) / 11) * 704) + (rc_outer_outer * 11)) + (((((int)threadIdx.x) * 7) + 2) % 11)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 1408) + ((((int)threadIdx.x) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 56))] = placeholder1[(((((rc_outer_outer * 1408) + (((((int)threadIdx.x) + 56) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 24) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 112))] = placeholder1[(((((rc_outer_outer * 1408) + (((((int)threadIdx.x) + 112) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 16) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 168))] = placeholder1[(((((rc_outer_outer * 1408) + (((((int)threadIdx.x) + 168) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 8) & 31)))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[((((((rc_outer_outer * 1408) + ((((int)threadIdx.x) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) & 31)) + 896))];
    placeholder_shared[((((int)threadIdx.x) + 280))] = placeholder1[(((((rc_outer_outer * 1408) + (((((int)threadIdx.x) + 280) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) + 24) & 31)))];
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[((((int)threadIdx.x) + 336))] = placeholder1[(((((rc_outer_outer * 1408) + (((((int)threadIdx.x) + 336) >> 5) * 128)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 16)))];
    }
    __syncthreads();
    for (int ff_outer_inner = 0; ff_outer_inner < 4; ++ff_outer_inner) {
      for (int rc_inner = 0; rc_inner < 11; ++rc_inner) {
        Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 77) + rc_inner))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_outer_inner))]));
        Conv2dOutput[((ff_outer_inner + 4))] = (Conv2dOutput[((ff_outer_inner + 4))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 77) + rc_inner) + 11))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_outer_inner))]));
        Conv2dOutput[((ff_outer_inner + 8))] = (Conv2dOutput[((ff_outer_inner + 8))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 77) + rc_inner) + 22))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_outer_inner))]));
        Conv2dOutput[((ff_outer_inner + 12))] = (Conv2dOutput[((ff_outer_inner + 12))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 77) + rc_inner) + 33))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_outer_inner))]));
        Conv2dOutput[((ff_outer_inner + 16))] = (Conv2dOutput[((ff_outer_inner + 16))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 77) + rc_inner) + 44))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_outer_inner))]));
        Conv2dOutput[((ff_outer_inner + 20))] = (Conv2dOutput[((ff_outer_inner + 20))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 77) + rc_inner) + 55))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_outer_inner))]));
        Conv2dOutput[((ff_outer_inner + 24))] = (Conv2dOutput[((ff_outer_inner + 24))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 77) + rc_inner) + 66))] * placeholder_shared[((((rc_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + ff_outer_inner))]));
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 7; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
      T_relu[(((((((((int)threadIdx.x) >> 3) * 896) + (ax2_inner * 128)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))] = max((Conv2dOutput[(((ax2_inner * 4) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


