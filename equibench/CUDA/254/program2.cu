
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
  float Conv2dOutput[1460];
  __shared__ float PaddedInput_shared[4672];
  __shared__ float placeholder_shared[2560];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 73; ++yy_outer_inner_init) {
    Conv2dOutput[((yy_outer_inner_init * 20))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 6))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 7))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 10))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 11))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 12))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 13))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 14))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 15))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 16))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 17))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 18))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 19))] = 0.000000e+00f;
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 2336; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + ((int)threadIdx.x)))] = placeholder[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + ((int)threadIdx.x)) >> 6) * 4672) + ((((int)blockIdx.x) >> 1) * 64)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + ((int)threadIdx.x)) & 63)))];
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 1280; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
    placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 2) + ((int)threadIdx.x)))] = placeholder1[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 2) + ((int)threadIdx.x)) / 40) * 80) + ((((int)blockIdx.x) & 1) * 40)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 2) + ((int)threadIdx.x)) % 40)))];
  }
  __syncthreads();
  for (int rc_outer_inner = 0; rc_outer_inner < 32; ++rc_outer_inner) {
    for (int yy_outer_inner = 0; yy_outer_inner < 73; ++yy_outer_inner) {
      Conv2dOutput[((yy_outer_inner * 20))] = (Conv2dOutput[((yy_outer_inner * 20))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[(((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 1))] = (Conv2dOutput[(((yy_outer_inner * 20) + 1))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 1))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 2))] = (Conv2dOutput[(((yy_outer_inner * 20) + 2))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 2))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 3))] = (Conv2dOutput[(((yy_outer_inner * 20) + 3))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 3))]));
      Conv2dOutput[((yy_outer_inner * 20))] = (Conv2dOutput[((yy_outer_inner * 20))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 40))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 1))] = (Conv2dOutput[(((yy_outer_inner * 20) + 1))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 41))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 2))] = (Conv2dOutput[(((yy_outer_inner * 20) + 2))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 42))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 3))] = (Conv2dOutput[(((yy_outer_inner * 20) + 3))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 43))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 4))] = (Conv2dOutput[(((yy_outer_inner * 20) + 4))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 4))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 5))] = (Conv2dOutput[(((yy_outer_inner * 20) + 5))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 5))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 6))] = (Conv2dOutput[(((yy_outer_inner * 20) + 6))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 6))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 7))] = (Conv2dOutput[(((yy_outer_inner * 20) + 7))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 7))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 4))] = (Conv2dOutput[(((yy_outer_inner * 20) + 4))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 44))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 5))] = (Conv2dOutput[(((yy_outer_inner * 20) + 5))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 45))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 6))] = (Conv2dOutput[(((yy_outer_inner * 20) + 6))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 46))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 7))] = (Conv2dOutput[(((yy_outer_inner * 20) + 7))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 47))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 8))] = (Conv2dOutput[(((yy_outer_inner * 20) + 8))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 8))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 9))] = (Conv2dOutput[(((yy_outer_inner * 20) + 9))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 9))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 10))] = (Conv2dOutput[(((yy_outer_inner * 20) + 10))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 10))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 11))] = (Conv2dOutput[(((yy_outer_inner * 20) + 11))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 11))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 8))] = (Conv2dOutput[(((yy_outer_inner * 20) + 8))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 48))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 9))] = (Conv2dOutput[(((yy_outer_inner * 20) + 9))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 49))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 10))] = (Conv2dOutput[(((yy_outer_inner * 20) + 10))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 50))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 11))] = (Conv2dOutput[(((yy_outer_inner * 20) + 11))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 51))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 12))] = (Conv2dOutput[(((yy_outer_inner * 20) + 12))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 12))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 13))] = (Conv2dOutput[(((yy_outer_inner * 20) + 13))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 13))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 14))] = (Conv2dOutput[(((yy_outer_inner * 20) + 14))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 14))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 15))] = (Conv2dOutput[(((yy_outer_inner * 20) + 15))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 15))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 12))] = (Conv2dOutput[(((yy_outer_inner * 20) + 12))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 52))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 13))] = (Conv2dOutput[(((yy_outer_inner * 20) + 13))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 53))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 14))] = (Conv2dOutput[(((yy_outer_inner * 20) + 14))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 54))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 15))] = (Conv2dOutput[(((yy_outer_inner * 20) + 15))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 55))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 16))] = (Conv2dOutput[(((yy_outer_inner * 20) + 16))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 16))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 17))] = (Conv2dOutput[(((yy_outer_inner * 20) + 17))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 17))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 18))] = (Conv2dOutput[(((yy_outer_inner * 20) + 18))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 18))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 19))] = (Conv2dOutput[(((yy_outer_inner * 20) + 19))] + (PaddedInput_shared[(((yy_outer_inner * 64) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 19))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 16))] = (Conv2dOutput[(((yy_outer_inner * 20) + 16))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 56))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 17))] = (Conv2dOutput[(((yy_outer_inner * 20) + 17))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 57))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 18))] = (Conv2dOutput[(((yy_outer_inner * 20) + 18))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 58))]));
      Conv2dOutput[(((yy_outer_inner * 20) + 19))] = (Conv2dOutput[(((yy_outer_inner * 20) + 19))] + (PaddedInput_shared[((((yy_outer_inner * 64) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[((((rc_outer_inner * 80) + (((int)threadIdx.x) * 20)) + 59))]));
    }
  }
  for (int ax1_inner = 0; ax1_inner < 73; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 20; ++ax3_inner) {
      T_relu[(((((ax1_inner * 5840) + (((int)blockIdx.x) * 40)) + (((int)threadIdx.x) * 20)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 20) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 40) + (((int)threadIdx.x) * 20)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


