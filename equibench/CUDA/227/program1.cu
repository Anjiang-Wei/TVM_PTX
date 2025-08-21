
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
  __shared__ float PaddedInput_shared[1024];
  __shared__ float placeholder_shared[256];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(24)] = 0.000000e+00f;
  Conv2dOutput[(32)] = 0.000000e+00f;
  Conv2dOutput[(40)] = 0.000000e+00f;
  Conv2dOutput[(48)] = 0.000000e+00f;
  Conv2dOutput[(56)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(28)] = 0.000000e+00f;
  Conv2dOutput[(36)] = 0.000000e+00f;
  Conv2dOutput[(44)] = 0.000000e+00f;
  Conv2dOutput[(52)] = 0.000000e+00f;
  Conv2dOutput[(60)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(25)] = 0.000000e+00f;
  Conv2dOutput[(33)] = 0.000000e+00f;
  Conv2dOutput[(41)] = 0.000000e+00f;
  Conv2dOutput[(49)] = 0.000000e+00f;
  Conv2dOutput[(57)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(29)] = 0.000000e+00f;
  Conv2dOutput[(37)] = 0.000000e+00f;
  Conv2dOutput[(45)] = 0.000000e+00f;
  Conv2dOutput[(53)] = 0.000000e+00f;
  Conv2dOutput[(61)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(26)] = 0.000000e+00f;
  Conv2dOutput[(34)] = 0.000000e+00f;
  Conv2dOutput[(42)] = 0.000000e+00f;
  Conv2dOutput[(50)] = 0.000000e+00f;
  Conv2dOutput[(58)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(30)] = 0.000000e+00f;
  Conv2dOutput[(38)] = 0.000000e+00f;
  Conv2dOutput[(46)] = 0.000000e+00f;
  Conv2dOutput[(54)] = 0.000000e+00f;
  Conv2dOutput[(62)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(27)] = 0.000000e+00f;
  Conv2dOutput[(35)] = 0.000000e+00f;
  Conv2dOutput[(43)] = 0.000000e+00f;
  Conv2dOutput[(51)] = 0.000000e+00f;
  Conv2dOutput[(59)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  Conv2dOutput[(31)] = 0.000000e+00f;
  Conv2dOutput[(39)] = 0.000000e+00f;
  Conv2dOutput[(47)] = 0.000000e+00f;
  Conv2dOutput[(55)] = 0.000000e+00f;
  Conv2dOutput[(63)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 92; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 64))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 5888))];
    PaddedInput_shared[((((int)threadIdx.x) + 128))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 11776))];
    PaddedInput_shared[((((int)threadIdx.x) + 192))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 17664))];
    PaddedInput_shared[((((int)threadIdx.x) + 256))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 23552))];
    PaddedInput_shared[((((int)threadIdx.x) + 320))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 29440))];
    PaddedInput_shared[((((int)threadIdx.x) + 384))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 35328))];
    PaddedInput_shared[((((int)threadIdx.x) + 448))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 41216))];
    PaddedInput_shared[((((int)threadIdx.x) + 512))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 47104))];
    PaddedInput_shared[((((int)threadIdx.x) + 576))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 52992))];
    PaddedInput_shared[((((int)threadIdx.x) + 640))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 58880))];
    PaddedInput_shared[((((int)threadIdx.x) + 704))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 64768))];
    PaddedInput_shared[((((int)threadIdx.x) + 768))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 70656))];
    PaddedInput_shared[((((int)threadIdx.x) + 832))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 76544))];
    PaddedInput_shared[((((int)threadIdx.x) + 896))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 82432))];
    PaddedInput_shared[((((int)threadIdx.x) + 960))] = placeholder[(((((((((int)blockIdx.x) >> 2) * 94208) + ((((int)threadIdx.x) >> 3) * 736)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 88320))];
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[((((int)threadIdx.x) * 64))] = placeholder1[((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 1))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 1))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 2))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 2))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 3))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 3))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 4))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 4))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 5))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 5))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 6))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 6))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 7))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 7))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 8))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 8))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 9))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 9))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 10))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 10))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 11))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 11))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 12))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 12))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 13))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 13))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 14))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 14))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 15))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 15))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 16))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 16))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 17))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 17))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 18))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 18))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 19))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 19))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 20))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 20))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 21))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 21))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 22))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 22))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 23))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 23))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 24))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 24))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 25))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 25))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 26))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 26))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 27))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 27))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 28))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 28))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 29))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 29))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 30))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 30))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 31))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 31))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 32))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 128))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 33))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 129))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 34))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 130))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 35))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 131))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 36))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 132))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 37))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 133))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 38))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 134))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 39))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 135))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 40))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 136))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 41))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 137))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 42))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 138))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 43))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 139))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 44))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 140))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 45))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 141))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 46))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 142))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 47))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 143))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 48))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 144))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 49))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 145))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 50))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 146))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 51))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 147))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 52))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 148))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 53))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 149))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 54))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 150))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 55))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 151))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 56))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 152))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 57))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 153))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 58))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 154))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 59))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 155))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 60))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 156))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 61))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 157))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 62))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 158))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 64) + 63))] = placeholder1[(((((rc_outer_outer * 1024) + (((int)threadIdx.x) * 256)) + ((((int)blockIdx.x) & 3) * 32)) + 159))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)))] * placeholder_shared[(((((int)threadIdx.x) & 3) * 4))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 16))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 32))] * placeholder_shared[(((((int)threadIdx.x) & 3) * 4))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 32))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 16))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 64))] * placeholder_shared[(((((int)threadIdx.x) & 3) * 4))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 16))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 96))] * placeholder_shared[(((((int)threadIdx.x) & 3) * 4))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 96))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 16))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 128))] * placeholder_shared[(((((int)threadIdx.x) & 3) * 4))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 16))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 160))] * placeholder_shared[(((((int)threadIdx.x) & 3) * 4))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 160))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 16))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 192))] * placeholder_shared[(((((int)threadIdx.x) & 3) * 4))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 16))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 224))] * placeholder_shared[(((((int)threadIdx.x) & 3) * 4))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 224))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 16))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 32))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 48))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 33))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 32))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 33))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 48))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 32))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 48))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 97))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 32))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 97))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 48))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 32))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 48))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 161))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 32))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 161))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 48))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 32))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 48))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 225))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 32))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 225))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 48))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 64))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 80))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 34))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 64))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 34))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 80))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 64))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 80))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 64))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 80))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 64))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 80))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 162))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 64))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 162))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 80))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 64))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 80))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 226))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 64))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 226))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 80))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 96))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 112))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 35))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 96))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 35))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 112))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 96))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 112))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 96))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 112))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 96))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 112))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 163))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 96))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 163))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 112))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 96))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 112))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 227))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 96))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 227))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 112))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 128))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 144))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 36))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 128))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 36))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 144))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 128))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 144))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 100))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 128))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 100))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 144))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 128))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 144))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 164))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 128))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 164))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 144))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 128))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 144))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 228))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 128))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 228))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 144))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 160))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 176))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 37))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 160))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 37))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 176))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 160))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 176))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 101))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 160))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 101))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 176))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 160))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 176))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 165))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 160))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 165))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 176))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 160))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 176))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 229))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 160))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 229))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 176))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 192))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 208))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 38))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 192))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 38))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 208))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 192))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 208))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 102))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 192))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 102))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 208))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 192))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 208))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 166))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 192))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 166))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 208))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 192))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 208))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 230))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 192))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 230))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 208))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 224))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 240))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 39))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 224))]));
    Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 39))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 240))]));
    Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 224))]));
    Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 240))]));
    Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 103))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 224))]));
    Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 103))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 240))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 224))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 240))]));
    Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 167))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 224))]));
    Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 167))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 240))]));
    Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 224))]));
    Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 240))]));
    Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 231))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 224))]));
    Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 231))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 240))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 1))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 17))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 32))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 1))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 32))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 17))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 1))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 17))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 96))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 1))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 96))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 17))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 1))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 17))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 160))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 1))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 160))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 17))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 1))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 17))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 224))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 1))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 224))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 17))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 33))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 49))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 33))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 33))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 33))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 49))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 33))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 49))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 97))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 33))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 97))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 49))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 33))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 49))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 161))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 33))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 161))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 49))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 33))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 49))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 225))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 33))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 225))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 49))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 65))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 81))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 34))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 65))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 34))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 81))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 65))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 81))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 65))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 81))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 65))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 81))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 162))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 65))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 162))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 81))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 65))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 81))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 226))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 65))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 226))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 81))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 97))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 113))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 35))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 97))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 35))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 113))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 97))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 113))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 97))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 113))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 97))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 113))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 163))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 97))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 163))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 113))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 97))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 113))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 227))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 97))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 227))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 113))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 129))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 145))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 36))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 129))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 36))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 145))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 129))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 145))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 100))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 129))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 100))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 145))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 129))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 145))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 164))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 129))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 164))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 145))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 129))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 145))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 228))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 129))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 228))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 145))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 161))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 177))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 37))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 161))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 37))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 177))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 161))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 177))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 101))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 161))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 101))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 177))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 161))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 177))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 165))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 161))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 165))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 177))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 161))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 177))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 229))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 161))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 229))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 177))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 193))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 209))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 38))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 193))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 38))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 209))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 193))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 209))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 102))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 193))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 102))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 209))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 193))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 209))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 166))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 193))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 166))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 209))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 193))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 209))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 230))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 193))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 230))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 209))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 225))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 241))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 39))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 225))]));
    Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 39))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 241))]));
    Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 225))]));
    Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 241))]));
    Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 103))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 225))]));
    Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 103))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 241))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 225))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 241))]));
    Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 167))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 225))]));
    Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 167))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 241))]));
    Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 225))]));
    Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 241))]));
    Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 231))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 225))]));
    Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 231))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 241))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 2))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 18))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 32))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 2))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 32))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 18))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 2))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 18))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 96))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 2))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 96))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 18))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 2))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 18))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 160))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 2))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 160))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 18))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 2))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 18))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 224))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 2))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 224))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 18))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 34))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 50))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 33))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 34))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 33))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 50))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 34))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 50))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 97))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 34))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 97))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 50))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 34))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 50))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 161))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 34))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 161))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 50))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 34))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 50))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 225))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 34))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 225))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 50))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 66))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 82))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 34))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 66))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 34))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 82))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 66))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 82))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 66))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 82))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 66))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 82))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 162))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 66))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 162))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 82))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 66))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 82))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 226))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 66))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 226))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 82))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 98))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 114))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 35))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 98))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 35))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 114))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 98))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 114))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 98))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 114))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 98))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 114))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 163))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 98))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 163))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 114))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 98))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 114))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 227))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 98))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 227))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 114))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 130))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 146))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 36))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 130))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 36))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 146))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 130))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 146))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 100))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 130))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 100))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 146))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 130))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 146))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 164))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 130))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 164))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 146))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 130))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 146))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 228))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 130))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 228))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 146))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 162))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 178))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 37))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 162))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 37))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 178))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 162))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 178))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 101))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 162))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 101))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 178))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 162))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 178))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 165))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 162))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 165))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 178))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 162))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 178))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 229))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 162))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 229))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 178))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 194))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 210))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 38))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 194))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 38))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 210))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 194))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 210))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 102))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 194))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 102))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 210))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 194))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 210))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 166))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 194))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 166))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 210))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 194))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 210))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 230))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 194))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 230))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 210))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 226))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 242))]));
    Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 39))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 226))]));
    Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 39))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 242))]));
    Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 226))]));
    Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 242))]));
    Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 103))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 226))]));
    Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 103))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 242))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 226))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 242))]));
    Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 167))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 226))]));
    Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 167))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 242))]));
    Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 226))]));
    Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 242))]));
    Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 231))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 226))]));
    Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 231))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 242))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 3))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 19))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 32))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 3))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 32))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 19))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 3))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 64))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 19))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 96))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 3))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 96))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 19))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 3))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 19))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 160))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 3))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 160))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 19))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 3))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 192))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 19))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 224))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 3))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 224))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 19))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 35))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 51))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 33))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 35))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 33))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 51))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 35))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 65))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 51))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 97))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 35))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 97))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 51))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 35))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 51))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 161))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 35))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 161))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 51))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 35))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 193))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 51))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 225))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 35))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 225))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 51))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 67))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 83))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 34))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 67))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 34))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 83))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 67))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 66))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 83))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 67))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 98))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 83))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 67))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 83))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 162))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 67))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 162))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 83))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 67))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 194))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 83))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 226))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 67))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 226))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 83))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 99))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 115))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 35))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 99))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 35))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 115))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 99))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 67))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 115))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 99))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 99))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 115))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 99))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 115))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 163))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 99))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 163))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 115))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 99))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 195))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 115))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 227))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 99))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 227))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 115))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 131))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 147))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 36))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 131))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 36))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 147))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 131))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 68))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 147))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 100))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 131))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 100))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 147))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 131))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 147))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 164))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 131))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 164))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 147))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 131))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 196))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 147))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 228))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 131))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 228))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 147))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 163))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 179))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 37))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 163))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 37))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 179))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 163))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 69))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 179))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 101))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 163))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 101))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 179))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 163))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 179))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 165))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 163))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 165))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 179))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 163))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 197))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 179))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 229))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 163))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 229))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 179))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 195))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 211))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 38))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 195))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 38))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 211))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 195))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 70))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 211))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 102))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 195))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 102))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 211))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 195))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 211))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 166))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 195))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 166))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 211))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 195))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 198))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 211))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 230))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 195))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 230))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 211))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 227))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 243))]));
    Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 39))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 227))]));
    Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 39))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 243))]));
    Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 227))]));
    Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 71))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 243))]));
    Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 103))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 227))]));
    Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 103))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 243))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 227))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 243))]));
    Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 167))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 227))]));
    Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 167))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 243))]));
    Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 227))]));
    Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 199))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 243))]));
    Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 231))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 227))]));
    Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 256) + (((((int)threadIdx.x) & 15) >> 2) * 8)) + 231))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 4) + 243))]));
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
      T_relu[(((((((((((int)blockIdx.x) >> 2) * 16384) + ((((int)threadIdx.x) >> 4) * 4096)) + (ax1_inner * 2048)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 4) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 16384) + ((((int)threadIdx.x) >> 4) * 4096)) + (ax1_inner * 2048)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 8))] + placeholder2[((((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 16384) + ((((int)threadIdx.x) >> 4) * 4096)) + (ax1_inner * 2048)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 512))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 16))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 16384) + ((((int)threadIdx.x) >> 4) * 4096)) + (ax1_inner * 2048)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 528))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 24))] + placeholder2[((((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 16384) + ((((int)threadIdx.x) >> 4) * 4096)) + (ax1_inner * 2048)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 1024))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 32))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 16384) + ((((int)threadIdx.x) >> 4) * 4096)) + (ax1_inner * 2048)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 1040))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 40))] + placeholder2[((((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 16384) + ((((int)threadIdx.x) >> 4) * 4096)) + (ax1_inner * 2048)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 1536))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 48))] + placeholder2[(((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) >> 2) * 16384) + ((((int)threadIdx.x) >> 4) * 4096)) + (ax1_inner * 2048)) + (((((int)threadIdx.x) & 15) >> 2) * 128)) + ((((int)blockIdx.x) & 3) * 32)) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 1552))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 56))] + placeholder2[((((((((int)blockIdx.x) & 3) * 32) + ((((int)threadIdx.x) & 3) * 4)) + ax3_inner) + 16))]), 0.000000e+00f);
    }
  }
}


