
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
  float Conv2dOutput[4];
  __shared__ float PaddedInput_shared[448];
  __shared__ float placeholder_shared[16];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((int)threadIdx.x)))];
    PaddedInput_shared[((((int)threadIdx.x) + 7))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((int)threadIdx.x)) + 7))];
    PaddedInput_shared[((((int)threadIdx.x) + 14))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 14) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 14) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 21))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 21) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 5)))];
    PaddedInput_shared[((((int)threadIdx.x) + 28))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 28) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 12) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 35))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 35) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 42))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 42) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 10) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 49))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 49) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 56))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 56) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 63))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 63) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 15) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 70))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 70) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 6)))];
    PaddedInput_shared[((((int)threadIdx.x) + 77))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 77) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 13) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 84))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 84) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 4)))];
    PaddedInput_shared[((((int)threadIdx.x) + 91))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 91) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 11) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 98))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 98) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 2)))];
    PaddedInput_shared[((((int)threadIdx.x) + 105))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 105) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 9)))];
    PaddedInput_shared[((((int)threadIdx.x) + 112))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((int)threadIdx.x)) + 25088))];
    PaddedInput_shared[((((int)threadIdx.x) + 119))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 119) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 126))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 126) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 14) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 133))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 133) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 5)))];
    PaddedInput_shared[((((int)threadIdx.x) + 140))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 140) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 12) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 147))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 147) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 154))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 154) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 10) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 161))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 161) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 168))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 168) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 175))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 175) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 15) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 182))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 182) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 6)))];
    PaddedInput_shared[((((int)threadIdx.x) + 189))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 189) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 13) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 196))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 196) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 4)))];
    PaddedInput_shared[((((int)threadIdx.x) + 203))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 203) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 11) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 210))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 210) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 2)))];
    PaddedInput_shared[((((int)threadIdx.x) + 217))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)threadIdx.x) + 217) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 9)))];
    PaddedInput_shared[((((int)threadIdx.x) + 224))] = placeholder[(((((((((int)blockIdx.x) / 3584) * 50176) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((int)threadIdx.x)) + 100352))];
    PaddedInput_shared[((((int)threadIdx.x) + 231))] = placeholder[((((((((((int)threadIdx.x) + 231) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 238))] = placeholder[(((((((((((int)threadIdx.x) + 238) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 14) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 14) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 245))] = placeholder[(((((((((((int)threadIdx.x) + 245) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 21) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 5)))];
    PaddedInput_shared[((((int)threadIdx.x) + 252))] = placeholder[(((((((((((int)threadIdx.x) + 252) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 28) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 12) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 259))] = placeholder[(((((((((((int)threadIdx.x) + 259) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 35) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 266))] = placeholder[(((((((((((int)threadIdx.x) + 266) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 42) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 10) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 273))] = placeholder[(((((((((((int)threadIdx.x) + 273) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 49) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 280))] = placeholder[(((((((((((int)threadIdx.x) + 280) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 56) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 287))] = placeholder[(((((((((((int)threadIdx.x) + 287) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 63) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 15) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 294))] = placeholder[(((((((((((int)threadIdx.x) + 294) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 70) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 6)))];
    PaddedInput_shared[((((int)threadIdx.x) + 301))] = placeholder[(((((((((((int)threadIdx.x) + 301) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 77) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 13) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 308))] = placeholder[(((((((((((int)threadIdx.x) + 308) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 84) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 4)))];
    PaddedInput_shared[((((int)threadIdx.x) + 315))] = placeholder[(((((((((((int)threadIdx.x) + 315) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 91) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 11) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 322))] = placeholder[(((((((((((int)threadIdx.x) + 322) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 98) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 2)))];
    PaddedInput_shared[((((int)threadIdx.x) + 329))] = placeholder[(((((((((((int)threadIdx.x) + 329) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 105) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 9)))];
    PaddedInput_shared[((((int)threadIdx.x) + 336))] = placeholder[(((((((((((int)threadIdx.x) + 336) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 112) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((int)threadIdx.x)))];
    PaddedInput_shared[((((int)threadIdx.x) + 343))] = placeholder[(((((((((((int)threadIdx.x) + 343) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 119) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 350))] = placeholder[(((((((((((int)threadIdx.x) + 350) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 126) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 14) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 357))] = placeholder[(((((((((((int)threadIdx.x) + 357) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 133) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 5)))];
    PaddedInput_shared[((((int)threadIdx.x) + 364))] = placeholder[(((((((((((int)threadIdx.x) + 364) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 140) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 12) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 371))] = placeholder[(((((((((((int)threadIdx.x) + 371) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 147) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 378))] = placeholder[(((((((((((int)threadIdx.x) + 378) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 154) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 10) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 385))] = placeholder[(((((((((((int)threadIdx.x) + 385) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 161) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 392))] = placeholder[(((((((((((int)threadIdx.x) + 392) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 168) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 8)))];
    PaddedInput_shared[((((int)threadIdx.x) + 399))] = placeholder[(((((((((((int)threadIdx.x) + 399) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 175) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 15) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 406))] = placeholder[(((((((((((int)threadIdx.x) + 406) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 182) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 6)))];
    PaddedInput_shared[((((int)threadIdx.x) + 413))] = placeholder[(((((((((((int)threadIdx.x) + 413) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 189) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 13) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 420))] = placeholder[(((((((((((int)threadIdx.x) + 420) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 196) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 4)))];
    PaddedInput_shared[((((int)threadIdx.x) + 427))] = placeholder[(((((((((((int)threadIdx.x) + 427) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 203) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + ((((int)threadIdx.x) + 11) & 15)))];
    PaddedInput_shared[((((int)threadIdx.x) + 434))] = placeholder[(((((((((((int)threadIdx.x) + 434) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 210) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 2)))];
    PaddedInput_shared[((((int)threadIdx.x) + 441))] = placeholder[(((((((((((int)threadIdx.x) + 441) / 224) * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((((int)threadIdx.x) + 217) >> 4) * 3584)) + (((((int)blockIdx.x) % 3584) >> 7) * 128)) + (rc_outer_outer * 16)) + (((int)threadIdx.x) + 9)))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 2048) + (((int)threadIdx.x) * 128)) + (((int)blockIdx.x) & 127)))];
    placeholder_shared[((((int)threadIdx.x) + 7))] = placeholder1[(((((rc_outer_outer * 2048) + (((int)threadIdx.x) * 128)) + (((int)blockIdx.x) & 127)) + 896))];
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[((((int)threadIdx.x) + 14))] = placeholder1[(((((rc_outer_outer * 2048) + (((int)threadIdx.x) * 128)) + (((int)blockIdx.x) & 127)) + 1792))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((int)threadIdx.x) * 32))] * placeholder_shared[(0)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 224))] * placeholder_shared[(0)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 1))] * placeholder_shared[(1)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 225))] * placeholder_shared[(1)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 2))] * placeholder_shared[(2)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 226))] * placeholder_shared[(2)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 3))] * placeholder_shared[(3)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 227))] * placeholder_shared[(3)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 4))] * placeholder_shared[(4)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 228))] * placeholder_shared[(4)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 5))] * placeholder_shared[(5)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 229))] * placeholder_shared[(5)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 6))] * placeholder_shared[(6)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 230))] * placeholder_shared[(6)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 7))] * placeholder_shared[(7)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 231))] * placeholder_shared[(7)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 8))] * placeholder_shared[(8)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 232))] * placeholder_shared[(8)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 9))] * placeholder_shared[(9)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 233))] * placeholder_shared[(9)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 10))] * placeholder_shared[(10)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 234))] * placeholder_shared[(10)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 11))] * placeholder_shared[(11)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 235))] * placeholder_shared[(11)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 12))] * placeholder_shared[(12)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 236))] * placeholder_shared[(12)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 13))] * placeholder_shared[(13)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 237))] * placeholder_shared[(13)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 14))] * placeholder_shared[(14)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 238))] * placeholder_shared[(14)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 15))] * placeholder_shared[(15)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 239))] * placeholder_shared[(15)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 16))] * placeholder_shared[(0)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 240))] * placeholder_shared[(0)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 17))] * placeholder_shared[(1)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 241))] * placeholder_shared[(1)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 18))] * placeholder_shared[(2)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 242))] * placeholder_shared[(2)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 19))] * placeholder_shared[(3)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 243))] * placeholder_shared[(3)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 20))] * placeholder_shared[(4)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 244))] * placeholder_shared[(4)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 21))] * placeholder_shared[(5)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 245))] * placeholder_shared[(5)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 22))] * placeholder_shared[(6)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 246))] * placeholder_shared[(6)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 23))] * placeholder_shared[(7)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 247))] * placeholder_shared[(7)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 24))] * placeholder_shared[(8)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 248))] * placeholder_shared[(8)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 25))] * placeholder_shared[(9)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 249))] * placeholder_shared[(9)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 26))] * placeholder_shared[(10)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 250))] * placeholder_shared[(10)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 27))] * placeholder_shared[(11)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 251))] * placeholder_shared[(11)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 28))] * placeholder_shared[(12)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 252))] * placeholder_shared[(12)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 29))] * placeholder_shared[(13)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 253))] * placeholder_shared[(13)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 30))] * placeholder_shared[(14)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 254))] * placeholder_shared[(14)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 31))] * placeholder_shared[(15)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 32) + 255))] * placeholder_shared[(15)]));
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
      T_relu[((((((ax0_inner * 100352) + ((((int)blockIdx.x) / 3584) * 50176)) + (((int)threadIdx.x) * 7168)) + (ax1_inner * 3584)) + (((int)blockIdx.x) % 3584)))] = max((Conv2dOutput[(((ax0_inner * 2) + ax1_inner))] + placeholder2[((((int)blockIdx.x) & 127))]), 0.000000e+00f);
    }
  }
}


