
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
  float Conv2dOutput[4];
  __shared__ float PaddedInput_shared[1568];
  __shared__ float placeholder_shared[2560];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 21; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 784) {
      PaddedInput_shared[((((int)threadIdx.x) * 2))] = placeholder[((((((((int)blockIdx.x) >> 1) * 32928) + ((((int)threadIdx.x) >> 4) * 672)) + (rc_outer_outer * 32)) + ((((int)threadIdx.x) & 15) * 2)))];
    }
    if (((int)threadIdx.x) < 784) {
      PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder[((((((((int)blockIdx.x) >> 1) * 32928) + ((((((int)threadIdx.x) * 2) + 1) >> 5) * 672)) + (rc_outer_outer * 32)) + (((((int)threadIdx.x) * 2) + 1) & 31)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 5120) + ((((int)threadIdx.x) / 80) * 160)) + ((((int)blockIdx.x) & 1) * 80)) + (((int)threadIdx.x) % 80)))];
    placeholder_shared[((((int)threadIdx.x) + 980))] = placeholder1[(((((rc_outer_outer * 5120) + (((((int)threadIdx.x) + 980) / 80) * 160)) + ((((int)blockIdx.x) & 1) * 80)) + ((((int)threadIdx.x) + 20) % 80)))];
    if (((int)threadIdx.x) < 600) {
      placeholder_shared[((((int)threadIdx.x) + 1960))] = placeholder1[(((((rc_outer_outer * 5120) + (((((int)threadIdx.x) + 1960) / 80) * 160)) + ((((int)blockIdx.x) & 1) * 80)) + ((((int)threadIdx.x) + 40) % 80)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) / 20) * 32))] * placeholder_shared[(((((int)threadIdx.x) % 20) * 4))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) / 20) * 32))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 80))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 81))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 160))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 161))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 240))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 241))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 320))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 321))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 400))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 401))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 6))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 480))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 6))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 481))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 7))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 560))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 7))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 561))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 8))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 640))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 8))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 641))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 9))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 720))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 9))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 721))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 10))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 800))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 10))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 801))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 11))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 880))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 11))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 881))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 12))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 960))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 12))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 961))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 13))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1040))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 13))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1041))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 14))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1120))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 14))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1121))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 15))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1200))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 15))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1201))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 16))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1280))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 16))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1281))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 17))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1360))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 17))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1361))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 18))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1440))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 18))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1441))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 19))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1520))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 19))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1521))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 20))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1600))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 20))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1601))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 21))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1680))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 21))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1681))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 22))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1760))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 22))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1761))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 23))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1840))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 23))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1841))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 24))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1920))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 24))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1921))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 25))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2000))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 25))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2001))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 26))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2080))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 26))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2081))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 27))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2160))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 27))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2161))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 28))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2240))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 28))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2241))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 29))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2320))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 29))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2321))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 30))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2400))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 30))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2401))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 31))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2480))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 31))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2481))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) / 20) * 32))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) / 20) * 32))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 3))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 82))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 83))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 162))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 2))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 163))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 242))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 3))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 243))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 322))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 4))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 323))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 402))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 5))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 403))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 6))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 482))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 6))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 483))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 7))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 562))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 7))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 563))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 8))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 642))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 8))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 643))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 9))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 722))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 9))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 723))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 10))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 802))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 10))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 803))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 11))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 882))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 11))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 883))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 12))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 962))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 12))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 963))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 13))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1042))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 13))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1043))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 14))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1122))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 14))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1123))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 15))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1202))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 15))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1203))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 16))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1282))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 16))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1283))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 17))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1362))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 17))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1363))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 18))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1442))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 18))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1443))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 19))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1522))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 19))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1523))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 20))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1602))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 20))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1603))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 21))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1682))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 21))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1683))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 22))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1762))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 22))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1763))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 23))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1842))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 23))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1843))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 24))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1922))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 24))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 1923))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 25))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2002))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 25))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2003))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 26))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2082))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 26))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2083))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 27))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2162))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 27))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2163))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 28))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2242))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 28))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2243))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 29))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2322))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 29))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2323))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 30))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2402))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 30))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2403))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 31))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2482))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) / 20) * 32) + 31))] * placeholder_shared[((((((int)threadIdx.x) % 20) * 4) + 2483))]));
  }
  for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
    T_add[(((((((((int)blockIdx.x) >> 1) * 7840) + ((((int)threadIdx.x) / 20) * 160)) + ((((int)blockIdx.x) & 1) * 80)) + ((((int)threadIdx.x) % 20) * 4)) + ax3_inner))] = (Conv2dOutput[(ax3_inner)] + placeholder2[(((((((int)blockIdx.x) & 1) * 80) + ((((int)threadIdx.x) % 20) * 4)) + ax3_inner))]);
  }
}


