
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_multiply, float* __restrict__ Conv2dOutput, float* __restrict__ placeholder) {
  T_multiply[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] = ((Conv2dOutput[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) % 960))]) * (max(min(((Conv2dOutput[(((((int)blockIdx.x) * 64) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 64) + ((int)threadIdx.x)) % 960))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ Conv2dOutput) {
  float Conv2dOutput_local[56];
  __shared__ float PaddedInput_shared[280];
  __shared__ float placeholder_shared[3840];
  Conv2dOutput_local[(0)] = 0.000000e+00f;
  Conv2dOutput_local[(28)] = 0.000000e+00f;
  Conv2dOutput_local[(4)] = 0.000000e+00f;
  Conv2dOutput_local[(32)] = 0.000000e+00f;
  Conv2dOutput_local[(8)] = 0.000000e+00f;
  Conv2dOutput_local[(36)] = 0.000000e+00f;
  Conv2dOutput_local[(12)] = 0.000000e+00f;
  Conv2dOutput_local[(40)] = 0.000000e+00f;
  Conv2dOutput_local[(16)] = 0.000000e+00f;
  Conv2dOutput_local[(44)] = 0.000000e+00f;
  Conv2dOutput_local[(20)] = 0.000000e+00f;
  Conv2dOutput_local[(48)] = 0.000000e+00f;
  Conv2dOutput_local[(24)] = 0.000000e+00f;
  Conv2dOutput_local[(52)] = 0.000000e+00f;
  Conv2dOutput_local[(1)] = 0.000000e+00f;
  Conv2dOutput_local[(29)] = 0.000000e+00f;
  Conv2dOutput_local[(5)] = 0.000000e+00f;
  Conv2dOutput_local[(33)] = 0.000000e+00f;
  Conv2dOutput_local[(9)] = 0.000000e+00f;
  Conv2dOutput_local[(37)] = 0.000000e+00f;
  Conv2dOutput_local[(13)] = 0.000000e+00f;
  Conv2dOutput_local[(41)] = 0.000000e+00f;
  Conv2dOutput_local[(17)] = 0.000000e+00f;
  Conv2dOutput_local[(45)] = 0.000000e+00f;
  Conv2dOutput_local[(21)] = 0.000000e+00f;
  Conv2dOutput_local[(49)] = 0.000000e+00f;
  Conv2dOutput_local[(25)] = 0.000000e+00f;
  Conv2dOutput_local[(53)] = 0.000000e+00f;
  Conv2dOutput_local[(2)] = 0.000000e+00f;
  Conv2dOutput_local[(30)] = 0.000000e+00f;
  Conv2dOutput_local[(6)] = 0.000000e+00f;
  Conv2dOutput_local[(34)] = 0.000000e+00f;
  Conv2dOutput_local[(10)] = 0.000000e+00f;
  Conv2dOutput_local[(38)] = 0.000000e+00f;
  Conv2dOutput_local[(14)] = 0.000000e+00f;
  Conv2dOutput_local[(42)] = 0.000000e+00f;
  Conv2dOutput_local[(18)] = 0.000000e+00f;
  Conv2dOutput_local[(46)] = 0.000000e+00f;
  Conv2dOutput_local[(22)] = 0.000000e+00f;
  Conv2dOutput_local[(50)] = 0.000000e+00f;
  Conv2dOutput_local[(26)] = 0.000000e+00f;
  Conv2dOutput_local[(54)] = 0.000000e+00f;
  Conv2dOutput_local[(3)] = 0.000000e+00f;
  Conv2dOutput_local[(31)] = 0.000000e+00f;
  Conv2dOutput_local[(7)] = 0.000000e+00f;
  Conv2dOutput_local[(35)] = 0.000000e+00f;
  Conv2dOutput_local[(11)] = 0.000000e+00f;
  Conv2dOutput_local[(39)] = 0.000000e+00f;
  Conv2dOutput_local[(15)] = 0.000000e+00f;
  Conv2dOutput_local[(43)] = 0.000000e+00f;
  Conv2dOutput_local[(19)] = 0.000000e+00f;
  Conv2dOutput_local[(47)] = 0.000000e+00f;
  Conv2dOutput_local[(23)] = 0.000000e+00f;
  Conv2dOutput_local[(51)] = 0.000000e+00f;
  Conv2dOutput_local[(27)] = 0.000000e+00f;
  Conv2dOutput_local[(55)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 4; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[((((int)threadIdx.x) * 4))] = placeholder[((((((((int)threadIdx.x) / 10) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + ((((int)threadIdx.x) % 10) * 4)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 1))] = placeholder[((((((((((int)threadIdx.x) * 4) + 1) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 1) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 2))] = placeholder[((((((((((int)threadIdx.x) * 4) + 2) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 2) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 3))] = placeholder[((((((((((int)threadIdx.x) * 4) + 3) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 3) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 48))] = placeholder[((((((((((int)threadIdx.x) * 4) + 48) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 8) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 49))] = placeholder[((((((((((int)threadIdx.x) * 4) + 49) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 9) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 50))] = placeholder[((((((((((int)threadIdx.x) * 4) + 50) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 10) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 51))] = placeholder[((((((((((int)threadIdx.x) * 4) + 51) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 11) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 96))] = placeholder[((((((((((int)threadIdx.x) * 4) + 96) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 16) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 97))] = placeholder[((((((((((int)threadIdx.x) * 4) + 97) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 17) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 98))] = placeholder[((((((((((int)threadIdx.x) * 4) + 98) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 18) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 99))] = placeholder[((((((((((int)threadIdx.x) * 4) + 99) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 19) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 144))] = placeholder[((((((((((int)threadIdx.x) * 4) + 144) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 24) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 145))] = placeholder[((((((((((int)threadIdx.x) * 4) + 145) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 25) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 146))] = placeholder[((((((((((int)threadIdx.x) * 4) + 146) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 26) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 147))] = placeholder[((((((((((int)threadIdx.x) * 4) + 147) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 27) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 192))] = placeholder[((((((((((int)threadIdx.x) * 4) + 192) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 32) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 193))] = placeholder[((((((((((int)threadIdx.x) * 4) + 193) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 33) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 194))] = placeholder[((((((((((int)threadIdx.x) * 4) + 194) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 34) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 4) + 195))] = placeholder[((((((((((int)threadIdx.x) * 4) + 195) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 4) + 35) % 40)))];
    if (((int)threadIdx.x) < 10) {
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 240))] = placeholder[((((((((int)blockIdx.x) / 10) * 160) + (rc_outer_outer * 40)) + (((int)threadIdx.x) * 4)) + 6720))];
    }
    if (((int)threadIdx.x) < 10) {
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 241))] = placeholder[((((((((((int)threadIdx.x) * 4) + 241) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + ((((int)threadIdx.x) * 4) + 1)))];
    }
    if (((int)threadIdx.x) < 10) {
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 242))] = placeholder[((((((((((int)threadIdx.x) * 4) + 242) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + ((((int)threadIdx.x) * 4) + 2)))];
    }
    if (((int)threadIdx.x) < 10) {
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 243))] = placeholder[((((((((((int)threadIdx.x) * 4) + 243) / 40) * 1120) + ((((int)blockIdx.x) / 10) * 160)) + (rc_outer_outer * 40)) + ((((int)threadIdx.x) * 4) + 3)))];
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 320; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 38400) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) / 96) * 960)) + ((((int)blockIdx.x) % 10) * 96)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 12) + ((int)threadIdx.x)) % 96)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 40; ++rc_outer_inner) {
      Conv2dOutput_local[(0)] = (Conv2dOutput_local[(0)] + (PaddedInput_shared[(rc_outer_inner)] * placeholder_shared[(((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)))]));
      Conv2dOutput_local[(28)] = (Conv2dOutput_local[(28)] + (PaddedInput_shared[(rc_outer_inner)] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 48))]));
      Conv2dOutput_local[(4)] = (Conv2dOutput_local[(4)] + (PaddedInput_shared[((rc_outer_inner + 40))] * placeholder_shared[(((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)))]));
      Conv2dOutput_local[(32)] = (Conv2dOutput_local[(32)] + (PaddedInput_shared[((rc_outer_inner + 40))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 48))]));
      Conv2dOutput_local[(8)] = (Conv2dOutput_local[(8)] + (PaddedInput_shared[((rc_outer_inner + 80))] * placeholder_shared[(((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)))]));
      Conv2dOutput_local[(36)] = (Conv2dOutput_local[(36)] + (PaddedInput_shared[((rc_outer_inner + 80))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 48))]));
      Conv2dOutput_local[(12)] = (Conv2dOutput_local[(12)] + (PaddedInput_shared[((rc_outer_inner + 120))] * placeholder_shared[(((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)))]));
      Conv2dOutput_local[(40)] = (Conv2dOutput_local[(40)] + (PaddedInput_shared[((rc_outer_inner + 120))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 48))]));
      Conv2dOutput_local[(16)] = (Conv2dOutput_local[(16)] + (PaddedInput_shared[((rc_outer_inner + 160))] * placeholder_shared[(((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)))]));
      Conv2dOutput_local[(44)] = (Conv2dOutput_local[(44)] + (PaddedInput_shared[((rc_outer_inner + 160))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 48))]));
      Conv2dOutput_local[(20)] = (Conv2dOutput_local[(20)] + (PaddedInput_shared[((rc_outer_inner + 200))] * placeholder_shared[(((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)))]));
      Conv2dOutput_local[(48)] = (Conv2dOutput_local[(48)] + (PaddedInput_shared[((rc_outer_inner + 200))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 48))]));
      Conv2dOutput_local[(24)] = (Conv2dOutput_local[(24)] + (PaddedInput_shared[((rc_outer_inner + 240))] * placeholder_shared[(((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)))]));
      Conv2dOutput_local[(52)] = (Conv2dOutput_local[(52)] + (PaddedInput_shared[((rc_outer_inner + 240))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 48))]));
      Conv2dOutput_local[(1)] = (Conv2dOutput_local[(1)] + (PaddedInput_shared[(rc_outer_inner)] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 1))]));
      Conv2dOutput_local[(29)] = (Conv2dOutput_local[(29)] + (PaddedInput_shared[(rc_outer_inner)] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 49))]));
      Conv2dOutput_local[(5)] = (Conv2dOutput_local[(5)] + (PaddedInput_shared[((rc_outer_inner + 40))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 1))]));
      Conv2dOutput_local[(33)] = (Conv2dOutput_local[(33)] + (PaddedInput_shared[((rc_outer_inner + 40))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 49))]));
      Conv2dOutput_local[(9)] = (Conv2dOutput_local[(9)] + (PaddedInput_shared[((rc_outer_inner + 80))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 1))]));
      Conv2dOutput_local[(37)] = (Conv2dOutput_local[(37)] + (PaddedInput_shared[((rc_outer_inner + 80))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 49))]));
      Conv2dOutput_local[(13)] = (Conv2dOutput_local[(13)] + (PaddedInput_shared[((rc_outer_inner + 120))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 1))]));
      Conv2dOutput_local[(41)] = (Conv2dOutput_local[(41)] + (PaddedInput_shared[((rc_outer_inner + 120))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 49))]));
      Conv2dOutput_local[(17)] = (Conv2dOutput_local[(17)] + (PaddedInput_shared[((rc_outer_inner + 160))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 1))]));
      Conv2dOutput_local[(45)] = (Conv2dOutput_local[(45)] + (PaddedInput_shared[((rc_outer_inner + 160))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 49))]));
      Conv2dOutput_local[(21)] = (Conv2dOutput_local[(21)] + (PaddedInput_shared[((rc_outer_inner + 200))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 1))]));
      Conv2dOutput_local[(49)] = (Conv2dOutput_local[(49)] + (PaddedInput_shared[((rc_outer_inner + 200))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 49))]));
      Conv2dOutput_local[(25)] = (Conv2dOutput_local[(25)] + (PaddedInput_shared[((rc_outer_inner + 240))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 1))]));
      Conv2dOutput_local[(53)] = (Conv2dOutput_local[(53)] + (PaddedInput_shared[((rc_outer_inner + 240))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 49))]));
      Conv2dOutput_local[(2)] = (Conv2dOutput_local[(2)] + (PaddedInput_shared[(rc_outer_inner)] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 2))]));
      Conv2dOutput_local[(30)] = (Conv2dOutput_local[(30)] + (PaddedInput_shared[(rc_outer_inner)] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 50))]));
      Conv2dOutput_local[(6)] = (Conv2dOutput_local[(6)] + (PaddedInput_shared[((rc_outer_inner + 40))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 2))]));
      Conv2dOutput_local[(34)] = (Conv2dOutput_local[(34)] + (PaddedInput_shared[((rc_outer_inner + 40))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 50))]));
      Conv2dOutput_local[(10)] = (Conv2dOutput_local[(10)] + (PaddedInput_shared[((rc_outer_inner + 80))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 2))]));
      Conv2dOutput_local[(38)] = (Conv2dOutput_local[(38)] + (PaddedInput_shared[((rc_outer_inner + 80))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 50))]));
      Conv2dOutput_local[(14)] = (Conv2dOutput_local[(14)] + (PaddedInput_shared[((rc_outer_inner + 120))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 2))]));
      Conv2dOutput_local[(42)] = (Conv2dOutput_local[(42)] + (PaddedInput_shared[((rc_outer_inner + 120))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 50))]));
      Conv2dOutput_local[(18)] = (Conv2dOutput_local[(18)] + (PaddedInput_shared[((rc_outer_inner + 160))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 2))]));
      Conv2dOutput_local[(46)] = (Conv2dOutput_local[(46)] + (PaddedInput_shared[((rc_outer_inner + 160))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 50))]));
      Conv2dOutput_local[(22)] = (Conv2dOutput_local[(22)] + (PaddedInput_shared[((rc_outer_inner + 200))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 2))]));
      Conv2dOutput_local[(50)] = (Conv2dOutput_local[(50)] + (PaddedInput_shared[((rc_outer_inner + 200))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 50))]));
      Conv2dOutput_local[(26)] = (Conv2dOutput_local[(26)] + (PaddedInput_shared[((rc_outer_inner + 240))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 2))]));
      Conv2dOutput_local[(54)] = (Conv2dOutput_local[(54)] + (PaddedInput_shared[((rc_outer_inner + 240))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 50))]));
      Conv2dOutput_local[(3)] = (Conv2dOutput_local[(3)] + (PaddedInput_shared[(rc_outer_inner)] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 3))]));
      Conv2dOutput_local[(31)] = (Conv2dOutput_local[(31)] + (PaddedInput_shared[(rc_outer_inner)] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 51))]));
      Conv2dOutput_local[(7)] = (Conv2dOutput_local[(7)] + (PaddedInput_shared[((rc_outer_inner + 40))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 3))]));
      Conv2dOutput_local[(35)] = (Conv2dOutput_local[(35)] + (PaddedInput_shared[((rc_outer_inner + 40))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 51))]));
      Conv2dOutput_local[(11)] = (Conv2dOutput_local[(11)] + (PaddedInput_shared[((rc_outer_inner + 80))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 3))]));
      Conv2dOutput_local[(39)] = (Conv2dOutput_local[(39)] + (PaddedInput_shared[((rc_outer_inner + 80))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 51))]));
      Conv2dOutput_local[(15)] = (Conv2dOutput_local[(15)] + (PaddedInput_shared[((rc_outer_inner + 120))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 3))]));
      Conv2dOutput_local[(43)] = (Conv2dOutput_local[(43)] + (PaddedInput_shared[((rc_outer_inner + 120))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 51))]));
      Conv2dOutput_local[(19)] = (Conv2dOutput_local[(19)] + (PaddedInput_shared[((rc_outer_inner + 160))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 3))]));
      Conv2dOutput_local[(47)] = (Conv2dOutput_local[(47)] + (PaddedInput_shared[((rc_outer_inner + 160))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 51))]));
      Conv2dOutput_local[(23)] = (Conv2dOutput_local[(23)] + (PaddedInput_shared[((rc_outer_inner + 200))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 3))]));
      Conv2dOutput_local[(51)] = (Conv2dOutput_local[(51)] + (PaddedInput_shared[((rc_outer_inner + 200))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 51))]));
      Conv2dOutput_local[(27)] = (Conv2dOutput_local[(27)] + (PaddedInput_shared[((rc_outer_inner + 240))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 3))]));
      Conv2dOutput_local[(55)] = (Conv2dOutput_local[(55)] + (PaddedInput_shared[((rc_outer_inner + 240))] * placeholder_shared[((((rc_outer_inner * 96) + (((int)threadIdx.x) * 4)) + 51))]));
    }
  }
  for (int yy_inner = 0; yy_inner < 7; ++yy_inner) {
    for (int ff_inner = 0; ff_inner < 4; ++ff_inner) {
      Conv2dOutput[(((((yy_inner * 6720) + (((int)blockIdx.x) * 96)) + (((int)threadIdx.x) * 4)) + ff_inner))] = Conv2dOutput_local[(((yy_inner * 4) + ff_inner))];
      Conv2dOutput[((((((yy_inner * 6720) + (((int)blockIdx.x) * 96)) + (((int)threadIdx.x) * 4)) + ff_inner) + 48))] = Conv2dOutput_local[((((yy_inner * 4) + ff_inner) + 28))];
    }
  }
}


