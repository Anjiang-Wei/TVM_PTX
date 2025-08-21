
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
  __shared__ float PaddedInput_shared[112];
  __shared__ float placeholder_shared[128];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(32)] = 0.000000e+00f;
  Conv2dOutput[(48)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(33)] = 0.000000e+00f;
  Conv2dOutput[(49)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(34)] = 0.000000e+00f;
  Conv2dOutput[(50)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(35)] = 0.000000e+00f;
  Conv2dOutput[(51)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(24)] = 0.000000e+00f;
  Conv2dOutput[(40)] = 0.000000e+00f;
  Conv2dOutput[(56)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(25)] = 0.000000e+00f;
  Conv2dOutput[(41)] = 0.000000e+00f;
  Conv2dOutput[(57)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(26)] = 0.000000e+00f;
  Conv2dOutput[(42)] = 0.000000e+00f;
  Conv2dOutput[(58)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(27)] = 0.000000e+00f;
  Conv2dOutput[(43)] = 0.000000e+00f;
  Conv2dOutput[(59)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(36)] = 0.000000e+00f;
  Conv2dOutput[(52)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(37)] = 0.000000e+00f;
  Conv2dOutput[(53)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(38)] = 0.000000e+00f;
  Conv2dOutput[(54)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  Conv2dOutput[(39)] = 0.000000e+00f;
  Conv2dOutput[(55)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(28)] = 0.000000e+00f;
  Conv2dOutput[(44)] = 0.000000e+00f;
  Conv2dOutput[(60)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(29)] = 0.000000e+00f;
  Conv2dOutput[(45)] = 0.000000e+00f;
  Conv2dOutput[(61)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(30)] = 0.000000e+00f;
  Conv2dOutput[(46)] = 0.000000e+00f;
  Conv2dOutput[(62)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(31)] = 0.000000e+00f;
  Conv2dOutput[(47)] = 0.000000e+00f;
  Conv2dOutput[(63)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 240; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[((((int)threadIdx.x) * 32))] = placeholder[(((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 1))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 2))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 480))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 3))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 481))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 4))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 960))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 5))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 961))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 6))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 1440))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 7))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 1441))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 8))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 1920))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 9))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 1921))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 10))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 2400))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 11))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 2401))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 12))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 2880))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 13))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 2881))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 14))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 3360))];
    }
    if (((int)threadIdx.x) < 4) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 15))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 3361))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 16))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 3840))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 17))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 3841))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 18))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 4320))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 19))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 4321))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 20))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 4800))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 21))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 4801))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 22))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 5280))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 23))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 5281))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 24))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 5760))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 25))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 5761))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 26))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 6240))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 27))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 6241))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 28))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 6720))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 29))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 6721))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 30))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 7200))];
    }
    if (((int)threadIdx.x) < 3) {
      PaddedInput_shared[(((((int)threadIdx.x) * 32) + 31))] = placeholder[((((((((int)blockIdx.x) >> 1) * 26880) + (((int)threadIdx.x) * 7680)) + (rc_outer_outer * 2)) + 7201))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 256) + ((((int)blockIdx.x) & 1) * 64)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 56))] = placeholder1[(((((rc_outer_outer * 256) + (((((int)threadIdx.x) + 56) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) + 56) & 63)))];
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[((((int)threadIdx.x) + 112))] = placeholder1[(((((rc_outer_outer * 256) + (((((int)threadIdx.x) + 112) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) + 48)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 3) * 2))] * placeholder_shared[(((((int)threadIdx.x) & 7) * 8))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 14))] * placeholder_shared[(((((int)threadIdx.x) & 7) * 8))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 28))] * placeholder_shared[(((((int)threadIdx.x) & 7) * 8))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 42))] * placeholder_shared[(((((int)threadIdx.x) & 7) * 8))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 3) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 1))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 1))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 28))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 1))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 1))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 3) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 2))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 2))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 28))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 2))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 2))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 3) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 3))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 3))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 28))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 3))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 3))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 56))] * placeholder_shared[(((((int)threadIdx.x) & 7) * 8))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 70))] * placeholder_shared[(((((int)threadIdx.x) & 7) * 8))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 84))] * placeholder_shared[(((((int)threadIdx.x) & 7) * 8))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 98))] * placeholder_shared[(((((int)threadIdx.x) & 7) * 8))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 56))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 1))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 1))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 84))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 1))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 1))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 56))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 2))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 2))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 84))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 2))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 2))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 56))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 3))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 3))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 84))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 3))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 3))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 64))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 64))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 29))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 64))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 64))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 65))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 65))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 29))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 65))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 65))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 66))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 66))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 29))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 66))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 66))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 67))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 67))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 29))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 67))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 67))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 64))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 64))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 85))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 64))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 64))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 65))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 65))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 85))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 65))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 65))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 66))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 66))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 85))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 66))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 66))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 67))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 67))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 85))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 67))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 67))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 3) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 4))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 4))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 28))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 4))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 4))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 3) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 5))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 5))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 28))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 5))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 5))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 3) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 6))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 6))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 28))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 6))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 6))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 3) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 7))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 14))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 7))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 28))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 7))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 7))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 56))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 4))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 4))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 84))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 4))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 4))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 56))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 5))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 5))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 84))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 5))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 5))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 56))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 6))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 6))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 84))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 6))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 6))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 56))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 7))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 7))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 84))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 7))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 7))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 68))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 68))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 29))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 68))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 68))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 69))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 69))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 29))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 69))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 69))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 70))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 70))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 29))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 70))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 70))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 71))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 15))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 71))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 29))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 71))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 71))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 68))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 68))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 85))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 68))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 68))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 69))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 69))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 85))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 69))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 69))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 70))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 70))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 85))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 70))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 70))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 57))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 71))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 71))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 85))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 71))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 2) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 7) * 8) + 71))]));
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
      T_relu[((((((((((int)blockIdx.x) >> 1) * 7168) + (ax1_inner * 3584)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 7) * 8)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 8) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 7) * 8)) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 1) * 7168) + (ax1_inner * 3584)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 7) * 8)) + ax3_inner) + 896))] = max((Conv2dOutput[((((ax1_inner * 8) + ax3_inner) + 16))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 7) * 8)) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 1) * 7168) + (ax1_inner * 3584)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 7) * 8)) + ax3_inner) + 1792))] = max((Conv2dOutput[((((ax1_inner * 8) + ax3_inner) + 32))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 7) * 8)) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) >> 1) * 7168) + (ax1_inner * 3584)) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 7) * 8)) + ax3_inner) + 2688))] = max((Conv2dOutput[((((ax1_inner * 8) + ax3_inner) + 48))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 7) * 8)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


