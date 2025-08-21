
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv2dOutput[128];
  __shared__ float PaddedInput_shared[4608];
  __shared__ float placeholder_shared[32];
  for (int xx_outer_inner_init = 0; xx_outer_inner_init < 4; ++xx_outer_inner_init) {
    for (int ff_outer_inner_init = 0; ff_outer_inner_init < 4; ++ff_outer_inner_init) {
      Conv2dOutput[(((xx_outer_inner_init * 8) + (ff_outer_inner_init * 2)))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 8) + (ff_outer_inner_init * 2)) + 32))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 8) + (ff_outer_inner_init * 2)) + 64))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 8) + (ff_outer_inner_init * 2)) + 96))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 8) + (ff_outer_inner_init * 2)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 8) + (ff_outer_inner_init * 2)) + 33))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 8) + (ff_outer_inner_init * 2)) + 65))] = 0.000000e+00f;
      Conv2dOutput[((((xx_outer_inner_init * 8) + (ff_outer_inner_init * 2)) + 97))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 8; ++rc_outer_outer) {
    __syncthreads();
    ((float2*)(PaddedInput_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder + (((((((((int)blockIdx.x) / 5) * 46080) + ((((int)threadIdx.x) / 24) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + ((((int)threadIdx.x) % 24) * 16)) + (rc_outer_outer * 2)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 576))))[0] = ((float2*)(placeholder + ((((((((((int)blockIdx.x) / 5) * 46080) + ((((int)threadIdx.x) / 24) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + ((((int)threadIdx.x) % 24) * 16)) + (rc_outer_outer * 2)) + 23040))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 1152))))[0] = ((float2*)(placeholder + ((((((((((int)blockIdx.x) / 5) * 46080) + ((((int)threadIdx.x) / 24) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + ((((int)threadIdx.x) % 24) * 16)) + (rc_outer_outer * 2)) + 230400))))[0];
    ((float2*)(PaddedInput_shared + ((((((((int)threadIdx.x) + 864) / 576) * 1152) + (((((int)threadIdx.x) / 24) + 12) * 48)) + ((((int)threadIdx.x) % 24) * 2)))))[0] = ((float2*)(placeholder + (((((((((((int)threadIdx.x) + 864) / 576) * 230400) + ((((int)blockIdx.x) / 5) * 46080)) + (((((int)threadIdx.x) / 24) + 12) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + ((((int)threadIdx.x) % 24) * 16)) + (rc_outer_outer * 2)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 2304))))[0] = ((float2*)(placeholder + ((((((((((int)blockIdx.x) / 5) * 46080) + ((((int)threadIdx.x) / 24) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + ((((int)threadIdx.x) % 24) * 16)) + (rc_outer_outer * 2)) + 460800))))[0];
    ((float2*)(PaddedInput_shared + ((((((((int)threadIdx.x) + 1440) / 576) * 1152) + (((((int)threadIdx.x) / 24) + 12) * 48)) + ((((int)threadIdx.x) % 24) * 2)))))[0] = ((float2*)(placeholder + (((((((((((int)threadIdx.x) + 1440) / 576) * 230400) + ((((int)blockIdx.x) / 5) * 46080)) + (((((int)threadIdx.x) / 24) + 12) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + ((((int)threadIdx.x) % 24) * 16)) + (rc_outer_outer * 2)))))[0];
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 3456))))[0] = ((float2*)(placeholder + ((((((((((int)blockIdx.x) / 5) * 46080) + ((((int)threadIdx.x) / 24) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + ((((int)threadIdx.x) % 24) * 16)) + (rc_outer_outer * 2)) + 691200))))[0];
    ((float2*)(PaddedInput_shared + ((((((((int)threadIdx.x) + 2016) / 576) * 1152) + (((((int)threadIdx.x) / 24) + 12) * 48)) + ((((int)threadIdx.x) % 24) * 2)))))[0] = ((float2*)(placeholder + (((((((((((int)threadIdx.x) + 2016) / 576) * 230400) + ((((int)blockIdx.x) / 5) * 46080)) + (((((int)threadIdx.x) / 24) + 12) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + ((((int)threadIdx.x) % 24) * 16)) + (rc_outer_outer * 2)))))[0];
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 32) + ((int)threadIdx.x)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 4; ++xx_outer_inner) {
        for (int ff_outer_inner = 0; ff_outer_inner < 4; ++ff_outer_inner) {
          Conv2dOutput[(((xx_outer_inner * 8) + (ff_outer_inner * 2)))] = (Conv2dOutput[(((xx_outer_inner * 8) + (ff_outer_inner * 2)))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 72) * 1152) + (((((int)threadIdx.x) % 72) >> 1) * 8)) + (xx_outer_inner * 2)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)))]));
          Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 32))] = (Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 32))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 72) * 1152) + (((((int)threadIdx.x) % 72) >> 1) * 8)) + (xx_outer_inner * 2)) + rc_outer_inner) + 288))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)))]));
          Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 64))] = (Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 64))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 72) * 1152) + (((((int)threadIdx.x) % 72) >> 1) * 8)) + (xx_outer_inner * 2)) + rc_outer_inner) + 576))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)))]));
          Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 96))] = (Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 96))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 72) * 1152) + (((((int)threadIdx.x) % 72) >> 1) * 8)) + (xx_outer_inner * 2)) + rc_outer_inner) + 864))] * placeholder_shared[((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)))]));
          Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 1))] = (Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 72) * 1152) + (((((int)threadIdx.x) % 72) >> 1) * 8)) + (xx_outer_inner * 2)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 1))]));
          Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 33))] = (Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 33))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 72) * 1152) + (((((int)threadIdx.x) % 72) >> 1) * 8)) + (xx_outer_inner * 2)) + rc_outer_inner) + 288))] * placeholder_shared[(((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 1))]));
          Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 65))] = (Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 65))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 72) * 1152) + (((((int)threadIdx.x) % 72) >> 1) * 8)) + (xx_outer_inner * 2)) + rc_outer_inner) + 576))] * placeholder_shared[(((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 1))]));
          Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 97))] = (Conv2dOutput[((((xx_outer_inner * 8) + (ff_outer_inner * 2)) + 97))] + (PaddedInput_shared[(((((((((int)threadIdx.x) / 72) * 1152) + (((((int)threadIdx.x) % 72) >> 1) * 8)) + (xx_outer_inner * 2)) + rc_outer_inner) + 864))] * placeholder_shared[(((((rc_outer_inner * 16) + ((((int)threadIdx.x) & 1) * 8)) + (ff_outer_inner * 2)) + 1))]));
        }
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
      T_add[((((((((((((int)threadIdx.x) / 72) * 230400) + ((((int)blockIdx.x) / 5) * 46080)) + (((((int)threadIdx.x) % 72) / 12) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 12) >> 1) * 64)) + (ax2_inner * 16)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner))] = ((Conv2dOutput[(((ax2_inner * 8) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 1) * 8) + ax3_inner))]) + placeholder3[((((((((((((int)threadIdx.x) / 72) * 230400) + ((((int)blockIdx.x) / 5) * 46080)) + (((((int)threadIdx.x) % 72) / 12) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 12) >> 1) * 64)) + (ax2_inner * 16)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner))]);
      T_add[(((((((((((((int)threadIdx.x) / 72) * 230400) + ((((int)blockIdx.x) / 5) * 46080)) + (((((int)threadIdx.x) % 72) / 12) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 12) >> 1) * 64)) + (ax2_inner * 16)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 11520))] = ((Conv2dOutput[((((ax2_inner * 8) + ax3_inner) + 32))] + placeholder2[((((((int)threadIdx.x) & 1) * 8) + ax3_inner))]) + placeholder3[(((((((((((((int)threadIdx.x) / 72) * 230400) + ((((int)blockIdx.x) / 5) * 46080)) + (((((int)threadIdx.x) % 72) / 12) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 12) >> 1) * 64)) + (ax2_inner * 16)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 11520))]);
      T_add[(((((((((((((int)threadIdx.x) / 72) * 230400) + ((((int)blockIdx.x) / 5) * 46080)) + (((((int)threadIdx.x) % 72) / 12) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 12) >> 1) * 64)) + (ax2_inner * 16)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 23040))] = ((Conv2dOutput[((((ax2_inner * 8) + ax3_inner) + 64))] + placeholder2[((((((int)threadIdx.x) & 1) * 8) + ax3_inner))]) + placeholder3[(((((((((((((int)threadIdx.x) / 72) * 230400) + ((((int)blockIdx.x) / 5) * 46080)) + (((((int)threadIdx.x) % 72) / 12) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 12) >> 1) * 64)) + (ax2_inner * 16)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 23040))]);
      T_add[(((((((((((((int)threadIdx.x) / 72) * 230400) + ((((int)blockIdx.x) / 5) * 46080)) + (((((int)threadIdx.x) % 72) / 12) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 12) >> 1) * 64)) + (ax2_inner * 16)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 34560))] = ((Conv2dOutput[((((ax2_inner * 8) + ax3_inner) + 96))] + placeholder2[((((((int)threadIdx.x) & 1) * 8) + ax3_inner))]) + placeholder3[(((((((((((((int)threadIdx.x) / 72) * 230400) + ((((int)blockIdx.x) / 5) * 46080)) + (((((int)threadIdx.x) % 72) / 12) * 1920)) + ((((int)blockIdx.x) % 5) * 384)) + (((((int)threadIdx.x) % 12) >> 1) * 64)) + (ax2_inner * 16)) + ((((int)threadIdx.x) & 1) * 8)) + ax3_inner) + 34560))]);
    }
  }
}


