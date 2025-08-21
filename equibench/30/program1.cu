
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
  T_multiply[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] = ((Conv2dOutput[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 184))]) * (max(min(((Conv2dOutput[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 184))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ Conv2dOutput) {
  float Conv2dOutput_local[128];
  __shared__ float PaddedInput_shared[256];
  __shared__ float placeholder_shared[92];
  Conv2dOutput_local[(0)] = 0.000000e+00f;
  Conv2dOutput_local[(32)] = 0.000000e+00f;
  Conv2dOutput_local[(64)] = 0.000000e+00f;
  Conv2dOutput_local[(96)] = 0.000000e+00f;
  Conv2dOutput_local[(1)] = 0.000000e+00f;
  Conv2dOutput_local[(33)] = 0.000000e+00f;
  Conv2dOutput_local[(65)] = 0.000000e+00f;
  Conv2dOutput_local[(97)] = 0.000000e+00f;
  Conv2dOutput_local[(8)] = 0.000000e+00f;
  Conv2dOutput_local[(40)] = 0.000000e+00f;
  Conv2dOutput_local[(72)] = 0.000000e+00f;
  Conv2dOutput_local[(104)] = 0.000000e+00f;
  Conv2dOutput_local[(9)] = 0.000000e+00f;
  Conv2dOutput_local[(41)] = 0.000000e+00f;
  Conv2dOutput_local[(73)] = 0.000000e+00f;
  Conv2dOutput_local[(105)] = 0.000000e+00f;
  Conv2dOutput_local[(16)] = 0.000000e+00f;
  Conv2dOutput_local[(48)] = 0.000000e+00f;
  Conv2dOutput_local[(80)] = 0.000000e+00f;
  Conv2dOutput_local[(112)] = 0.000000e+00f;
  Conv2dOutput_local[(17)] = 0.000000e+00f;
  Conv2dOutput_local[(49)] = 0.000000e+00f;
  Conv2dOutput_local[(81)] = 0.000000e+00f;
  Conv2dOutput_local[(113)] = 0.000000e+00f;
  Conv2dOutput_local[(24)] = 0.000000e+00f;
  Conv2dOutput_local[(56)] = 0.000000e+00f;
  Conv2dOutput_local[(88)] = 0.000000e+00f;
  Conv2dOutput_local[(120)] = 0.000000e+00f;
  Conv2dOutput_local[(25)] = 0.000000e+00f;
  Conv2dOutput_local[(57)] = 0.000000e+00f;
  Conv2dOutput_local[(89)] = 0.000000e+00f;
  Conv2dOutput_local[(121)] = 0.000000e+00f;
  Conv2dOutput_local[(2)] = 0.000000e+00f;
  Conv2dOutput_local[(34)] = 0.000000e+00f;
  Conv2dOutput_local[(66)] = 0.000000e+00f;
  Conv2dOutput_local[(98)] = 0.000000e+00f;
  Conv2dOutput_local[(3)] = 0.000000e+00f;
  Conv2dOutput_local[(35)] = 0.000000e+00f;
  Conv2dOutput_local[(67)] = 0.000000e+00f;
  Conv2dOutput_local[(99)] = 0.000000e+00f;
  Conv2dOutput_local[(10)] = 0.000000e+00f;
  Conv2dOutput_local[(42)] = 0.000000e+00f;
  Conv2dOutput_local[(74)] = 0.000000e+00f;
  Conv2dOutput_local[(106)] = 0.000000e+00f;
  Conv2dOutput_local[(11)] = 0.000000e+00f;
  Conv2dOutput_local[(43)] = 0.000000e+00f;
  Conv2dOutput_local[(75)] = 0.000000e+00f;
  Conv2dOutput_local[(107)] = 0.000000e+00f;
  Conv2dOutput_local[(18)] = 0.000000e+00f;
  Conv2dOutput_local[(50)] = 0.000000e+00f;
  Conv2dOutput_local[(82)] = 0.000000e+00f;
  Conv2dOutput_local[(114)] = 0.000000e+00f;
  Conv2dOutput_local[(19)] = 0.000000e+00f;
  Conv2dOutput_local[(51)] = 0.000000e+00f;
  Conv2dOutput_local[(83)] = 0.000000e+00f;
  Conv2dOutput_local[(115)] = 0.000000e+00f;
  Conv2dOutput_local[(26)] = 0.000000e+00f;
  Conv2dOutput_local[(58)] = 0.000000e+00f;
  Conv2dOutput_local[(90)] = 0.000000e+00f;
  Conv2dOutput_local[(122)] = 0.000000e+00f;
  Conv2dOutput_local[(27)] = 0.000000e+00f;
  Conv2dOutput_local[(59)] = 0.000000e+00f;
  Conv2dOutput_local[(91)] = 0.000000e+00f;
  Conv2dOutput_local[(123)] = 0.000000e+00f;
  Conv2dOutput_local[(4)] = 0.000000e+00f;
  Conv2dOutput_local[(36)] = 0.000000e+00f;
  Conv2dOutput_local[(68)] = 0.000000e+00f;
  Conv2dOutput_local[(100)] = 0.000000e+00f;
  Conv2dOutput_local[(5)] = 0.000000e+00f;
  Conv2dOutput_local[(37)] = 0.000000e+00f;
  Conv2dOutput_local[(69)] = 0.000000e+00f;
  Conv2dOutput_local[(101)] = 0.000000e+00f;
  Conv2dOutput_local[(12)] = 0.000000e+00f;
  Conv2dOutput_local[(44)] = 0.000000e+00f;
  Conv2dOutput_local[(76)] = 0.000000e+00f;
  Conv2dOutput_local[(108)] = 0.000000e+00f;
  Conv2dOutput_local[(13)] = 0.000000e+00f;
  Conv2dOutput_local[(45)] = 0.000000e+00f;
  Conv2dOutput_local[(77)] = 0.000000e+00f;
  Conv2dOutput_local[(109)] = 0.000000e+00f;
  Conv2dOutput_local[(20)] = 0.000000e+00f;
  Conv2dOutput_local[(52)] = 0.000000e+00f;
  Conv2dOutput_local[(84)] = 0.000000e+00f;
  Conv2dOutput_local[(116)] = 0.000000e+00f;
  Conv2dOutput_local[(21)] = 0.000000e+00f;
  Conv2dOutput_local[(53)] = 0.000000e+00f;
  Conv2dOutput_local[(85)] = 0.000000e+00f;
  Conv2dOutput_local[(117)] = 0.000000e+00f;
  Conv2dOutput_local[(28)] = 0.000000e+00f;
  Conv2dOutput_local[(60)] = 0.000000e+00f;
  Conv2dOutput_local[(92)] = 0.000000e+00f;
  Conv2dOutput_local[(124)] = 0.000000e+00f;
  Conv2dOutput_local[(29)] = 0.000000e+00f;
  Conv2dOutput_local[(61)] = 0.000000e+00f;
  Conv2dOutput_local[(93)] = 0.000000e+00f;
  Conv2dOutput_local[(125)] = 0.000000e+00f;
  Conv2dOutput_local[(6)] = 0.000000e+00f;
  Conv2dOutput_local[(38)] = 0.000000e+00f;
  Conv2dOutput_local[(70)] = 0.000000e+00f;
  Conv2dOutput_local[(102)] = 0.000000e+00f;
  Conv2dOutput_local[(7)] = 0.000000e+00f;
  Conv2dOutput_local[(39)] = 0.000000e+00f;
  Conv2dOutput_local[(71)] = 0.000000e+00f;
  Conv2dOutput_local[(103)] = 0.000000e+00f;
  Conv2dOutput_local[(14)] = 0.000000e+00f;
  Conv2dOutput_local[(46)] = 0.000000e+00f;
  Conv2dOutput_local[(78)] = 0.000000e+00f;
  Conv2dOutput_local[(110)] = 0.000000e+00f;
  Conv2dOutput_local[(15)] = 0.000000e+00f;
  Conv2dOutput_local[(47)] = 0.000000e+00f;
  Conv2dOutput_local[(79)] = 0.000000e+00f;
  Conv2dOutput_local[(111)] = 0.000000e+00f;
  Conv2dOutput_local[(22)] = 0.000000e+00f;
  Conv2dOutput_local[(54)] = 0.000000e+00f;
  Conv2dOutput_local[(86)] = 0.000000e+00f;
  Conv2dOutput_local[(118)] = 0.000000e+00f;
  Conv2dOutput_local[(23)] = 0.000000e+00f;
  Conv2dOutput_local[(55)] = 0.000000e+00f;
  Conv2dOutput_local[(87)] = 0.000000e+00f;
  Conv2dOutput_local[(119)] = 0.000000e+00f;
  Conv2dOutput_local[(30)] = 0.000000e+00f;
  Conv2dOutput_local[(62)] = 0.000000e+00f;
  Conv2dOutput_local[(94)] = 0.000000e+00f;
  Conv2dOutput_local[(126)] = 0.000000e+00f;
  Conv2dOutput_local[(31)] = 0.000000e+00f;
  Conv2dOutput_local[(63)] = 0.000000e+00f;
  Conv2dOutput_local[(95)] = 0.000000e+00f;
  Conv2dOutput_local[(127)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 80; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 64) {
      PaddedInput_shared[((((int)threadIdx.x) * 4))] = placeholder[((((((((int)threadIdx.x) >> 4) * 20480) + ((((int)blockIdx.x) >> 1) * 5120)) + ((((int)threadIdx.x) & 15) * 320)) + rc_outer_outer))];
    }
    if (((int)threadIdx.x) < 64) {
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 1))] = placeholder[((((((((((int)threadIdx.x) * 4) + 1) >> 6) * 20480) + ((((int)blockIdx.x) >> 1) * 5120)) + ((((((int)threadIdx.x) * 4) + 1) & 63) * 80)) + rc_outer_outer))];
    }
    if (((int)threadIdx.x) < 64) {
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 2))] = placeholder[((((((((((int)threadIdx.x) * 4) + 2) >> 6) * 20480) + ((((int)blockIdx.x) >> 1) * 5120)) + ((((((int)threadIdx.x) * 4) + 2) & 63) * 80)) + rc_outer_outer))];
    }
    if (((int)threadIdx.x) < 64) {
      PaddedInput_shared[(((((int)threadIdx.x) * 4) + 3))] = placeholder[((((((((((int)threadIdx.x) * 4) + 3) >> 6) * 20480) + ((((int)blockIdx.x) >> 1) * 5120)) + ((((((int)threadIdx.x) * 4) + 3) & 63) * 80)) + rc_outer_outer))];
    }
    if (((int)threadIdx.x) < 46) {
      placeholder_shared[((((int)threadIdx.x) * 2))] = placeholder1[((((rc_outer_outer * 184) + ((((int)blockIdx.x) & 1) * 92)) + (((int)threadIdx.x) * 2)))];
    }
    if (((int)threadIdx.x) < 46) {
      placeholder_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder1[(((((rc_outer_outer * 184) + ((((int)blockIdx.x) & 1) * 92)) + (((int)threadIdx.x) * 2)) + 1))];
    }
    __syncthreads();
    Conv2dOutput_local[(0)] = (Conv2dOutput_local[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(32)] = (Conv2dOutput_local[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 4))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(64)] = (Conv2dOutput_local[(64)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 8))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(96)] = (Conv2dOutput_local[(96)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 12))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(1)] = (Conv2dOutput_local[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(33)] = (Conv2dOutput_local[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(65)] = (Conv2dOutput_local[(65)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 8))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(97)] = (Conv2dOutput_local[(97)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 12))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(8)] = (Conv2dOutput_local[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 64))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(40)] = (Conv2dOutput_local[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 68))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(72)] = (Conv2dOutput_local[(72)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 72))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(104)] = (Conv2dOutput_local[(104)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 76))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(9)] = (Conv2dOutput_local[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(41)] = (Conv2dOutput_local[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 68))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(73)] = (Conv2dOutput_local[(73)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 72))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(105)] = (Conv2dOutput_local[(105)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 76))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(16)] = (Conv2dOutput_local[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 128))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(48)] = (Conv2dOutput_local[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 132))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(80)] = (Conv2dOutput_local[(80)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 136))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(112)] = (Conv2dOutput_local[(112)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 140))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(17)] = (Conv2dOutput_local[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 128))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(49)] = (Conv2dOutput_local[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 132))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(81)] = (Conv2dOutput_local[(81)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 136))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(113)] = (Conv2dOutput_local[(113)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 140))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(24)] = (Conv2dOutput_local[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 192))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(56)] = (Conv2dOutput_local[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 196))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(88)] = (Conv2dOutput_local[(88)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 200))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(120)] = (Conv2dOutput_local[(120)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 204))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(25)] = (Conv2dOutput_local[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 192))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(57)] = (Conv2dOutput_local[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 196))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(89)] = (Conv2dOutput_local[(89)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 200))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(121)] = (Conv2dOutput_local[(121)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 204))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(2)] = (Conv2dOutput_local[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(34)] = (Conv2dOutput_local[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(66)] = (Conv2dOutput_local[(66)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 8))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(98)] = (Conv2dOutput_local[(98)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 12))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(3)] = (Conv2dOutput_local[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(35)] = (Conv2dOutput_local[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(67)] = (Conv2dOutput_local[(67)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 8))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(99)] = (Conv2dOutput_local[(99)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 12))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(10)] = (Conv2dOutput_local[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(42)] = (Conv2dOutput_local[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 68))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(74)] = (Conv2dOutput_local[(74)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 72))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(106)] = (Conv2dOutput_local[(106)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 76))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(11)] = (Conv2dOutput_local[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 64))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(43)] = (Conv2dOutput_local[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 68))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(75)] = (Conv2dOutput_local[(75)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 72))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(107)] = (Conv2dOutput_local[(107)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 76))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(18)] = (Conv2dOutput_local[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 128))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(50)] = (Conv2dOutput_local[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 132))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(82)] = (Conv2dOutput_local[(82)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 136))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(114)] = (Conv2dOutput_local[(114)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 140))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(19)] = (Conv2dOutput_local[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 128))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(51)] = (Conv2dOutput_local[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 132))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(83)] = (Conv2dOutput_local[(83)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 136))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(115)] = (Conv2dOutput_local[(115)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 140))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(26)] = (Conv2dOutput_local[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 192))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(58)] = (Conv2dOutput_local[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 196))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(90)] = (Conv2dOutput_local[(90)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 200))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(122)] = (Conv2dOutput_local[(122)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 204))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(27)] = (Conv2dOutput_local[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 192))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(59)] = (Conv2dOutput_local[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 196))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(91)] = (Conv2dOutput_local[(91)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 200))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(123)] = (Conv2dOutput_local[(123)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 204))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(4)] = (Conv2dOutput_local[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 16))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(36)] = (Conv2dOutput_local[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 20))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(68)] = (Conv2dOutput_local[(68)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 24))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(100)] = (Conv2dOutput_local[(100)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 28))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(5)] = (Conv2dOutput_local[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 16))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(37)] = (Conv2dOutput_local[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 20))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(69)] = (Conv2dOutput_local[(69)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 24))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(101)] = (Conv2dOutput_local[(101)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 28))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(12)] = (Conv2dOutput_local[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 80))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(44)] = (Conv2dOutput_local[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 84))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(76)] = (Conv2dOutput_local[(76)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 88))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(108)] = (Conv2dOutput_local[(108)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 92))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(13)] = (Conv2dOutput_local[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 80))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(45)] = (Conv2dOutput_local[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 84))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(77)] = (Conv2dOutput_local[(77)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 88))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(109)] = (Conv2dOutput_local[(109)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 92))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(20)] = (Conv2dOutput_local[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 144))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(52)] = (Conv2dOutput_local[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 148))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(84)] = (Conv2dOutput_local[(84)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 152))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(116)] = (Conv2dOutput_local[(116)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 156))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(21)] = (Conv2dOutput_local[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 144))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(53)] = (Conv2dOutput_local[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 148))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(85)] = (Conv2dOutput_local[(85)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 152))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(117)] = (Conv2dOutput_local[(117)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 156))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(28)] = (Conv2dOutput_local[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 208))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(60)] = (Conv2dOutput_local[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 212))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(92)] = (Conv2dOutput_local[(92)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 216))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(124)] = (Conv2dOutput_local[(124)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 220))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 4))]));
    Conv2dOutput_local[(29)] = (Conv2dOutput_local[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 208))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(61)] = (Conv2dOutput_local[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 212))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(93)] = (Conv2dOutput_local[(93)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 216))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(125)] = (Conv2dOutput_local[(125)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 220))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 1))]));
    Conv2dOutput_local[(6)] = (Conv2dOutput_local[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 16))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(38)] = (Conv2dOutput_local[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 20))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(70)] = (Conv2dOutput_local[(70)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 24))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(102)] = (Conv2dOutput_local[(102)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 28))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(7)] = (Conv2dOutput_local[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 16))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(39)] = (Conv2dOutput_local[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 20))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(71)] = (Conv2dOutput_local[(71)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 24))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(103)] = (Conv2dOutput_local[(103)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 28))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(14)] = (Conv2dOutput_local[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 80))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(46)] = (Conv2dOutput_local[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 84))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(78)] = (Conv2dOutput_local[(78)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 88))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(110)] = (Conv2dOutput_local[(110)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 92))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(15)] = (Conv2dOutput_local[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 80))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(47)] = (Conv2dOutput_local[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 84))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(79)] = (Conv2dOutput_local[(79)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 88))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(111)] = (Conv2dOutput_local[(111)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 92))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(22)] = (Conv2dOutput_local[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 144))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(54)] = (Conv2dOutput_local[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 148))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(86)] = (Conv2dOutput_local[(86)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 152))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(118)] = (Conv2dOutput_local[(118)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 156))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(23)] = (Conv2dOutput_local[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 144))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(55)] = (Conv2dOutput_local[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 148))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(87)] = (Conv2dOutput_local[(87)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 152))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(119)] = (Conv2dOutput_local[(119)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 156))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(30)] = (Conv2dOutput_local[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 208))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(62)] = (Conv2dOutput_local[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 212))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(94)] = (Conv2dOutput_local[(94)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 216))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(126)] = (Conv2dOutput_local[(126)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 220))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 2))]));
    Conv2dOutput_local[(31)] = (Conv2dOutput_local[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 208))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(63)] = (Conv2dOutput_local[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 212))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(95)] = (Conv2dOutput_local[(95)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 216))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
    Conv2dOutput_local[(127)] = (Conv2dOutput_local[(127)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 92) * 32) + ((((int)threadIdx.x) % 92) / 23)) + 220))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 4) + 3))]));
  }
  for (int nn_inner = 0; nn_inner < 4; ++nn_inner) {
    for (int yy_inner = 0; yy_inner < 2; ++yy_inner) {
      for (int ff_inner = 0; ff_inner < 4; ++ff_inner) {
        Conv2dOutput[(((((((((nn_inner * 47104) + ((((int)blockIdx.x) >> 1) * 11776)) + ((((int)threadIdx.x) / 92) * 5888)) + (yy_inner * 2944)) + (((((int)threadIdx.x) % 92) / 23) * 184)) + ((((int)blockIdx.x) & 1) * 92)) + ((((int)threadIdx.x) % 23) * 4)) + ff_inner))] = Conv2dOutput_local[((((nn_inner * 8) + (yy_inner * 4)) + ff_inner))];
        Conv2dOutput[((((((((((nn_inner * 47104) + ((((int)blockIdx.x) >> 1) * 11776)) + ((((int)threadIdx.x) / 92) * 5888)) + (yy_inner * 2944)) + (((((int)threadIdx.x) % 92) / 23) * 184)) + ((((int)blockIdx.x) & 1) * 92)) + ((((int)threadIdx.x) % 23) * 4)) + ff_inner) + 736))] = Conv2dOutput_local[(((((nn_inner * 8) + (yy_inner * 4)) + ff_inner) + 32))];
        Conv2dOutput[((((((((((nn_inner * 47104) + ((((int)blockIdx.x) >> 1) * 11776)) + ((((int)threadIdx.x) / 92) * 5888)) + (yy_inner * 2944)) + (((((int)threadIdx.x) % 92) / 23) * 184)) + ((((int)blockIdx.x) & 1) * 92)) + ((((int)threadIdx.x) % 23) * 4)) + ff_inner) + 1472))] = Conv2dOutput_local[(((((nn_inner * 8) + (yy_inner * 4)) + ff_inner) + 64))];
        Conv2dOutput[((((((((((nn_inner * 47104) + ((((int)blockIdx.x) >> 1) * 11776)) + ((((int)threadIdx.x) / 92) * 5888)) + (yy_inner * 2944)) + (((((int)threadIdx.x) % 92) / 23) * 184)) + ((((int)blockIdx.x) & 1) * 92)) + ((((int)threadIdx.x) % 23) * 4)) + ff_inner) + 2208))] = Conv2dOutput_local[(((((nn_inner * 8) + (yy_inner * 4)) + ff_inner) + 96))];
      }
    }
  }
}


