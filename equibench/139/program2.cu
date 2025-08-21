
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
  float Conv2dOutput[224];
  __shared__ float PaddedInput_shared[1792];
  __shared__ float placeholder_shared[512];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 7; ++yy_outer_inner_init) {
    Conv2dOutput[((yy_outer_inner_init * 16))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 112))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 113))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 116))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 117))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 120))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 121))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 12))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 124))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 13))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 125))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 114))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 115))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 6))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 118))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 7))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 119))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 10))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 122))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 11))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 123))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 14))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 126))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 15))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 16) + 127))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 112; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)))] = placeholder[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer >> 1) * 14336) + ((((int)blockIdx.x) >> 3) * 2048)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer & 1) * 1024)) + (rc_outer_outer * 16)) + ((int)threadIdx.x)))];
    }
    ((float2*)(placeholder_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 32))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 256))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 64))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 512))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 96))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 768))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 128))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 1024))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 160))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 1280))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 192))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 1536))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 224))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 1792))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 256))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 2048))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 288))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 2304))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 320))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 2560))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 352))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 2816))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 384))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 3072))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 416))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 3328))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 448))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 3584))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 480))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 32)) + (((int)threadIdx.x) * 2)) + 3840))))[0];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 16; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 7; ++yy_outer_inner) {
        Conv2dOutput[((yy_outer_inner * 16))] = (Conv2dOutput[((yy_outer_inner * 16))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 112))] = (Conv2dOutput[(((yy_outer_inner * 16) + 112))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 896))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 1))] = (Conv2dOutput[(((yy_outer_inner * 16) + 1))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 113))] = (Conv2dOutput[(((yy_outer_inner * 16) + 113))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 896))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 4))] = (Conv2dOutput[(((yy_outer_inner * 16) + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 16))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 116))] = (Conv2dOutput[(((yy_outer_inner * 16) + 116))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 912))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 5))] = (Conv2dOutput[(((yy_outer_inner * 16) + 5))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 16))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 117))] = (Conv2dOutput[(((yy_outer_inner * 16) + 117))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 912))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 8))] = (Conv2dOutput[(((yy_outer_inner * 16) + 8))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 32))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 120))] = (Conv2dOutput[(((yy_outer_inner * 16) + 120))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 928))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 9))] = (Conv2dOutput[(((yy_outer_inner * 16) + 9))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 32))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 121))] = (Conv2dOutput[(((yy_outer_inner * 16) + 121))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 928))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 12))] = (Conv2dOutput[(((yy_outer_inner * 16) + 12))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 48))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 124))] = (Conv2dOutput[(((yy_outer_inner * 16) + 124))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 944))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 13))] = (Conv2dOutput[(((yy_outer_inner * 16) + 13))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 48))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 125))] = (Conv2dOutput[(((yy_outer_inner * 16) + 125))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 944))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 2))] = (Conv2dOutput[(((yy_outer_inner * 16) + 2))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 114))] = (Conv2dOutput[(((yy_outer_inner * 16) + 114))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 896))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 3))] = (Conv2dOutput[(((yy_outer_inner * 16) + 3))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 115))] = (Conv2dOutput[(((yy_outer_inner * 16) + 115))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 896))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 6))] = (Conv2dOutput[(((yy_outer_inner * 16) + 6))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 16))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 118))] = (Conv2dOutput[(((yy_outer_inner * 16) + 118))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 912))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 7))] = (Conv2dOutput[(((yy_outer_inner * 16) + 7))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 16))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 119))] = (Conv2dOutput[(((yy_outer_inner * 16) + 119))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 912))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 10))] = (Conv2dOutput[(((yy_outer_inner * 16) + 10))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 32))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 122))] = (Conv2dOutput[(((yy_outer_inner * 16) + 122))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 928))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 11))] = (Conv2dOutput[(((yy_outer_inner * 16) + 11))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 32))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 123))] = (Conv2dOutput[(((yy_outer_inner * 16) + 123))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 928))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 14))] = (Conv2dOutput[(((yy_outer_inner * 16) + 14))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 48))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 126))] = (Conv2dOutput[(((yy_outer_inner * 16) + 126))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 944))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 15))] = (Conv2dOutput[(((yy_outer_inner * 16) + 15))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 48))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 16) + 127))] = (Conv2dOutput[(((yy_outer_inner * 16) + 127))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 3) * 448) + (yy_outer_inner * 64)) + rc_outer_inner) + 944))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 14; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_relu[(((((((((((int)threadIdx.x) >> 3) * 50176) + (ax1_inner * 3584)) + ((((int)blockIdx.x) >> 3) * 512)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 8) + (ax2_inner * 4)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 7) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]), 0.000000e+00f);
        T_relu[((((((((((((int)threadIdx.x) >> 3) * 50176) + (ax1_inner * 3584)) + ((((int)blockIdx.x) >> 3) * 512)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 7) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 100352))] = max((Conv2dOutput[(((((ax1_inner * 8) + (ax2_inner * 4)) + ax3_inner) + 112))] + placeholder2[(((((((int)blockIdx.x) & 7) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


