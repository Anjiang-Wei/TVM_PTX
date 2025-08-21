
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv2dOutput[32];
  __shared__ float PaddedInput_shared[784];
  __shared__ float placeholder_shared[512];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 16; ++ff_outer_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 16) + ff_outer_inner_init))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)threadIdx.x) / 28) * 7168) + ((((int)blockIdx.x) >> 2) * 1792)) + (((((int)threadIdx.x) % 28) >> 2) * 256)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    if (((int)threadIdx.x) < 512) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 2048) + ((((int)threadIdx.x) >> 7) * 512)) + ((((int)blockIdx.x) & 3) * 128)) + (((int)threadIdx.x) & 127)))];
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 16; ++ff_outer_inner) {
        for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
          Conv2dOutput[(((yy_outer_inner * 16) + ff_outer_inner))] = (Conv2dOutput[(((yy_outer_inner * 16) + ff_outer_inner))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 56) * 56) + (yy_outer_inner * 28)) + (((((int)threadIdx.x) % 56) >> 3) * 4)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + ((((int)threadIdx.x) & 7) * 16)) + ff_outer_inner))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 16; ++ax3_inner) {
      T_relu[(((((((((((int)threadIdx.x) / 56) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 2) * 3584)) + (((((int)threadIdx.x) % 56) >> 3) * 512)) + ((((int)blockIdx.x) & 3) * 128)) + ((((int)threadIdx.x) & 7) * 16)) + ax3_inner))] = max(((Conv2dOutput[(((ax1_inner * 16) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 3) * 128) + ((((int)threadIdx.x) & 7) * 16)) + ax3_inner))]) + placeholder3[(((((((((((int)threadIdx.x) / 56) * 28672) + (ax1_inner * 14336)) + ((((int)blockIdx.x) >> 2) * 3584)) + (((((int)threadIdx.x) % 56) >> 3) * 512)) + ((((int)blockIdx.x) & 3) * 128)) + ((((int)threadIdx.x) & 7) * 16)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


