
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2) {
  float T_dense[8];
  __shared__ float placeholder_d_shared[128];
  __shared__ float placeholder_shared[640];
  T_dense[(0)] = 0.000000e+00f;
  T_dense[(4)] = 0.000000e+00f;
  T_dense[(1)] = 0.000000e+00f;
  T_dense[(5)] = 0.000000e+00f;
  T_dense[(2)] = 0.000000e+00f;
  T_dense[(6)] = 0.000000e+00f;
  T_dense[(3)] = 0.000000e+00f;
  T_dense[(7)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 128; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[((((int)threadIdx.x) * 64))] = placeholder[(((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 1))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 1))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 2))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 3))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 3))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 4))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 5))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 5))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 6))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 7))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 7))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 8))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 8))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 9))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 9))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 10))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 10))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 11))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 11))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 12))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 12))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 13))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 13))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 14))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 14))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 15))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 15))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 16))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2048))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 17))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2049))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 18))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2050))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 19))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2051))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 20))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2052))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 21))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2053))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 22))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2054))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 23))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2055))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 24))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2056))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 25))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2057))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 26))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2058))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 27))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2059))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 28))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2060))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 29))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2061))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 30))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2062))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 31))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 2063))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 32))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4096))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 33))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4097))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 34))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4098))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 35))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4099))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 36))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4100))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 37))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4101))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 38))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4102))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 39))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4103))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 40))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4104))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 41))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4105))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 42))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4106))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 43))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4107))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 44))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4108))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 45))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4109))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 46))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4110))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 47))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 4111))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 48))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6144))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 49))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6145))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 50))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6146))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 51))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6147))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 52))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6148))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 53))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6149))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 54))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6150))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 55))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6151))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 56))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6152))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 57))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6153))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 58))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6154))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 59))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6155))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 60))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6156))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 61))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6157))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 62))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6158))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 64) + 63))] = placeholder[((((((int)threadIdx.x) * 8192) + (k_outer_outer * 16)) + 6159))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((((int)blockIdx.x) * 81920) + ((((int)threadIdx.x) >> 4) * 2048)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)))];
    placeholder_shared[((((int)threadIdx.x) + 40))] = placeholder1[(((((((int)blockIdx.x) * 81920) + (((((int)threadIdx.x) + 40) >> 4) * 2048)) + (k_outer_outer * 16)) + ((((int)threadIdx.x) + 8) & 15)))];
    placeholder_shared[((((int)threadIdx.x) + 80))] = placeholder1[((((((((int)blockIdx.x) * 81920) + ((((int)threadIdx.x) >> 4) * 2048)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 10240))];
    placeholder_shared[((((int)threadIdx.x) + 120))] = placeholder1[(((((((int)blockIdx.x) * 81920) + (((((int)threadIdx.x) + 120) >> 4) * 2048)) + (k_outer_outer * 16)) + ((((int)threadIdx.x) + 8) & 15)))];
    placeholder_shared[((((int)threadIdx.x) + 160))] = placeholder1[((((((((int)blockIdx.x) * 81920) + ((((int)threadIdx.x) >> 4) * 2048)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 20480))];
    placeholder_shared[((((int)threadIdx.x) + 200))] = placeholder1[(((((((int)blockIdx.x) * 81920) + (((((int)threadIdx.x) + 200) >> 4) * 2048)) + (k_outer_outer * 16)) + ((((int)threadIdx.x) + 8) & 15)))];
    placeholder_shared[((((int)threadIdx.x) + 240))] = placeholder1[((((((((int)blockIdx.x) * 81920) + ((((int)threadIdx.x) >> 4) * 2048)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 30720))];
    placeholder_shared[((((int)threadIdx.x) + 280))] = placeholder1[(((((((int)blockIdx.x) * 81920) + (((((int)threadIdx.x) + 280) >> 4) * 2048)) + (k_outer_outer * 16)) + ((((int)threadIdx.x) + 8) & 15)))];
    placeholder_shared[((((int)threadIdx.x) + 320))] = placeholder1[((((((((int)blockIdx.x) * 81920) + ((((int)threadIdx.x) >> 4) * 2048)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 40960))];
    placeholder_shared[((((int)threadIdx.x) + 360))] = placeholder1[(((((((int)blockIdx.x) * 81920) + (((((int)threadIdx.x) + 360) >> 4) * 2048)) + (k_outer_outer * 16)) + ((((int)threadIdx.x) + 8) & 15)))];
    placeholder_shared[((((int)threadIdx.x) + 400))] = placeholder1[((((((((int)blockIdx.x) * 81920) + ((((int)threadIdx.x) >> 4) * 2048)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 51200))];
    placeholder_shared[((((int)threadIdx.x) + 440))] = placeholder1[(((((((int)blockIdx.x) * 81920) + (((((int)threadIdx.x) + 440) >> 4) * 2048)) + (k_outer_outer * 16)) + ((((int)threadIdx.x) + 8) & 15)))];
    placeholder_shared[((((int)threadIdx.x) + 480))] = placeholder1[((((((((int)blockIdx.x) * 81920) + ((((int)threadIdx.x) >> 4) * 2048)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 61440))];
    placeholder_shared[((((int)threadIdx.x) + 520))] = placeholder1[(((((((int)blockIdx.x) * 81920) + (((((int)threadIdx.x) + 520) >> 4) * 2048)) + (k_outer_outer * 16)) + ((((int)threadIdx.x) + 8) & 15)))];
    placeholder_shared[((((int)threadIdx.x) + 560))] = placeholder1[((((((((int)blockIdx.x) * 81920) + ((((int)threadIdx.x) >> 4) * 2048)) + (k_outer_outer * 16)) + (((int)threadIdx.x) & 15)) + 71680))];
    placeholder_shared[((((int)threadIdx.x) + 600))] = placeholder1[(((((((int)blockIdx.x) * 81920) + (((((int)threadIdx.x) + 600) >> 4) * 2048)) + (k_outer_outer * 16)) + ((((int)threadIdx.x) + 8) & 15)))];
    __syncthreads();
    for (int k_outer_inner = 0; k_outer_inner < 8; ++k_outer_inner) {
      T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)))] * placeholder_shared[((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)))]));
      T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 320))]));
      T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 16))]));
      T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 336))]));
      T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)) + 16))] * placeholder_shared[((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)))]));
      T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)) + 16))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 320))]));
      T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)) + 16))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 16))]));
      T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)) + 16))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 336))]));
      T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)) + 1))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 1))]));
      T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)) + 1))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 321))]));
      T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)) + 1))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 17))]));
      T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)) + 1))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 337))]));
      T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)) + 17))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 1))]));
      T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)) + 17))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 321))]));
      T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)) + 17))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 17))]));
      T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(((((((int)threadIdx.x) / 10) * 32) + (k_outer_inner * 2)) + 17))] * placeholder_shared[(((((((int)threadIdx.x) % 10) * 32) + (k_outer_inner * 2)) + 337))]));
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
      T_add[(((((((((int)threadIdx.x) / 10) * 2000) + (ax0_inner * 1000)) + (((int)blockIdx.x) * 40)) + ((((int)threadIdx.x) % 10) * 2)) + ax1_inner))] = (T_dense[(((ax0_inner * 2) + ax1_inner))] + placeholder2[((((((int)blockIdx.x) * 40) + ((((int)threadIdx.x) % 10) * 2)) + ax1_inner))]);
      T_add[((((((((((int)threadIdx.x) / 10) * 2000) + (ax0_inner * 1000)) + (((int)blockIdx.x) * 40)) + ((((int)threadIdx.x) % 10) * 2)) + ax1_inner) + 20))] = (T_dense[((((ax0_inner * 2) + ax1_inner) + 4))] + placeholder2[(((((((int)blockIdx.x) * 40) + ((((int)threadIdx.x) % 10) * 2)) + ax1_inner) + 20))]);
    }
  }
}


