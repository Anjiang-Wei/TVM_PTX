
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
  float Conv2dOutput[2];
  __shared__ float PaddedInput_shared[28];
  __shared__ float placeholder_shared[16];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 448; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[((((int)threadIdx.x) * 28))] = placeholder[((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 1))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 2))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 6272))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 3))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 6273))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 4))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 12544))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 5))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 12545))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 6))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 18816))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 7))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 18817))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 8))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 25088))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 9))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 25089))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 10))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 31360))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 11))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 31361))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 12))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 37632))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 13))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 37633))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 14))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 43904))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 15))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 43905))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 16))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 50176))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 17))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 50177))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 18))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 56448))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 19))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 56449))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 20))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 62720))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 21))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 62721))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 22))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 68992))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 23))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 68993))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 24))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 75264))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 25))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 75265))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 26))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 81536))];
    }
    if (((int)threadIdx.x) < 1) {
      PaddedInput_shared[(((((int)threadIdx.x) * 28) + 27))] = placeholder[(((((((int)threadIdx.x) * 87808) + ((((int)blockIdx.x) >> 4) * 896)) + (rc_outer_outer * 2)) + 81537))];
    }
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 256) + ((((int)threadIdx.x) >> 3) * 128)) + ((((int)blockIdx.x) & 15) * 8)) + (((int)threadIdx.x) & 7)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 2) * 2))] * placeholder_shared[(((((int)threadIdx.x) & 3) * 2))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 2) * 2))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 2) + 1))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 2) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 2) + 8))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 2) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 3) * 2) + 9))]));
  }
  for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
    T_relu[((((((((int)threadIdx.x) >> 2) * 896) + (((int)blockIdx.x) * 8)) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))] = max((Conv2dOutput[(ax3_inner)] + placeholder2[(((((((int)blockIdx.x) & 15) * 8) + ((((int)threadIdx.x) & 3) * 2)) + ax3_inner))]), 0.000000e+00f);
  }
}


