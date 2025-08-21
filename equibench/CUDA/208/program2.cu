
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
  float Conv2dOutput[28];
  __shared__ float PaddedInput_shared[1120];
  __shared__ float placeholder_shared[5120];
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
  for (int rc_outer_outer = 0; rc_outer_outer < 12; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[((((int)threadIdx.x) * 5))] = placeholder[(((((((int)blockIdx.x) * 13440) + ((((int)threadIdx.x) >> 3) * 480)) + (rc_outer_outer * 40)) + ((((int)threadIdx.x) & 7) * 5)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 5) + 1))] = placeholder[(((((((int)blockIdx.x) * 13440) + ((((((int)threadIdx.x) * 5) + 1) / 40) * 480)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 5) + 1) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 5) + 2))] = placeholder[(((((((int)blockIdx.x) * 13440) + ((((((int)threadIdx.x) * 5) + 2) / 40) * 480)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 5) + 2) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 5) + 3))] = placeholder[(((((((int)blockIdx.x) * 13440) + ((((((int)threadIdx.x) * 5) + 3) / 40) * 480)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 5) + 3) % 40)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 5) + 4))] = placeholder[(((((((int)blockIdx.x) * 13440) + ((((((int)threadIdx.x) * 5) + 4) / 40) * 480)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 5) + 4) % 40)))];
    if (((int)threadIdx.x) < 96) {
      PaddedInput_shared[(((((((((int)threadIdx.x) * 5) + 640) / 560) * 560) + (((((int)threadIdx.x) >> 3) + 2) * 40)) + ((((int)threadIdx.x) & 7) * 5)))] = placeholder[((((((((int)blockIdx.x) * 13440) + ((((((int)threadIdx.x) * 5) + 640) / 560) * 6720)) + (((((int)threadIdx.x) >> 3) + 2) * 480)) + (rc_outer_outer * 40)) + ((((int)threadIdx.x) & 7) * 5)))];
    }
    if (((int)threadIdx.x) < 96) {
      PaddedInput_shared[(((((((((int)threadIdx.x) * 5) + 641) / 560) * 560) + (((((((int)threadIdx.x) * 5) + 1) / 40) + 2) * 40)) + (((((int)threadIdx.x) * 5) + 1) % 40)))] = placeholder[((((((((int)blockIdx.x) * 13440) + ((((((int)threadIdx.x) * 5) + 641) / 560) * 6720)) + (((((((int)threadIdx.x) * 5) + 1) / 40) + 2) * 480)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 5) + 1) % 40)))];
    }
    if (((int)threadIdx.x) < 96) {
      PaddedInput_shared[(((((((((int)threadIdx.x) * 5) + 642) / 560) * 560) + (((((((int)threadIdx.x) * 5) + 2) / 40) + 2) * 40)) + (((((int)threadIdx.x) * 5) + 2) % 40)))] = placeholder[((((((((int)blockIdx.x) * 13440) + ((((((int)threadIdx.x) * 5) + 642) / 560) * 6720)) + (((((((int)threadIdx.x) * 5) + 2) / 40) + 2) * 480)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 5) + 2) % 40)))];
    }
    if (((int)threadIdx.x) < 96) {
      PaddedInput_shared[(((((((((int)threadIdx.x) * 5) + 643) / 560) * 560) + (((((((int)threadIdx.x) * 5) + 3) / 40) + 2) * 40)) + (((((int)threadIdx.x) * 5) + 3) % 40)))] = placeholder[((((((((int)blockIdx.x) * 13440) + ((((((int)threadIdx.x) * 5) + 643) / 560) * 6720)) + (((((((int)threadIdx.x) * 5) + 3) / 40) + 2) * 480)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 5) + 3) % 40)))];
    }
    if (((int)threadIdx.x) < 96) {
      PaddedInput_shared[(((((((((int)threadIdx.x) * 5) + 644) / 560) * 560) + (((((((int)threadIdx.x) * 5) + 4) / 40) + 2) * 40)) + (((((int)threadIdx.x) * 5) + 4) % 40)))] = placeholder[((((((((int)blockIdx.x) * 13440) + ((((((int)threadIdx.x) * 5) + 644) / 560) * 6720)) + (((((((int)threadIdx.x) * 5) + 4) / 40) + 2) * 480)) + (rc_outer_outer * 40)) + (((((int)threadIdx.x) * 5) + 4) % 40)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 5120) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 128))];
    placeholder_shared[((((int)threadIdx.x) + 256))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 256))];
    placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 384))];
    placeholder_shared[((((int)threadIdx.x) + 512))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 512))];
    placeholder_shared[((((int)threadIdx.x) + 640))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 640))];
    placeholder_shared[((((int)threadIdx.x) + 768))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 768))];
    placeholder_shared[((((int)threadIdx.x) + 896))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 896))];
    placeholder_shared[((((int)threadIdx.x) + 1024))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 1024))];
    placeholder_shared[((((int)threadIdx.x) + 1152))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 1152))];
    placeholder_shared[((((int)threadIdx.x) + 1280))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 1280))];
    placeholder_shared[((((int)threadIdx.x) + 1408))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 1408))];
    placeholder_shared[((((int)threadIdx.x) + 1536))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 1536))];
    placeholder_shared[((((int)threadIdx.x) + 1664))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 1664))];
    placeholder_shared[((((int)threadIdx.x) + 1792))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 1792))];
    placeholder_shared[((((int)threadIdx.x) + 1920))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 1920))];
    placeholder_shared[((((int)threadIdx.x) + 2048))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 2048))];
    placeholder_shared[((((int)threadIdx.x) + 2176))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 2176))];
    placeholder_shared[((((int)threadIdx.x) + 2304))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 2304))];
    placeholder_shared[((((int)threadIdx.x) + 2432))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 2432))];
    placeholder_shared[((((int)threadIdx.x) + 2560))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 2560))];
    placeholder_shared[((((int)threadIdx.x) + 2688))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 2688))];
    placeholder_shared[((((int)threadIdx.x) + 2816))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 2816))];
    placeholder_shared[((((int)threadIdx.x) + 2944))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 2944))];
    placeholder_shared[((((int)threadIdx.x) + 3072))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 3072))];
    placeholder_shared[((((int)threadIdx.x) + 3200))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 3200))];
    placeholder_shared[((((int)threadIdx.x) + 3328))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 3328))];
    placeholder_shared[((((int)threadIdx.x) + 3456))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 3456))];
    placeholder_shared[((((int)threadIdx.x) + 3584))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 3584))];
    placeholder_shared[((((int)threadIdx.x) + 3712))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 3712))];
    placeholder_shared[((((int)threadIdx.x) + 3840))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 3840))];
    placeholder_shared[((((int)threadIdx.x) + 3968))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 3968))];
    placeholder_shared[((((int)threadIdx.x) + 4096))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 4096))];
    placeholder_shared[((((int)threadIdx.x) + 4224))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 4224))];
    placeholder_shared[((((int)threadIdx.x) + 4352))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 4352))];
    placeholder_shared[((((int)threadIdx.x) + 4480))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 4480))];
    placeholder_shared[((((int)threadIdx.x) + 4608))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 4608))];
    placeholder_shared[((((int)threadIdx.x) + 4736))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 4736))];
    placeholder_shared[((((int)threadIdx.x) + 4864))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 4864))];
    placeholder_shared[((((int)threadIdx.x) + 4992))] = placeholder1[((((rc_outer_outer * 5120) + ((int)threadIdx.x)) + 4992))];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 20; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((rc_outer_inner * 2))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 40))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 80))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 120))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 160))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 200))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 240))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 280))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 320))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 360))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 400))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 440))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 480))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 520))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 1))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 41))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 81))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 121))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 161))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 201))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 241))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 281))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 321))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 361))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 401))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 441))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 481))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 521))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 560))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 600))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 640))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 680))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 720))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 760))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 800))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 840))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 880))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 920))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 960))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 1000))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 1040))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 1080))] * placeholder_shared[(((rc_outer_inner * 256) + ((int)threadIdx.x)))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 561))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 601))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 641))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 681))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 721))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 761))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 801))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 841))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 881))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 921))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 961))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 1001))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 1041))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
      Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((rc_outer_inner * 2) + 1081))] * placeholder_shared[((((rc_outer_inner * 256) + ((int)threadIdx.x)) + 128))]));
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 14; ++ax2_inner) {
      T_relu[(((((((int)blockIdx.x) * 3584) + (ax1_inner * 1792)) + (ax2_inner * 128)) + ((int)threadIdx.x)))] = max((Conv2dOutput[(((ax1_inner * 14) + ax2_inner))] + placeholder2[(((int)threadIdx.x))]), 0.000000e+00f);
    }
  }
}


