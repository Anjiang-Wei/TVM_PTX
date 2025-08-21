
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
  float Conv2dOutput[720];
  __shared__ float PaddedInput_shared[3600];
  __shared__ float placeholder_shared[128];
  for (int yy_inner_init = 0; yy_inner_init < 30; ++yy_inner_init) {
    Conv2dOutput[((yy_inner_init * 12))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 360))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 361))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 362))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 363))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 364))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 365))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 6))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 366))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 7))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 367))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 368))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 369))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 10))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 370))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 11))] = 0.000000e+00f;
    Conv2dOutput[(((yy_inner_init * 12) + 371))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 48; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[((((int)threadIdx.x) * 2))] = placeholder[(((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 1))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 320))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 15360))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 321))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 15361))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 640))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 30720))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 641))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 30721))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 960))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 46080))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 961))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 46081))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1280))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 61440))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1281))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 61441))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1600))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 76800))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1601))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 76801))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1920))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 92160))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1921))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 92161))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2240))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 107520))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2241))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 107521))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2560))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 122880))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2561))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 122881))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2880))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 138240))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2881))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 138241))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 3200))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 153600))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 3201))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 153601))];
    if (((int)threadIdx.x) < 40) {
      PaddedInput_shared[(((((int)threadIdx.x) * 2) + 3520))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 168960))];
      PaddedInput_shared[(((((int)threadIdx.x) * 2) + 3521))] = placeholder[((((((((int)blockIdx.x) >> 1) * 172800) + (((int)threadIdx.x) * 96)) + (rc_outer_outer * 2)) + 168961))];
    }
    if (((int)threadIdx.x) < 128) {
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 256) + ((((int)threadIdx.x) >> 6) * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) & 63)))];
    }
    __syncthreads();
    for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
      for (int yy_inner = 0; yy_inner < 30; ++yy_inner) {
        Conv2dOutput[((yy_inner * 12))] = (Conv2dOutput[((yy_inner * 12))] + (PaddedInput_shared[((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner))] * placeholder_shared[(((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_inner * 12) + 360))] = (Conv2dOutput[(((yy_inner * 12) + 360))] + (PaddedInput_shared[((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
        Conv2dOutput[(((yy_inner * 12) + 1))] = (Conv2dOutput[(((yy_inner * 12) + 1))] + (PaddedInput_shared[((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_inner * 12) + 361))] = (Conv2dOutput[(((yy_inner * 12) + 361))] + (PaddedInput_shared[((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
        Conv2dOutput[(((yy_inner * 12) + 2))] = (Conv2dOutput[(((yy_inner * 12) + 2))] + (PaddedInput_shared[((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_inner * 12) + 362))] = (Conv2dOutput[(((yy_inner * 12) + 362))] + (PaddedInput_shared[((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
        Conv2dOutput[(((yy_inner * 12) + 3))] = (Conv2dOutput[(((yy_inner * 12) + 3))] + (PaddedInput_shared[((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_inner * 12) + 363))] = (Conv2dOutput[(((yy_inner * 12) + 363))] + (PaddedInput_shared[((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
        Conv2dOutput[(((yy_inner * 12) + 4))] = (Conv2dOutput[(((yy_inner * 12) + 4))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 2))] * placeholder_shared[(((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_inner * 12) + 364))] = (Conv2dOutput[(((yy_inner * 12) + 364))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 2))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
        Conv2dOutput[(((yy_inner * 12) + 5))] = (Conv2dOutput[(((yy_inner * 12) + 5))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 2))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_inner * 12) + 365))] = (Conv2dOutput[(((yy_inner * 12) + 365))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 2))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
        Conv2dOutput[(((yy_inner * 12) + 6))] = (Conv2dOutput[(((yy_inner * 12) + 6))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 2))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_inner * 12) + 366))] = (Conv2dOutput[(((yy_inner * 12) + 366))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 2))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
        Conv2dOutput[(((yy_inner * 12) + 7))] = (Conv2dOutput[(((yy_inner * 12) + 7))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 2))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_inner * 12) + 367))] = (Conv2dOutput[(((yy_inner * 12) + 367))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 2))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
        Conv2dOutput[(((yy_inner * 12) + 8))] = (Conv2dOutput[(((yy_inner * 12) + 8))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 4))] * placeholder_shared[(((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_inner * 12) + 368))] = (Conv2dOutput[(((yy_inner * 12) + 368))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 4))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
        Conv2dOutput[(((yy_inner * 12) + 9))] = (Conv2dOutput[(((yy_inner * 12) + 9))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 4))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_inner * 12) + 369))] = (Conv2dOutput[(((yy_inner * 12) + 369))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 4))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
        Conv2dOutput[(((yy_inner * 12) + 10))] = (Conv2dOutput[(((yy_inner * 12) + 10))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 4))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_inner * 12) + 370))] = (Conv2dOutput[(((yy_inner * 12) + 370))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 4))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
        Conv2dOutput[(((yy_inner * 12) + 11))] = (Conv2dOutput[(((yy_inner * 12) + 11))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 4))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_inner * 12) + 371))] = (Conv2dOutput[(((yy_inner * 12) + 371))] + (PaddedInput_shared[(((((yy_inner * 120) + ((((int)threadIdx.x) >> 3) * 6)) + rc_inner) + 4))] * placeholder_shared[((((rc_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 30; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_relu[(((((((((((int)blockIdx.x) >> 1) * 230400) + (ax1_inner * 7680)) + ((((int)threadIdx.x) >> 3) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 12) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((((((int)blockIdx.x) >> 1) * 230400) + (ax1_inner * 7680)) + ((((int)threadIdx.x) >> 3) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 32))] = max((Conv2dOutput[(((((ax1_inner * 12) + (ax2_inner * 4)) + ax3_inner) + 360))] + placeholder2[((((((((int)blockIdx.x) & 1) * 64) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 32))]), 0.000000e+00f);
      }
    }
  }
}


