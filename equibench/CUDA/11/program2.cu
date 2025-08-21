
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute, float* __restrict__ placeholder2) {
  float Conv2dOutput[24];
  __shared__ float PaddedInput_shared[960];
  __shared__ float placeholder_shared[3072];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  ((float4*)(PaddedInput_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(placeholder + ((((((((int)blockIdx.x) / 20) * 9600) + ((((int)threadIdx.x) / 24) * 960)) + (((((int)blockIdx.x) % 20) >> 1) * 96)) + ((((int)threadIdx.x) % 24) * 4)))))[0];
  ((float4*)(PaddedInput_shared + (((((int)threadIdx.x) * 4) + 480))))[0] = ((float4*)(placeholder + (((((((((int)blockIdx.x) / 20) * 9600) + ((((int)threadIdx.x) / 24) * 960)) + (((((int)blockIdx.x) % 20) >> 1) * 96)) + ((((int)threadIdx.x) % 24) * 4)) + 4800))))[0];
  placeholder_shared[((((int)threadIdx.x) * 2))] = placeholder1[(((((((int)threadIdx.x) / 48) * 192) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) % 48) * 2)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 1) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 1) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 240))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 240) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 48) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 241))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 241) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 49) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 480))] = placeholder1[((((((((int)threadIdx.x) / 48) * 192) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) % 48) * 2)) + 960))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 481))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 481) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 1) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 720))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 720) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 48) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 721))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 721) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 49) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 960))] = placeholder1[((((((((int)threadIdx.x) / 48) * 192) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) % 48) * 2)) + 1920))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 961))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 961) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 1) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 1200))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 1200) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 48) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 1201))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 1201) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 49) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 1440))] = placeholder1[((((((((int)threadIdx.x) / 48) * 192) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) % 48) * 2)) + 2880))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 1441))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 1441) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 1) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 1680))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 1680) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 48) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 1681))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 1681) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 49) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 1920))] = placeholder1[((((((((int)threadIdx.x) / 48) * 192) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) % 48) * 2)) + 3840))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 1921))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 1921) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 1) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 2160))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 2160) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 48) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 2161))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 2161) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 49) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 2400))] = placeholder1[((((((((int)threadIdx.x) / 48) * 192) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) % 48) * 2)) + 4800))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 2401))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 2401) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 1) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 2640))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 2640) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 48) % 96)))];
  placeholder_shared[(((((int)threadIdx.x) * 2) + 2641))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 2641) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 49) % 96)))];
  if (((int)threadIdx.x) < 96) {
    placeholder_shared[(((((int)threadIdx.x) * 2) + 2880))] = placeholder1[((((((((int)threadIdx.x) / 48) * 192) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) % 48) * 2)) + 5760))];
  }
  if (((int)threadIdx.x) < 96) {
    placeholder_shared[(((((int)threadIdx.x) * 2) + 2881))] = placeholder1[(((((((((int)threadIdx.x) * 2) + 2881) / 96) * 192) + ((((int)blockIdx.x) & 1) * 96)) + (((((int)threadIdx.x) * 2) + 1) % 96)))];
  }
  __syncthreads();
  for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
    for (int rc_inner = 0; rc_inner < 4; ++rc_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 12))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 24))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 36))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 48))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 60))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 72))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 84))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 1))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 13))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 25))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 37))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 49))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 61))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 73))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 85))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 2))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 14))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 26))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 38))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 50))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 62))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 74))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 2) * 32) + (rc_outer_inner * 4)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 384) + (rc_inner * 96)) + ((((int)threadIdx.x) & 3) * 3)) + 86))]));
    }
  }
  for (int i3_inner = 0; i3_inner < 3; ++i3_inner) {
    compute[(((((((((((int)blockIdx.x) / 20) * 57600) + ((((int)threadIdx.x) / 12) * 5760)) + (((((int)blockIdx.x) % 20) >> 1) * 576)) + (((((int)threadIdx.x) % 12) >> 2) * 192)) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner))] = max(min((Conv2dOutput[(i3_inner)] + placeholder2[(((((((int)blockIdx.x) & 1) * 96) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner))]), 6.000000e+00f), 0.000000e+00f);
    compute[((((((((((((int)blockIdx.x) / 20) * 57600) + ((((int)threadIdx.x) / 12) * 5760)) + (((((int)blockIdx.x) % 20) >> 1) * 576)) + (((((int)threadIdx.x) % 12) >> 2) * 192)) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 12))] = max(min((Conv2dOutput[((i3_inner + 3))] + placeholder2[((((((((int)blockIdx.x) & 1) * 96) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 12))]), 6.000000e+00f), 0.000000e+00f);
    compute[((((((((((((int)blockIdx.x) / 20) * 57600) + ((((int)threadIdx.x) / 12) * 5760)) + (((((int)blockIdx.x) % 20) >> 1) * 576)) + (((((int)threadIdx.x) % 12) >> 2) * 192)) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 24))] = max(min((Conv2dOutput[((i3_inner + 6))] + placeholder2[((((((((int)blockIdx.x) & 1) * 96) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 24))]), 6.000000e+00f), 0.000000e+00f);
    compute[((((((((((((int)blockIdx.x) / 20) * 57600) + ((((int)threadIdx.x) / 12) * 5760)) + (((((int)blockIdx.x) % 20) >> 1) * 576)) + (((((int)threadIdx.x) % 12) >> 2) * 192)) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 36))] = max(min((Conv2dOutput[((i3_inner + 9))] + placeholder2[((((((((int)blockIdx.x) & 1) * 96) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 36))]), 6.000000e+00f), 0.000000e+00f);
    compute[((((((((((((int)blockIdx.x) / 20) * 57600) + ((((int)threadIdx.x) / 12) * 5760)) + (((((int)blockIdx.x) % 20) >> 1) * 576)) + (((((int)threadIdx.x) % 12) >> 2) * 192)) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 48))] = max(min((Conv2dOutput[((i3_inner + 12))] + placeholder2[((((((((int)blockIdx.x) & 1) * 96) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 48))]), 6.000000e+00f), 0.000000e+00f);
    compute[((((((((((((int)blockIdx.x) / 20) * 57600) + ((((int)threadIdx.x) / 12) * 5760)) + (((((int)blockIdx.x) % 20) >> 1) * 576)) + (((((int)threadIdx.x) % 12) >> 2) * 192)) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 60))] = max(min((Conv2dOutput[((i3_inner + 15))] + placeholder2[((((((((int)blockIdx.x) & 1) * 96) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 60))]), 6.000000e+00f), 0.000000e+00f);
    compute[((((((((((((int)blockIdx.x) / 20) * 57600) + ((((int)threadIdx.x) / 12) * 5760)) + (((((int)blockIdx.x) % 20) >> 1) * 576)) + (((((int)threadIdx.x) % 12) >> 2) * 192)) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 72))] = max(min((Conv2dOutput[((i3_inner + 18))] + placeholder2[((((((((int)blockIdx.x) & 1) * 96) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 72))]), 6.000000e+00f), 0.000000e+00f);
    compute[((((((((((((int)blockIdx.x) / 20) * 57600) + ((((int)threadIdx.x) / 12) * 5760)) + (((((int)blockIdx.x) % 20) >> 1) * 576)) + (((((int)threadIdx.x) % 12) >> 2) * 192)) + ((((int)blockIdx.x) & 1) * 96)) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 84))] = max(min((Conv2dOutput[((i3_inner + 21))] + placeholder2[((((((((int)blockIdx.x) & 1) * 96) + ((((int)threadIdx.x) & 3) * 3)) + i3_inner) + 84))]), 6.000000e+00f), 0.000000e+00f);
  }
}


