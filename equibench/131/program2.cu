
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
  __shared__ float PaddedInput_shared[168];
  __shared__ float placeholder_shared[1536];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 56; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 168) {
      PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((int)threadIdx.x) / 12) * 4704) + (((int)blockIdx.x) * 672)) + (rc_outer_outer * 12)) + (((int)threadIdx.x) % 12)))];
    }
    if (((int)threadIdx.x) < 192) {
      placeholder_shared[((((int)threadIdx.x) * 8))] = placeholder1[(((rc_outer_outer * 1536) + (((int)threadIdx.x) * 8)))];
    }
    if (((int)threadIdx.x) < 192) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 1))] = placeholder1[((((rc_outer_outer * 1536) + (((int)threadIdx.x) * 8)) + 1))];
    }
    if (((int)threadIdx.x) < 192) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 2))] = placeholder1[((((rc_outer_outer * 1536) + (((int)threadIdx.x) * 8)) + 2))];
    }
    if (((int)threadIdx.x) < 192) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 3))] = placeholder1[((((rc_outer_outer * 1536) + (((int)threadIdx.x) * 8)) + 3))];
    }
    if (((int)threadIdx.x) < 192) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 4))] = placeholder1[((((rc_outer_outer * 1536) + (((int)threadIdx.x) * 8)) + 4))];
    }
    if (((int)threadIdx.x) < 192) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 5))] = placeholder1[((((rc_outer_outer * 1536) + (((int)threadIdx.x) * 8)) + 5))];
    }
    if (((int)threadIdx.x) < 192) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 6))] = placeholder1[((((rc_outer_outer * 1536) + (((int)threadIdx.x) * 8)) + 6))];
    }
    if (((int)threadIdx.x) < 192) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 7))] = placeholder1[((((rc_outer_outer * 1536) + (((int)threadIdx.x) * 8)) + 7))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 6) * 12))] * placeholder_shared[(((((int)threadIdx.x) & 63) * 2))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 128))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 256))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 384))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 6) * 12))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 1))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 129))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 257))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 385))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 512))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 640))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 768))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 896))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 513))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 641))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 769))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 897))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 1024))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 1152))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 1280))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 1408))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 1025))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 1153))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 1281))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 6) * 12) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 63) * 2) + 1409))]));
  }
  for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
    T_relu[((((((((int)threadIdx.x) >> 6) * 896) + (((int)blockIdx.x) * 128)) + ((((int)threadIdx.x) & 63) * 2)) + ax3_inner))] = max((Conv2dOutput[(ax3_inner)] + placeholder2[((((((int)threadIdx.x) & 63) * 2) + ax3_inner))]), 0.000000e+00f);
  }
}


