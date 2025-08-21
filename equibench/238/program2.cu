
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
  float Conv2dOutput[32];
  __shared__ float PaddedInput_shared[128];
  __shared__ float placeholder_shared[256];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 4; ++ff_outer_inner_init) {
    Conv2dOutput[((ff_outer_inner_init * 2))] = 0.000000e+00f;
    Conv2dOutput[(((ff_outer_inner_init * 2) + 16))] = 0.000000e+00f;
    Conv2dOutput[(((ff_outer_inner_init * 2) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((ff_outer_inner_init * 2) + 17))] = 0.000000e+00f;
    Conv2dOutput[(((ff_outer_inner_init * 2) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((ff_outer_inner_init * 2) + 24))] = 0.000000e+00f;
    Conv2dOutput[(((ff_outer_inner_init * 2) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((ff_outer_inner_init * 2) + 25))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    ((float4*)(PaddedInput_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(placeholder + (((((((((int)blockIdx.x) / 14) * 28672) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + ((((int)threadIdx.x) >> 1) * 256)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) & 1) * 4)))))[0];
    ((float4*)(PaddedInput_shared + (((((int)threadIdx.x) * 4) + 64))))[0] = ((float4*)(placeholder + ((((((((((int)blockIdx.x) / 14) * 28672) + (((((int)blockIdx.x) % 14) >> 1) * 2048)) + ((((int)threadIdx.x) >> 1) * 256)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) & 1) * 4)) + 14336))))[0];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rc_outer_outer * 512) + ((((int)blockIdx.x) & 1) * 32)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 16))] = placeholder1[(((((rc_outer_outer * 512) + ((((int)blockIdx.x) & 1) * 32)) + ((int)threadIdx.x)) + 16))];
    placeholder_shared[((((int)threadIdx.x) + 32))] = placeholder1[(((((rc_outer_outer * 512) + ((((int)blockIdx.x) & 1) * 32)) + ((int)threadIdx.x)) + 64))];
    placeholder_shared[((((int)threadIdx.x) + 48))] = placeholder1[(((((rc_outer_outer * 512) + (((((int)threadIdx.x) + 48) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) + 16)))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[(((((rc_outer_outer * 512) + ((((int)blockIdx.x) & 1) * 32)) + ((int)threadIdx.x)) + 128))];
    placeholder_shared[((((int)threadIdx.x) + 80))] = placeholder1[(((((rc_outer_outer * 512) + (((((int)threadIdx.x) + 80) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) + 16)))];
    placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[(((((rc_outer_outer * 512) + ((((int)blockIdx.x) & 1) * 32)) + ((int)threadIdx.x)) + 192))];
    placeholder_shared[((((int)threadIdx.x) + 112))] = placeholder1[(((((rc_outer_outer * 512) + (((((int)threadIdx.x) + 112) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) + 16)))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[(((((rc_outer_outer * 512) + ((((int)blockIdx.x) & 1) * 32)) + ((int)threadIdx.x)) + 256))];
    placeholder_shared[((((int)threadIdx.x) + 144))] = placeholder1[(((((rc_outer_outer * 512) + (((((int)threadIdx.x) + 144) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) + 16)))];
    placeholder_shared[((((int)threadIdx.x) + 160))] = placeholder1[(((((rc_outer_outer * 512) + ((((int)blockIdx.x) & 1) * 32)) + ((int)threadIdx.x)) + 320))];
    placeholder_shared[((((int)threadIdx.x) + 176))] = placeholder1[(((((rc_outer_outer * 512) + (((((int)threadIdx.x) + 176) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) + 16)))];
    placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[(((((rc_outer_outer * 512) + ((((int)blockIdx.x) & 1) * 32)) + ((int)threadIdx.x)) + 384))];
    placeholder_shared[((((int)threadIdx.x) + 208))] = placeholder1[(((((rc_outer_outer * 512) + (((((int)threadIdx.x) + 208) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) + 16)))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[(((((rc_outer_outer * 512) + ((((int)blockIdx.x) & 1) * 32)) + ((int)threadIdx.x)) + 448))];
    placeholder_shared[((((int)threadIdx.x) + 240))] = placeholder1[(((((rc_outer_outer * 512) + (((((int)threadIdx.x) + 240) >> 5) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + (((int)threadIdx.x) + 16)))];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 4; ++ff_outer_inner) {
        Conv2dOutput[((ff_outer_inner * 2))] = (Conv2dOutput[((ff_outer_inner * 2))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 16))] = (Conv2dOutput[(((ff_outer_inner * 2) + 16))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 16))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 1))] = (Conv2dOutput[(((ff_outer_inner * 2) + 1))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 1))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 17))] = (Conv2dOutput[(((ff_outer_inner * 2) + 17))] + (PaddedInput_shared[((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 17))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 8))] = (Conv2dOutput[(((ff_outer_inner * 2) + 8))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)) + 64))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 24))] = (Conv2dOutput[(((ff_outer_inner * 2) + 24))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)) + 64))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 16))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 9))] = (Conv2dOutput[(((ff_outer_inner * 2) + 9))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)) + 64))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 1))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 25))] = (Conv2dOutput[(((ff_outer_inner * 2) + 25))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)) + 64))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 17))]));
        Conv2dOutput[((ff_outer_inner * 2))] = (Conv2dOutput[((ff_outer_inner * 2))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 32))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 16))] = (Conv2dOutput[(((ff_outer_inner * 2) + 16))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 48))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 1))] = (Conv2dOutput[(((ff_outer_inner * 2) + 1))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 33))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 17))] = (Conv2dOutput[(((ff_outer_inner * 2) + 17))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 49))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 8))] = (Conv2dOutput[(((ff_outer_inner * 2) + 8))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)) + 65))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 32))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 24))] = (Conv2dOutput[(((ff_outer_inner * 2) + 24))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)) + 65))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 48))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 9))] = (Conv2dOutput[(((ff_outer_inner * 2) + 9))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)) + 65))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 33))]));
        Conv2dOutput[(((ff_outer_inner * 2) + 25))] = (Conv2dOutput[(((ff_outer_inner * 2) + 25))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 8) + (rc_outer_inner * 2)) + 65))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 49))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
      T_relu[(((((((((((int)blockIdx.x) / 14) * 7168) + (ax1_inner * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + ((((int)threadIdx.x) >> 1) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 8) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 32) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner))]), 0.000000e+00f);
      T_relu[((((((((((((int)blockIdx.x) / 14) * 7168) + (ax1_inner * 3584)) + (((((int)blockIdx.x) % 14) >> 1) * 512)) + ((((int)threadIdx.x) >> 1) * 64)) + ((((int)blockIdx.x) & 1) * 32)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 16))] = max((Conv2dOutput[((((ax1_inner * 8) + ax3_inner) + 16))] + placeholder2[((((((((int)blockIdx.x) & 1) * 32) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 16))]), 0.000000e+00f);
    }
  }
}


