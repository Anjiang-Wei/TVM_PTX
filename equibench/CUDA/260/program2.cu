
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
  float Conv2dOutput[512];
  __shared__ float PaddedInput_shared[2048];
  __shared__ float placeholder_shared[1024];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
    for (int nn_inner_init = 0; nn_inner_init < 2; ++nn_inner_init) {
      for (int yy_inner_init = 0; yy_inner_init < 4; ++yy_inner_init) {
        Conv2dOutput[((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 256))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 1))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 257))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 2))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 258))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 3))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 259))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 4))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 260))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 5))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 261))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 6))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 262))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 7))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 263))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 8))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 264))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 9))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 265))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 10))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 266))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 11))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 267))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 12))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 268))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 13))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 269))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 14))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 270))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 15))] = 0.000000e+00f;
        Conv2dOutput[(((((nn_inner_init * 128) + (yy_inner_init * 32)) + (xx_outer_inner_init * 16)) + 271))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 6) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) & 63) >> 2) * 128)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 256))] = placeholder[(((((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 6) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) & 63) >> 2) * 128)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 32768))];
    PaddedInput_shared[((((int)threadIdx.x) + 512))] = placeholder[(((((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 6) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) & 63) >> 2) * 128)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 524288))];
    PaddedInput_shared[((((int)threadIdx.x) + 768))] = placeholder[((((((((((((int)threadIdx.x) + 768) >> 9) * 524288) + ((((int)blockIdx.x) >> 2) * 65536)) + (((((int)threadIdx.x) >> 6) + 4) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) & 63) >> 2) * 128)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1024))] = placeholder[(((((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 6) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) & 63) >> 2) * 128)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 1048576))];
    PaddedInput_shared[((((int)threadIdx.x) + 1280))] = placeholder[((((((((((((int)threadIdx.x) + 1280) >> 9) * 524288) + ((((int)blockIdx.x) >> 2) * 65536)) + (((((int)threadIdx.x) >> 6) + 4) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) & 63) >> 2) * 128)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1536))] = placeholder[(((((((((((int)blockIdx.x) >> 2) * 65536) + ((((int)threadIdx.x) >> 6) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) & 63) >> 2) * 128)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 1572864))];
    PaddedInput_shared[((((int)threadIdx.x) + 1792))] = placeholder[((((((((((((int)threadIdx.x) + 1792) >> 9) * 524288) + ((((int)blockIdx.x) >> 2) * 65536)) + (((((int)threadIdx.x) >> 6) + 4) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) & 63) >> 2) * 128)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    ((float4*)(placeholder_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(placeholder1 + (((rc_outer_outer * 1024) + (((int)threadIdx.x) * 4)))))[0];
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
      for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
        for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
          for (int yy_inner = 0; yy_inner < 4; ++yy_inner) {
            Conv2dOutput[((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)))] = (Conv2dOutput[((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)))] + (PaddedInput_shared[((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 256))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 256))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1024))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 1))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 1))] + (PaddedInput_shared[((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 257))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 257))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1024))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 2))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 2))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 4))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 258))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 258))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1028))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 3))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 3))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 4))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 259))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 259))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1028))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 4))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 4))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 8))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 260))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 260))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1032))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 5))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 5))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 8))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 261))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 261))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1032))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 6))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 6))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 12))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 262))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 262))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1036))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 7))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 7))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 12))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 263))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 263))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1036))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 8))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 8))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 16))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 264))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 264))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1040))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 9))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 9))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 16))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 265))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 265))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1040))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 10))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 10))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 20))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 266))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 266))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1044))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 11))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 11))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 20))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 267))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 267))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1044))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 12))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 12))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 24))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 268))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 268))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1048))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 13))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 13))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 24))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 269))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 269))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1048))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 14))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 14))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 28))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 270))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 270))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1052))] * placeholder_shared[(((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 15))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 15))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 28))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
            Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 271))] = (Conv2dOutput[(((((nn_inner * 128) + (yy_inner * 32)) + (xx_outer_inner * 16)) + 271))] + (PaddedInput_shared[(((((((nn_inner * 512) + ((((int)threadIdx.x) >> 7) * 256)) + (yy_inner * 64)) + (xx_outer_inner * 32)) + rc_inner) + 1052))] * placeholder_shared[((((rc_inner * 256) + ((((int)threadIdx.x) & 127) * 2)) + 1))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 16; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
          T_relu[(((((((((ax0_inner * 1048576) + ((((int)blockIdx.x) >> 2) * 131072)) + ((((int)threadIdx.x) >> 7) * 65536)) + (ax1_inner * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + (ax2_inner * 256)) + ((((int)threadIdx.x) & 127) * 2)) + ax3_inner))] = max(((Conv2dOutput[(((((ax0_inner * 128) + (ax1_inner * 32)) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 127) * 2) + ax3_inner))]) + placeholder3[(((((((((ax0_inner * 1048576) + ((((int)blockIdx.x) >> 2) * 131072)) + ((((int)threadIdx.x) >> 7) * 65536)) + (ax1_inner * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + (ax2_inner * 256)) + ((((int)threadIdx.x) & 127) * 2)) + ax3_inner))]), 0.000000e+00f);
          T_relu[((((((((((ax0_inner * 1048576) + ((((int)blockIdx.x) >> 2) * 131072)) + ((((int)threadIdx.x) >> 7) * 65536)) + (ax1_inner * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + (ax2_inner * 256)) + ((((int)threadIdx.x) & 127) * 2)) + ax3_inner) + 2097152))] = max(((Conv2dOutput[((((((ax0_inner * 128) + (ax1_inner * 32)) + (ax2_inner * 2)) + ax3_inner) + 256))] + placeholder2[((((((int)threadIdx.x) & 127) * 2) + ax3_inner))]) + placeholder3[((((((((((ax0_inner * 1048576) + ((((int)blockIdx.x) >> 2) * 131072)) + ((((int)threadIdx.x) >> 7) * 65536)) + (ax1_inner * 16384)) + ((((int)blockIdx.x) & 3) * 4096)) + (ax2_inner * 256)) + ((((int)threadIdx.x) & 127) * 2)) + ax3_inner) + 2097152))]), 0.000000e+00f);
        }
      }
    }
  }
}


