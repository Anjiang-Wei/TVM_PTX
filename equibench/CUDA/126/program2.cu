
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
  float Conv2dOutput[4800];
  __shared__ float PaddedInput_shared[3600];
  __shared__ float placeholder_shared[768];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 15; ++yy_outer_inner_init) {
    for (int xx_inner_init = 0; xx_inner_init < 20; ++xx_inner_init) {
      Conv2dOutput[(((yy_outer_inner_init * 320) + (xx_inner_init * 16)))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 2))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 3))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 4))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 5))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 6))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 7))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 8))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 9))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 10))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 11))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 12))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 13))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 14))] = 0.000000e+00f;
      Conv2dOutput[((((yy_outer_inner_init * 320) + (xx_inner_init * 16)) + 15))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 225; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)))] = placeholder[(((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) / 1800) * 345600) + ((((int)blockIdx.x) / 3) * 86400)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) % 1800) / 120) * 5760)) + ((((int)blockIdx.x) % 3) * 1920)) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) % 120) / 6) * 96)) + (rc_outer_outer * 6)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) % 6)))];
    }
    ((float2*)(placeholder_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder1 + (((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 32))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 32))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 64))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 64))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 96))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 96))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 128))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 128))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 160))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 160))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 192))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 192))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 224))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 224))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 256))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 256))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 288))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 288))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 320))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 320))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 352))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 352))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 384))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 384))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 416))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 416))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 448))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 448))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 480))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 480))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 512))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 512))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 544))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 544))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 576))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 576))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 608))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 608))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 640))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 640))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 672))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 672))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 704))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 704))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 736))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 768) + (((int)threadIdx.x) * 2)) + 736))))[0];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 3; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 15; ++yy_outer_inner) {
        for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
          for (int xx_inner = 0; xx_inner < 20; ++xx_inner) {
            Conv2dOutput[(((yy_outer_inner * 320) + (xx_inner * 16)))] = (Conv2dOutput[(((yy_outer_inner * 320) + (xx_inner * 16)))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 1))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 1))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 1))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 2))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 2))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 2))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 3))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 3))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 3))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 4))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 4))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 4))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 5))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 5))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 5))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 6))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 6))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 6))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 7))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 7))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 7))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 8))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 8))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 8))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 9))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 9))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 9))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 10))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 10))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 10))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 11))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 11))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 11))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 12))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 12))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 12))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 13))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 13))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 13))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 14))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 14))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 14))]));
            Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 15))] = (Conv2dOutput[((((yy_outer_inner * 320) + (xx_inner * 16)) + 15))] + (PaddedInput_shared[(((((((((int)threadIdx.x) >> 3) * 1800) + (yy_outer_inner * 120)) + (xx_inner * 6)) + (rc_outer_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + 15))]));
          }
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 15; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 20; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 16; ++ax3_inner) {
        T_relu[(((((((((((int)threadIdx.x) >> 3) * 460800) + ((((int)blockIdx.x) / 3) * 115200)) + (ax1_inner * 7680)) + ((((int)blockIdx.x) % 3) * 2560)) + (ax2_inner * 128)) + ((((int)threadIdx.x) & 7) * 16)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 320) + (ax2_inner * 16)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 7) * 16) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


