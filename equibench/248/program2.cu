
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
  float Conv2dOutput[448];
  __shared__ float PaddedInput_shared[224];
  __shared__ float placeholder_shared[4096];
  for (int yy_inner_init = 0; yy_inner_init < 7; ++yy_inner_init) {
    Conv2dOutput[((yy_inner_init * 64))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 6))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 7))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 10))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 11))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 12))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 13))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 14))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 15))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 16))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 17))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 18))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 19))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 20))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 21))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 22))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 23))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 24))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 25))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 26))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 27))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 28))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 29))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 30))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 31))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 32))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 33))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 34))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 35))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 36))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 37))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 38))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 39))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 40))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 41))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 42))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 43))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 44))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 45))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 46))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 47))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 48))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 49))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 50))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 51))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 52))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 53))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 54))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 55))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 56))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 57))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 58))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 59))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 60))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 61))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 62))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 64) + 63))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 22; ++rc_outer_outer) {
    __syncthreads();
    ((float2*)(PaddedInput_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder + ((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 4))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 4))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 8))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 8))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 12))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 12))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 16))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 16))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 20))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 20))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 24))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 24))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 28))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 28))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 32))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 4928))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 36))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 36) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 4)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 40))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 40) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 8)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 44))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 44) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 12)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 48))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 48) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 16)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 52))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 52) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 20)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 56))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 56) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 24)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 60))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 60) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 28)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 64))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 9856))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 68))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 68) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 4)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 72))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 72) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 8)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 76))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 76) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 12)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 80))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 80) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 16)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 84))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 84) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 20)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 88))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 88) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 24)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 92))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 92) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 28)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 96))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 14784))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 100))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 100) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 4)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 104))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 104) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 8)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 108))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 108) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 12)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 112))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 112) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 16)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 116))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 116) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 20)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 120))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 120) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 24)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 124))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 124) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 28)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 128))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 19712))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 132))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 132) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 4)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 136))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 136) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 8)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 140))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 140) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 12)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 144))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 144) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 16)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 148))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 148) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 20)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 152))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 152) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 24)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 156))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 156) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 28)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 160))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 24640))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 164))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 164) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 4)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 168))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 168) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 8)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 172))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 172) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 12)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 176))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 176) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 16)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 180))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 180) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 20)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 184))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 184) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 24)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 188))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 188) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 28)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 192))))[0] = ((float2*)(placeholder + (((((((int)blockIdx.x) * 704) + (rc_outer_outer * 32)) + (((int)threadIdx.x) * 2)) + 29568))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 196))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 196) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 4)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 200))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 200) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 8)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 204))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 204) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 12)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 208))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 208) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 16)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 212))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 212) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 20)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 216))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 216) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 24)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 220))))[0] = ((float2*)(placeholder + ((((((((((int)threadIdx.x) * 2) + 220) >> 5) * 4928) + (((int)blockIdx.x) * 704)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) * 2) + 28)))))[0];
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 512; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      ((float4*)(placeholder_shared + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + (((int)threadIdx.x) * 4)))))[0] = ((float4*)(placeholder1 + ((((rc_outer_outer * 4096) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8)) + (((int)threadIdx.x) * 4)))))[0];
    }
    __syncthreads();
    for (int rc_inner = 0; rc_inner < 32; ++rc_inner) {
      for (int yy_inner = 0; yy_inner < 7; ++yy_inner) {
        Conv2dOutput[((yy_inner * 64))] = (Conv2dOutput[((yy_inner * 64))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) * 64)))]));
        Conv2dOutput[(((yy_inner * 64) + 1))] = (Conv2dOutput[(((yy_inner * 64) + 1))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 1))]));
        Conv2dOutput[(((yy_inner * 64) + 2))] = (Conv2dOutput[(((yy_inner * 64) + 2))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 2))]));
        Conv2dOutput[(((yy_inner * 64) + 3))] = (Conv2dOutput[(((yy_inner * 64) + 3))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 3))]));
        Conv2dOutput[(((yy_inner * 64) + 4))] = (Conv2dOutput[(((yy_inner * 64) + 4))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 4))]));
        Conv2dOutput[(((yy_inner * 64) + 5))] = (Conv2dOutput[(((yy_inner * 64) + 5))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 5))]));
        Conv2dOutput[(((yy_inner * 64) + 6))] = (Conv2dOutput[(((yy_inner * 64) + 6))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 6))]));
        Conv2dOutput[(((yy_inner * 64) + 7))] = (Conv2dOutput[(((yy_inner * 64) + 7))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 7))]));
        Conv2dOutput[(((yy_inner * 64) + 8))] = (Conv2dOutput[(((yy_inner * 64) + 8))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 8))]));
        Conv2dOutput[(((yy_inner * 64) + 9))] = (Conv2dOutput[(((yy_inner * 64) + 9))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 9))]));
        Conv2dOutput[(((yy_inner * 64) + 10))] = (Conv2dOutput[(((yy_inner * 64) + 10))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 10))]));
        Conv2dOutput[(((yy_inner * 64) + 11))] = (Conv2dOutput[(((yy_inner * 64) + 11))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 11))]));
        Conv2dOutput[(((yy_inner * 64) + 12))] = (Conv2dOutput[(((yy_inner * 64) + 12))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 12))]));
        Conv2dOutput[(((yy_inner * 64) + 13))] = (Conv2dOutput[(((yy_inner * 64) + 13))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 13))]));
        Conv2dOutput[(((yy_inner * 64) + 14))] = (Conv2dOutput[(((yy_inner * 64) + 14))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 14))]));
        Conv2dOutput[(((yy_inner * 64) + 15))] = (Conv2dOutput[(((yy_inner * 64) + 15))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 15))]));
        Conv2dOutput[(((yy_inner * 64) + 16))] = (Conv2dOutput[(((yy_inner * 64) + 16))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 16))]));
        Conv2dOutput[(((yy_inner * 64) + 17))] = (Conv2dOutput[(((yy_inner * 64) + 17))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 17))]));
        Conv2dOutput[(((yy_inner * 64) + 18))] = (Conv2dOutput[(((yy_inner * 64) + 18))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 18))]));
        Conv2dOutput[(((yy_inner * 64) + 19))] = (Conv2dOutput[(((yy_inner * 64) + 19))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 19))]));
        Conv2dOutput[(((yy_inner * 64) + 20))] = (Conv2dOutput[(((yy_inner * 64) + 20))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 20))]));
        Conv2dOutput[(((yy_inner * 64) + 21))] = (Conv2dOutput[(((yy_inner * 64) + 21))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 21))]));
        Conv2dOutput[(((yy_inner * 64) + 22))] = (Conv2dOutput[(((yy_inner * 64) + 22))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 22))]));
        Conv2dOutput[(((yy_inner * 64) + 23))] = (Conv2dOutput[(((yy_inner * 64) + 23))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 23))]));
        Conv2dOutput[(((yy_inner * 64) + 24))] = (Conv2dOutput[(((yy_inner * 64) + 24))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 24))]));
        Conv2dOutput[(((yy_inner * 64) + 25))] = (Conv2dOutput[(((yy_inner * 64) + 25))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 25))]));
        Conv2dOutput[(((yy_inner * 64) + 26))] = (Conv2dOutput[(((yy_inner * 64) + 26))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 26))]));
        Conv2dOutput[(((yy_inner * 64) + 27))] = (Conv2dOutput[(((yy_inner * 64) + 27))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 27))]));
        Conv2dOutput[(((yy_inner * 64) + 28))] = (Conv2dOutput[(((yy_inner * 64) + 28))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 28))]));
        Conv2dOutput[(((yy_inner * 64) + 29))] = (Conv2dOutput[(((yy_inner * 64) + 29))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 29))]));
        Conv2dOutput[(((yy_inner * 64) + 30))] = (Conv2dOutput[(((yy_inner * 64) + 30))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 30))]));
        Conv2dOutput[(((yy_inner * 64) + 31))] = (Conv2dOutput[(((yy_inner * 64) + 31))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 31))]));
        Conv2dOutput[(((yy_inner * 64) + 32))] = (Conv2dOutput[(((yy_inner * 64) + 32))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 32))]));
        Conv2dOutput[(((yy_inner * 64) + 33))] = (Conv2dOutput[(((yy_inner * 64) + 33))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 33))]));
        Conv2dOutput[(((yy_inner * 64) + 34))] = (Conv2dOutput[(((yy_inner * 64) + 34))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 34))]));
        Conv2dOutput[(((yy_inner * 64) + 35))] = (Conv2dOutput[(((yy_inner * 64) + 35))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 35))]));
        Conv2dOutput[(((yy_inner * 64) + 36))] = (Conv2dOutput[(((yy_inner * 64) + 36))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 36))]));
        Conv2dOutput[(((yy_inner * 64) + 37))] = (Conv2dOutput[(((yy_inner * 64) + 37))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 37))]));
        Conv2dOutput[(((yy_inner * 64) + 38))] = (Conv2dOutput[(((yy_inner * 64) + 38))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 38))]));
        Conv2dOutput[(((yy_inner * 64) + 39))] = (Conv2dOutput[(((yy_inner * 64) + 39))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 39))]));
        Conv2dOutput[(((yy_inner * 64) + 40))] = (Conv2dOutput[(((yy_inner * 64) + 40))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 40))]));
        Conv2dOutput[(((yy_inner * 64) + 41))] = (Conv2dOutput[(((yy_inner * 64) + 41))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 41))]));
        Conv2dOutput[(((yy_inner * 64) + 42))] = (Conv2dOutput[(((yy_inner * 64) + 42))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 42))]));
        Conv2dOutput[(((yy_inner * 64) + 43))] = (Conv2dOutput[(((yy_inner * 64) + 43))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 43))]));
        Conv2dOutput[(((yy_inner * 64) + 44))] = (Conv2dOutput[(((yy_inner * 64) + 44))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 44))]));
        Conv2dOutput[(((yy_inner * 64) + 45))] = (Conv2dOutput[(((yy_inner * 64) + 45))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 45))]));
        Conv2dOutput[(((yy_inner * 64) + 46))] = (Conv2dOutput[(((yy_inner * 64) + 46))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 46))]));
        Conv2dOutput[(((yy_inner * 64) + 47))] = (Conv2dOutput[(((yy_inner * 64) + 47))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 47))]));
        Conv2dOutput[(((yy_inner * 64) + 48))] = (Conv2dOutput[(((yy_inner * 64) + 48))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 48))]));
        Conv2dOutput[(((yy_inner * 64) + 49))] = (Conv2dOutput[(((yy_inner * 64) + 49))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 49))]));
        Conv2dOutput[(((yy_inner * 64) + 50))] = (Conv2dOutput[(((yy_inner * 64) + 50))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 50))]));
        Conv2dOutput[(((yy_inner * 64) + 51))] = (Conv2dOutput[(((yy_inner * 64) + 51))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 51))]));
        Conv2dOutput[(((yy_inner * 64) + 52))] = (Conv2dOutput[(((yy_inner * 64) + 52))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 52))]));
        Conv2dOutput[(((yy_inner * 64) + 53))] = (Conv2dOutput[(((yy_inner * 64) + 53))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 53))]));
        Conv2dOutput[(((yy_inner * 64) + 54))] = (Conv2dOutput[(((yy_inner * 64) + 54))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 54))]));
        Conv2dOutput[(((yy_inner * 64) + 55))] = (Conv2dOutput[(((yy_inner * 64) + 55))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 55))]));
        Conv2dOutput[(((yy_inner * 64) + 56))] = (Conv2dOutput[(((yy_inner * 64) + 56))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 56))]));
        Conv2dOutput[(((yy_inner * 64) + 57))] = (Conv2dOutput[(((yy_inner * 64) + 57))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 57))]));
        Conv2dOutput[(((yy_inner * 64) + 58))] = (Conv2dOutput[(((yy_inner * 64) + 58))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 58))]));
        Conv2dOutput[(((yy_inner * 64) + 59))] = (Conv2dOutput[(((yy_inner * 64) + 59))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 59))]));
        Conv2dOutput[(((yy_inner * 64) + 60))] = (Conv2dOutput[(((yy_inner * 64) + 60))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 60))]));
        Conv2dOutput[(((yy_inner * 64) + 61))] = (Conv2dOutput[(((yy_inner * 64) + 61))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 61))]));
        Conv2dOutput[(((yy_inner * 64) + 62))] = (Conv2dOutput[(((yy_inner * 64) + 62))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 62))]));
        Conv2dOutput[(((yy_inner * 64) + 63))] = (Conv2dOutput[(((yy_inner * 64) + 63))] + (PaddedInput_shared[(((yy_inner * 32) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) * 64)) + 63))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 7; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 64; ++ax3_inner) {
      T_relu[(((((ax1_inner * 896) + (((int)blockIdx.x) * 128)) + (((int)threadIdx.x) * 64)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 64) + ax3_inner))] + placeholder2[(((((int)threadIdx.x) * 64) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


