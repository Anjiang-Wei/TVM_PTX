
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
  float Conv2dOutput[34];
  __shared__ float PaddedInput_shared[578];
  __shared__ float placeholder_shared[32];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 17; ++yy_outer_inner_init) {
    Conv2dOutput[((yy_outer_inner_init * 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 2) + 1))] = 0.000000e+00f;
  }
  for (int rx_outer_outer = 0; rx_outer_outer < 7; ++rx_outer_outer) {
    for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
      __syncthreads();
      PaddedInput_shared[(((int)threadIdx.x))] = (((3 <= (((((int)threadIdx.x) % 34) >> 1) + rx_outer_outer)) && ((((((int)threadIdx.x) % 34) >> 1) + rx_outer_outer) < 20)) ? placeholder[(((((((((int)threadIdx.x) >> 1) * 128) + (rx_outer_outer * 128)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) - 384))] : 0.000000e+00f);
      PaddedInput_shared[((((int)threadIdx.x) + 136))] = (((3 <= (((((int)threadIdx.x) % 34) >> 1) + rx_outer_outer)) && ((((((int)threadIdx.x) % 34) >> 1) + rx_outer_outer) < 20)) ? placeholder[(((((((((int)threadIdx.x) >> 1) * 128) + (rx_outer_outer * 128)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 8320))] : 0.000000e+00f);
      PaddedInput_shared[((((int)threadIdx.x) + 272))] = (((3 <= (((((int)threadIdx.x) % 34) >> 1) + rx_outer_outer)) && ((((((int)threadIdx.x) % 34) >> 1) + rx_outer_outer) < 20)) ? placeholder[(((((((((int)threadIdx.x) >> 1) * 128) + (rx_outer_outer * 128)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 17024))] : 0.000000e+00f);
      PaddedInput_shared[((((int)threadIdx.x) + 408))] = (((3 <= (((((int)threadIdx.x) % 34) >> 1) + rx_outer_outer)) && ((((((int)threadIdx.x) % 34) >> 1) + rx_outer_outer) < 20)) ? placeholder[(((((((((int)threadIdx.x) >> 1) * 128) + (rx_outer_outer * 128)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 25728))] : 0.000000e+00f);
      if (((int)threadIdx.x) < 34) {
        PaddedInput_shared[((((int)threadIdx.x) + 544))] = (((3 <= ((((int)threadIdx.x) >> 1) + rx_outer_outer)) && (((((int)threadIdx.x) >> 1) + rx_outer_outer) < 20)) ? placeholder[(((((((((int)threadIdx.x) >> 1) * 128) + (rx_outer_outer * 128)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 34432))] : 0.000000e+00f);
      }
      if (((int)threadIdx.x) < 16) {
        placeholder_shared[((((int)threadIdx.x) * 2))] = placeholder1[((((((rx_outer_outer * 16384) + (rc_outer_outer * 256)) + ((((int)threadIdx.x) >> 3) * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)))];
      }
      if (((int)threadIdx.x) < 16) {
        placeholder_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder1[((((((rx_outer_outer * 16384) + (rc_outer_outer * 256)) + ((((((int)threadIdx.x) * 2) + 1) >> 4) * 128)) + (((int)blockIdx.x) * 16)) + (((((int)threadIdx.x) * 2) + 1) & 15)))];
      }
      __syncthreads();
      for (int yy_outer_inner = 0; yy_outer_inner < 17; ++yy_outer_inner) {
        Conv2dOutput[((yy_outer_inner * 2))] = (Conv2dOutput[((yy_outer_inner * 2))] + (PaddedInput_shared[(((yy_outer_inner * 34) + ((((int)threadIdx.x) >> 3) * 2)))] * placeholder_shared[(((((int)threadIdx.x) & 7) * 2))]));
        Conv2dOutput[((yy_outer_inner * 2))] = (Conv2dOutput[((yy_outer_inner * 2))] + (PaddedInput_shared[((((yy_outer_inner * 34) + ((((int)threadIdx.x) >> 3) * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 2) + 16))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 1))] = (Conv2dOutput[(((yy_outer_inner * 2) + 1))] + (PaddedInput_shared[(((yy_outer_inner * 34) + ((((int)threadIdx.x) >> 3) * 2)))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 2) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 2) + 1))] = (Conv2dOutput[(((yy_outer_inner * 2) + 1))] + (PaddedInput_shared[((((yy_outer_inner * 34) + ((((int)threadIdx.x) >> 3) * 2)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 2) + 17))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 17; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_relu[((((((ax1_inner * 2176) + ((((int)threadIdx.x) >> 3) * 128)) + (((int)blockIdx.x) * 16)) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 2) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 16) + ((((int)threadIdx.x) & 7) * 2)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


