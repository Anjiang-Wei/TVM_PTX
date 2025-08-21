
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
  float Conv2dOutput[100];
  __shared__ float PaddedInput_shared[1575];
  __shared__ float placeholder_shared[1344];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(50)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(60)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(70)] = 0.000000e+00f;
  Conv2dOutput[(30)] = 0.000000e+00f;
  Conv2dOutput[(80)] = 0.000000e+00f;
  Conv2dOutput[(40)] = 0.000000e+00f;
  Conv2dOutput[(90)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(51)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(61)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(71)] = 0.000000e+00f;
  Conv2dOutput[(31)] = 0.000000e+00f;
  Conv2dOutput[(81)] = 0.000000e+00f;
  Conv2dOutput[(41)] = 0.000000e+00f;
  Conv2dOutput[(91)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(52)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(62)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(72)] = 0.000000e+00f;
  Conv2dOutput[(32)] = 0.000000e+00f;
  Conv2dOutput[(82)] = 0.000000e+00f;
  Conv2dOutput[(42)] = 0.000000e+00f;
  Conv2dOutput[(92)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(53)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(63)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  Conv2dOutput[(73)] = 0.000000e+00f;
  Conv2dOutput[(33)] = 0.000000e+00f;
  Conv2dOutput[(83)] = 0.000000e+00f;
  Conv2dOutput[(43)] = 0.000000e+00f;
  Conv2dOutput[(93)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(54)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(64)] = 0.000000e+00f;
  Conv2dOutput[(24)] = 0.000000e+00f;
  Conv2dOutput[(74)] = 0.000000e+00f;
  Conv2dOutput[(34)] = 0.000000e+00f;
  Conv2dOutput[(84)] = 0.000000e+00f;
  Conv2dOutput[(44)] = 0.000000e+00f;
  Conv2dOutput[(94)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(55)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(65)] = 0.000000e+00f;
  Conv2dOutput[(25)] = 0.000000e+00f;
  Conv2dOutput[(75)] = 0.000000e+00f;
  Conv2dOutput[(35)] = 0.000000e+00f;
  Conv2dOutput[(85)] = 0.000000e+00f;
  Conv2dOutput[(45)] = 0.000000e+00f;
  Conv2dOutput[(95)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(56)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(66)] = 0.000000e+00f;
  Conv2dOutput[(26)] = 0.000000e+00f;
  Conv2dOutput[(76)] = 0.000000e+00f;
  Conv2dOutput[(36)] = 0.000000e+00f;
  Conv2dOutput[(86)] = 0.000000e+00f;
  Conv2dOutput[(46)] = 0.000000e+00f;
  Conv2dOutput[(96)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(57)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(67)] = 0.000000e+00f;
  Conv2dOutput[(27)] = 0.000000e+00f;
  Conv2dOutput[(77)] = 0.000000e+00f;
  Conv2dOutput[(37)] = 0.000000e+00f;
  Conv2dOutput[(87)] = 0.000000e+00f;
  Conv2dOutput[(47)] = 0.000000e+00f;
  Conv2dOutput[(97)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(58)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(68)] = 0.000000e+00f;
  Conv2dOutput[(28)] = 0.000000e+00f;
  Conv2dOutput[(78)] = 0.000000e+00f;
  Conv2dOutput[(38)] = 0.000000e+00f;
  Conv2dOutput[(88)] = 0.000000e+00f;
  Conv2dOutput[(48)] = 0.000000e+00f;
  Conv2dOutput[(98)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(59)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(69)] = 0.000000e+00f;
  Conv2dOutput[(29)] = 0.000000e+00f;
  Conv2dOutput[(79)] = 0.000000e+00f;
  Conv2dOutput[(39)] = 0.000000e+00f;
  Conv2dOutput[(89)] = 0.000000e+00f;
  Conv2dOutput[(49)] = 0.000000e+00f;
  Conv2dOutput[(99)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((int)blockIdx.x) >> 1) * 3360) + ((((int)threadIdx.x) / 21) * 672)) + (rc_outer_outer * 21)) + (((int)threadIdx.x) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 48))] = placeholder[((((((((int)blockIdx.x) >> 1) * 3360) + (((((int)threadIdx.x) + 48) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 6) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 96))] = placeholder[((((((((((int)threadIdx.x) + 96) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 96) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 12) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 144))] = placeholder[((((((((((int)threadIdx.x) + 144) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 39) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 18) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 192))] = placeholder[((((((((((int)threadIdx.x) + 192) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 87) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 3) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 240))] = placeholder[((((((((((int)threadIdx.x) + 240) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 30) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 9) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 288))] = placeholder[((((((((((int)threadIdx.x) + 288) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 78) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 15) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 336))] = placeholder[((((((((((int)threadIdx.x) + 336) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 21) / 21) * 672)) + (rc_outer_outer * 21)) + (((int)threadIdx.x) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 384))] = placeholder[((((((((((int)threadIdx.x) + 384) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 69) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 6) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 432))] = placeholder[((((((((((int)threadIdx.x) + 432) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 12) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 12) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 480))] = placeholder[((((((((((int)threadIdx.x) + 480) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 60) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 18) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 528))] = placeholder[((((((((((int)threadIdx.x) + 528) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 3) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 3) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 576))] = placeholder[((((((((((int)threadIdx.x) + 576) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 51) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 9) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 624))] = placeholder[((((((((((int)threadIdx.x) + 624) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 99) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 15) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 672))] = placeholder[((((((((((int)threadIdx.x) + 672) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 42) / 21) * 672)) + (rc_outer_outer * 21)) + (((int)threadIdx.x) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 720))] = placeholder[((((((((((int)threadIdx.x) + 720) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 90) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 6) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 768))] = placeholder[((((((((((int)threadIdx.x) + 768) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 33) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 12) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 816))] = placeholder[((((((((((int)threadIdx.x) + 816) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 81) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 18) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 864))] = placeholder[((((((((((int)threadIdx.x) + 864) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 24) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 3) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 912))] = placeholder[((((((((((int)threadIdx.x) + 912) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 72) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 9) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 960))] = placeholder[((((((((((int)threadIdx.x) + 960) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 15) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 15) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1008))] = placeholder[((((((((((int)threadIdx.x) + 1008) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 63) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + (((int)threadIdx.x) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1056))] = placeholder[((((((((((int)threadIdx.x) + 1056) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 6) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 6) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1104))] = placeholder[((((((((((int)threadIdx.x) + 1104) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 54) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 12) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1152))] = placeholder[((((((((((int)threadIdx.x) + 1152) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 102) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 18) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1200))] = placeholder[((((((((((int)threadIdx.x) + 1200) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 45) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 3) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1248))] = placeholder[((((((((((int)threadIdx.x) + 1248) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 93) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 9) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1296))] = placeholder[((((((((((int)threadIdx.x) + 1296) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 36) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 15) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1344))] = placeholder[((((((((((int)threadIdx.x) + 1344) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 84) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + (((int)threadIdx.x) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1392))] = placeholder[((((((((((int)threadIdx.x) + 1392) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 27) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 6) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1440))] = placeholder[((((((((((int)threadIdx.x) + 1440) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + ((((((int)threadIdx.x) + 75) % 105) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 12) % 21)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1488))] = placeholder[((((((((((int)threadIdx.x) + 1488) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 18) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 18) % 21)))];
    if (((int)threadIdx.x) < 39) {
      PaddedInput_shared[((((int)threadIdx.x) + 1536))] = placeholder[((((((((((int)threadIdx.x) + 1536) / 105) * 10080) + ((((int)blockIdx.x) >> 1) * 3360)) + (((((int)threadIdx.x) + 66) / 21) * 672)) + (rc_outer_outer * 21)) + ((((int)threadIdx.x) + 3) % 21)))];
    }
    placeholder_shared[((((int)threadIdx.x) * 21))] = placeholder1[(((((rc_outer_outer * 2688) + (((((int)threadIdx.x) * 21) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) * 21) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 1))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 1) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 2))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 2) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 2) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 3))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 3) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 3) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 4))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 4) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 4) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 5))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 5) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 5) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 6))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 6) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 6) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 7))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 7) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 7) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 8))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 8) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 8) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 9))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 9) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 9) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 10))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 10) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 10) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 11))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 11) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 11) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 12))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 12) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 12) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 13))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 13) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 13) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 14))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 14) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 14) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 15))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 15) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 15) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 16))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 16) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 16) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 17))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 17) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 17) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 18))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 18) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 18) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 19))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 19) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 19) & 63)))];
    placeholder_shared[(((((int)threadIdx.x) * 21) + 20))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 20) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 20) & 63)))];
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1008))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1008) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 48) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1009))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1009) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 49) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1010))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1010) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 50) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1011))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1011) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 51) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1012))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1012) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 52) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1013))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1013) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 53) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1014))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1014) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 54) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1015))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1015) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 55) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1016))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1016) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 56) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1017))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1017) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 57) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1018))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1018) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 58) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1019))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1019) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 59) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1020))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1020) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 60) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1021))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1021) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 61) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1022))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1022) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 62) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1023))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1023) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 63) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1024))] = placeholder1[((((((rc_outer_outer * 2688) + (((((int)threadIdx.x) * 21) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) * 21) & 63)) + 2048))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1025))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1025) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 1) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1026))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1026) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 2) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1027))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1027) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 3) & 63)))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((((int)threadIdx.x) * 21) + 1028))] = placeholder1[(((((rc_outer_outer * 2688) + ((((((int)threadIdx.x) * 21) + 1028) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((((int)threadIdx.x) * 21) + 4) & 63)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 21; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 105))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 105))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 210))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(70)] = (Conv2dOutput[(70)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 210))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 315))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(80)] = (Conv2dOutput[(80)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 315))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 420))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(90)] = (Conv2dOutput[(90)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 105))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 105))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 210))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(71)] = (Conv2dOutput[(71)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 210))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 315))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(81)] = (Conv2dOutput[(81)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 315))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(91)] = (Conv2dOutput[(91)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 21))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 21))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 126))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 126))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 231))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(72)] = (Conv2dOutput[(72)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 231))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 336))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(82)] = (Conv2dOutput[(82)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 336))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 441))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(92)] = (Conv2dOutput[(92)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 441))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 21))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 21))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 126))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 126))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 231))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(73)] = (Conv2dOutput[(73)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 231))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 336))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(83)] = (Conv2dOutput[(83)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 336))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 441))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(93)] = (Conv2dOutput[(93)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 441))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 42))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 42))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 147))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(64)] = (Conv2dOutput[(64)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 147))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 252))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(74)] = (Conv2dOutput[(74)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 252))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 357))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(84)] = (Conv2dOutput[(84)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 357))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 462))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(94)] = (Conv2dOutput[(94)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 462))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 42))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 42))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 147))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(65)] = (Conv2dOutput[(65)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 147))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 252))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(75)] = (Conv2dOutput[(75)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 252))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 357))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(85)] = (Conv2dOutput[(85)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 357))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 462))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(95)] = (Conv2dOutput[(95)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 462))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 63))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 63))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 168))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(66)] = (Conv2dOutput[(66)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 168))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 273))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(76)] = (Conv2dOutput[(76)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 273))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 378))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(86)] = (Conv2dOutput[(86)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 378))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 483))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(96)] = (Conv2dOutput[(96)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 483))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 63))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 63))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 168))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(67)] = (Conv2dOutput[(67)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 168))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 273))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(77)] = (Conv2dOutput[(77)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 273))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 378))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(87)] = (Conv2dOutput[(87)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 378))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 483))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(97)] = (Conv2dOutput[(97)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 483))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 84))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 84))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 189))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(68)] = (Conv2dOutput[(68)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 189))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 294))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(78)] = (Conv2dOutput[(78)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 294))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 399))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(88)] = (Conv2dOutput[(88)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 399))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 504))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)))]));
      Conv2dOutput[(98)] = (Conv2dOutput[(98)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 504))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 32))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 84))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 84))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 189))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(69)] = (Conv2dOutput[(69)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 189))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 294))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(79)] = (Conv2dOutput[(79)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 294))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 399))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(89)] = (Conv2dOutput[(89)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 399))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
      Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 504))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 1))]));
      Conv2dOutput[(99)] = (Conv2dOutput[(99)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 525) + rc_outer_inner) + 504))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 15) * 2)) + 33))]));
    }
  }
  for (int ax1_inner = 0; ax1_inner < 5; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 5; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[(((((((((((int)threadIdx.x) >> 4) * 9600) + (ax1_inner * 1920)) + ((((int)blockIdx.x) >> 1) * 640)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 10) + (ax2_inner * 2)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((((((int)threadIdx.x) >> 4) * 9600) + (ax1_inner * 1920)) + ((((int)blockIdx.x) >> 1) * 640)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))] = max((Conv2dOutput[(((((ax1_inner * 10) + (ax2_inner * 2)) + ax3_inner) + 50))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))]), 0.000000e+00f);
      }
    }
  }
}


