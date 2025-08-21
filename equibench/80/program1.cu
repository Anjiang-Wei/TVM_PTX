
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
  float Conv2dOutput[128];
  __shared__ float PaddedInput_shared[1024];
  __shared__ float placeholder_shared[160];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  Conv2dOutput[(32)] = 0.000000e+00f;
  Conv2dOutput[(33)] = 0.000000e+00f;
  Conv2dOutput[(34)] = 0.000000e+00f;
  Conv2dOutput[(35)] = 0.000000e+00f;
  Conv2dOutput[(36)] = 0.000000e+00f;
  Conv2dOutput[(37)] = 0.000000e+00f;
  Conv2dOutput[(38)] = 0.000000e+00f;
  Conv2dOutput[(39)] = 0.000000e+00f;
  Conv2dOutput[(48)] = 0.000000e+00f;
  Conv2dOutput[(49)] = 0.000000e+00f;
  Conv2dOutput[(50)] = 0.000000e+00f;
  Conv2dOutput[(51)] = 0.000000e+00f;
  Conv2dOutput[(52)] = 0.000000e+00f;
  Conv2dOutput[(53)] = 0.000000e+00f;
  Conv2dOutput[(54)] = 0.000000e+00f;
  Conv2dOutput[(55)] = 0.000000e+00f;
  Conv2dOutput[(64)] = 0.000000e+00f;
  Conv2dOutput[(65)] = 0.000000e+00f;
  Conv2dOutput[(66)] = 0.000000e+00f;
  Conv2dOutput[(67)] = 0.000000e+00f;
  Conv2dOutput[(68)] = 0.000000e+00f;
  Conv2dOutput[(69)] = 0.000000e+00f;
  Conv2dOutput[(70)] = 0.000000e+00f;
  Conv2dOutput[(71)] = 0.000000e+00f;
  Conv2dOutput[(80)] = 0.000000e+00f;
  Conv2dOutput[(81)] = 0.000000e+00f;
  Conv2dOutput[(82)] = 0.000000e+00f;
  Conv2dOutput[(83)] = 0.000000e+00f;
  Conv2dOutput[(84)] = 0.000000e+00f;
  Conv2dOutput[(85)] = 0.000000e+00f;
  Conv2dOutput[(86)] = 0.000000e+00f;
  Conv2dOutput[(87)] = 0.000000e+00f;
  Conv2dOutput[(96)] = 0.000000e+00f;
  Conv2dOutput[(97)] = 0.000000e+00f;
  Conv2dOutput[(98)] = 0.000000e+00f;
  Conv2dOutput[(99)] = 0.000000e+00f;
  Conv2dOutput[(100)] = 0.000000e+00f;
  Conv2dOutput[(101)] = 0.000000e+00f;
  Conv2dOutput[(102)] = 0.000000e+00f;
  Conv2dOutput[(103)] = 0.000000e+00f;
  Conv2dOutput[(112)] = 0.000000e+00f;
  Conv2dOutput[(113)] = 0.000000e+00f;
  Conv2dOutput[(114)] = 0.000000e+00f;
  Conv2dOutput[(115)] = 0.000000e+00f;
  Conv2dOutput[(116)] = 0.000000e+00f;
  Conv2dOutput[(117)] = 0.000000e+00f;
  Conv2dOutput[(118)] = 0.000000e+00f;
  Conv2dOutput[(119)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(24)] = 0.000000e+00f;
  Conv2dOutput[(25)] = 0.000000e+00f;
  Conv2dOutput[(26)] = 0.000000e+00f;
  Conv2dOutput[(27)] = 0.000000e+00f;
  Conv2dOutput[(28)] = 0.000000e+00f;
  Conv2dOutput[(29)] = 0.000000e+00f;
  Conv2dOutput[(30)] = 0.000000e+00f;
  Conv2dOutput[(31)] = 0.000000e+00f;
  Conv2dOutput[(40)] = 0.000000e+00f;
  Conv2dOutput[(41)] = 0.000000e+00f;
  Conv2dOutput[(42)] = 0.000000e+00f;
  Conv2dOutput[(43)] = 0.000000e+00f;
  Conv2dOutput[(44)] = 0.000000e+00f;
  Conv2dOutput[(45)] = 0.000000e+00f;
  Conv2dOutput[(46)] = 0.000000e+00f;
  Conv2dOutput[(47)] = 0.000000e+00f;
  Conv2dOutput[(56)] = 0.000000e+00f;
  Conv2dOutput[(57)] = 0.000000e+00f;
  Conv2dOutput[(58)] = 0.000000e+00f;
  Conv2dOutput[(59)] = 0.000000e+00f;
  Conv2dOutput[(60)] = 0.000000e+00f;
  Conv2dOutput[(61)] = 0.000000e+00f;
  Conv2dOutput[(62)] = 0.000000e+00f;
  Conv2dOutput[(63)] = 0.000000e+00f;
  Conv2dOutput[(72)] = 0.000000e+00f;
  Conv2dOutput[(73)] = 0.000000e+00f;
  Conv2dOutput[(74)] = 0.000000e+00f;
  Conv2dOutput[(75)] = 0.000000e+00f;
  Conv2dOutput[(76)] = 0.000000e+00f;
  Conv2dOutput[(77)] = 0.000000e+00f;
  Conv2dOutput[(78)] = 0.000000e+00f;
  Conv2dOutput[(79)] = 0.000000e+00f;
  Conv2dOutput[(88)] = 0.000000e+00f;
  Conv2dOutput[(89)] = 0.000000e+00f;
  Conv2dOutput[(90)] = 0.000000e+00f;
  Conv2dOutput[(91)] = 0.000000e+00f;
  Conv2dOutput[(92)] = 0.000000e+00f;
  Conv2dOutput[(93)] = 0.000000e+00f;
  Conv2dOutput[(94)] = 0.000000e+00f;
  Conv2dOutput[(95)] = 0.000000e+00f;
  Conv2dOutput[(104)] = 0.000000e+00f;
  Conv2dOutput[(105)] = 0.000000e+00f;
  Conv2dOutput[(106)] = 0.000000e+00f;
  Conv2dOutput[(107)] = 0.000000e+00f;
  Conv2dOutput[(108)] = 0.000000e+00f;
  Conv2dOutput[(109)] = 0.000000e+00f;
  Conv2dOutput[(110)] = 0.000000e+00f;
  Conv2dOutput[(111)] = 0.000000e+00f;
  Conv2dOutput[(120)] = 0.000000e+00f;
  Conv2dOutput[(121)] = 0.000000e+00f;
  Conv2dOutput[(122)] = 0.000000e+00f;
  Conv2dOutput[(123)] = 0.000000e+00f;
  Conv2dOutput[(124)] = 0.000000e+00f;
  Conv2dOutput[(125)] = 0.000000e+00f;
  Conv2dOutput[(126)] = 0.000000e+00f;
  Conv2dOutput[(127)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 50; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[((((int)threadIdx.x) * 40))] = placeholder[(((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 1))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 2))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 2))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 3))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 3))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 4))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 200))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 5))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 201))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 6))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 202))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 7))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 203))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 8))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 400))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 9))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 401))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 10))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 402))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 11))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 403))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 12))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 600))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 13))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 601))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 14))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 602))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 15))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 603))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 16))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 800))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 17))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 801))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 18))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 802))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 19))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 803))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 20))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1000))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 21))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1001))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 22))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1002))];
    }
    if (((int)threadIdx.x) < 26) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 23))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1003))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 24))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1200))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 25))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1201))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 26))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1202))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 27))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1203))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 28))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1400))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 29))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1401))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 30))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1402))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 31))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1403))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 32))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1600))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 33))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1601))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 34))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1602))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 35))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1603))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 36))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1800))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 37))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1801))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 38))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1802))];
    }
    if (((int)threadIdx.x) < 25) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 39))] = placeholder[((((((int)threadIdx.x) * 2000) + (rc_outer_outer * 4)) + 1803))];
    }
    if (((int)threadIdx.x) < 40) {
      placeholder_shared[((((int)threadIdx.x) * 4))] = placeholder1[(((((rc_outer_outer * 320) + ((((int)threadIdx.x) / 10) * 80)) + (((int)blockIdx.x) * 40)) + ((((int)threadIdx.x) % 10) * 4)))];
    }
    if (((int)threadIdx.x) < 40) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 1))] = placeholder1[(((((rc_outer_outer * 320) + ((((((int)threadIdx.x) * 4) + 1) / 40) * 80)) + (((int)blockIdx.x) * 40)) + (((((int)threadIdx.x) * 4) + 1) % 40)))];
    }
    if (((int)threadIdx.x) < 40) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 2))] = placeholder1[(((((rc_outer_outer * 320) + ((((((int)threadIdx.x) * 4) + 2) / 40) * 80)) + (((int)blockIdx.x) * 40)) + (((((int)threadIdx.x) * 4) + 2) % 40)))];
    }
    if (((int)threadIdx.x) < 40) {
      placeholder_shared[(((((int)threadIdx.x) * 4) + 3))] = placeholder1[(((((rc_outer_outer * 320) + ((((((int)threadIdx.x) * 4) + 3) / 40) * 80)) + (((int)blockIdx.x) * 40)) + (((((int)threadIdx.x) * 4) + 3) % 40)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 64))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 128))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 192))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(64)] = (Conv2dOutput[(64)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 256))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(65)] = (Conv2dOutput[(65)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 256))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(66)] = (Conv2dOutput[(66)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 256))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(67)] = (Conv2dOutput[(67)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 256))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(68)] = (Conv2dOutput[(68)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 256))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(69)] = (Conv2dOutput[(69)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 256))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(70)] = (Conv2dOutput[(70)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 256))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(71)] = (Conv2dOutput[(71)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 256))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(80)] = (Conv2dOutput[(80)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 320))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(81)] = (Conv2dOutput[(81)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 320))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(82)] = (Conv2dOutput[(82)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 320))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(83)] = (Conv2dOutput[(83)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 320))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(84)] = (Conv2dOutput[(84)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 320))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(85)] = (Conv2dOutput[(85)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 320))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(86)] = (Conv2dOutput[(86)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 320))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(87)] = (Conv2dOutput[(87)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 320))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(96)] = (Conv2dOutput[(96)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 384))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(97)] = (Conv2dOutput[(97)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 384))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(98)] = (Conv2dOutput[(98)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 384))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(99)] = (Conv2dOutput[(99)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 384))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(100)] = (Conv2dOutput[(100)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 384))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(101)] = (Conv2dOutput[(101)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 384))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(102)] = (Conv2dOutput[(102)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 384))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(103)] = (Conv2dOutput[(103)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 384))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(112)] = (Conv2dOutput[(112)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 448))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(113)] = (Conv2dOutput[(113)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 448))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(114)] = (Conv2dOutput[(114)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 448))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(115)] = (Conv2dOutput[(115)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 448))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(116)] = (Conv2dOutput[(116)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 448))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(117)] = (Conv2dOutput[(117)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 448))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(118)] = (Conv2dOutput[(118)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 448))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(119)] = (Conv2dOutput[(119)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 448))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 4))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 68))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 132))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 196))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(72)] = (Conv2dOutput[(72)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 260))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(73)] = (Conv2dOutput[(73)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 260))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(74)] = (Conv2dOutput[(74)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 260))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(75)] = (Conv2dOutput[(75)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 260))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(76)] = (Conv2dOutput[(76)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 260))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(77)] = (Conv2dOutput[(77)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 260))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(78)] = (Conv2dOutput[(78)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 260))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(79)] = (Conv2dOutput[(79)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 260))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(88)] = (Conv2dOutput[(88)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 324))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(89)] = (Conv2dOutput[(89)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 324))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(90)] = (Conv2dOutput[(90)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 324))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(91)] = (Conv2dOutput[(91)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 324))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(92)] = (Conv2dOutput[(92)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 324))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(93)] = (Conv2dOutput[(93)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 324))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(94)] = (Conv2dOutput[(94)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 324))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(95)] = (Conv2dOutput[(95)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 324))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(104)] = (Conv2dOutput[(104)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 388))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(105)] = (Conv2dOutput[(105)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 388))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(106)] = (Conv2dOutput[(106)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 388))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(107)] = (Conv2dOutput[(107)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 388))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(108)] = (Conv2dOutput[(108)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 388))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(109)] = (Conv2dOutput[(109)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 388))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(110)] = (Conv2dOutput[(110)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 388))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(111)] = (Conv2dOutput[(111)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 388))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(120)] = (Conv2dOutput[(120)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 452))] * placeholder_shared[(((((int)threadIdx.x) % 5) * 8))]));
    Conv2dOutput[(121)] = (Conv2dOutput[(121)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 452))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 1))]));
    Conv2dOutput[(122)] = (Conv2dOutput[(122)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 452))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 2))]));
    Conv2dOutput[(123)] = (Conv2dOutput[(123)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 452))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 3))]));
    Conv2dOutput[(124)] = (Conv2dOutput[(124)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 452))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 4))]));
    Conv2dOutput[(125)] = (Conv2dOutput[(125)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 452))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 5))]));
    Conv2dOutput[(126)] = (Conv2dOutput[(126)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 452))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 6))]));
    Conv2dOutput[(127)] = (Conv2dOutput[(127)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 452))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 7))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(64)] = (Conv2dOutput[(64)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 257))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(65)] = (Conv2dOutput[(65)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 257))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(66)] = (Conv2dOutput[(66)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 257))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(67)] = (Conv2dOutput[(67)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 257))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(68)] = (Conv2dOutput[(68)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 257))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(69)] = (Conv2dOutput[(69)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 257))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(70)] = (Conv2dOutput[(70)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 257))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(71)] = (Conv2dOutput[(71)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 257))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(80)] = (Conv2dOutput[(80)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 321))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(81)] = (Conv2dOutput[(81)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 321))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(82)] = (Conv2dOutput[(82)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 321))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(83)] = (Conv2dOutput[(83)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 321))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(84)] = (Conv2dOutput[(84)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 321))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(85)] = (Conv2dOutput[(85)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 321))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(86)] = (Conv2dOutput[(86)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 321))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(87)] = (Conv2dOutput[(87)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 321))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(96)] = (Conv2dOutput[(96)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 385))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(97)] = (Conv2dOutput[(97)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 385))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(98)] = (Conv2dOutput[(98)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 385))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(99)] = (Conv2dOutput[(99)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 385))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(100)] = (Conv2dOutput[(100)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 385))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(101)] = (Conv2dOutput[(101)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 385))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(102)] = (Conv2dOutput[(102)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 385))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(103)] = (Conv2dOutput[(103)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 385))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(112)] = (Conv2dOutput[(112)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 449))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(113)] = (Conv2dOutput[(113)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 449))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(114)] = (Conv2dOutput[(114)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 449))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(115)] = (Conv2dOutput[(115)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 449))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(116)] = (Conv2dOutput[(116)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 449))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(117)] = (Conv2dOutput[(117)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 449))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(118)] = (Conv2dOutput[(118)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 449))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(119)] = (Conv2dOutput[(119)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 449))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(72)] = (Conv2dOutput[(72)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 261))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(73)] = (Conv2dOutput[(73)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 261))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(74)] = (Conv2dOutput[(74)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 261))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(75)] = (Conv2dOutput[(75)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 261))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(76)] = (Conv2dOutput[(76)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 261))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(77)] = (Conv2dOutput[(77)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 261))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(78)] = (Conv2dOutput[(78)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 261))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(79)] = (Conv2dOutput[(79)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 261))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(88)] = (Conv2dOutput[(88)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 325))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(89)] = (Conv2dOutput[(89)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 325))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(90)] = (Conv2dOutput[(90)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 325))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(91)] = (Conv2dOutput[(91)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 325))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(92)] = (Conv2dOutput[(92)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 325))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(93)] = (Conv2dOutput[(93)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 325))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(94)] = (Conv2dOutput[(94)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 325))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(95)] = (Conv2dOutput[(95)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 325))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(104)] = (Conv2dOutput[(104)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 389))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(105)] = (Conv2dOutput[(105)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 389))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(106)] = (Conv2dOutput[(106)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 389))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(107)] = (Conv2dOutput[(107)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 389))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(108)] = (Conv2dOutput[(108)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 389))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(109)] = (Conv2dOutput[(109)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 389))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(110)] = (Conv2dOutput[(110)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 389))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(111)] = (Conv2dOutput[(111)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 389))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(120)] = (Conv2dOutput[(120)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 453))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 40))]));
    Conv2dOutput[(121)] = (Conv2dOutput[(121)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 453))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 41))]));
    Conv2dOutput[(122)] = (Conv2dOutput[(122)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 453))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 42))]));
    Conv2dOutput[(123)] = (Conv2dOutput[(123)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 453))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 43))]));
    Conv2dOutput[(124)] = (Conv2dOutput[(124)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 453))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 44))]));
    Conv2dOutput[(125)] = (Conv2dOutput[(125)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 453))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 45))]));
    Conv2dOutput[(126)] = (Conv2dOutput[(126)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 453))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 46))]));
    Conv2dOutput[(127)] = (Conv2dOutput[(127)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 453))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 47))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(64)] = (Conv2dOutput[(64)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 258))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(65)] = (Conv2dOutput[(65)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 258))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(66)] = (Conv2dOutput[(66)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 258))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(67)] = (Conv2dOutput[(67)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 258))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(68)] = (Conv2dOutput[(68)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 258))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(69)] = (Conv2dOutput[(69)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 258))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(70)] = (Conv2dOutput[(70)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 258))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(71)] = (Conv2dOutput[(71)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 258))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(80)] = (Conv2dOutput[(80)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 322))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(81)] = (Conv2dOutput[(81)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 322))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(82)] = (Conv2dOutput[(82)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 322))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(83)] = (Conv2dOutput[(83)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 322))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(84)] = (Conv2dOutput[(84)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 322))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(85)] = (Conv2dOutput[(85)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 322))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(86)] = (Conv2dOutput[(86)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 322))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(87)] = (Conv2dOutput[(87)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 322))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(96)] = (Conv2dOutput[(96)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 386))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(97)] = (Conv2dOutput[(97)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 386))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(98)] = (Conv2dOutput[(98)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 386))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(99)] = (Conv2dOutput[(99)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 386))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(100)] = (Conv2dOutput[(100)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 386))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(101)] = (Conv2dOutput[(101)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 386))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(102)] = (Conv2dOutput[(102)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 386))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(103)] = (Conv2dOutput[(103)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 386))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(112)] = (Conv2dOutput[(112)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 450))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(113)] = (Conv2dOutput[(113)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 450))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(114)] = (Conv2dOutput[(114)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 450))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(115)] = (Conv2dOutput[(115)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 450))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(116)] = (Conv2dOutput[(116)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 450))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(117)] = (Conv2dOutput[(117)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 450))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(118)] = (Conv2dOutput[(118)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 450))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(119)] = (Conv2dOutput[(119)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 450))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(72)] = (Conv2dOutput[(72)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 262))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(73)] = (Conv2dOutput[(73)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 262))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(74)] = (Conv2dOutput[(74)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 262))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(75)] = (Conv2dOutput[(75)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 262))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(76)] = (Conv2dOutput[(76)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 262))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(77)] = (Conv2dOutput[(77)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 262))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(78)] = (Conv2dOutput[(78)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 262))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(79)] = (Conv2dOutput[(79)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 262))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(88)] = (Conv2dOutput[(88)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 326))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(89)] = (Conv2dOutput[(89)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 326))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(90)] = (Conv2dOutput[(90)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 326))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(91)] = (Conv2dOutput[(91)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 326))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(92)] = (Conv2dOutput[(92)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 326))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(93)] = (Conv2dOutput[(93)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 326))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(94)] = (Conv2dOutput[(94)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 326))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(95)] = (Conv2dOutput[(95)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 326))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(104)] = (Conv2dOutput[(104)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 390))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(105)] = (Conv2dOutput[(105)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 390))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(106)] = (Conv2dOutput[(106)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 390))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(107)] = (Conv2dOutput[(107)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 390))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(108)] = (Conv2dOutput[(108)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 390))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(109)] = (Conv2dOutput[(109)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 390))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(110)] = (Conv2dOutput[(110)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 390))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(111)] = (Conv2dOutput[(111)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 390))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(120)] = (Conv2dOutput[(120)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 454))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 80))]));
    Conv2dOutput[(121)] = (Conv2dOutput[(121)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 454))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 81))]));
    Conv2dOutput[(122)] = (Conv2dOutput[(122)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 454))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 82))]));
    Conv2dOutput[(123)] = (Conv2dOutput[(123)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 454))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 83))]));
    Conv2dOutput[(124)] = (Conv2dOutput[(124)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 454))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 84))]));
    Conv2dOutput[(125)] = (Conv2dOutput[(125)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 454))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 85))]));
    Conv2dOutput[(126)] = (Conv2dOutput[(126)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 454))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 86))]));
    Conv2dOutput[(127)] = (Conv2dOutput[(127)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 454))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 87))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(64)] = (Conv2dOutput[(64)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 259))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(65)] = (Conv2dOutput[(65)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 259))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(66)] = (Conv2dOutput[(66)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 259))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(67)] = (Conv2dOutput[(67)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 259))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(68)] = (Conv2dOutput[(68)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 259))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(69)] = (Conv2dOutput[(69)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 259))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(70)] = (Conv2dOutput[(70)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 259))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(71)] = (Conv2dOutput[(71)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 259))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(80)] = (Conv2dOutput[(80)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 323))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(81)] = (Conv2dOutput[(81)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 323))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(82)] = (Conv2dOutput[(82)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 323))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(83)] = (Conv2dOutput[(83)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 323))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(84)] = (Conv2dOutput[(84)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 323))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(85)] = (Conv2dOutput[(85)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 323))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(86)] = (Conv2dOutput[(86)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 323))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(87)] = (Conv2dOutput[(87)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 323))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(96)] = (Conv2dOutput[(96)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 387))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(97)] = (Conv2dOutput[(97)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 387))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(98)] = (Conv2dOutput[(98)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 387))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(99)] = (Conv2dOutput[(99)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 387))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(100)] = (Conv2dOutput[(100)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 387))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(101)] = (Conv2dOutput[(101)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 387))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(102)] = (Conv2dOutput[(102)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 387))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(103)] = (Conv2dOutput[(103)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 387))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(112)] = (Conv2dOutput[(112)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 451))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(113)] = (Conv2dOutput[(113)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 451))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(114)] = (Conv2dOutput[(114)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 451))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(115)] = (Conv2dOutput[(115)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 451))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(116)] = (Conv2dOutput[(116)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 451))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(117)] = (Conv2dOutput[(117)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 451))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(118)] = (Conv2dOutput[(118)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 451))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(119)] = (Conv2dOutput[(119)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 451))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(72)] = (Conv2dOutput[(72)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 263))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(73)] = (Conv2dOutput[(73)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 263))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(74)] = (Conv2dOutput[(74)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 263))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(75)] = (Conv2dOutput[(75)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 263))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(76)] = (Conv2dOutput[(76)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 263))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(77)] = (Conv2dOutput[(77)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 263))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(78)] = (Conv2dOutput[(78)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 263))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(79)] = (Conv2dOutput[(79)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 263))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(88)] = (Conv2dOutput[(88)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 327))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(89)] = (Conv2dOutput[(89)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 327))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(90)] = (Conv2dOutput[(90)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 327))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(91)] = (Conv2dOutput[(91)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 327))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(92)] = (Conv2dOutput[(92)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 327))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(93)] = (Conv2dOutput[(93)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 327))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(94)] = (Conv2dOutput[(94)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 327))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(95)] = (Conv2dOutput[(95)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 327))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(104)] = (Conv2dOutput[(104)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 391))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(105)] = (Conv2dOutput[(105)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 391))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(106)] = (Conv2dOutput[(106)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 391))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(107)] = (Conv2dOutput[(107)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 391))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(108)] = (Conv2dOutput[(108)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 391))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(109)] = (Conv2dOutput[(109)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 391))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(110)] = (Conv2dOutput[(110)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 391))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(111)] = (Conv2dOutput[(111)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 391))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
    Conv2dOutput[(120)] = (Conv2dOutput[(120)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 455))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 120))]));
    Conv2dOutput[(121)] = (Conv2dOutput[(121)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 455))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 121))]));
    Conv2dOutput[(122)] = (Conv2dOutput[(122)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 455))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 122))]));
    Conv2dOutput[(123)] = (Conv2dOutput[(123)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 455))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 123))]));
    Conv2dOutput[(124)] = (Conv2dOutput[(124)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 455))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 124))]));
    Conv2dOutput[(125)] = (Conv2dOutput[(125)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 455))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 125))]));
    Conv2dOutput[(126)] = (Conv2dOutput[(126)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 455))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 126))]));
    Conv2dOutput[(127)] = (Conv2dOutput[(127)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 40) * 512) + (((((int)threadIdx.x) % 40) / 5) * 8)) + 455))] * placeholder_shared[((((((int)threadIdx.x) % 5) * 8) + 127))]));
  }
  for (int ax1_inner = 0; ax1_inner < 8; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
        T_add[(((((((((((int)threadIdx.x) / 40) * 10240) + (ax1_inner * 1280)) + (((((int)threadIdx.x) % 40) / 5) * 160)) + (ax2_inner * 80)) + (((int)blockIdx.x) * 40)) + ((((int)threadIdx.x) % 5) * 8)) + ax3_inner))] = ((Conv2dOutput[((((ax1_inner * 16) + (ax2_inner * 8)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 40) + ((((int)threadIdx.x) % 5) * 8)) + ax3_inner))]) + placeholder3[(((((((((((int)threadIdx.x) / 40) * 10240) + (ax1_inner * 1280)) + (((((int)threadIdx.x) % 40) / 5) * 160)) + (ax2_inner * 80)) + (((int)blockIdx.x) * 40)) + ((((int)threadIdx.x) % 5) * 8)) + ax3_inner))]);
      }
    }
  }
}


