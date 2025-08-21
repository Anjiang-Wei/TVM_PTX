
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
  float Conv2dOutput[56];
  __shared__ float PaddedInput_shared[2688];
  __shared__ float placeholder_shared[6144];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(24)] = 0.000000e+00f;
  Conv2dOutput[(26)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  Conv2dOutput[(25)] = 0.000000e+00f;
  Conv2dOutput[(27)] = 0.000000e+00f;
  Conv2dOutput[(28)] = 0.000000e+00f;
  Conv2dOutput[(30)] = 0.000000e+00f;
  Conv2dOutput[(32)] = 0.000000e+00f;
  Conv2dOutput[(34)] = 0.000000e+00f;
  Conv2dOutput[(36)] = 0.000000e+00f;
  Conv2dOutput[(38)] = 0.000000e+00f;
  Conv2dOutput[(40)] = 0.000000e+00f;
  Conv2dOutput[(42)] = 0.000000e+00f;
  Conv2dOutput[(44)] = 0.000000e+00f;
  Conv2dOutput[(46)] = 0.000000e+00f;
  Conv2dOutput[(48)] = 0.000000e+00f;
  Conv2dOutput[(50)] = 0.000000e+00f;
  Conv2dOutput[(52)] = 0.000000e+00f;
  Conv2dOutput[(54)] = 0.000000e+00f;
  Conv2dOutput[(29)] = 0.000000e+00f;
  Conv2dOutput[(31)] = 0.000000e+00f;
  Conv2dOutput[(33)] = 0.000000e+00f;
  Conv2dOutput[(35)] = 0.000000e+00f;
  Conv2dOutput[(37)] = 0.000000e+00f;
  Conv2dOutput[(39)] = 0.000000e+00f;
  Conv2dOutput[(41)] = 0.000000e+00f;
  Conv2dOutput[(43)] = 0.000000e+00f;
  Conv2dOutput[(45)] = 0.000000e+00f;
  Conv2dOutput[(47)] = 0.000000e+00f;
  Conv2dOutput[(49)] = 0.000000e+00f;
  Conv2dOutput[(51)] = 0.000000e+00f;
  Conv2dOutput[(53)] = 0.000000e+00f;
  Conv2dOutput[(55)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 10; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((int)blockIdx.x) * 26880) + ((((int)threadIdx.x) / 48) * 480)) + (rc_outer_outer * 48)) + (((int)threadIdx.x) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 128))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 128) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 32) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 256))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 256) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 16) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 384))] = placeholder[((((((((int)blockIdx.x) * 26880) + ((((int)threadIdx.x) / 48) * 480)) + (rc_outer_outer * 48)) + (((int)threadIdx.x) % 48)) + 3840))];
    PaddedInput_shared[((((int)threadIdx.x) + 512))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 512) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 32) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 640))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 640) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 16) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 768))] = placeholder[((((((((int)blockIdx.x) * 26880) + ((((int)threadIdx.x) / 48) * 480)) + (rc_outer_outer * 48)) + (((int)threadIdx.x) % 48)) + 7680))];
    PaddedInput_shared[((((int)threadIdx.x) + 896))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 896) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 32) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1024))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 1024) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 16) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1152))] = placeholder[((((((((int)blockIdx.x) * 26880) + ((((int)threadIdx.x) / 48) * 480)) + (rc_outer_outer * 48)) + (((int)threadIdx.x) % 48)) + 11520))];
    PaddedInput_shared[((((int)threadIdx.x) + 1280))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 1280) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 32) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1408))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 1408) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 16) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1536))] = placeholder[((((((((int)blockIdx.x) * 26880) + ((((int)threadIdx.x) / 48) * 480)) + (rc_outer_outer * 48)) + (((int)threadIdx.x) % 48)) + 15360))];
    PaddedInput_shared[((((int)threadIdx.x) + 1664))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 1664) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 32) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1792))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 1792) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 16) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1920))] = placeholder[((((((((int)blockIdx.x) * 26880) + ((((int)threadIdx.x) / 48) * 480)) + (rc_outer_outer * 48)) + (((int)threadIdx.x) % 48)) + 19200))];
    PaddedInput_shared[((((int)threadIdx.x) + 2048))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 2048) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 32) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2176))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 2176) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 16) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2304))] = placeholder[((((((((int)blockIdx.x) * 26880) + ((((int)threadIdx.x) / 48) * 480)) + (rc_outer_outer * 48)) + (((int)threadIdx.x) % 48)) + 23040))];
    PaddedInput_shared[((((int)threadIdx.x) + 2432))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 2432) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 32) % 48)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2560))] = placeholder[(((((((int)blockIdx.x) * 26880) + (((((int)threadIdx.x) + 2560) / 48) * 480)) + (rc_outer_outer * 48)) + ((((int)threadIdx.x) + 16) % 48)))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 6144) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 128))];
    placeholder_shared[((((int)threadIdx.x) + 256))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 256))];
    placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 384))];
    placeholder_shared[((((int)threadIdx.x) + 512))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 512))];
    placeholder_shared[((((int)threadIdx.x) + 640))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 640))];
    placeholder_shared[((((int)threadIdx.x) + 768))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 768))];
    placeholder_shared[((((int)threadIdx.x) + 896))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 896))];
    placeholder_shared[((((int)threadIdx.x) + 1024))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 1024))];
    placeholder_shared[((((int)threadIdx.x) + 1152))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 1152))];
    placeholder_shared[((((int)threadIdx.x) + 1280))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 1280))];
    placeholder_shared[((((int)threadIdx.x) + 1408))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 1408))];
    placeholder_shared[((((int)threadIdx.x) + 1536))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 1536))];
    placeholder_shared[((((int)threadIdx.x) + 1664))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 1664))];
    placeholder_shared[((((int)threadIdx.x) + 1792))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 1792))];
    placeholder_shared[((((int)threadIdx.x) + 1920))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 1920))];
    placeholder_shared[((((int)threadIdx.x) + 2048))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 2048))];
    placeholder_shared[((((int)threadIdx.x) + 2176))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 2176))];
    placeholder_shared[((((int)threadIdx.x) + 2304))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 2304))];
    placeholder_shared[((((int)threadIdx.x) + 2432))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 2432))];
    placeholder_shared[((((int)threadIdx.x) + 2560))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 2560))];
    placeholder_shared[((((int)threadIdx.x) + 2688))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 2688))];
    placeholder_shared[((((int)threadIdx.x) + 2816))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 2816))];
    placeholder_shared[((((int)threadIdx.x) + 2944))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 2944))];
    placeholder_shared[((((int)threadIdx.x) + 3072))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 3072))];
    placeholder_shared[((((int)threadIdx.x) + 3200))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 3200))];
    placeholder_shared[((((int)threadIdx.x) + 3328))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 3328))];
    placeholder_shared[((((int)threadIdx.x) + 3456))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 3456))];
    placeholder_shared[((((int)threadIdx.x) + 3584))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 3584))];
    placeholder_shared[((((int)threadIdx.x) + 3712))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 3712))];
    placeholder_shared[((((int)threadIdx.x) + 3840))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 3840))];
    placeholder_shared[((((int)threadIdx.x) + 3968))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 3968))];
    placeholder_shared[((((int)threadIdx.x) + 4096))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 4096))];
    placeholder_shared[((((int)threadIdx.x) + 4224))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 4224))];
    placeholder_shared[((((int)threadIdx.x) + 4352))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 4352))];
    placeholder_shared[((((int)threadIdx.x) + 4480))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 4480))];
    placeholder_shared[((((int)threadIdx.x) + 4608))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 4608))];
    placeholder_shared[((((int)threadIdx.x) + 4736))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 4736))];
    placeholder_shared[((((int)threadIdx.x) + 4864))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 4864))];
    placeholder_shared[((((int)threadIdx.x) + 4992))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 4992))];
    placeholder_shared[((((int)threadIdx.x) + 5120))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 5120))];
    placeholder_shared[((((int)threadIdx.x) + 5248))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 5248))];
    placeholder_shared[((((int)threadIdx.x) + 5376))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 5376))];
    placeholder_shared[((((int)threadIdx.x) + 5504))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 5504))];
    placeholder_shared[((((int)threadIdx.x) + 5632))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 5632))];
    placeholder_shared[((((int)threadIdx.x) + 5760))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 5760))];
    placeholder_shared[((((int)threadIdx.x) + 5888))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 5888))];
    placeholder_shared[((((int)threadIdx.x) + 6016))] = placeholder1[((((rc_outer_outer * 6144) + ((int)threadIdx.x)) + 6016))];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 48; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 48))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 96))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 144))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 192))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 240))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 288))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 336))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 384))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 432))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 480))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 528))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 576))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 624))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 48))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 96))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 144))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 192))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 240))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 288))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 336))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 384))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 432))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 480))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 528))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 576))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 624))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 672))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 720))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 768))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 816))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 864))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 912))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 960))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1008))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1056))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1104))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1152))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1200))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1248))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1296))] * placeholder_shared[(((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)))]));
      Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 672))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 720))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 768))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 816))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 864))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 912))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 960))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1008))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1056))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1104))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1152))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1200))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1248))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
      Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 6) * 1344) + rc_outer_inner) + 1296))] * placeholder_shared[((((rc_outer_inner * 128) + ((((int)threadIdx.x) & 63) * 2)) + 1))]));
    }
  }
  for (int ax2_inner = 0; ax2_inner < 28; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_relu[((((((((int)blockIdx.x) * 7168) + ((((int)threadIdx.x) >> 6) * 3584)) + (ax2_inner * 128)) + ((((int)threadIdx.x) & 63) * 2)) + ax3_inner))] = max((Conv2dOutput[(((ax2_inner * 2) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 63) * 2) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


