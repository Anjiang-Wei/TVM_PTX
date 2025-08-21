
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
  __shared__ float PaddedInput_shared[7840];
  __shared__ float placeholder_shared[2560];
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
  Conv2dOutput[(64)] = 0.000000e+00f;
  Conv2dOutput[(65)] = 0.000000e+00f;
  Conv2dOutput[(66)] = 0.000000e+00f;
  Conv2dOutput[(67)] = 0.000000e+00f;
  Conv2dOutput[(68)] = 0.000000e+00f;
  Conv2dOutput[(69)] = 0.000000e+00f;
  Conv2dOutput[(70)] = 0.000000e+00f;
  Conv2dOutput[(71)] = 0.000000e+00f;
  Conv2dOutput[(72)] = 0.000000e+00f;
  Conv2dOutput[(73)] = 0.000000e+00f;
  Conv2dOutput[(74)] = 0.000000e+00f;
  Conv2dOutput[(75)] = 0.000000e+00f;
  Conv2dOutput[(76)] = 0.000000e+00f;
  Conv2dOutput[(77)] = 0.000000e+00f;
  Conv2dOutput[(78)] = 0.000000e+00f;
  Conv2dOutput[(79)] = 0.000000e+00f;
  Conv2dOutput[(80)] = 0.000000e+00f;
  Conv2dOutput[(81)] = 0.000000e+00f;
  Conv2dOutput[(82)] = 0.000000e+00f;
  Conv2dOutput[(83)] = 0.000000e+00f;
  Conv2dOutput[(84)] = 0.000000e+00f;
  Conv2dOutput[(85)] = 0.000000e+00f;
  Conv2dOutput[(86)] = 0.000000e+00f;
  Conv2dOutput[(87)] = 0.000000e+00f;
  Conv2dOutput[(88)] = 0.000000e+00f;
  Conv2dOutput[(89)] = 0.000000e+00f;
  Conv2dOutput[(90)] = 0.000000e+00f;
  Conv2dOutput[(91)] = 0.000000e+00f;
  Conv2dOutput[(92)] = 0.000000e+00f;
  Conv2dOutput[(93)] = 0.000000e+00f;
  Conv2dOutput[(94)] = 0.000000e+00f;
  Conv2dOutput[(95)] = 0.000000e+00f;
  Conv2dOutput[(96)] = 0.000000e+00f;
  Conv2dOutput[(97)] = 0.000000e+00f;
  Conv2dOutput[(98)] = 0.000000e+00f;
  Conv2dOutput[(99)] = 0.000000e+00f;
  Conv2dOutput[(100)] = 0.000000e+00f;
  Conv2dOutput[(101)] = 0.000000e+00f;
  Conv2dOutput[(102)] = 0.000000e+00f;
  Conv2dOutput[(103)] = 0.000000e+00f;
  Conv2dOutput[(104)] = 0.000000e+00f;
  Conv2dOutput[(105)] = 0.000000e+00f;
  Conv2dOutput[(106)] = 0.000000e+00f;
  Conv2dOutput[(107)] = 0.000000e+00f;
  Conv2dOutput[(108)] = 0.000000e+00f;
  Conv2dOutput[(109)] = 0.000000e+00f;
  Conv2dOutput[(110)] = 0.000000e+00f;
  Conv2dOutput[(111)] = 0.000000e+00f;
  Conv2dOutput[(112)] = 0.000000e+00f;
  Conv2dOutput[(113)] = 0.000000e+00f;
  Conv2dOutput[(114)] = 0.000000e+00f;
  Conv2dOutput[(115)] = 0.000000e+00f;
  Conv2dOutput[(116)] = 0.000000e+00f;
  Conv2dOutput[(117)] = 0.000000e+00f;
  Conv2dOutput[(118)] = 0.000000e+00f;
  Conv2dOutput[(119)] = 0.000000e+00f;
  Conv2dOutput[(120)] = 0.000000e+00f;
  Conv2dOutput[(121)] = 0.000000e+00f;
  Conv2dOutput[(122)] = 0.000000e+00f;
  Conv2dOutput[(123)] = 0.000000e+00f;
  Conv2dOutput[(124)] = 0.000000e+00f;
  Conv2dOutput[(125)] = 0.000000e+00f;
  Conv2dOutput[(126)] = 0.000000e+00f;
  Conv2dOutput[(127)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[((((int)threadIdx.x) * 40))] = placeholder[(((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 1))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 1))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 2))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 2))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 3))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 3))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 4))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 4))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 5))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 5))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 6))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 6))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 7))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 7))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 8))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 8))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 9))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 9))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 10))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 10))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 11))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 11))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 12))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 12))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 13))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 13))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 14))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 14))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 15))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 15))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 16))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 16))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 17))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 17))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 18))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 18))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 19))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 19))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 20))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 320))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 21))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 321))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 22))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 322))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 23))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 323))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 24))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 324))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 25))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 325))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 26))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 326))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 27))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 327))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 28))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 328))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 29))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 329))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 30))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 330))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 31))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 331))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 32))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 332))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 33))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 333))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 34))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 334))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 35))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 335))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 36))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 336))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 37))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 337))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 38))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 338))];
    }
    if (((int)threadIdx.x) < 196) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 39))] = placeholder[((((((int)threadIdx.x) * 640) + (rc_outer_outer * 20)) + 339))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 2560) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 392))] = placeholder1[((((rc_outer_outer * 2560) + ((int)threadIdx.x)) + 392))];
    placeholder_shared[((((int)threadIdx.x) + 784))] = placeholder1[((((rc_outer_outer * 2560) + ((int)threadIdx.x)) + 784))];
    placeholder_shared[((((int)threadIdx.x) + 1176))] = placeholder1[((((rc_outer_outer * 2560) + ((int)threadIdx.x)) + 1176))];
    placeholder_shared[((((int)threadIdx.x) + 1568))] = placeholder1[((((rc_outer_outer * 2560) + ((int)threadIdx.x)) + 1568))];
    placeholder_shared[((((int)threadIdx.x) + 1960))] = placeholder1[((((rc_outer_outer * 2560) + ((int)threadIdx.x)) + 1960))];
    if (((int)threadIdx.x) < 208) {
      placeholder_shared[((((int)threadIdx.x) + 2352))] = placeholder1[((((rc_outer_outer * 2560) + ((int)threadIdx.x)) + 2352))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[(((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 1))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 2))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 3))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 4))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 5))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 6))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 7))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 8))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 9))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 10))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 11))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 12))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 13))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 14))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 15))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 16))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 17))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 18))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 19))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 20))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 21))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 22))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 23))]));
      Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 24))]));
      Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 25))]));
      Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 26))]));
      Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 27))]));
      Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 28))]));
      Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 29))]));
      Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 30))]));
      Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 31))]));
      Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 32))]));
      Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 33))]));
      Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 34))]));
      Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 35))]));
      Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 36))]));
      Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 37))]));
      Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 38))]));
      Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 39))]));
      Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 40))]));
      Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 41))]));
      Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 42))]));
      Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 43))]));
      Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 44))]));
      Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 45))]));
      Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 46))]));
      Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 47))]));
      Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 48))]));
      Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 49))]));
      Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 50))]));
      Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 51))]));
      Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 52))]));
      Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 53))]));
      Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 54))]));
      Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 55))]));
      Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 56))]));
      Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 57))]));
      Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 58))]));
      Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 59))]));
      Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 60))]));
      Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 61))]));
      Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 62))]));
      Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 63))]));
      Conv2dOutput[(64)] = (Conv2dOutput[(64)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[(((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)))]));
      Conv2dOutput[(65)] = (Conv2dOutput[(65)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 1))]));
      Conv2dOutput[(66)] = (Conv2dOutput[(66)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 2))]));
      Conv2dOutput[(67)] = (Conv2dOutput[(67)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 3))]));
      Conv2dOutput[(68)] = (Conv2dOutput[(68)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 4))]));
      Conv2dOutput[(69)] = (Conv2dOutput[(69)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 5))]));
      Conv2dOutput[(70)] = (Conv2dOutput[(70)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 6))]));
      Conv2dOutput[(71)] = (Conv2dOutput[(71)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 7))]));
      Conv2dOutput[(72)] = (Conv2dOutput[(72)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 8))]));
      Conv2dOutput[(73)] = (Conv2dOutput[(73)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 9))]));
      Conv2dOutput[(74)] = (Conv2dOutput[(74)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 10))]));
      Conv2dOutput[(75)] = (Conv2dOutput[(75)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 11))]));
      Conv2dOutput[(76)] = (Conv2dOutput[(76)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 12))]));
      Conv2dOutput[(77)] = (Conv2dOutput[(77)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 13))]));
      Conv2dOutput[(78)] = (Conv2dOutput[(78)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 14))]));
      Conv2dOutput[(79)] = (Conv2dOutput[(79)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 15))]));
      Conv2dOutput[(80)] = (Conv2dOutput[(80)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 16))]));
      Conv2dOutput[(81)] = (Conv2dOutput[(81)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 17))]));
      Conv2dOutput[(82)] = (Conv2dOutput[(82)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 18))]));
      Conv2dOutput[(83)] = (Conv2dOutput[(83)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 19))]));
      Conv2dOutput[(84)] = (Conv2dOutput[(84)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 20))]));
      Conv2dOutput[(85)] = (Conv2dOutput[(85)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 21))]));
      Conv2dOutput[(86)] = (Conv2dOutput[(86)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 22))]));
      Conv2dOutput[(87)] = (Conv2dOutput[(87)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 23))]));
      Conv2dOutput[(88)] = (Conv2dOutput[(88)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 24))]));
      Conv2dOutput[(89)] = (Conv2dOutput[(89)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 25))]));
      Conv2dOutput[(90)] = (Conv2dOutput[(90)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 26))]));
      Conv2dOutput[(91)] = (Conv2dOutput[(91)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 27))]));
      Conv2dOutput[(92)] = (Conv2dOutput[(92)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 28))]));
      Conv2dOutput[(93)] = (Conv2dOutput[(93)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 29))]));
      Conv2dOutput[(94)] = (Conv2dOutput[(94)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 30))]));
      Conv2dOutput[(95)] = (Conv2dOutput[(95)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 31))]));
      Conv2dOutput[(96)] = (Conv2dOutput[(96)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 32))]));
      Conv2dOutput[(97)] = (Conv2dOutput[(97)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 33))]));
      Conv2dOutput[(98)] = (Conv2dOutput[(98)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 34))]));
      Conv2dOutput[(99)] = (Conv2dOutput[(99)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 35))]));
      Conv2dOutput[(100)] = (Conv2dOutput[(100)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 36))]));
      Conv2dOutput[(101)] = (Conv2dOutput[(101)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 37))]));
      Conv2dOutput[(102)] = (Conv2dOutput[(102)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 38))]));
      Conv2dOutput[(103)] = (Conv2dOutput[(103)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 39))]));
      Conv2dOutput[(104)] = (Conv2dOutput[(104)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 40))]));
      Conv2dOutput[(105)] = (Conv2dOutput[(105)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 41))]));
      Conv2dOutput[(106)] = (Conv2dOutput[(106)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 42))]));
      Conv2dOutput[(107)] = (Conv2dOutput[(107)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 43))]));
      Conv2dOutput[(108)] = (Conv2dOutput[(108)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 44))]));
      Conv2dOutput[(109)] = (Conv2dOutput[(109)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 45))]));
      Conv2dOutput[(110)] = (Conv2dOutput[(110)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 46))]));
      Conv2dOutput[(111)] = (Conv2dOutput[(111)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 47))]));
      Conv2dOutput[(112)] = (Conv2dOutput[(112)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 48))]));
      Conv2dOutput[(113)] = (Conv2dOutput[(113)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 49))]));
      Conv2dOutput[(114)] = (Conv2dOutput[(114)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 50))]));
      Conv2dOutput[(115)] = (Conv2dOutput[(115)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 51))]));
      Conv2dOutput[(116)] = (Conv2dOutput[(116)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 52))]));
      Conv2dOutput[(117)] = (Conv2dOutput[(117)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 53))]));
      Conv2dOutput[(118)] = (Conv2dOutput[(118)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 54))]));
      Conv2dOutput[(119)] = (Conv2dOutput[(119)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 55))]));
      Conv2dOutput[(120)] = (Conv2dOutput[(120)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 56))]));
      Conv2dOutput[(121)] = (Conv2dOutput[(121)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 57))]));
      Conv2dOutput[(122)] = (Conv2dOutput[(122)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 58))]));
      Conv2dOutput[(123)] = (Conv2dOutput[(123)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 59))]));
      Conv2dOutput[(124)] = (Conv2dOutput[(124)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 60))]));
      Conv2dOutput[(125)] = (Conv2dOutput[(125)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 61))]));
      Conv2dOutput[(126)] = (Conv2dOutput[(126)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 62))]));
      Conv2dOutput[(127)] = (Conv2dOutput[(127)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 20))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 63))]));
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 128))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 129))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 130))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 131))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 132))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 133))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 134))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 135))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 136))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 137))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 138))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 139))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 140))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 141))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 142))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 143))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 144))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 145))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 146))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 147))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 148))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 149))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 150))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 151))]));
      Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 152))]));
      Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 153))]));
      Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 154))]));
      Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 155))]));
      Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 156))]));
      Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 157))]));
      Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 158))]));
      Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 159))]));
      Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 160))]));
      Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 161))]));
      Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 162))]));
      Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 163))]));
      Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 164))]));
      Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 165))]));
      Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 166))]));
      Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 167))]));
      Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 168))]));
      Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 169))]));
      Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 170))]));
      Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 171))]));
      Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 172))]));
      Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 173))]));
      Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 174))]));
      Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 175))]));
      Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 176))]));
      Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 177))]));
      Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 178))]));
      Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 179))]));
      Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 180))]));
      Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 181))]));
      Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 182))]));
      Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 183))]));
      Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 184))]));
      Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 185))]));
      Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 186))]));
      Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 187))]));
      Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 188))]));
      Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 189))]));
      Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 190))]));
      Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 1))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 191))]));
      Conv2dOutput[(64)] = (Conv2dOutput[(64)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 128))]));
      Conv2dOutput[(65)] = (Conv2dOutput[(65)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 129))]));
      Conv2dOutput[(66)] = (Conv2dOutput[(66)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 130))]));
      Conv2dOutput[(67)] = (Conv2dOutput[(67)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 131))]));
      Conv2dOutput[(68)] = (Conv2dOutput[(68)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 132))]));
      Conv2dOutput[(69)] = (Conv2dOutput[(69)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 133))]));
      Conv2dOutput[(70)] = (Conv2dOutput[(70)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 134))]));
      Conv2dOutput[(71)] = (Conv2dOutput[(71)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 135))]));
      Conv2dOutput[(72)] = (Conv2dOutput[(72)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 136))]));
      Conv2dOutput[(73)] = (Conv2dOutput[(73)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 137))]));
      Conv2dOutput[(74)] = (Conv2dOutput[(74)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 138))]));
      Conv2dOutput[(75)] = (Conv2dOutput[(75)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 139))]));
      Conv2dOutput[(76)] = (Conv2dOutput[(76)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 140))]));
      Conv2dOutput[(77)] = (Conv2dOutput[(77)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 141))]));
      Conv2dOutput[(78)] = (Conv2dOutput[(78)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 142))]));
      Conv2dOutput[(79)] = (Conv2dOutput[(79)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 143))]));
      Conv2dOutput[(80)] = (Conv2dOutput[(80)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 144))]));
      Conv2dOutput[(81)] = (Conv2dOutput[(81)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 145))]));
      Conv2dOutput[(82)] = (Conv2dOutput[(82)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 146))]));
      Conv2dOutput[(83)] = (Conv2dOutput[(83)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 147))]));
      Conv2dOutput[(84)] = (Conv2dOutput[(84)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 148))]));
      Conv2dOutput[(85)] = (Conv2dOutput[(85)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 149))]));
      Conv2dOutput[(86)] = (Conv2dOutput[(86)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 150))]));
      Conv2dOutput[(87)] = (Conv2dOutput[(87)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 151))]));
      Conv2dOutput[(88)] = (Conv2dOutput[(88)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 152))]));
      Conv2dOutput[(89)] = (Conv2dOutput[(89)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 153))]));
      Conv2dOutput[(90)] = (Conv2dOutput[(90)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 154))]));
      Conv2dOutput[(91)] = (Conv2dOutput[(91)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 155))]));
      Conv2dOutput[(92)] = (Conv2dOutput[(92)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 156))]));
      Conv2dOutput[(93)] = (Conv2dOutput[(93)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 157))]));
      Conv2dOutput[(94)] = (Conv2dOutput[(94)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 158))]));
      Conv2dOutput[(95)] = (Conv2dOutput[(95)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 159))]));
      Conv2dOutput[(96)] = (Conv2dOutput[(96)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 160))]));
      Conv2dOutput[(97)] = (Conv2dOutput[(97)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 161))]));
      Conv2dOutput[(98)] = (Conv2dOutput[(98)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 162))]));
      Conv2dOutput[(99)] = (Conv2dOutput[(99)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 163))]));
      Conv2dOutput[(100)] = (Conv2dOutput[(100)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 164))]));
      Conv2dOutput[(101)] = (Conv2dOutput[(101)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 165))]));
      Conv2dOutput[(102)] = (Conv2dOutput[(102)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 166))]));
      Conv2dOutput[(103)] = (Conv2dOutput[(103)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 167))]));
      Conv2dOutput[(104)] = (Conv2dOutput[(104)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 168))]));
      Conv2dOutput[(105)] = (Conv2dOutput[(105)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 169))]));
      Conv2dOutput[(106)] = (Conv2dOutput[(106)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 170))]));
      Conv2dOutput[(107)] = (Conv2dOutput[(107)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 171))]));
      Conv2dOutput[(108)] = (Conv2dOutput[(108)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 172))]));
      Conv2dOutput[(109)] = (Conv2dOutput[(109)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 173))]));
      Conv2dOutput[(110)] = (Conv2dOutput[(110)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 174))]));
      Conv2dOutput[(111)] = (Conv2dOutput[(111)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 175))]));
      Conv2dOutput[(112)] = (Conv2dOutput[(112)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 176))]));
      Conv2dOutput[(113)] = (Conv2dOutput[(113)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 177))]));
      Conv2dOutput[(114)] = (Conv2dOutput[(114)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 178))]));
      Conv2dOutput[(115)] = (Conv2dOutput[(115)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 179))]));
      Conv2dOutput[(116)] = (Conv2dOutput[(116)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 180))]));
      Conv2dOutput[(117)] = (Conv2dOutput[(117)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 181))]));
      Conv2dOutput[(118)] = (Conv2dOutput[(118)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 182))]));
      Conv2dOutput[(119)] = (Conv2dOutput[(119)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 183))]));
      Conv2dOutput[(120)] = (Conv2dOutput[(120)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 184))]));
      Conv2dOutput[(121)] = (Conv2dOutput[(121)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 185))]));
      Conv2dOutput[(122)] = (Conv2dOutput[(122)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 186))]));
      Conv2dOutput[(123)] = (Conv2dOutput[(123)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 187))]));
      Conv2dOutput[(124)] = (Conv2dOutput[(124)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 188))]));
      Conv2dOutput[(125)] = (Conv2dOutput[(125)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 189))]));
      Conv2dOutput[(126)] = (Conv2dOutput[(126)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 190))]));
      Conv2dOutput[(127)] = (Conv2dOutput[(127)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 21))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 191))]));
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 256))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 257))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 258))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 259))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 260))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 261))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 262))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 263))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 264))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 265))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 266))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 267))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 268))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 269))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 270))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 271))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 272))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 273))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 274))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 275))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 276))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 277))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 278))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 279))]));
      Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 280))]));
      Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 281))]));
      Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 282))]));
      Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 283))]));
      Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 284))]));
      Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 285))]));
      Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 286))]));
      Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 287))]));
      Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 288))]));
      Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 289))]));
      Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 290))]));
      Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 291))]));
      Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 292))]));
      Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 293))]));
      Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 294))]));
      Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 295))]));
      Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 296))]));
      Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 297))]));
      Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 298))]));
      Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 299))]));
      Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 300))]));
      Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 301))]));
      Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 302))]));
      Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 303))]));
      Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 304))]));
      Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 305))]));
      Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 306))]));
      Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 307))]));
      Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 308))]));
      Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 309))]));
      Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 310))]));
      Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 311))]));
      Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 312))]));
      Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 313))]));
      Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 314))]));
      Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 315))]));
      Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 316))]));
      Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 317))]));
      Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 318))]));
      Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 2))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 319))]));
      Conv2dOutput[(64)] = (Conv2dOutput[(64)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 256))]));
      Conv2dOutput[(65)] = (Conv2dOutput[(65)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 257))]));
      Conv2dOutput[(66)] = (Conv2dOutput[(66)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 258))]));
      Conv2dOutput[(67)] = (Conv2dOutput[(67)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 259))]));
      Conv2dOutput[(68)] = (Conv2dOutput[(68)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 260))]));
      Conv2dOutput[(69)] = (Conv2dOutput[(69)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 261))]));
      Conv2dOutput[(70)] = (Conv2dOutput[(70)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 262))]));
      Conv2dOutput[(71)] = (Conv2dOutput[(71)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 263))]));
      Conv2dOutput[(72)] = (Conv2dOutput[(72)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 264))]));
      Conv2dOutput[(73)] = (Conv2dOutput[(73)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 265))]));
      Conv2dOutput[(74)] = (Conv2dOutput[(74)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 266))]));
      Conv2dOutput[(75)] = (Conv2dOutput[(75)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 267))]));
      Conv2dOutput[(76)] = (Conv2dOutput[(76)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 268))]));
      Conv2dOutput[(77)] = (Conv2dOutput[(77)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 269))]));
      Conv2dOutput[(78)] = (Conv2dOutput[(78)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 270))]));
      Conv2dOutput[(79)] = (Conv2dOutput[(79)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 271))]));
      Conv2dOutput[(80)] = (Conv2dOutput[(80)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 272))]));
      Conv2dOutput[(81)] = (Conv2dOutput[(81)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 273))]));
      Conv2dOutput[(82)] = (Conv2dOutput[(82)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 274))]));
      Conv2dOutput[(83)] = (Conv2dOutput[(83)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 275))]));
      Conv2dOutput[(84)] = (Conv2dOutput[(84)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 276))]));
      Conv2dOutput[(85)] = (Conv2dOutput[(85)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 277))]));
      Conv2dOutput[(86)] = (Conv2dOutput[(86)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 278))]));
      Conv2dOutput[(87)] = (Conv2dOutput[(87)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 279))]));
      Conv2dOutput[(88)] = (Conv2dOutput[(88)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 280))]));
      Conv2dOutput[(89)] = (Conv2dOutput[(89)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 281))]));
      Conv2dOutput[(90)] = (Conv2dOutput[(90)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 282))]));
      Conv2dOutput[(91)] = (Conv2dOutput[(91)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 283))]));
      Conv2dOutput[(92)] = (Conv2dOutput[(92)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 284))]));
      Conv2dOutput[(93)] = (Conv2dOutput[(93)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 285))]));
      Conv2dOutput[(94)] = (Conv2dOutput[(94)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 286))]));
      Conv2dOutput[(95)] = (Conv2dOutput[(95)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 287))]));
      Conv2dOutput[(96)] = (Conv2dOutput[(96)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 288))]));
      Conv2dOutput[(97)] = (Conv2dOutput[(97)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 289))]));
      Conv2dOutput[(98)] = (Conv2dOutput[(98)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 290))]));
      Conv2dOutput[(99)] = (Conv2dOutput[(99)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 291))]));
      Conv2dOutput[(100)] = (Conv2dOutput[(100)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 292))]));
      Conv2dOutput[(101)] = (Conv2dOutput[(101)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 293))]));
      Conv2dOutput[(102)] = (Conv2dOutput[(102)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 294))]));
      Conv2dOutput[(103)] = (Conv2dOutput[(103)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 295))]));
      Conv2dOutput[(104)] = (Conv2dOutput[(104)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 296))]));
      Conv2dOutput[(105)] = (Conv2dOutput[(105)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 297))]));
      Conv2dOutput[(106)] = (Conv2dOutput[(106)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 298))]));
      Conv2dOutput[(107)] = (Conv2dOutput[(107)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 299))]));
      Conv2dOutput[(108)] = (Conv2dOutput[(108)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 300))]));
      Conv2dOutput[(109)] = (Conv2dOutput[(109)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 301))]));
      Conv2dOutput[(110)] = (Conv2dOutput[(110)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 302))]));
      Conv2dOutput[(111)] = (Conv2dOutput[(111)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 303))]));
      Conv2dOutput[(112)] = (Conv2dOutput[(112)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 304))]));
      Conv2dOutput[(113)] = (Conv2dOutput[(113)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 305))]));
      Conv2dOutput[(114)] = (Conv2dOutput[(114)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 306))]));
      Conv2dOutput[(115)] = (Conv2dOutput[(115)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 307))]));
      Conv2dOutput[(116)] = (Conv2dOutput[(116)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 308))]));
      Conv2dOutput[(117)] = (Conv2dOutput[(117)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 309))]));
      Conv2dOutput[(118)] = (Conv2dOutput[(118)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 310))]));
      Conv2dOutput[(119)] = (Conv2dOutput[(119)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 311))]));
      Conv2dOutput[(120)] = (Conv2dOutput[(120)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 312))]));
      Conv2dOutput[(121)] = (Conv2dOutput[(121)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 313))]));
      Conv2dOutput[(122)] = (Conv2dOutput[(122)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 314))]));
      Conv2dOutput[(123)] = (Conv2dOutput[(123)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 315))]));
      Conv2dOutput[(124)] = (Conv2dOutput[(124)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 316))]));
      Conv2dOutput[(125)] = (Conv2dOutput[(125)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 317))]));
      Conv2dOutput[(126)] = (Conv2dOutput[(126)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 318))]));
      Conv2dOutput[(127)] = (Conv2dOutput[(127)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 22))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 319))]));
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 384))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 385))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 386))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 387))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 388))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 389))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 390))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 391))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 392))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 393))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 394))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 395))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 396))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 397))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 398))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 399))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 400))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 401))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 402))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 403))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 404))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 405))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 406))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 407))]));
      Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 408))]));
      Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 409))]));
      Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 410))]));
      Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 411))]));
      Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 412))]));
      Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 413))]));
      Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 414))]));
      Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 415))]));
      Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 416))]));
      Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 417))]));
      Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 418))]));
      Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 419))]));
      Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 420))]));
      Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 421))]));
      Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 422))]));
      Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 423))]));
      Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 424))]));
      Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 425))]));
      Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 426))]));
      Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 427))]));
      Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 428))]));
      Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 429))]));
      Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 430))]));
      Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 431))]));
      Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 432))]));
      Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 433))]));
      Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 434))]));
      Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 435))]));
      Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 436))]));
      Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 437))]));
      Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 438))]));
      Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 439))]));
      Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 440))]));
      Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 441))]));
      Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 442))]));
      Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 443))]));
      Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 444))]));
      Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 445))]));
      Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 446))]));
      Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 3))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 447))]));
      Conv2dOutput[(64)] = (Conv2dOutput[(64)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 384))]));
      Conv2dOutput[(65)] = (Conv2dOutput[(65)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 385))]));
      Conv2dOutput[(66)] = (Conv2dOutput[(66)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 386))]));
      Conv2dOutput[(67)] = (Conv2dOutput[(67)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 387))]));
      Conv2dOutput[(68)] = (Conv2dOutput[(68)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 388))]));
      Conv2dOutput[(69)] = (Conv2dOutput[(69)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 389))]));
      Conv2dOutput[(70)] = (Conv2dOutput[(70)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 390))]));
      Conv2dOutput[(71)] = (Conv2dOutput[(71)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 391))]));
      Conv2dOutput[(72)] = (Conv2dOutput[(72)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 392))]));
      Conv2dOutput[(73)] = (Conv2dOutput[(73)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 393))]));
      Conv2dOutput[(74)] = (Conv2dOutput[(74)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 394))]));
      Conv2dOutput[(75)] = (Conv2dOutput[(75)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 395))]));
      Conv2dOutput[(76)] = (Conv2dOutput[(76)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 396))]));
      Conv2dOutput[(77)] = (Conv2dOutput[(77)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 397))]));
      Conv2dOutput[(78)] = (Conv2dOutput[(78)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 398))]));
      Conv2dOutput[(79)] = (Conv2dOutput[(79)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 399))]));
      Conv2dOutput[(80)] = (Conv2dOutput[(80)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 400))]));
      Conv2dOutput[(81)] = (Conv2dOutput[(81)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 401))]));
      Conv2dOutput[(82)] = (Conv2dOutput[(82)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 402))]));
      Conv2dOutput[(83)] = (Conv2dOutput[(83)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 403))]));
      Conv2dOutput[(84)] = (Conv2dOutput[(84)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 404))]));
      Conv2dOutput[(85)] = (Conv2dOutput[(85)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 405))]));
      Conv2dOutput[(86)] = (Conv2dOutput[(86)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 406))]));
      Conv2dOutput[(87)] = (Conv2dOutput[(87)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 407))]));
      Conv2dOutput[(88)] = (Conv2dOutput[(88)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 408))]));
      Conv2dOutput[(89)] = (Conv2dOutput[(89)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 409))]));
      Conv2dOutput[(90)] = (Conv2dOutput[(90)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 410))]));
      Conv2dOutput[(91)] = (Conv2dOutput[(91)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 411))]));
      Conv2dOutput[(92)] = (Conv2dOutput[(92)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 412))]));
      Conv2dOutput[(93)] = (Conv2dOutput[(93)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 413))]));
      Conv2dOutput[(94)] = (Conv2dOutput[(94)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 414))]));
      Conv2dOutput[(95)] = (Conv2dOutput[(95)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 415))]));
      Conv2dOutput[(96)] = (Conv2dOutput[(96)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 416))]));
      Conv2dOutput[(97)] = (Conv2dOutput[(97)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 417))]));
      Conv2dOutput[(98)] = (Conv2dOutput[(98)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 418))]));
      Conv2dOutput[(99)] = (Conv2dOutput[(99)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 419))]));
      Conv2dOutput[(100)] = (Conv2dOutput[(100)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 420))]));
      Conv2dOutput[(101)] = (Conv2dOutput[(101)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 421))]));
      Conv2dOutput[(102)] = (Conv2dOutput[(102)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 422))]));
      Conv2dOutput[(103)] = (Conv2dOutput[(103)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 423))]));
      Conv2dOutput[(104)] = (Conv2dOutput[(104)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 424))]));
      Conv2dOutput[(105)] = (Conv2dOutput[(105)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 425))]));
      Conv2dOutput[(106)] = (Conv2dOutput[(106)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 426))]));
      Conv2dOutput[(107)] = (Conv2dOutput[(107)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 427))]));
      Conv2dOutput[(108)] = (Conv2dOutput[(108)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 428))]));
      Conv2dOutput[(109)] = (Conv2dOutput[(109)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 429))]));
      Conv2dOutput[(110)] = (Conv2dOutput[(110)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 430))]));
      Conv2dOutput[(111)] = (Conv2dOutput[(111)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 431))]));
      Conv2dOutput[(112)] = (Conv2dOutput[(112)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 432))]));
      Conv2dOutput[(113)] = (Conv2dOutput[(113)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 433))]));
      Conv2dOutput[(114)] = (Conv2dOutput[(114)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 434))]));
      Conv2dOutput[(115)] = (Conv2dOutput[(115)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 435))]));
      Conv2dOutput[(116)] = (Conv2dOutput[(116)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 436))]));
      Conv2dOutput[(117)] = (Conv2dOutput[(117)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 437))]));
      Conv2dOutput[(118)] = (Conv2dOutput[(118)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 438))]));
      Conv2dOutput[(119)] = (Conv2dOutput[(119)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 439))]));
      Conv2dOutput[(120)] = (Conv2dOutput[(120)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 440))]));
      Conv2dOutput[(121)] = (Conv2dOutput[(121)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 441))]));
      Conv2dOutput[(122)] = (Conv2dOutput[(122)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 442))]));
      Conv2dOutput[(123)] = (Conv2dOutput[(123)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 443))]));
      Conv2dOutput[(124)] = (Conv2dOutput[(124)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 444))]));
      Conv2dOutput[(125)] = (Conv2dOutput[(125)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 445))]));
      Conv2dOutput[(126)] = (Conv2dOutput[(126)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 446))]));
      Conv2dOutput[(127)] = (Conv2dOutput[(127)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 23))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 447))]));
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 512))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 513))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 514))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 515))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 516))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 517))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 518))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 519))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 520))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 521))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 522))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 523))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 524))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 525))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 526))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 527))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 528))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 529))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 530))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 531))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 532))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 533))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 534))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 535))]));
      Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 536))]));
      Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 537))]));
      Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 538))]));
      Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 539))]));
      Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 540))]));
      Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 541))]));
      Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 542))]));
      Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 543))]));
      Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 544))]));
      Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 545))]));
      Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 546))]));
      Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 547))]));
      Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 548))]));
      Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 549))]));
      Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 550))]));
      Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 551))]));
      Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 552))]));
      Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 553))]));
      Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 554))]));
      Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 555))]));
      Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 556))]));
      Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 557))]));
      Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 558))]));
      Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 559))]));
      Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 560))]));
      Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 561))]));
      Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 562))]));
      Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 563))]));
      Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 564))]));
      Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 565))]));
      Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 566))]));
      Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 567))]));
      Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 568))]));
      Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 569))]));
      Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 570))]));
      Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 571))]));
      Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 572))]));
      Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 573))]));
      Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 574))]));
      Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 4))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 575))]));
      Conv2dOutput[(64)] = (Conv2dOutput[(64)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 512))]));
      Conv2dOutput[(65)] = (Conv2dOutput[(65)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 513))]));
      Conv2dOutput[(66)] = (Conv2dOutput[(66)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 514))]));
      Conv2dOutput[(67)] = (Conv2dOutput[(67)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 515))]));
      Conv2dOutput[(68)] = (Conv2dOutput[(68)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 516))]));
      Conv2dOutput[(69)] = (Conv2dOutput[(69)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 517))]));
      Conv2dOutput[(70)] = (Conv2dOutput[(70)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 518))]));
      Conv2dOutput[(71)] = (Conv2dOutput[(71)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 519))]));
      Conv2dOutput[(72)] = (Conv2dOutput[(72)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 520))]));
      Conv2dOutput[(73)] = (Conv2dOutput[(73)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 521))]));
      Conv2dOutput[(74)] = (Conv2dOutput[(74)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 522))]));
      Conv2dOutput[(75)] = (Conv2dOutput[(75)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 523))]));
      Conv2dOutput[(76)] = (Conv2dOutput[(76)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 524))]));
      Conv2dOutput[(77)] = (Conv2dOutput[(77)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 525))]));
      Conv2dOutput[(78)] = (Conv2dOutput[(78)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 526))]));
      Conv2dOutput[(79)] = (Conv2dOutput[(79)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 527))]));
      Conv2dOutput[(80)] = (Conv2dOutput[(80)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 528))]));
      Conv2dOutput[(81)] = (Conv2dOutput[(81)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 529))]));
      Conv2dOutput[(82)] = (Conv2dOutput[(82)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 530))]));
      Conv2dOutput[(83)] = (Conv2dOutput[(83)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 531))]));
      Conv2dOutput[(84)] = (Conv2dOutput[(84)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 532))]));
      Conv2dOutput[(85)] = (Conv2dOutput[(85)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 533))]));
      Conv2dOutput[(86)] = (Conv2dOutput[(86)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 534))]));
      Conv2dOutput[(87)] = (Conv2dOutput[(87)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 535))]));
      Conv2dOutput[(88)] = (Conv2dOutput[(88)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 536))]));
      Conv2dOutput[(89)] = (Conv2dOutput[(89)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 537))]));
      Conv2dOutput[(90)] = (Conv2dOutput[(90)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 538))]));
      Conv2dOutput[(91)] = (Conv2dOutput[(91)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 539))]));
      Conv2dOutput[(92)] = (Conv2dOutput[(92)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 540))]));
      Conv2dOutput[(93)] = (Conv2dOutput[(93)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 541))]));
      Conv2dOutput[(94)] = (Conv2dOutput[(94)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 542))]));
      Conv2dOutput[(95)] = (Conv2dOutput[(95)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 543))]));
      Conv2dOutput[(96)] = (Conv2dOutput[(96)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 544))]));
      Conv2dOutput[(97)] = (Conv2dOutput[(97)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 545))]));
      Conv2dOutput[(98)] = (Conv2dOutput[(98)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 546))]));
      Conv2dOutput[(99)] = (Conv2dOutput[(99)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 547))]));
      Conv2dOutput[(100)] = (Conv2dOutput[(100)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 548))]));
      Conv2dOutput[(101)] = (Conv2dOutput[(101)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 549))]));
      Conv2dOutput[(102)] = (Conv2dOutput[(102)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 550))]));
      Conv2dOutput[(103)] = (Conv2dOutput[(103)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 551))]));
      Conv2dOutput[(104)] = (Conv2dOutput[(104)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 552))]));
      Conv2dOutput[(105)] = (Conv2dOutput[(105)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 553))]));
      Conv2dOutput[(106)] = (Conv2dOutput[(106)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 554))]));
      Conv2dOutput[(107)] = (Conv2dOutput[(107)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 555))]));
      Conv2dOutput[(108)] = (Conv2dOutput[(108)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 556))]));
      Conv2dOutput[(109)] = (Conv2dOutput[(109)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 557))]));
      Conv2dOutput[(110)] = (Conv2dOutput[(110)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 558))]));
      Conv2dOutput[(111)] = (Conv2dOutput[(111)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 559))]));
      Conv2dOutput[(112)] = (Conv2dOutput[(112)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 560))]));
      Conv2dOutput[(113)] = (Conv2dOutput[(113)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 561))]));
      Conv2dOutput[(114)] = (Conv2dOutput[(114)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 562))]));
      Conv2dOutput[(115)] = (Conv2dOutput[(115)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 563))]));
      Conv2dOutput[(116)] = (Conv2dOutput[(116)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 564))]));
      Conv2dOutput[(117)] = (Conv2dOutput[(117)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 565))]));
      Conv2dOutput[(118)] = (Conv2dOutput[(118)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 566))]));
      Conv2dOutput[(119)] = (Conv2dOutput[(119)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 567))]));
      Conv2dOutput[(120)] = (Conv2dOutput[(120)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 568))]));
      Conv2dOutput[(121)] = (Conv2dOutput[(121)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 569))]));
      Conv2dOutput[(122)] = (Conv2dOutput[(122)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 570))]));
      Conv2dOutput[(123)] = (Conv2dOutput[(123)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 571))]));
      Conv2dOutput[(124)] = (Conv2dOutput[(124)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 572))]));
      Conv2dOutput[(125)] = (Conv2dOutput[(125)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 573))]));
      Conv2dOutput[(126)] = (Conv2dOutput[(126)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 574))]));
      Conv2dOutput[(127)] = (Conv2dOutput[(127)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 40) + (rc_outer_inner * 5)) + 24))] * placeholder_shared[((((rc_outer_inner * 640) + ((((int)threadIdx.x) & 1) * 64)) + 575))]));
    }
  }
  for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 64; ++ax3_inner) {
      T_relu[((((((((int)threadIdx.x) >> 1) * 256) + (ax2_inner * 128)) + ((((int)threadIdx.x) & 1) * 64)) + ax3_inner))] = max((Conv2dOutput[(((ax2_inner * 64) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 1) * 64) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


