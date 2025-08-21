
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
  float Conv2dOutput[64];
  __shared__ float PaddedInput_shared[2176];
  __shared__ float placeholder_shared[1088];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  Conv2dOutput[(24)] = 0.000000e+00f;
  Conv2dOutput[(25)] = 0.000000e+00f;
  Conv2dOutput[(26)] = 0.000000e+00f;
  Conv2dOutput[(27)] = 0.000000e+00f;
  Conv2dOutput[(28)] = 0.000000e+00f;
  Conv2dOutput[(29)] = 0.000000e+00f;
  Conv2dOutput[(30)] = 0.000000e+00f;
  Conv2dOutput[(31)] = 0.000000e+00f;
  Conv2dOutput[(32)] = 0.000000e+00f;
  Conv2dOutput[(33)] = 0.000000e+00f;
  Conv2dOutput[(34)] = 0.000000e+00f;
  Conv2dOutput[(35)] = 0.000000e+00f;
  Conv2dOutput[(36)] = 0.000000e+00f;
  Conv2dOutput[(37)] = 0.000000e+00f;
  Conv2dOutput[(38)] = 0.000000e+00f;
  Conv2dOutput[(39)] = 0.000000e+00f;
  Conv2dOutput[(40)] = 0.000000e+00f;
  Conv2dOutput[(41)] = 0.000000e+00f;
  Conv2dOutput[(42)] = 0.000000e+00f;
  Conv2dOutput[(43)] = 0.000000e+00f;
  Conv2dOutput[(44)] = 0.000000e+00f;
  Conv2dOutput[(45)] = 0.000000e+00f;
  Conv2dOutput[(46)] = 0.000000e+00f;
  Conv2dOutput[(47)] = 0.000000e+00f;
  Conv2dOutput[(48)] = 0.000000e+00f;
  Conv2dOutput[(49)] = 0.000000e+00f;
  Conv2dOutput[(50)] = 0.000000e+00f;
  Conv2dOutput[(51)] = 0.000000e+00f;
  Conv2dOutput[(52)] = 0.000000e+00f;
  Conv2dOutput[(53)] = 0.000000e+00f;
  Conv2dOutput[(54)] = 0.000000e+00f;
  Conv2dOutput[(55)] = 0.000000e+00f;
  Conv2dOutput[(56)] = 0.000000e+00f;
  Conv2dOutput[(57)] = 0.000000e+00f;
  Conv2dOutput[(58)] = 0.000000e+00f;
  Conv2dOutput[(59)] = 0.000000e+00f;
  Conv2dOutput[(60)] = 0.000000e+00f;
  Conv2dOutput[(61)] = 0.000000e+00f;
  Conv2dOutput[(62)] = 0.000000e+00f;
  Conv2dOutput[(63)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)threadIdx.x) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + (((((int)threadIdx.x) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + (((int)threadIdx.x) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 128))] = placeholder[((((((((((int)threadIdx.x) + 128) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 60) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 9) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 256))] = placeholder[((((((((((int)threadIdx.x) + 256) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 52) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 1) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 384))] = placeholder[((((((((((int)threadIdx.x) + 384) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 44) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 10) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 512))] = placeholder[((((((((((int)threadIdx.x) + 512) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 36) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 2) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 640))] = placeholder[((((((((((int)threadIdx.x) + 640) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 28) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 11) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 768))] = placeholder[((((((((((int)threadIdx.x) + 768) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 20) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 3) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 896))] = placeholder[((((((((((int)threadIdx.x) + 896) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 12) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 12) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1024))] = placeholder[((((((((((int)threadIdx.x) + 1024) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 4) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 4) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1152))] = placeholder[((((((((((int)threadIdx.x) + 1152) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 64) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 13) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1280))] = placeholder[((((((((((int)threadIdx.x) + 1280) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 56) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 5) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1408))] = placeholder[((((((((((int)threadIdx.x) + 1408) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 48) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 14) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1536))] = placeholder[((((((((((int)threadIdx.x) + 1536) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 40) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 6) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1664))] = placeholder[((((((((((int)threadIdx.x) + 1664) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 32) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 15) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1792))] = placeholder[((((((((((int)threadIdx.x) + 1792) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 24) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 7) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1920))] = placeholder[((((((((((int)threadIdx.x) + 1920) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 16) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 16) % 17)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2048))] = placeholder[((((((((((int)threadIdx.x) + 2048) / 68) * 4352) + ((((int)blockIdx.x) >> 1) * 2176)) + ((((((int)threadIdx.x) + 8) % 68) / 17) * 544)) + (rc_outer_outer * 17)) + ((((int)threadIdx.x) + 8) % 17)))];
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[((((int)threadIdx.x) * 34))] = placeholder1[(((((rc_outer_outer * 2176) + (((((int)threadIdx.x) * 34) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) * 34) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 1))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 1) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 1) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 2))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 2) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 2) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 3))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 3) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 3) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 4))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 4) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 4) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 5))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 5) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 5) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 6))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 6) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 6) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 7))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 7) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 7) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 8))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 8) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 8) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 9))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 9) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 9) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 10))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 10) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 10) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 11))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 11) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 11) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 12))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 12) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 12) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 13))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 13) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 13) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 14))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 14) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 14) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 15))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 15) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 15) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 16))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 16) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 16) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 17))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 17) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 17) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 18))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 18) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 18) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 19))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 19) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 19) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 20))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 20) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 20) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 21))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 21) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 21) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 22))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 22) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 22) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 23))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 23) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 23) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 24))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 24) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 24) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 25))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 25) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 25) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 26))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 26) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 26) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 27))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 27) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 27) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 28))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 28) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 28) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 29))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 29) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 29) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 30))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 30) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 30) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 31))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 31) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 31) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 32))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 32) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 32) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 34) + 33))] = placeholder1[(((((rc_outer_outer * 2176) + ((((((int)threadIdx.x) * 34) + 33) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 34) + 33) & 63)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 17; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 17))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 17))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 17))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 17))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 68))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 68))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 68))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 68))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 85))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 85))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 85))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 85))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 136))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 136))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 136))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 136))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 153))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 153))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 153))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 153))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 204))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 204))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 204))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 204))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 221))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 221))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 221))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 221))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 544))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 544))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 544))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 544))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 561))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 561))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 561))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 561))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 612))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 612))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 612))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 612))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 629))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 629))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 629))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 629))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 680))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 680))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 680))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 680))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 697))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 697))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 697))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 697))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 748))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 748))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 748))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 748))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
      Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 765))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)))]));
      Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 765))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 1))]));
      Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 765))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 2))]));
      Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 6) * 1088) + (((((int)threadIdx.x) & 63) >> 5) * 272)) + (((((int)threadIdx.x) & 31) >> 4) * 34)) + rc_outer_inner) + 765))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 4)) + 3))]));
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
          T_relu[((((((((((((((int)threadIdx.x) >> 6) * 16384) + (ax0_inner * 8192)) + (((((int)threadIdx.x) & 63) >> 5) * 4096)) + (ax1_inner * 1024)) + ((((int)blockIdx.x) >> 1) * 512)) + (((((int)threadIdx.x) & 31) >> 4) * 256)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 4)) + ax3_inner))] = max((Conv2dOutput[(((((ax0_inner * 32) + (ax1_inner * 8)) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 4)) + ax3_inner))]), 0.000000e+00f);
        }
      }
    }
  }
}


