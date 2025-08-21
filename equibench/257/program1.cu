
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float Conv2dOutput[16];
  __shared__ float PaddedInput_shared[512];
  __shared__ float placeholder_shared[64];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)blockIdx.x) >> 10) * 32768) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 32))] = placeholder[(((((((((((int)blockIdx.x) >> 10) * 32768) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 8192))];
    PaddedInput_shared[((((int)threadIdx.x) + 64))] = placeholder[(((((((((((int)blockIdx.x) >> 10) * 32768) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 16384))];
    PaddedInput_shared[((((int)threadIdx.x) + 96))] = placeholder[(((((((((((int)blockIdx.x) >> 10) * 32768) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 24576))];
    PaddedInput_shared[((((int)threadIdx.x) + 128))] = placeholder[(((((((((((int)blockIdx.x) >> 10) * 32768) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 65536))];
    PaddedInput_shared[((((int)threadIdx.x) + 160))] = placeholder[((((((((((((int)threadIdx.x) + 160) >> 7) * 65536) + ((((int)blockIdx.x) >> 10) * 32768)) + (((((int)threadIdx.x) >> 4) + 2) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 192))] = placeholder[((((((((((((int)threadIdx.x) + 192) >> 7) * 65536) + ((((int)blockIdx.x) >> 10) * 32768)) + (((((int)threadIdx.x) >> 4) + 4) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 224))] = placeholder[((((((((((((int)threadIdx.x) + 224) >> 7) * 65536) + ((((int)blockIdx.x) >> 10) * 32768)) + (((((int)threadIdx.x) >> 4) + 6) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 256))] = placeholder[(((((((((((int)blockIdx.x) >> 10) * 32768) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 131072))];
    PaddedInput_shared[((((int)threadIdx.x) + 288))] = placeholder[((((((((((((int)threadIdx.x) + 288) >> 7) * 65536) + ((((int)blockIdx.x) >> 10) * 32768)) + (((((int)threadIdx.x) >> 4) + 2) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 320))] = placeholder[((((((((((((int)threadIdx.x) + 320) >> 7) * 65536) + ((((int)blockIdx.x) >> 10) * 32768)) + (((((int)threadIdx.x) >> 4) + 4) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 352))] = placeholder[((((((((((((int)threadIdx.x) + 352) >> 7) * 65536) + ((((int)blockIdx.x) >> 10) * 32768)) + (((((int)threadIdx.x) >> 4) + 6) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 384))] = placeholder[(((((((((((int)blockIdx.x) >> 10) * 32768) + ((((int)threadIdx.x) >> 4) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 196608))];
    PaddedInput_shared[((((int)threadIdx.x) + 416))] = placeholder[((((((((((((int)threadIdx.x) + 416) >> 7) * 65536) + ((((int)blockIdx.x) >> 10) * 32768)) + (((((int)threadIdx.x) >> 4) + 2) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 448))] = placeholder[((((((((((((int)threadIdx.x) + 448) >> 7) * 65536) + ((((int)blockIdx.x) >> 10) * 32768)) + (((((int)threadIdx.x) >> 4) + 4) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 480))] = placeholder[((((((((((((int)threadIdx.x) + 480) >> 7) * 65536) + ((((int)blockIdx.x) >> 10) * 32768)) + (((((int)threadIdx.x) >> 4) + 6) * 4096)) + (((((int)blockIdx.x) & 1023) >> 7) * 512)) + (((((int)threadIdx.x) & 15) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((rc_outer_outer * 8192) + ((((int)threadIdx.x) >> 3) * 1024)) + ((((int)blockIdx.x) & 127) * 8)) + (((int)threadIdx.x) & 7)))];
    placeholder_shared[((((int)threadIdx.x) + 32))] = placeholder1[((((((rc_outer_outer * 8192) + ((((int)threadIdx.x) >> 3) * 1024)) + ((((int)blockIdx.x) & 127) * 8)) + (((int)threadIdx.x) & 7)) + 4096))];
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 64))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 256))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 320))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 128))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 192))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 384))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 448))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 8))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 72))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 264))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 328))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 136))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 200))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 392))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 16) + rc_outer_inner) + 456))] * placeholder_shared[(((rc_outer_inner * 8) + (((int)threadIdx.x) & 7)))]));
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      T_relu[((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 10) * 131072)) + ((((int)threadIdx.x) >> 3) * 16384)) + (((((int)blockIdx.x) & 1023) >> 7) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 127) * 8)) + (((int)threadIdx.x) & 7)))] = max(((Conv2dOutput[(((ax0_inner * 2) + ax2_inner))] + placeholder2[((((((int)blockIdx.x) & 127) * 8) + (((int)threadIdx.x) & 7)))]) + placeholder3[((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 10) * 131072)) + ((((int)threadIdx.x) >> 3) * 16384)) + (((((int)blockIdx.x) & 1023) >> 7) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 127) * 8)) + (((int)threadIdx.x) & 7)))]), 0.000000e+00f);
      T_relu[(((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 10) * 131072)) + ((((int)threadIdx.x) >> 3) * 16384)) + (((((int)blockIdx.x) & 1023) >> 7) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 127) * 8)) + (((int)threadIdx.x) & 7)) + 65536))] = max(((Conv2dOutput[((((ax0_inner * 2) + ax2_inner) + 4))] + placeholder2[((((((int)blockIdx.x) & 127) * 8) + (((int)threadIdx.x) & 7)))]) + placeholder3[(((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 10) * 131072)) + ((((int)threadIdx.x) >> 3) * 16384)) + (((((int)blockIdx.x) & 1023) >> 7) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 127) * 8)) + (((int)threadIdx.x) & 7)) + 65536))]), 0.000000e+00f);
      T_relu[(((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 10) * 131072)) + ((((int)threadIdx.x) >> 3) * 16384)) + (((((int)blockIdx.x) & 1023) >> 7) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 127) * 8)) + (((int)threadIdx.x) & 7)) + 524288))] = max(((Conv2dOutput[((((ax0_inner * 2) + ax2_inner) + 8))] + placeholder2[((((((int)blockIdx.x) & 127) * 8) + (((int)threadIdx.x) & 7)))]) + placeholder3[(((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 10) * 131072)) + ((((int)threadIdx.x) >> 3) * 16384)) + (((((int)blockIdx.x) & 1023) >> 7) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 127) * 8)) + (((int)threadIdx.x) & 7)) + 524288))]), 0.000000e+00f);
      T_relu[(((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 10) * 131072)) + ((((int)threadIdx.x) >> 3) * 16384)) + (((((int)blockIdx.x) & 1023) >> 7) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 127) * 8)) + (((int)threadIdx.x) & 7)) + 589824))] = max(((Conv2dOutput[((((ax0_inner * 2) + ax2_inner) + 12))] + placeholder2[((((((int)blockIdx.x) & 127) * 8) + (((int)threadIdx.x) & 7)))]) + placeholder3[(((((((((ax0_inner * 262144) + ((((int)blockIdx.x) >> 10) * 131072)) + ((((int)threadIdx.x) >> 3) * 16384)) + (((((int)blockIdx.x) & 1023) >> 7) * 2048)) + (ax2_inner * 1024)) + ((((int)blockIdx.x) & 127) * 8)) + (((int)threadIdx.x) & 7)) + 589824))]), 0.000000e+00f);
    }
  }
}


