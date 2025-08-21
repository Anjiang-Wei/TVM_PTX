
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
  float Conv2dOutput[224];
  __shared__ float PaddedInput_shared[896];
  __shared__ float placeholder_shared[896];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 2; ++ff_outer_inner_init) {
    for (int nn_inner_init = 0; nn_inner_init < 4; ++nn_inner_init) {
      for (int ff_inner_init = 0; ff_inner_init < 14; ++ff_inner_init) {
        Conv2dOutput[((((nn_inner_init * 28) + (ff_outer_inner_init * 14)) + ff_inner_init))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 28) + (ff_outer_inner_init * 14)) + ff_inner_init) + 112))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 84; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)blockIdx.x) / 7) * 526848) + ((((int)threadIdx.x) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + (((((int)threadIdx.x) & 15) >> 3) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 56))] = placeholder[((((((((((int)blockIdx.x) / 7) * 526848) + (((((int)threadIdx.x) + 56) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + ((((((int)threadIdx.x) >> 3) + 1) & 1) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 112))] = placeholder[(((((((((((int)blockIdx.x) / 7) * 526848) + ((((int)threadIdx.x) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + (((((int)threadIdx.x) & 15) >> 3) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 65856))];
    PaddedInput_shared[((((int)threadIdx.x) + 168))] = placeholder[((((((((((int)blockIdx.x) / 7) * 526848) + (((((int)threadIdx.x) + 168) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + ((((((int)threadIdx.x) >> 3) + 1) & 1) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 224))] = placeholder[(((((((((((int)blockIdx.x) / 7) * 526848) + ((((int)threadIdx.x) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + (((((int)threadIdx.x) & 15) >> 3) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 131712))];
    PaddedInput_shared[((((int)threadIdx.x) + 280))] = placeholder[((((((((((int)blockIdx.x) / 7) * 526848) + (((((int)threadIdx.x) + 280) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + ((((((int)threadIdx.x) >> 3) + 1) & 1) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 336))] = placeholder[(((((((((((int)blockIdx.x) / 7) * 526848) + ((((int)threadIdx.x) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + (((((int)threadIdx.x) & 15) >> 3) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 197568))];
    PaddedInput_shared[((((int)threadIdx.x) + 392))] = placeholder[((((((((((int)blockIdx.x) / 7) * 526848) + (((((int)threadIdx.x) + 392) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + ((((((int)threadIdx.x) >> 3) + 1) & 1) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 448))] = placeholder[(((((((((((int)blockIdx.x) / 7) * 526848) + ((((int)threadIdx.x) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + (((((int)threadIdx.x) & 15) >> 3) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 263424))];
    PaddedInput_shared[((((int)threadIdx.x) + 504))] = placeholder[((((((((((int)blockIdx.x) / 7) * 526848) + (((((int)threadIdx.x) + 504) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + ((((((int)threadIdx.x) >> 3) + 1) & 1) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 560))] = placeholder[(((((((((((int)blockIdx.x) / 7) * 526848) + ((((int)threadIdx.x) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + (((((int)threadIdx.x) & 15) >> 3) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 329280))];
    PaddedInput_shared[((((int)threadIdx.x) + 616))] = placeholder[((((((((((int)blockIdx.x) / 7) * 526848) + (((((int)threadIdx.x) + 616) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + ((((((int)threadIdx.x) >> 3) + 1) & 1) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 672))] = placeholder[(((((((((((int)blockIdx.x) / 7) * 526848) + ((((int)threadIdx.x) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + (((((int)threadIdx.x) & 15) >> 3) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 395136))];
    PaddedInput_shared[((((int)threadIdx.x) + 728))] = placeholder[((((((((((int)blockIdx.x) / 7) * 526848) + (((((int)threadIdx.x) + 728) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + ((((((int)threadIdx.x) >> 3) + 1) & 1) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 784))] = placeholder[(((((((((((int)blockIdx.x) / 7) * 526848) + ((((int)threadIdx.x) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + (((((int)threadIdx.x) & 15) >> 3) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 460992))];
    PaddedInput_shared[((((int)threadIdx.x) + 840))] = placeholder[((((((((((int)blockIdx.x) / 7) * 526848) + (((((int)threadIdx.x) + 840) >> 4) * 9408)) + ((((int)blockIdx.x) % 7) * 1344)) + ((((((int)threadIdx.x) >> 3) + 1) & 1) * 672)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 896) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 56))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 56))];
    placeholder_shared[((((int)threadIdx.x) + 112))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 112))];
    placeholder_shared[((((int)threadIdx.x) + 168))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 168))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 224))];
    placeholder_shared[((((int)threadIdx.x) + 280))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 280))];
    placeholder_shared[((((int)threadIdx.x) + 336))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 336))];
    placeholder_shared[((((int)threadIdx.x) + 392))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 392))];
    placeholder_shared[((((int)threadIdx.x) + 448))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 448))];
    placeholder_shared[((((int)threadIdx.x) + 504))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 504))];
    placeholder_shared[((((int)threadIdx.x) + 560))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 560))];
    placeholder_shared[((((int)threadIdx.x) + 616))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 616))];
    placeholder_shared[((((int)threadIdx.x) + 672))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 672))];
    placeholder_shared[((((int)threadIdx.x) + 728))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 728))];
    placeholder_shared[((((int)threadIdx.x) + 784))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 784))];
    placeholder_shared[((((int)threadIdx.x) + 840))] = placeholder1[((((rc_outer_outer * 896) + ((int)threadIdx.x)) + 840))];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 2; ++ff_outer_inner) {
        for (int nn_inner = 0; nn_inner < 4; ++nn_inner) {
          for (int ff_inner = 0; ff_inner < 14; ++ff_inner) {
            Conv2dOutput[((((nn_inner * 28) + (ff_outer_inner * 14)) + ff_inner))] = (Conv2dOutput[((((nn_inner * 28) + (ff_outer_inner * 14)) + ff_inner))] + (PaddedInput_shared[((((nn_inner * 224) + ((((int)threadIdx.x) >> 2) * 16)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 112) + ((((int)threadIdx.x) & 3) * 28)) + (ff_outer_inner * 14)) + ff_inner))]));
            Conv2dOutput[(((((nn_inner * 28) + (ff_outer_inner * 14)) + ff_inner) + 112))] = (Conv2dOutput[(((((nn_inner * 28) + (ff_outer_inner * 14)) + ff_inner) + 112))] + (PaddedInput_shared[(((((nn_inner * 224) + ((((int)threadIdx.x) >> 2) * 16)) + rc_outer_inner) + 8))] * placeholder_shared[(((((rc_outer_inner * 112) + ((((int)threadIdx.x) & 3) * 28)) + (ff_outer_inner * 14)) + ff_inner))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax3_inner = 0; ax3_inner < 28; ++ax3_inner) {
      T_add[((((((((((int)blockIdx.x) / 7) * 87808) + (ax0_inner * 21952)) + ((((int)threadIdx.x) >> 2) * 1568)) + ((((int)blockIdx.x) % 7) * 224)) + ((((int)threadIdx.x) & 3) * 28)) + ax3_inner))] = ((Conv2dOutput[(((ax0_inner * 28) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 3) * 28) + ax3_inner))]) + placeholder3[((((((((((int)blockIdx.x) / 7) * 87808) + (ax0_inner * 21952)) + ((((int)threadIdx.x) >> 2) * 1568)) + ((((int)blockIdx.x) % 7) * 224)) + ((((int)threadIdx.x) & 3) * 28)) + ax3_inner))]);
      T_add[(((((((((((int)blockIdx.x) / 7) * 87808) + (ax0_inner * 21952)) + ((((int)threadIdx.x) >> 2) * 1568)) + ((((int)blockIdx.x) % 7) * 224)) + ((((int)threadIdx.x) & 3) * 28)) + ax3_inner) + 112))] = ((Conv2dOutput[((((ax0_inner * 28) + ax3_inner) + 112))] + placeholder2[((((((int)threadIdx.x) & 3) * 28) + ax3_inner))]) + placeholder3[(((((((((((int)blockIdx.x) / 7) * 87808) + (ax0_inner * 21952)) + ((((int)threadIdx.x) >> 2) * 1568)) + ((((int)blockIdx.x) % 7) * 224)) + ((((int)threadIdx.x) & 3) * 28)) + ax3_inner) + 112))]);
    }
  }
}


