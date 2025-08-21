
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
  float Conv2dOutput[128];
  __shared__ float PaddedInput_shared[768];
  __shared__ float placeholder_shared[384];
  for (int yy_inner_init = 0; yy_inner_init < 2; ++yy_inner_init) {
    Conv2dOutput[((yy_inner_init * 16))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 32))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 64))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 96))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 33))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 65))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 97))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 34))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 66))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 98))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 35))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 67))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 99))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 36))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 68))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 100))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 37))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 69))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 101))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 6))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 38))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 70))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 102))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 7))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 39))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 71))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 103))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 40))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 72))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 104))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 41))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 73))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 105))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 10))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 42))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 74))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 106))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 11))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 43))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 75))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 107))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 12))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 44))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 76))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 108))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 13))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 45))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 77))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 109))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 14))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 46))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 78))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 110))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 15))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 47))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 79))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 16) + 111))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 96; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((int)threadIdx.x) / 3) * 288) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 256))] = placeholder[((((((((int)threadIdx.x) + 256) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 512))] = placeholder[((((((((int)threadIdx.x) + 512) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 384) + ((int)threadIdx.x)))];
    if (((int)threadIdx.x) < 128) {
      placeholder_shared[((((int)threadIdx.x) + 256))] = placeholder1[((((rc_outer_outer * 384) + ((int)threadIdx.x)) + 256))];
    }
    __syncthreads();
    for (int rc_inner = 0; rc_inner < 3; ++rc_inner) {
      for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
        Conv2dOutput[((yy_inner * 16))] = (Conv2dOutput[((yy_inner * 16))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 32))] = (Conv2dOutput[(((yy_inner * 16) + 32))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 64))] = (Conv2dOutput[(((yy_inner * 16) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 384))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 96))] = (Conv2dOutput[(((yy_inner * 16) + 96))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 384))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 1))] = (Conv2dOutput[(((yy_inner * 16) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 3))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 33))] = (Conv2dOutput[(((yy_inner * 16) + 33))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 3))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 65))] = (Conv2dOutput[(((yy_inner * 16) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 387))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 97))] = (Conv2dOutput[(((yy_inner * 16) + 97))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 387))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 2))] = (Conv2dOutput[(((yy_inner * 16) + 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 6))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 34))] = (Conv2dOutput[(((yy_inner * 16) + 34))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 6))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 66))] = (Conv2dOutput[(((yy_inner * 16) + 66))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 390))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 98))] = (Conv2dOutput[(((yy_inner * 16) + 98))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 390))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 3))] = (Conv2dOutput[(((yy_inner * 16) + 3))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 9))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 35))] = (Conv2dOutput[(((yy_inner * 16) + 35))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 9))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 67))] = (Conv2dOutput[(((yy_inner * 16) + 67))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 393))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 99))] = (Conv2dOutput[(((yy_inner * 16) + 99))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 393))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 4))] = (Conv2dOutput[(((yy_inner * 16) + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 12))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 36))] = (Conv2dOutput[(((yy_inner * 16) + 36))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 12))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 68))] = (Conv2dOutput[(((yy_inner * 16) + 68))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 396))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 100))] = (Conv2dOutput[(((yy_inner * 16) + 100))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 396))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 5))] = (Conv2dOutput[(((yy_inner * 16) + 5))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 15))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 37))] = (Conv2dOutput[(((yy_inner * 16) + 37))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 15))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 69))] = (Conv2dOutput[(((yy_inner * 16) + 69))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 399))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 101))] = (Conv2dOutput[(((yy_inner * 16) + 101))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 399))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 6))] = (Conv2dOutput[(((yy_inner * 16) + 6))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 18))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 38))] = (Conv2dOutput[(((yy_inner * 16) + 38))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 18))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 70))] = (Conv2dOutput[(((yy_inner * 16) + 70))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 402))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 102))] = (Conv2dOutput[(((yy_inner * 16) + 102))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 402))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 7))] = (Conv2dOutput[(((yy_inner * 16) + 7))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 21))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 39))] = (Conv2dOutput[(((yy_inner * 16) + 39))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 21))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 71))] = (Conv2dOutput[(((yy_inner * 16) + 71))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 405))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 103))] = (Conv2dOutput[(((yy_inner * 16) + 103))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 405))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 8))] = (Conv2dOutput[(((yy_inner * 16) + 8))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 24))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 40))] = (Conv2dOutput[(((yy_inner * 16) + 40))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 24))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 72))] = (Conv2dOutput[(((yy_inner * 16) + 72))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 408))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 104))] = (Conv2dOutput[(((yy_inner * 16) + 104))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 408))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 9))] = (Conv2dOutput[(((yy_inner * 16) + 9))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 27))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 41))] = (Conv2dOutput[(((yy_inner * 16) + 41))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 27))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 73))] = (Conv2dOutput[(((yy_inner * 16) + 73))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 411))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 105))] = (Conv2dOutput[(((yy_inner * 16) + 105))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 411))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 10))] = (Conv2dOutput[(((yy_inner * 16) + 10))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 30))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 42))] = (Conv2dOutput[(((yy_inner * 16) + 42))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 30))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 74))] = (Conv2dOutput[(((yy_inner * 16) + 74))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 414))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 106))] = (Conv2dOutput[(((yy_inner * 16) + 106))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 414))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 11))] = (Conv2dOutput[(((yy_inner * 16) + 11))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 33))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 43))] = (Conv2dOutput[(((yy_inner * 16) + 43))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 33))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 75))] = (Conv2dOutput[(((yy_inner * 16) + 75))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 417))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 107))] = (Conv2dOutput[(((yy_inner * 16) + 107))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 417))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 12))] = (Conv2dOutput[(((yy_inner * 16) + 12))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 36))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 44))] = (Conv2dOutput[(((yy_inner * 16) + 44))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 36))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 76))] = (Conv2dOutput[(((yy_inner * 16) + 76))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 420))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 108))] = (Conv2dOutput[(((yy_inner * 16) + 108))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 420))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 13))] = (Conv2dOutput[(((yy_inner * 16) + 13))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 39))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 45))] = (Conv2dOutput[(((yy_inner * 16) + 45))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 39))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 77))] = (Conv2dOutput[(((yy_inner * 16) + 77))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 423))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 109))] = (Conv2dOutput[(((yy_inner * 16) + 109))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 423))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 14))] = (Conv2dOutput[(((yy_inner * 16) + 14))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 42))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 46))] = (Conv2dOutput[(((yy_inner * 16) + 46))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 42))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 78))] = (Conv2dOutput[(((yy_inner * 16) + 78))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 426))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 110))] = (Conv2dOutput[(((yy_inner * 16) + 110))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 426))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 15))] = (Conv2dOutput[(((yy_inner * 16) + 15))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 45))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 47))] = (Conv2dOutput[(((yy_inner * 16) + 47))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 45))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
        Conv2dOutput[(((yy_inner * 16) + 79))] = (Conv2dOutput[(((yy_inner * 16) + 79))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 429))] * placeholder_shared[(((rc_inner * 128) + (((int)threadIdx.x) & 63)))]));
        Conv2dOutput[(((yy_inner * 16) + 111))] = (Conv2dOutput[(((yy_inner * 16) + 111))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 96) + (yy_inner * 48)) + rc_inner) + 429))] * placeholder_shared[((((rc_inner * 128) + (((int)threadIdx.x) & 63)) + 64))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 16; ++ax2_inner) {
      T_relu[((((((((int)threadIdx.x) >> 6) * 4096) + (ax1_inner * 2048)) + (ax2_inner * 128)) + (((int)threadIdx.x) & 63)))] = max((Conv2dOutput[(((ax1_inner * 16) + ax2_inner))] + placeholder2[((((int)threadIdx.x) & 63))]), 0.000000e+00f);
      T_relu[(((((((((int)threadIdx.x) >> 6) * 4096) + (ax1_inner * 2048)) + (ax2_inner * 128)) + (((int)threadIdx.x) & 63)) + 64))] = max((Conv2dOutput[((((ax1_inner * 16) + ax2_inner) + 32))] + placeholder2[(((((int)threadIdx.x) & 63) + 64))]), 0.000000e+00f);
      T_relu[(((((((((int)threadIdx.x) >> 6) * 4096) + (ax1_inner * 2048)) + (ax2_inner * 128)) + (((int)threadIdx.x) & 63)) + 16384))] = max((Conv2dOutput[((((ax1_inner * 16) + ax2_inner) + 64))] + placeholder2[((((int)threadIdx.x) & 63))]), 0.000000e+00f);
      T_relu[(((((((((int)threadIdx.x) >> 6) * 4096) + (ax1_inner * 2048)) + (ax2_inner * 128)) + (((int)threadIdx.x) & 63)) + 16448))] = max((Conv2dOutput[((((ax1_inner * 16) + ax2_inner) + 96))] + placeholder2[(((((int)threadIdx.x) & 63) + 64))]), 0.000000e+00f);
    }
  }
}


