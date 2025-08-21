
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
  float DepthwiseConv2d[14];
  __shared__ float PaddedInput_shared[1344];
  __shared__ float placeholder_shared[24];
  DepthwiseConv2d[(0)] = 0.000000e+00f;
  DepthwiseConv2d[(1)] = 0.000000e+00f;
  DepthwiseConv2d[(2)] = 0.000000e+00f;
  DepthwiseConv2d[(3)] = 0.000000e+00f;
  DepthwiseConv2d[(4)] = 0.000000e+00f;
  DepthwiseConv2d[(5)] = 0.000000e+00f;
  DepthwiseConv2d[(6)] = 0.000000e+00f;
  DepthwiseConv2d[(7)] = 0.000000e+00f;
  DepthwiseConv2d[(8)] = 0.000000e+00f;
  DepthwiseConv2d[(9)] = 0.000000e+00f;
  DepthwiseConv2d[(10)] = 0.000000e+00f;
  DepthwiseConv2d[(11)] = 0.000000e+00f;
  DepthwiseConv2d[(12)] = 0.000000e+00f;
  DepthwiseConv2d[(13)] = 0.000000e+00f;
  for (int di_outer_outer = 0; di_outer_outer < 3; ++di_outer_outer) {
    for (int dj_outer_outer = 0; dj_outer_outer < 3; ++dj_outer_outer) {
      __syncthreads();
      PaddedInput_shared[((((int)threadIdx.x) * 14))] = (((((1 <= ((((((int)threadIdx.x) % 12) * 14) / 24) + di_outer_outer)) && (((((((int)threadIdx.x) % 12) * 14) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[(((((((((((int)threadIdx.x) * 14) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + ((((int)threadIdx.x) * 14) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 1))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 1) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 1) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 1) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 1) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 2))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 2) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 2) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 2) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 2) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 3))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 3) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 3) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 3) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 3) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 4))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 4) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 4) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 4) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 4) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 5))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 5) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 5) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 5) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 5) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 6))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 6) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 6) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 6) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 6) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 7))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 7) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 7) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 7) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 7) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 8))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 8) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 8) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 8) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 8) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 9))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 9) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 9) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 9) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 9) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 10))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 10) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 10) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 10) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 10) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 11))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 11) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 11) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 11) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 11) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 12))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 12) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 12) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 12) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 12) % 24)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 14) + 13))] = (((((1 <= (((((((int)threadIdx.x) * 14) + 13) % 168) / 24) + di_outer_outer)) && ((((((((int)threadIdx.x) * 14) + 13) % 168) / 24) + di_outer_outer) < 8)) && (1 <= ((((int)blockIdx.x) / 40) + dj_outer_outer))) && (((((int)blockIdx.x) / 40) + dj_outer_outer) < 8)) ? placeholder[((((((((((((int)threadIdx.x) * 14) + 13) / 24) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 960)) + (((int)blockIdx.x) * 24)) + (((((int)threadIdx.x) * 14) + 13) % 24)) - 7680))] : 0.000000e+00f);
      if (((int)threadIdx.x) < 12) {
        placeholder_shared[((((int)threadIdx.x) * 2))] = placeholder1[(((((di_outer_outer * 2880) + (dj_outer_outer * 960)) + ((((int)blockIdx.x) % 40) * 24)) + (((int)threadIdx.x) * 2)))];
      }
      if (((int)threadIdx.x) < 12) {
        placeholder_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder1[((((((di_outer_outer * 2880) + (dj_outer_outer * 960)) + ((((int)blockIdx.x) % 40) * 24)) + (((int)threadIdx.x) * 2)) + 1))];
      }
      __syncthreads();
      DepthwiseConv2d[(0)] = (DepthwiseConv2d[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(1)] = (DepthwiseConv2d[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 24))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(2)] = (DepthwiseConv2d[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 48))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(3)] = (DepthwiseConv2d[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 72))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(4)] = (DepthwiseConv2d[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 96))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(5)] = (DepthwiseConv2d[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 120))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(6)] = (DepthwiseConv2d[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 144))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(7)] = (DepthwiseConv2d[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 168))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(8)] = (DepthwiseConv2d[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 192))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(9)] = (DepthwiseConv2d[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 216))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(10)] = (DepthwiseConv2d[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 240))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(11)] = (DepthwiseConv2d[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 264))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(12)] = (DepthwiseConv2d[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 288))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
      DepthwiseConv2d[(13)] = (DepthwiseConv2d[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 24) * 336) + (((int)threadIdx.x) % 24)) + 312))] * placeholder_shared[((((int)threadIdx.x) % 24))]));
    }
  }
  for (int i0_inner = 0; i0_inner < 2; ++i0_inner) {
    for (int i1_inner = 0; i1_inner < 7; ++i1_inner) {
      compute[(((((((((int)threadIdx.x) / 24) * 94080) + (i0_inner * 47040)) + (i1_inner * 6720)) + (((int)blockIdx.x) * 24)) + (((int)threadIdx.x) % 24)))] = max(min((DepthwiseConv2d[(((i0_inner * 7) + i1_inner))] + placeholder2[((((((int)blockIdx.x) % 40) * 24) + (((int)threadIdx.x) % 24)))]), 6.000000e+00f), 0.000000e+00f);
    }
  }
}


