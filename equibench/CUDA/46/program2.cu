
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
  float Conv2dOutput[40];
  __shared__ float PaddedInput_shared[2400];
  __shared__ float placeholder_shared[16];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  Conv2dOutput[(24)] = 0.000000e+00f;
  Conv2dOutput[(30)] = 0.000000e+00f;
  Conv2dOutput[(31)] = 0.000000e+00f;
  Conv2dOutput[(32)] = 0.000000e+00f;
  Conv2dOutput[(33)] = 0.000000e+00f;
  Conv2dOutput[(34)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(25)] = 0.000000e+00f;
  Conv2dOutput[(26)] = 0.000000e+00f;
  Conv2dOutput[(27)] = 0.000000e+00f;
  Conv2dOutput[(28)] = 0.000000e+00f;
  Conv2dOutput[(29)] = 0.000000e+00f;
  Conv2dOutput[(35)] = 0.000000e+00f;
  Conv2dOutput[(36)] = 0.000000e+00f;
  Conv2dOutput[(37)] = 0.000000e+00f;
  Conv2dOutput[(38)] = 0.000000e+00f;
  Conv2dOutput[(39)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 96; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[((((int)threadIdx.x) * 8))] = placeholder[(((((((((int)threadIdx.x) / 75) * 172800) + ((((((int)threadIdx.x) % 75) * 4) / 10) * 5760)) + ((((int)blockIdx.x) >> 2) * 1920)) + (((((int)threadIdx.x) * 4) % 10) * 192)) + (rc_outer_outer * 2)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 8) + 1))] = placeholder[((((((((((int)threadIdx.x) / 75) * 172800) + ((((((int)threadIdx.x) % 75) * 4) / 10) * 5760)) + ((((int)blockIdx.x) >> 2) * 1920)) + (((((int)threadIdx.x) * 4) % 10) * 192)) + (rc_outer_outer * 2)) + 1))];
    PaddedInput_shared[(((((int)threadIdx.x) * 8) + 2))] = placeholder[((((((((((int)threadIdx.x) * 4) + 1) / 10) * 5760) + ((((int)blockIdx.x) >> 2) * 1920)) + ((((((int)threadIdx.x) * 4) + 1) % 10) * 192)) + (rc_outer_outer * 2)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 8) + 3))] = placeholder[(((((((((((int)threadIdx.x) * 4) + 1) / 10) * 5760) + ((((int)blockIdx.x) >> 2) * 1920)) + ((((((int)threadIdx.x) * 4) + 1) % 10) * 192)) + (rc_outer_outer * 2)) + 1))];
    PaddedInput_shared[(((((int)threadIdx.x) * 8) + 4))] = placeholder[((((((((((int)threadIdx.x) * 4) + 2) / 10) * 5760) + ((((int)blockIdx.x) >> 2) * 1920)) + ((((((int)threadIdx.x) * 4) + 2) % 10) * 192)) + (rc_outer_outer * 2)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 8) + 5))] = placeholder[(((((((((((int)threadIdx.x) * 4) + 2) / 10) * 5760) + ((((int)blockIdx.x) >> 2) * 1920)) + ((((((int)threadIdx.x) * 4) + 2) % 10) * 192)) + (rc_outer_outer * 2)) + 1))];
    PaddedInput_shared[(((((int)threadIdx.x) * 8) + 6))] = placeholder[((((((((((int)threadIdx.x) * 4) + 3) / 10) * 5760) + ((((int)blockIdx.x) >> 2) * 1920)) + ((((((int)threadIdx.x) * 4) + 3) % 10) * 192)) + (rc_outer_outer * 2)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 8) + 7))] = placeholder[(((((((((((int)threadIdx.x) * 4) + 3) / 10) * 5760) + ((((int)blockIdx.x) >> 2) * 1920)) + ((((((int)threadIdx.x) * 4) + 3) % 10) * 192)) + (rc_outer_outer * 2)) + 1))];
    if (((int)threadIdx.x) < 60) {
      PaddedInput_shared[(((((((((int)threadIdx.x) * 4) + 960) / 300) * 600) + ((((((int)threadIdx.x) * 4) / 10) + 6) * 20)) + (((((int)threadIdx.x) * 4) % 10) * 2)))] = placeholder[(((((((((((int)threadIdx.x) * 4) + 960) / 300) * 172800) + ((((((int)threadIdx.x) * 4) / 10) + 6) * 5760)) + ((((int)blockIdx.x) >> 2) * 1920)) + (((((int)threadIdx.x) * 4) % 10) * 192)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 60) {
      PaddedInput_shared[((((((((((int)threadIdx.x) * 4) + 960) / 300) * 600) + ((((((int)threadIdx.x) * 4) / 10) + 6) * 20)) + (((((int)threadIdx.x) * 4) % 10) * 2)) + 1))] = placeholder[((((((((((((int)threadIdx.x) * 4) + 960) / 300) * 172800) + ((((((int)threadIdx.x) * 4) / 10) + 6) * 5760)) + ((((int)blockIdx.x) >> 2) * 1920)) + (((((int)threadIdx.x) * 4) % 10) * 192)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 60) {
      PaddedInput_shared[(((((((((int)threadIdx.x) * 4) + 961) / 300) * 600) + (((((((int)threadIdx.x) * 4) + 1) / 10) + 6) * 20)) + ((((((int)threadIdx.x) * 4) + 1) % 10) * 2)))] = placeholder[(((((((((((int)threadIdx.x) * 4) + 961) / 300) * 172800) + (((((((int)threadIdx.x) * 4) + 1) / 10) + 6) * 5760)) + ((((int)blockIdx.x) >> 2) * 1920)) + ((((((int)threadIdx.x) * 4) + 1) % 10) * 192)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 60) {
      PaddedInput_shared[((((((((((int)threadIdx.x) * 4) + 961) / 300) * 600) + (((((((int)threadIdx.x) * 4) + 1) / 10) + 6) * 20)) + ((((((int)threadIdx.x) * 4) + 1) % 10) * 2)) + 1))] = placeholder[((((((((((((int)threadIdx.x) * 4) + 961) / 300) * 172800) + (((((((int)threadIdx.x) * 4) + 1) / 10) + 6) * 5760)) + ((((int)blockIdx.x) >> 2) * 1920)) + ((((((int)threadIdx.x) * 4) + 1) % 10) * 192)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 60) {
      PaddedInput_shared[(((((((((int)threadIdx.x) * 4) + 962) / 300) * 600) + (((((((int)threadIdx.x) * 4) + 2) / 10) + 6) * 20)) + ((((((int)threadIdx.x) * 4) + 2) % 10) * 2)))] = placeholder[(((((((((((int)threadIdx.x) * 4) + 962) / 300) * 172800) + (((((((int)threadIdx.x) * 4) + 2) / 10) + 6) * 5760)) + ((((int)blockIdx.x) >> 2) * 1920)) + ((((((int)threadIdx.x) * 4) + 2) % 10) * 192)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 60) {
      PaddedInput_shared[((((((((((int)threadIdx.x) * 4) + 962) / 300) * 600) + (((((((int)threadIdx.x) * 4) + 2) / 10) + 6) * 20)) + ((((((int)threadIdx.x) * 4) + 2) % 10) * 2)) + 1))] = placeholder[((((((((((((int)threadIdx.x) * 4) + 962) / 300) * 172800) + (((((((int)threadIdx.x) * 4) + 2) / 10) + 6) * 5760)) + ((((int)blockIdx.x) >> 2) * 1920)) + ((((((int)threadIdx.x) * 4) + 2) % 10) * 192)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 60) {
      PaddedInput_shared[(((((((((int)threadIdx.x) * 4) + 963) / 300) * 600) + (((((((int)threadIdx.x) * 4) + 3) / 10) + 6) * 20)) + ((((((int)threadIdx.x) * 4) + 3) % 10) * 2)))] = placeholder[(((((((((((int)threadIdx.x) * 4) + 963) / 300) * 172800) + (((((((int)threadIdx.x) * 4) + 3) / 10) + 6) * 5760)) + ((((int)blockIdx.x) >> 2) * 1920)) + ((((((int)threadIdx.x) * 4) + 3) % 10) * 192)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 60) {
      PaddedInput_shared[((((((((((int)threadIdx.x) * 4) + 963) / 300) * 600) + (((((((int)threadIdx.x) * 4) + 3) / 10) + 6) * 20)) + ((((((int)threadIdx.x) * 4) + 3) % 10) * 2)) + 1))] = placeholder[((((((((((((int)threadIdx.x) * 4) + 963) / 300) * 172800) + (((((((int)threadIdx.x) * 4) + 3) / 10) + 6) * 5760)) + ((((int)blockIdx.x) >> 2) * 1920)) + ((((((int)threadIdx.x) * 4) + 3) % 10) * 192)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 3) {
      placeholder_shared[((((int)threadIdx.x) * 6))] = placeholder1[(((((rc_outer_outer * 64) + (((((int)threadIdx.x) * 6) >> 3) * 32)) + ((((int)blockIdx.x) & 3) * 8)) + ((((int)threadIdx.x) * 6) & 7)))];
    }
    if (((int)threadIdx.x) < 3) {
      placeholder_shared[(((((int)threadIdx.x) * 6) + 1))] = placeholder1[(((((rc_outer_outer * 64) + ((((((int)threadIdx.x) * 6) + 1) >> 3) * 32)) + ((((int)blockIdx.x) & 3) * 8)) + (((((int)threadIdx.x) * 6) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 3) {
      placeholder_shared[(((((int)threadIdx.x) * 6) + 2))] = placeholder1[(((((rc_outer_outer * 64) + ((((((int)threadIdx.x) * 6) + 2) >> 3) * 32)) + ((((int)blockIdx.x) & 3) * 8)) + (((((int)threadIdx.x) * 6) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 3) {
      placeholder_shared[(((((int)threadIdx.x) * 6) + 3))] = placeholder1[(((((rc_outer_outer * 64) + ((((((int)threadIdx.x) * 6) + 3) >> 3) * 32)) + ((((int)blockIdx.x) & 3) * 8)) + (((((int)threadIdx.x) * 6) + 3) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 6) + 4))] = placeholder1[(((((rc_outer_outer * 64) + ((((((int)threadIdx.x) * 6) + 4) >> 3) * 32)) + ((((int)blockIdx.x) & 3) * 8)) + (((((int)threadIdx.x) * 6) + 4) & 7)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_shared[(((((int)threadIdx.x) * 6) + 5))] = placeholder1[(((((rc_outer_outer * 64) + ((((((int)threadIdx.x) * 6) + 5) >> 3) * 32)) + ((((int)blockIdx.x) & 3) * 8)) + (((((int)threadIdx.x) * 6) + 5) & 7)))];
    }
    __syncthreads();
    for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
      Conv2dOutput[((yy_outer_inner * 5))] = (Conv2dOutput[((yy_outer_inner * 5))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 1))] = (Conv2dOutput[(((yy_outer_inner * 5) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 20))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 2))] = (Conv2dOutput[(((yy_outer_inner * 5) + 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 40))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 3))] = (Conv2dOutput[(((yy_outer_inner * 5) + 3))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 60))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 4))] = (Conv2dOutput[(((yy_outer_inner * 5) + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 80))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 10))] = (Conv2dOutput[(((yy_outer_inner * 5) + 10))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 600))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 11))] = (Conv2dOutput[(((yy_outer_inner * 5) + 11))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 620))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 12))] = (Conv2dOutput[(((yy_outer_inner * 5) + 12))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 640))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 13))] = (Conv2dOutput[(((yy_outer_inner * 5) + 13))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 660))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 14))] = (Conv2dOutput[(((yy_outer_inner * 5) + 14))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 680))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 20))] = (Conv2dOutput[(((yy_outer_inner * 5) + 20))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1200))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 21))] = (Conv2dOutput[(((yy_outer_inner * 5) + 21))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1220))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 22))] = (Conv2dOutput[(((yy_outer_inner * 5) + 22))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1240))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 23))] = (Conv2dOutput[(((yy_outer_inner * 5) + 23))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1260))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 24))] = (Conv2dOutput[(((yy_outer_inner * 5) + 24))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1280))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 30))] = (Conv2dOutput[(((yy_outer_inner * 5) + 30))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1800))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 31))] = (Conv2dOutput[(((yy_outer_inner * 5) + 31))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1820))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 32))] = (Conv2dOutput[(((yy_outer_inner * 5) + 32))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1840))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 33))] = (Conv2dOutput[(((yy_outer_inner * 5) + 33))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1860))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 34))] = (Conv2dOutput[(((yy_outer_inner * 5) + 34))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1880))] * placeholder_shared[((((int)threadIdx.x) & 7))]));
      Conv2dOutput[((yy_outer_inner * 5))] = (Conv2dOutput[((yy_outer_inner * 5))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 1))] = (Conv2dOutput[(((yy_outer_inner * 5) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 21))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 2))] = (Conv2dOutput[(((yy_outer_inner * 5) + 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 41))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 3))] = (Conv2dOutput[(((yy_outer_inner * 5) + 3))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 61))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 4))] = (Conv2dOutput[(((yy_outer_inner * 5) + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 81))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 10))] = (Conv2dOutput[(((yy_outer_inner * 5) + 10))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 601))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 11))] = (Conv2dOutput[(((yy_outer_inner * 5) + 11))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 621))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 12))] = (Conv2dOutput[(((yy_outer_inner * 5) + 12))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 641))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 13))] = (Conv2dOutput[(((yy_outer_inner * 5) + 13))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 661))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 14))] = (Conv2dOutput[(((yy_outer_inner * 5) + 14))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 681))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 20))] = (Conv2dOutput[(((yy_outer_inner * 5) + 20))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1201))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 21))] = (Conv2dOutput[(((yy_outer_inner * 5) + 21))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1221))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 22))] = (Conv2dOutput[(((yy_outer_inner * 5) + 22))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1241))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 23))] = (Conv2dOutput[(((yy_outer_inner * 5) + 23))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1261))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 24))] = (Conv2dOutput[(((yy_outer_inner * 5) + 24))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1281))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 30))] = (Conv2dOutput[(((yy_outer_inner * 5) + 30))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1801))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 31))] = (Conv2dOutput[(((yy_outer_inner * 5) + 31))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1821))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 32))] = (Conv2dOutput[(((yy_outer_inner * 5) + 32))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1841))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 33))] = (Conv2dOutput[(((yy_outer_inner * 5) + 33))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1861))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 5) + 34))] = (Conv2dOutput[(((yy_outer_inner * 5) + 34))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 80) * 200) + (yy_outer_inner * 100)) + (((((int)threadIdx.x) % 80) >> 3) * 2)) + 1881))] * placeholder_shared[(((((int)threadIdx.x) & 7) + 8))]));
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 10; ++ax1_inner) {
      T_add[((((((((ax0_inner * 28800) + ((((int)threadIdx.x) / 80) * 9600)) + (ax1_inner * 960)) + ((((int)blockIdx.x) >> 2) * 320)) + (((((int)threadIdx.x) % 80) >> 3) * 32)) + ((((int)blockIdx.x) & 3) * 8)) + (((int)threadIdx.x) & 7)))] = (placeholder2[((((((((ax0_inner * 28800) + ((((int)threadIdx.x) / 80) * 9600)) + (ax1_inner * 960)) + ((((int)blockIdx.x) >> 2) * 320)) + (((((int)threadIdx.x) % 80) >> 3) * 32)) + ((((int)blockIdx.x) & 3) * 8)) + (((int)threadIdx.x) & 7)))] + (Conv2dOutput[(((ax0_inner * 10) + ax1_inner))] + placeholder3[((((((int)blockIdx.x) & 3) * 8) + (((int)threadIdx.x) & 7)))]));
    }
  }
}


