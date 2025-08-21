
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2) {
  float Conv2dOutput[56];
  __shared__ float PaddedInput_shared[330];
  __shared__ float placeholder_shared[128];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 14; ++xx_outer_inner_init) {
    Conv2dOutput[((xx_outer_inner_init * 2))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 28))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((xx_outer_inner_init * 2) + 29))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[((((int)threadIdx.x) * 2))] = placeholder[((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) / 55) * 14336)) + ((((int)threadIdx.x) % 55) * 256)) + (rc_outer_outer * 2)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 57344) + ((((int)threadIdx.x) / 55) * 14336)) + ((((int)threadIdx.x) % 55) * 256)) + (rc_outer_outer * 2)) + 1))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 128))] = placeholder[((((((((int)blockIdx.x) >> 3) * 57344) + (((((int)threadIdx.x) + 64) / 55) * 14336)) + (((((int)threadIdx.x) + 9) % 55) * 256)) + (rc_outer_outer * 2)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 129))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 57344) + (((((int)threadIdx.x) + 64) / 55) * 14336)) + (((((int)threadIdx.x) + 9) % 55) * 256)) + (rc_outer_outer * 2)) + 1))];
    if (((int)threadIdx.x) < 37) {
      PaddedInput_shared[(((((int)threadIdx.x) * 2) + 256))] = placeholder[((((((((int)blockIdx.x) >> 3) * 57344) + (((((int)threadIdx.x) + 128) / 55) * 14336)) + ((((int)threadIdx.x) + 18) * 256)) + (rc_outer_outer * 2)))];
      PaddedInput_shared[(((((int)threadIdx.x) * 2) + 257))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 57344) + (((((int)threadIdx.x) + 128) / 55) * 14336)) + ((((int)threadIdx.x) + 18) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[((((int)threadIdx.x) * 8))] = placeholder1[(((((rc_outer_outer * 1024) + ((((int)threadIdx.x) >> 3) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 7) * 8)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 1))] = placeholder1[(((((rc_outer_outer * 1024) + ((((((int)threadIdx.x) * 8) + 1) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 8) + 1) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 2))] = placeholder1[(((((rc_outer_outer * 1024) + ((((((int)threadIdx.x) * 8) + 2) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 8) + 2) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 3))] = placeholder1[(((((rc_outer_outer * 1024) + ((((((int)threadIdx.x) * 8) + 3) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 8) + 3) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 4))] = placeholder1[(((((rc_outer_outer * 1024) + ((((((int)threadIdx.x) * 8) + 4) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 8) + 4) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 5))] = placeholder1[(((((rc_outer_outer * 1024) + ((((((int)threadIdx.x) * 8) + 5) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 8) + 5) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 6))] = placeholder1[(((((rc_outer_outer * 1024) + ((((((int)threadIdx.x) * 8) + 6) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 8) + 6) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 7))] = placeholder1[(((((rc_outer_outer * 1024) + ((((((int)threadIdx.x) * 8) + 7) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 8) + 7) & 63)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 14; ++xx_outer_inner) {
        Conv2dOutput[((xx_outer_inner * 2))] = (Conv2dOutput[((xx_outer_inner * 2))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 56) + (xx_outer_inner * 4)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 28))] = (Conv2dOutput[(((xx_outer_inner * 2) + 28))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 5) * 56) + (xx_outer_inner * 4)) + rc_outer_inner) + 220))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 1))] = (Conv2dOutput[(((xx_outer_inner * 2) + 1))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 5) * 56) + (xx_outer_inner * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1))]));
        Conv2dOutput[(((xx_outer_inner * 2) + 29))] = (Conv2dOutput[(((xx_outer_inner * 2) + 29))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 5) * 56) + (xx_outer_inner * 4)) + rc_outer_inner) + 220))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1))]));
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 14; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_add[((((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))] = (Conv2dOutput[(((ax2_inner * 2) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]);
      T_add[(((((((((((int)blockIdx.x) >> 3) * 28672) + ((((int)threadIdx.x) >> 5) * 7168)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 14336))] = (Conv2dOutput[((((ax2_inner * 2) + ax3_inner) + 28))] + placeholder2[(((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]);
    }
  }
}


