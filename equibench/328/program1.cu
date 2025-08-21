
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_multiply, float* __restrict__ DepthwiseConv2d, float* __restrict__ placeholder) {
  T_multiply[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] = ((DepthwiseConv2d[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 240))]) * (max(min(((DepthwiseConv2d[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 240))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ DepthwiseConv2d) {
  float DepthwiseConv2d_local[2];
  __shared__ float PaddedInput_shared[729];
  __shared__ float placeholder_shared[1];
  DepthwiseConv2d_local[(0)] = 0.000000e+00f;
  DepthwiseConv2d_local[(1)] = 0.000000e+00f;
  for (int di_outer_outer = 0; di_outer_outer < 3; ++di_outer_outer) {
    for (int dj_outer_outer = 0; dj_outer_outer < 3; ++dj_outer_outer) {
      __syncthreads();
      PaddedInput_shared[((((int)threadIdx.x) * 6))] = (((1 <= (((((int)threadIdx.x) * 6) / 27) + di_outer_outer)) && (1 <= (dj_outer_outer + ((((int)threadIdx.x) * 6) % 27)))) ? placeholder[(((((((((((int)threadIdx.x) * 6) / 27) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 240)) + (((((int)threadIdx.x) * 6) % 27) * 240)) + ((int)blockIdx.x)) - 6960))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 6) + 1))] = (((1 <= ((((((int)threadIdx.x) * 6) + 1) / 27) + di_outer_outer)) && (1 <= (dj_outer_outer + (((((int)threadIdx.x) * 6) + 1) % 27)))) ? placeholder[((((((((((((int)threadIdx.x) * 6) + 1) / 27) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 240)) + ((((((int)threadIdx.x) * 6) + 1) % 27) * 240)) + ((int)blockIdx.x)) - 6960))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 6) + 2))] = (((1 <= ((((((int)threadIdx.x) * 6) + 2) / 27) + di_outer_outer)) && (1 <= (dj_outer_outer + (((((int)threadIdx.x) * 6) + 2) % 27)))) ? placeholder[((((((((((((int)threadIdx.x) * 6) + 2) / 27) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 240)) + ((((((int)threadIdx.x) * 6) + 2) % 27) * 240)) + ((int)blockIdx.x)) - 6960))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 6) + 3))] = (((1 <= ((((((int)threadIdx.x) * 6) + 3) / 27) + di_outer_outer)) && (1 <= (dj_outer_outer + (((((int)threadIdx.x) * 6) + 3) % 27)))) ? placeholder[((((((((((((int)threadIdx.x) * 6) + 3) / 27) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 240)) + ((((((int)threadIdx.x) * 6) + 3) % 27) * 240)) + ((int)blockIdx.x)) - 6960))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 6) + 4))] = (((1 <= ((((((int)threadIdx.x) * 6) + 4) / 27) + di_outer_outer)) && (1 <= (dj_outer_outer + (((((int)threadIdx.x) * 6) + 4) % 27)))) ? placeholder[((((((((((((int)threadIdx.x) * 6) + 4) / 27) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 240)) + ((((((int)threadIdx.x) * 6) + 4) % 27) * 240)) + ((int)blockIdx.x)) - 6960))] : 0.000000e+00f);
      PaddedInput_shared[(((((int)threadIdx.x) * 6) + 5))] = (((1 <= ((((((int)threadIdx.x) * 6) + 5) / 27) + di_outer_outer)) && (1 <= (dj_outer_outer + (((((int)threadIdx.x) * 6) + 5) % 27)))) ? placeholder[((((((((((((int)threadIdx.x) * 6) + 5) / 27) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 240)) + ((((((int)threadIdx.x) * 6) + 5) % 27) * 240)) + ((int)blockIdx.x)) - 6960))] : 0.000000e+00f);
      if (((int)threadIdx.x) < 24) {
        PaddedInput_shared[(((((int)threadIdx.x) * 6) + 588))] = ((1 <= (dj_outer_outer + (((((int)threadIdx.x) * 6) + 21) % 27))) ? placeholder[((((((((((((int)threadIdx.x) * 6) + 588) / 27) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 240)) + ((((((int)threadIdx.x) * 6) + 21) % 27) * 240)) + ((int)blockIdx.x)) - 6960))] : 0.000000e+00f);
      }
      if (((int)threadIdx.x) < 24) {
        PaddedInput_shared[(((((int)threadIdx.x) * 6) + 589))] = ((1 <= (dj_outer_outer + (((((int)threadIdx.x) * 6) + 22) % 27))) ? placeholder[((((((((((((int)threadIdx.x) * 6) + 589) / 27) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 240)) + ((((((int)threadIdx.x) * 6) + 22) % 27) * 240)) + ((int)blockIdx.x)) - 6960))] : 0.000000e+00f);
      }
      if (((int)threadIdx.x) < 24) {
        PaddedInput_shared[(((((int)threadIdx.x) * 6) + 590))] = ((1 <= (dj_outer_outer + (((((int)threadIdx.x) * 6) + 23) % 27))) ? placeholder[((((((((((((int)threadIdx.x) * 6) + 590) / 27) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 240)) + ((((((int)threadIdx.x) * 6) + 23) % 27) * 240)) + ((int)blockIdx.x)) - 6960))] : 0.000000e+00f);
      }
      if (((int)threadIdx.x) < 23) {
        PaddedInput_shared[(((((int)threadIdx.x) * 6) + 591))] = ((1 <= (dj_outer_outer + (((((int)threadIdx.x) * 6) + 24) % 27))) ? placeholder[((((((((((((int)threadIdx.x) * 6) + 591) / 27) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 240)) + ((((((int)threadIdx.x) * 6) + 24) % 27) * 240)) + ((int)blockIdx.x)) - 6960))] : 0.000000e+00f);
      }
      if (((int)threadIdx.x) < 23) {
        PaddedInput_shared[(((((int)threadIdx.x) * 6) + 592))] = ((1 <= (dj_outer_outer + (((((int)threadIdx.x) * 6) + 25) % 27))) ? placeholder[((((((((((((int)threadIdx.x) * 6) + 592) / 27) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 240)) + ((((((int)threadIdx.x) * 6) + 25) % 27) * 240)) + ((int)blockIdx.x)) - 6960))] : 0.000000e+00f);
      }
      if (((int)threadIdx.x) < 23) {
        PaddedInput_shared[(((((int)threadIdx.x) * 6) + 593))] = ((1 <= (dj_outer_outer + (((((int)threadIdx.x) * 6) + 26) % 27))) ? placeholder[((((((((((((int)threadIdx.x) * 6) + 593) / 27) * 6720) + (di_outer_outer * 6720)) + (dj_outer_outer * 240)) + ((((((int)threadIdx.x) * 6) + 26) % 27) * 240)) + ((int)blockIdx.x)) - 6960))] : 0.000000e+00f);
      }
      if (((int)threadIdx.x) < 1) {
        placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((((int)threadIdx.x) * 720) + (di_outer_outer * 720)) + (dj_outer_outer * 240)) + ((int)blockIdx.x)))];
      }
      __syncthreads();
      DepthwiseConv2d_local[(0)] = (DepthwiseConv2d_local[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) / 7) * 54) + ((((int)threadIdx.x) % 7) * 4)))] * placeholder_shared[(0)]));
      DepthwiseConv2d_local[(1)] = (DepthwiseConv2d_local[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) / 7) * 54) + ((((int)threadIdx.x) % 7) * 4)) + 2))] * placeholder_shared[(0)]));
    }
  }
  for (int j_inner = 0; j_inner < 2; ++j_inner) {
    DepthwiseConv2d[((((((int)threadIdx.x) * 480) + (j_inner * 240)) + ((int)blockIdx.x)))] = DepthwiseConv2d_local[(j_inner)];
  }
}


