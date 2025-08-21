
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
  float Conv3dOutput[112];
  __shared__ float PaddedInput_shared[702];
  __shared__ float placeholder_shared[512];
  Conv3dOutput[(0)] = 0.000000e+00f;
  Conv3dOutput[(14)] = 0.000000e+00f;
  Conv3dOutput[(28)] = 0.000000e+00f;
  Conv3dOutput[(42)] = 0.000000e+00f;
  Conv3dOutput[(56)] = 0.000000e+00f;
  Conv3dOutput[(70)] = 0.000000e+00f;
  Conv3dOutput[(84)] = 0.000000e+00f;
  Conv3dOutput[(98)] = 0.000000e+00f;
  Conv3dOutput[(1)] = 0.000000e+00f;
  Conv3dOutput[(15)] = 0.000000e+00f;
  Conv3dOutput[(29)] = 0.000000e+00f;
  Conv3dOutput[(43)] = 0.000000e+00f;
  Conv3dOutput[(57)] = 0.000000e+00f;
  Conv3dOutput[(71)] = 0.000000e+00f;
  Conv3dOutput[(85)] = 0.000000e+00f;
  Conv3dOutput[(99)] = 0.000000e+00f;
  Conv3dOutput[(2)] = 0.000000e+00f;
  Conv3dOutput[(16)] = 0.000000e+00f;
  Conv3dOutput[(30)] = 0.000000e+00f;
  Conv3dOutput[(44)] = 0.000000e+00f;
  Conv3dOutput[(58)] = 0.000000e+00f;
  Conv3dOutput[(72)] = 0.000000e+00f;
  Conv3dOutput[(86)] = 0.000000e+00f;
  Conv3dOutput[(100)] = 0.000000e+00f;
  Conv3dOutput[(3)] = 0.000000e+00f;
  Conv3dOutput[(17)] = 0.000000e+00f;
  Conv3dOutput[(31)] = 0.000000e+00f;
  Conv3dOutput[(45)] = 0.000000e+00f;
  Conv3dOutput[(59)] = 0.000000e+00f;
  Conv3dOutput[(73)] = 0.000000e+00f;
  Conv3dOutput[(87)] = 0.000000e+00f;
  Conv3dOutput[(101)] = 0.000000e+00f;
  Conv3dOutput[(4)] = 0.000000e+00f;
  Conv3dOutput[(18)] = 0.000000e+00f;
  Conv3dOutput[(32)] = 0.000000e+00f;
  Conv3dOutput[(46)] = 0.000000e+00f;
  Conv3dOutput[(60)] = 0.000000e+00f;
  Conv3dOutput[(74)] = 0.000000e+00f;
  Conv3dOutput[(88)] = 0.000000e+00f;
  Conv3dOutput[(102)] = 0.000000e+00f;
  Conv3dOutput[(5)] = 0.000000e+00f;
  Conv3dOutput[(19)] = 0.000000e+00f;
  Conv3dOutput[(33)] = 0.000000e+00f;
  Conv3dOutput[(47)] = 0.000000e+00f;
  Conv3dOutput[(61)] = 0.000000e+00f;
  Conv3dOutput[(75)] = 0.000000e+00f;
  Conv3dOutput[(89)] = 0.000000e+00f;
  Conv3dOutput[(103)] = 0.000000e+00f;
  Conv3dOutput[(6)] = 0.000000e+00f;
  Conv3dOutput[(20)] = 0.000000e+00f;
  Conv3dOutput[(34)] = 0.000000e+00f;
  Conv3dOutput[(48)] = 0.000000e+00f;
  Conv3dOutput[(62)] = 0.000000e+00f;
  Conv3dOutput[(76)] = 0.000000e+00f;
  Conv3dOutput[(90)] = 0.000000e+00f;
  Conv3dOutput[(104)] = 0.000000e+00f;
  Conv3dOutput[(7)] = 0.000000e+00f;
  Conv3dOutput[(21)] = 0.000000e+00f;
  Conv3dOutput[(35)] = 0.000000e+00f;
  Conv3dOutput[(49)] = 0.000000e+00f;
  Conv3dOutput[(63)] = 0.000000e+00f;
  Conv3dOutput[(77)] = 0.000000e+00f;
  Conv3dOutput[(91)] = 0.000000e+00f;
  Conv3dOutput[(105)] = 0.000000e+00f;
  Conv3dOutput[(8)] = 0.000000e+00f;
  Conv3dOutput[(22)] = 0.000000e+00f;
  Conv3dOutput[(36)] = 0.000000e+00f;
  Conv3dOutput[(50)] = 0.000000e+00f;
  Conv3dOutput[(64)] = 0.000000e+00f;
  Conv3dOutput[(78)] = 0.000000e+00f;
  Conv3dOutput[(92)] = 0.000000e+00f;
  Conv3dOutput[(106)] = 0.000000e+00f;
  Conv3dOutput[(9)] = 0.000000e+00f;
  Conv3dOutput[(23)] = 0.000000e+00f;
  Conv3dOutput[(37)] = 0.000000e+00f;
  Conv3dOutput[(51)] = 0.000000e+00f;
  Conv3dOutput[(65)] = 0.000000e+00f;
  Conv3dOutput[(79)] = 0.000000e+00f;
  Conv3dOutput[(93)] = 0.000000e+00f;
  Conv3dOutput[(107)] = 0.000000e+00f;
  Conv3dOutput[(10)] = 0.000000e+00f;
  Conv3dOutput[(24)] = 0.000000e+00f;
  Conv3dOutput[(38)] = 0.000000e+00f;
  Conv3dOutput[(52)] = 0.000000e+00f;
  Conv3dOutput[(66)] = 0.000000e+00f;
  Conv3dOutput[(80)] = 0.000000e+00f;
  Conv3dOutput[(94)] = 0.000000e+00f;
  Conv3dOutput[(108)] = 0.000000e+00f;
  Conv3dOutput[(11)] = 0.000000e+00f;
  Conv3dOutput[(25)] = 0.000000e+00f;
  Conv3dOutput[(39)] = 0.000000e+00f;
  Conv3dOutput[(53)] = 0.000000e+00f;
  Conv3dOutput[(67)] = 0.000000e+00f;
  Conv3dOutput[(81)] = 0.000000e+00f;
  Conv3dOutput[(95)] = 0.000000e+00f;
  Conv3dOutput[(109)] = 0.000000e+00f;
  Conv3dOutput[(12)] = 0.000000e+00f;
  Conv3dOutput[(26)] = 0.000000e+00f;
  Conv3dOutput[(40)] = 0.000000e+00f;
  Conv3dOutput[(54)] = 0.000000e+00f;
  Conv3dOutput[(68)] = 0.000000e+00f;
  Conv3dOutput[(82)] = 0.000000e+00f;
  Conv3dOutput[(96)] = 0.000000e+00f;
  Conv3dOutput[(110)] = 0.000000e+00f;
  Conv3dOutput[(13)] = 0.000000e+00f;
  Conv3dOutput[(27)] = 0.000000e+00f;
  Conv3dOutput[(41)] = 0.000000e+00f;
  Conv3dOutput[(55)] = 0.000000e+00f;
  Conv3dOutput[(69)] = 0.000000e+00f;
  Conv3dOutput[(83)] = 0.000000e+00f;
  Conv3dOutput[(97)] = 0.000000e+00f;
  Conv3dOutput[(111)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[((((int)threadIdx.x) * 52))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + (((((int)threadIdx.x) * 26) / 27) * 14336)) + (((((int)threadIdx.x) * 26) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 1))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + (((((int)threadIdx.x) * 26) / 27) * 14336)) + (((((int)threadIdx.x) * 26) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 2))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 1) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 1) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 3))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 1) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 1) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 4))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 2) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 2) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 5))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 2) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 2) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 6))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 3) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 3) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 7))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 3) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 3) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 8))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 4) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 4) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 9))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 4) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 4) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 10))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 5) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 5) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 11))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 5) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 5) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 12))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 6) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 6) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 13))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 6) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 6) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 14))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 7) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 7) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 15))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 7) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 7) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 16))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 8) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 8) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 17))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 8) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 8) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 18))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 9) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 9) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 19))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 9) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 9) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 20))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 10) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 10) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 21))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 10) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 10) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 22))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 11) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 11) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 23))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 11) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 11) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 24))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 12) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 12) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 14) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 25))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 12) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 12) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 26))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 13) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 13) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 27))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 13) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 13) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 28))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 14) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 14) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 29))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 14) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 14) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 30))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 15) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 15) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 31))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 15) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 15) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 32))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 16) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 16) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 33))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 16) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 16) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 34))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 17) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 17) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 35))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 17) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 17) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 36))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 18) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 18) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 37))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 18) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 18) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 38))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 19) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 19) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 39))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 19) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 19) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 40))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 20) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 20) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 41))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 20) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 20) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 42))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 21) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 21) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 43))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 21) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 21) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 44))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 22) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 22) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 45))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 22) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 22) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 46))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 23) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 23) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 47))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 23) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 23) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 48))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 24) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 24) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 49))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 24) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 24) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 50))] = placeholder[(((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 25) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 25) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 13) {
      PaddedInput_shared[(((((int)threadIdx.x) * 52) + 51))] = placeholder[((((((((((int)blockIdx.x) >> 1) * 200704) + ((((((int)threadIdx.x) * 26) + 25) / 27) * 14336)) + ((((((int)threadIdx.x) * 26) + 25) % 27) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + (rc_outer_outer * 2)) + 1))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 512) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 224))];
    if (((int)threadIdx.x) < 64) {
      placeholder_shared[((((int)threadIdx.x) + 448))] = placeholder1[((((rc_outer_outer * 512) + ((int)threadIdx.x)) + 448))];
    }
    __syncthreads();
    Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 2))]));
    Conv3dOutput[(14)] = (Conv3dOutput[(14)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 32))]));
    Conv3dOutput[(28)] = (Conv3dOutput[(28)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 64))]));
    Conv3dOutput[(42)] = (Conv3dOutput[(42)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 96))]));
    Conv3dOutput[(56)] = (Conv3dOutput[(56)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 128))]));
    Conv3dOutput[(70)] = (Conv3dOutput[(70)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 160))]));
    Conv3dOutput[(84)] = (Conv3dOutput[(84)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 192))]));
    Conv3dOutput[(98)] = (Conv3dOutput[(98)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 224))]));
    Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 1))]));
    Conv3dOutput[(15)] = (Conv3dOutput[(15)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 33))]));
    Conv3dOutput[(29)] = (Conv3dOutput[(29)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 65))]));
    Conv3dOutput[(43)] = (Conv3dOutput[(43)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 97))]));
    Conv3dOutput[(57)] = (Conv3dOutput[(57)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 129))]));
    Conv3dOutput[(71)] = (Conv3dOutput[(71)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 161))]));
    Conv3dOutput[(85)] = (Conv3dOutput[(85)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 193))]));
    Conv3dOutput[(99)] = (Conv3dOutput[(99)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 225))]));
    Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 2))]));
    Conv3dOutput[(16)] = (Conv3dOutput[(16)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 32))]));
    Conv3dOutput[(30)] = (Conv3dOutput[(30)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 64))]));
    Conv3dOutput[(44)] = (Conv3dOutput[(44)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 96))]));
    Conv3dOutput[(58)] = (Conv3dOutput[(58)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 128))]));
    Conv3dOutput[(72)] = (Conv3dOutput[(72)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 160))]));
    Conv3dOutput[(86)] = (Conv3dOutput[(86)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 192))]));
    Conv3dOutput[(100)] = (Conv3dOutput[(100)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 224))]));
    Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 1))]));
    Conv3dOutput[(17)] = (Conv3dOutput[(17)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 33))]));
    Conv3dOutput[(31)] = (Conv3dOutput[(31)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 65))]));
    Conv3dOutput[(45)] = (Conv3dOutput[(45)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 97))]));
    Conv3dOutput[(59)] = (Conv3dOutput[(59)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 129))]));
    Conv3dOutput[(73)] = (Conv3dOutput[(73)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 161))]));
    Conv3dOutput[(87)] = (Conv3dOutput[(87)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 193))]));
    Conv3dOutput[(101)] = (Conv3dOutput[(101)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 108))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 225))]));
    Conv3dOutput[(4)] = (Conv3dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 2))]));
    Conv3dOutput[(18)] = (Conv3dOutput[(18)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 32))]));
    Conv3dOutput[(32)] = (Conv3dOutput[(32)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 64))]));
    Conv3dOutput[(46)] = (Conv3dOutput[(46)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 96))]));
    Conv3dOutput[(60)] = (Conv3dOutput[(60)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 128))]));
    Conv3dOutput[(74)] = (Conv3dOutput[(74)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 160))]));
    Conv3dOutput[(88)] = (Conv3dOutput[(88)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 192))]));
    Conv3dOutput[(102)] = (Conv3dOutput[(102)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 224))]));
    Conv3dOutput[(5)] = (Conv3dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 1))]));
    Conv3dOutput[(19)] = (Conv3dOutput[(19)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 33))]));
    Conv3dOutput[(33)] = (Conv3dOutput[(33)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 65))]));
    Conv3dOutput[(47)] = (Conv3dOutput[(47)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 97))]));
    Conv3dOutput[(61)] = (Conv3dOutput[(61)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 129))]));
    Conv3dOutput[(75)] = (Conv3dOutput[(75)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 161))]));
    Conv3dOutput[(89)] = (Conv3dOutput[(89)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 193))]));
    Conv3dOutput[(103)] = (Conv3dOutput[(103)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 216))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 225))]));
    Conv3dOutput[(6)] = (Conv3dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 2))]));
    Conv3dOutput[(20)] = (Conv3dOutput[(20)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 32))]));
    Conv3dOutput[(34)] = (Conv3dOutput[(34)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 64))]));
    Conv3dOutput[(48)] = (Conv3dOutput[(48)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 96))]));
    Conv3dOutput[(62)] = (Conv3dOutput[(62)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 128))]));
    Conv3dOutput[(76)] = (Conv3dOutput[(76)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 160))]));
    Conv3dOutput[(90)] = (Conv3dOutput[(90)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 192))]));
    Conv3dOutput[(104)] = (Conv3dOutput[(104)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 224))]));
    Conv3dOutput[(7)] = (Conv3dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 1))]));
    Conv3dOutput[(21)] = (Conv3dOutput[(21)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 33))]));
    Conv3dOutput[(35)] = (Conv3dOutput[(35)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 65))]));
    Conv3dOutput[(49)] = (Conv3dOutput[(49)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 97))]));
    Conv3dOutput[(63)] = (Conv3dOutput[(63)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 129))]));
    Conv3dOutput[(77)] = (Conv3dOutput[(77)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 161))]));
    Conv3dOutput[(91)] = (Conv3dOutput[(91)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 193))]));
    Conv3dOutput[(105)] = (Conv3dOutput[(105)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 324))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 225))]));
    Conv3dOutput[(8)] = (Conv3dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 2))]));
    Conv3dOutput[(22)] = (Conv3dOutput[(22)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 32))]));
    Conv3dOutput[(36)] = (Conv3dOutput[(36)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 64))]));
    Conv3dOutput[(50)] = (Conv3dOutput[(50)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 96))]));
    Conv3dOutput[(64)] = (Conv3dOutput[(64)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 128))]));
    Conv3dOutput[(78)] = (Conv3dOutput[(78)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 160))]));
    Conv3dOutput[(92)] = (Conv3dOutput[(92)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 192))]));
    Conv3dOutput[(106)] = (Conv3dOutput[(106)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 224))]));
    Conv3dOutput[(9)] = (Conv3dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 1))]));
    Conv3dOutput[(23)] = (Conv3dOutput[(23)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 33))]));
    Conv3dOutput[(37)] = (Conv3dOutput[(37)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 65))]));
    Conv3dOutput[(51)] = (Conv3dOutput[(51)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 97))]));
    Conv3dOutput[(65)] = (Conv3dOutput[(65)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 129))]));
    Conv3dOutput[(79)] = (Conv3dOutput[(79)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 161))]));
    Conv3dOutput[(93)] = (Conv3dOutput[(93)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 193))]));
    Conv3dOutput[(107)] = (Conv3dOutput[(107)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 432))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 225))]));
    Conv3dOutput[(10)] = (Conv3dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 2))]));
    Conv3dOutput[(24)] = (Conv3dOutput[(24)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 32))]));
    Conv3dOutput[(38)] = (Conv3dOutput[(38)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 64))]));
    Conv3dOutput[(52)] = (Conv3dOutput[(52)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 96))]));
    Conv3dOutput[(66)] = (Conv3dOutput[(66)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 128))]));
    Conv3dOutput[(80)] = (Conv3dOutput[(80)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 160))]));
    Conv3dOutput[(94)] = (Conv3dOutput[(94)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 192))]));
    Conv3dOutput[(108)] = (Conv3dOutput[(108)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 224))]));
    Conv3dOutput[(11)] = (Conv3dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 1))]));
    Conv3dOutput[(25)] = (Conv3dOutput[(25)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 33))]));
    Conv3dOutput[(39)] = (Conv3dOutput[(39)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 65))]));
    Conv3dOutput[(53)] = (Conv3dOutput[(53)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 97))]));
    Conv3dOutput[(67)] = (Conv3dOutput[(67)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 129))]));
    Conv3dOutput[(81)] = (Conv3dOutput[(81)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 161))]));
    Conv3dOutput[(95)] = (Conv3dOutput[(95)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 193))]));
    Conv3dOutput[(109)] = (Conv3dOutput[(109)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 540))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 225))]));
    Conv3dOutput[(12)] = (Conv3dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 2))]));
    Conv3dOutput[(26)] = (Conv3dOutput[(26)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 32))]));
    Conv3dOutput[(40)] = (Conv3dOutput[(40)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 64))]));
    Conv3dOutput[(54)] = (Conv3dOutput[(54)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 96))]));
    Conv3dOutput[(68)] = (Conv3dOutput[(68)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 128))]));
    Conv3dOutput[(82)] = (Conv3dOutput[(82)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 160))]));
    Conv3dOutput[(96)] = (Conv3dOutput[(96)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 192))]));
    Conv3dOutput[(110)] = (Conv3dOutput[(110)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 224))]));
    Conv3dOutput[(13)] = (Conv3dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 1))]));
    Conv3dOutput[(27)] = (Conv3dOutput[(27)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 33))]));
    Conv3dOutput[(41)] = (Conv3dOutput[(41)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 65))]));
    Conv3dOutput[(55)] = (Conv3dOutput[(55)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 97))]));
    Conv3dOutput[(69)] = (Conv3dOutput[(69)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 129))]));
    Conv3dOutput[(83)] = (Conv3dOutput[(83)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 161))]));
    Conv3dOutput[(97)] = (Conv3dOutput[(97)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 193))]));
    Conv3dOutput[(111)] = (Conv3dOutput[(111)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 648))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 225))]));
    Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 256))]));
    Conv3dOutput[(14)] = (Conv3dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 288))]));
    Conv3dOutput[(28)] = (Conv3dOutput[(28)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 320))]));
    Conv3dOutput[(42)] = (Conv3dOutput[(42)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 352))]));
    Conv3dOutput[(56)] = (Conv3dOutput[(56)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 384))]));
    Conv3dOutput[(70)] = (Conv3dOutput[(70)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 416))]));
    Conv3dOutput[(84)] = (Conv3dOutput[(84)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 448))]));
    Conv3dOutput[(98)] = (Conv3dOutput[(98)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 480))]));
    Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 257))]));
    Conv3dOutput[(15)] = (Conv3dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 289))]));
    Conv3dOutput[(29)] = (Conv3dOutput[(29)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 321))]));
    Conv3dOutput[(43)] = (Conv3dOutput[(43)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 353))]));
    Conv3dOutput[(57)] = (Conv3dOutput[(57)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 385))]));
    Conv3dOutput[(71)] = (Conv3dOutput[(71)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 417))]));
    Conv3dOutput[(85)] = (Conv3dOutput[(85)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 449))]));
    Conv3dOutput[(99)] = (Conv3dOutput[(99)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 481))]));
    Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 256))]));
    Conv3dOutput[(16)] = (Conv3dOutput[(16)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 288))]));
    Conv3dOutput[(30)] = (Conv3dOutput[(30)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 320))]));
    Conv3dOutput[(44)] = (Conv3dOutput[(44)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 352))]));
    Conv3dOutput[(58)] = (Conv3dOutput[(58)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 384))]));
    Conv3dOutput[(72)] = (Conv3dOutput[(72)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 416))]));
    Conv3dOutput[(86)] = (Conv3dOutput[(86)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 448))]));
    Conv3dOutput[(100)] = (Conv3dOutput[(100)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 480))]));
    Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 257))]));
    Conv3dOutput[(17)] = (Conv3dOutput[(17)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 289))]));
    Conv3dOutput[(31)] = (Conv3dOutput[(31)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 321))]));
    Conv3dOutput[(45)] = (Conv3dOutput[(45)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 353))]));
    Conv3dOutput[(59)] = (Conv3dOutput[(59)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 385))]));
    Conv3dOutput[(73)] = (Conv3dOutput[(73)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 417))]));
    Conv3dOutput[(87)] = (Conv3dOutput[(87)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 449))]));
    Conv3dOutput[(101)] = (Conv3dOutput[(101)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 109))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 481))]));
    Conv3dOutput[(4)] = (Conv3dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 256))]));
    Conv3dOutput[(18)] = (Conv3dOutput[(18)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 288))]));
    Conv3dOutput[(32)] = (Conv3dOutput[(32)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 320))]));
    Conv3dOutput[(46)] = (Conv3dOutput[(46)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 352))]));
    Conv3dOutput[(60)] = (Conv3dOutput[(60)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 384))]));
    Conv3dOutput[(74)] = (Conv3dOutput[(74)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 416))]));
    Conv3dOutput[(88)] = (Conv3dOutput[(88)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 448))]));
    Conv3dOutput[(102)] = (Conv3dOutput[(102)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 480))]));
    Conv3dOutput[(5)] = (Conv3dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 257))]));
    Conv3dOutput[(19)] = (Conv3dOutput[(19)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 289))]));
    Conv3dOutput[(33)] = (Conv3dOutput[(33)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 321))]));
    Conv3dOutput[(47)] = (Conv3dOutput[(47)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 353))]));
    Conv3dOutput[(61)] = (Conv3dOutput[(61)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 385))]));
    Conv3dOutput[(75)] = (Conv3dOutput[(75)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 417))]));
    Conv3dOutput[(89)] = (Conv3dOutput[(89)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 449))]));
    Conv3dOutput[(103)] = (Conv3dOutput[(103)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 217))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 481))]));
    Conv3dOutput[(6)] = (Conv3dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 256))]));
    Conv3dOutput[(20)] = (Conv3dOutput[(20)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 288))]));
    Conv3dOutput[(34)] = (Conv3dOutput[(34)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 320))]));
    Conv3dOutput[(48)] = (Conv3dOutput[(48)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 352))]));
    Conv3dOutput[(62)] = (Conv3dOutput[(62)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 384))]));
    Conv3dOutput[(76)] = (Conv3dOutput[(76)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 416))]));
    Conv3dOutput[(90)] = (Conv3dOutput[(90)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 448))]));
    Conv3dOutput[(104)] = (Conv3dOutput[(104)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 480))]));
    Conv3dOutput[(7)] = (Conv3dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 257))]));
    Conv3dOutput[(21)] = (Conv3dOutput[(21)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 289))]));
    Conv3dOutput[(35)] = (Conv3dOutput[(35)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 321))]));
    Conv3dOutput[(49)] = (Conv3dOutput[(49)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 353))]));
    Conv3dOutput[(63)] = (Conv3dOutput[(63)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 385))]));
    Conv3dOutput[(77)] = (Conv3dOutput[(77)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 417))]));
    Conv3dOutput[(91)] = (Conv3dOutput[(91)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 449))]));
    Conv3dOutput[(105)] = (Conv3dOutput[(105)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 325))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 481))]));
    Conv3dOutput[(8)] = (Conv3dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 256))]));
    Conv3dOutput[(22)] = (Conv3dOutput[(22)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 288))]));
    Conv3dOutput[(36)] = (Conv3dOutput[(36)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 320))]));
    Conv3dOutput[(50)] = (Conv3dOutput[(50)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 352))]));
    Conv3dOutput[(64)] = (Conv3dOutput[(64)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 384))]));
    Conv3dOutput[(78)] = (Conv3dOutput[(78)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 416))]));
    Conv3dOutput[(92)] = (Conv3dOutput[(92)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 448))]));
    Conv3dOutput[(106)] = (Conv3dOutput[(106)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 480))]));
    Conv3dOutput[(9)] = (Conv3dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 257))]));
    Conv3dOutput[(23)] = (Conv3dOutput[(23)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 289))]));
    Conv3dOutput[(37)] = (Conv3dOutput[(37)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 321))]));
    Conv3dOutput[(51)] = (Conv3dOutput[(51)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 353))]));
    Conv3dOutput[(65)] = (Conv3dOutput[(65)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 385))]));
    Conv3dOutput[(79)] = (Conv3dOutput[(79)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 417))]));
    Conv3dOutput[(93)] = (Conv3dOutput[(93)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 449))]));
    Conv3dOutput[(107)] = (Conv3dOutput[(107)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 433))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 481))]));
    Conv3dOutput[(10)] = (Conv3dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 256))]));
    Conv3dOutput[(24)] = (Conv3dOutput[(24)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 288))]));
    Conv3dOutput[(38)] = (Conv3dOutput[(38)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 320))]));
    Conv3dOutput[(52)] = (Conv3dOutput[(52)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 352))]));
    Conv3dOutput[(66)] = (Conv3dOutput[(66)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 384))]));
    Conv3dOutput[(80)] = (Conv3dOutput[(80)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 416))]));
    Conv3dOutput[(94)] = (Conv3dOutput[(94)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 448))]));
    Conv3dOutput[(108)] = (Conv3dOutput[(108)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 480))]));
    Conv3dOutput[(11)] = (Conv3dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 257))]));
    Conv3dOutput[(25)] = (Conv3dOutput[(25)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 289))]));
    Conv3dOutput[(39)] = (Conv3dOutput[(39)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 321))]));
    Conv3dOutput[(53)] = (Conv3dOutput[(53)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 353))]));
    Conv3dOutput[(67)] = (Conv3dOutput[(67)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 385))]));
    Conv3dOutput[(81)] = (Conv3dOutput[(81)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 417))]));
    Conv3dOutput[(95)] = (Conv3dOutput[(95)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 449))]));
    Conv3dOutput[(109)] = (Conv3dOutput[(109)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 541))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 481))]));
    Conv3dOutput[(12)] = (Conv3dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 256))]));
    Conv3dOutput[(26)] = (Conv3dOutput[(26)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 288))]));
    Conv3dOutput[(40)] = (Conv3dOutput[(40)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 320))]));
    Conv3dOutput[(54)] = (Conv3dOutput[(54)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 352))]));
    Conv3dOutput[(68)] = (Conv3dOutput[(68)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 384))]));
    Conv3dOutput[(82)] = (Conv3dOutput[(82)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 416))]));
    Conv3dOutput[(96)] = (Conv3dOutput[(96)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 448))]));
    Conv3dOutput[(110)] = (Conv3dOutput[(110)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 480))]));
    Conv3dOutput[(13)] = (Conv3dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 257))]));
    Conv3dOutput[(27)] = (Conv3dOutput[(27)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 289))]));
    Conv3dOutput[(41)] = (Conv3dOutput[(41)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 321))]));
    Conv3dOutput[(55)] = (Conv3dOutput[(55)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 353))]));
    Conv3dOutput[(69)] = (Conv3dOutput[(69)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 385))]));
    Conv3dOutput[(83)] = (Conv3dOutput[(83)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 417))]));
    Conv3dOutput[(97)] = (Conv3dOutput[(97)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 449))]));
    Conv3dOutput[(111)] = (Conv3dOutput[(111)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 4) + 649))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 481))]));
  }
  for (int ax1_inner = 0; ax1_inner < 7; ++ax1_inner) {
    for (int ax4_inner = 0; ax4_inner < 2; ++ax4_inner) {
      T_add[((((((((((int)blockIdx.x) >> 1) * 50176) + (ax1_inner * 7168)) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + ax4_inner))] = ((Conv3dOutput[(((ax1_inner * 2) + ax4_inner))] * placeholder2[((((((int)threadIdx.x) & 15) * 2) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 15) * 2) + ax4_inner))]);
      T_add[(((((((((((int)blockIdx.x) >> 1) * 50176) + (ax1_inner * 7168)) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + ax4_inner) + 32))] = ((Conv3dOutput[((((ax1_inner * 2) + ax4_inner) + 14))] * placeholder2[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 32))]) + placeholder3[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 32))]);
      T_add[(((((((((((int)blockIdx.x) >> 1) * 50176) + (ax1_inner * 7168)) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + ax4_inner) + 64))] = ((Conv3dOutput[((((ax1_inner * 2) + ax4_inner) + 28))] * placeholder2[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 64))]) + placeholder3[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 64))]);
      T_add[(((((((((((int)blockIdx.x) >> 1) * 50176) + (ax1_inner * 7168)) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + ax4_inner) + 96))] = ((Conv3dOutput[((((ax1_inner * 2) + ax4_inner) + 42))] * placeholder2[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 96))]) + placeholder3[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 96))]);
      T_add[(((((((((((int)blockIdx.x) >> 1) * 50176) + (ax1_inner * 7168)) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + ax4_inner) + 128))] = ((Conv3dOutput[((((ax1_inner * 2) + ax4_inner) + 56))] * placeholder2[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 128))]) + placeholder3[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 128))]);
      T_add[(((((((((((int)blockIdx.x) >> 1) * 50176) + (ax1_inner * 7168)) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + ax4_inner) + 160))] = ((Conv3dOutput[((((ax1_inner * 2) + ax4_inner) + 70))] * placeholder2[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 160))]) + placeholder3[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 160))]);
      T_add[(((((((((((int)blockIdx.x) >> 1) * 50176) + (ax1_inner * 7168)) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + ax4_inner) + 192))] = ((Conv3dOutput[((((ax1_inner * 2) + ax4_inner) + 84))] * placeholder2[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 192))]) + placeholder3[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 192))]);
      T_add[(((((((((((int)blockIdx.x) >> 1) * 50176) + (ax1_inner * 7168)) + ((((int)threadIdx.x) >> 4) * 512)) + ((((int)blockIdx.x) & 1) * 256)) + ((((int)threadIdx.x) & 15) * 2)) + ax4_inner) + 224))] = ((Conv3dOutput[((((ax1_inner * 2) + ax4_inner) + 98))] * placeholder2[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 224))]) + placeholder3[(((((((int)threadIdx.x) & 15) * 2) + ax4_inner) + 224))]);
    }
  }
}


