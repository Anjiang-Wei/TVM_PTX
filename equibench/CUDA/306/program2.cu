
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2) {
  float Conv2dOutput[256];
  __shared__ float PaddedInput_shared[840];
  __shared__ float placeholder_shared[512];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 2; ++yy_outer_inner_init) {
    for (int xx_outer_inner_init = 0; xx_outer_inner_init < 2; ++xx_outer_inner_init) {
      for (int ff_outer_inner_init = 0; ff_outer_inner_init < 4; ++ff_outer_inner_init) {
        Conv2dOutput[((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 64))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 128))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 192))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 1))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 65))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 129))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 193))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 2))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 66))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 130))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 194))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 3))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 67))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 131))] = 0.000000e+00f;
        Conv2dOutput[(((((yy_outer_inner_init * 32) + (xx_outer_inner_init * 16)) + (ff_outer_inner_init * 4)) + 195))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 105; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 8) + ((int)threadIdx.x)))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 32768) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer / 15) * 4096)) + ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer % 15) * 256)) + (rc_outer_outer * 8)) + ((int)threadIdx.x)))];
    }
    ((float4*)(placeholder_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(placeholder1 + ((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) * 4)))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 32))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) * 4)) + 32))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 64))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) * 4)) + 512))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 96))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 4) + 96) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) * 4) + 32)))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 128))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) * 4)) + 1024))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 160))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 4) + 160) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) * 4) + 32)))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 192))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) * 4)) + 1536))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 224))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 4) + 224) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) * 4) + 32)))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 256))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) * 4)) + 2048))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 288))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 4) + 288) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) * 4) + 32)))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 320))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) * 4)) + 2560))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 352))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 4) + 352) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) * 4) + 32)))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 384))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) * 4)) + 3072))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 416))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 4) + 416) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) * 4) + 32)))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 448))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((int)blockIdx.x) & 7) * 64)) + (((int)threadIdx.x) * 4)) + 3584))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 480))))[0] = ((float4*)(placeholder1 + (((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 4) + 480) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) * 4) + 32)))))[0];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 2; ++yy_outer_inner) {
        for (int xx_outer_inner = 0; xx_outer_inner < 2; ++xx_outer_inner) {
          for (int ff_outer_inner = 0; ff_outer_inner < 4; ++ff_outer_inner) {
            Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)))] = (Conv2dOutput[((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)))] + (PaddedInput_shared[(((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 64))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 64))] + (PaddedInput_shared[(((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 32))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 128))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 128))] + (PaddedInput_shared[((((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner) + 480))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 192))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 192))] + (PaddedInput_shared[((((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner) + 480))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 32))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 1))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 1))] + (PaddedInput_shared[(((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 1))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 65))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 65))] + (PaddedInput_shared[(((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 33))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 129))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 129))] + (PaddedInput_shared[((((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner) + 480))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 1))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 193))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 193))] + (PaddedInput_shared[((((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner) + 480))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 33))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 2))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 2))] + (PaddedInput_shared[(((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 2))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 66))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 66))] + (PaddedInput_shared[(((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 34))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 130))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 130))] + (PaddedInput_shared[((((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner) + 480))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 2))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 194))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 194))] + (PaddedInput_shared[((((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner) + 480))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 34))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 3))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 3))] + (PaddedInput_shared[(((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 3))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 67))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 67))] + (PaddedInput_shared[(((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 35))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 131))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 131))] + (PaddedInput_shared[((((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner) + 480))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 3))]));
            Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 195))] = (Conv2dOutput[(((((yy_outer_inner * 32) + (xx_outer_inner * 16)) + (ff_outer_inner * 4)) + 195))] + (PaddedInput_shared[((((((yy_outer_inner * 240) + ((((int)threadIdx.x) >> 1) * 32)) + (xx_outer_inner * 16)) + rc_outer_inner) + 480))] * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 1) * 16)) + (ff_outer_inner * 4)) + 35))]));
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 16; ++ax3_inner) {
        T_add[(((((((((((int)blockIdx.x) >> 3) * 16384) + (ax1_inner * 4096)) + ((((int)threadIdx.x) >> 1) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner))] = (Conv2dOutput[((((ax1_inner * 32) + (ax2_inner * 16)) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner))]);
        T_add[((((((((((((int)blockIdx.x) >> 3) * 16384) + (ax1_inner * 4096)) + ((((int)threadIdx.x) >> 1) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner) + 32))] = (Conv2dOutput[(((((ax1_inner * 32) + (ax2_inner * 16)) + ax3_inner) + 64))] + placeholder2[((((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner) + 32))]);
        T_add[((((((((((((int)blockIdx.x) >> 3) * 16384) + (ax1_inner * 4096)) + ((((int)threadIdx.x) >> 1) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner) + 8192))] = (Conv2dOutput[(((((ax1_inner * 32) + (ax2_inner * 16)) + ax3_inner) + 128))] + placeholder2[(((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner))]);
        T_add[((((((((((((int)blockIdx.x) >> 3) * 16384) + (ax1_inner * 4096)) + ((((int)threadIdx.x) >> 1) * 1024)) + (ax2_inner * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner) + 8224))] = (Conv2dOutput[(((((ax1_inner * 32) + (ax2_inner * 16)) + ax3_inner) + 192))] + placeholder2[((((((((int)blockIdx.x) & 7) * 64) + ((((int)threadIdx.x) & 1) * 16)) + ax3_inner) + 32))]);
      }
    }
  }
}


