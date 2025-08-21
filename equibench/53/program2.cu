
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
  float Conv3dOutput[4];
  __shared__ float PaddedInput_shared[126];
  __shared__ float placeholder_shared[9216];
  Conv3dOutput[(0)] = 0.000000e+00f;
  Conv3dOutput[(2)] = 0.000000e+00f;
  Conv3dOutput[(1)] = 0.000000e+00f;
  Conv3dOutput[(3)] = 0.000000e+00f;
  for (int rh_outer_outer = 0; rh_outer_outer < 3; ++rh_outer_outer) {
    for (int rc_outer_outer = 0; rc_outer_outer < 256; ++rc_outer_outer) {
      __syncthreads();
      if (((int)threadIdx.x) < 21) {
        PaddedInput_shared[((((int)threadIdx.x) * 6))] = 0.000000e+00f;
        PaddedInput_shared[(((((int)threadIdx.x) * 6) + 1))] = 0.000000e+00f;
        PaddedInput_shared[(((((int)threadIdx.x) * 6) + 2))] = (((((1 <= ((((int)threadIdx.x) / 7) + ((int)blockIdx.x))) && (((((int)threadIdx.x) / 7) + ((int)blockIdx.x)) < 15)) && (1 <= (rh_outer_outer + (((int)threadIdx.x) % 7)))) && ((rh_outer_outer + (((int)threadIdx.x) % 7)) < 8)) ? placeholder[((((((((int)blockIdx.x) * 3584) + (rh_outer_outer * 512)) + (((int)threadIdx.x) * 512)) + (rc_outer_outer * 2)) - 4096))] : 0.000000e+00f);
        PaddedInput_shared[(((((int)threadIdx.x) * 6) + 3))] = (((((1 <= ((((int)threadIdx.x) / 7) + ((int)blockIdx.x))) && (((((int)threadIdx.x) / 7) + ((int)blockIdx.x)) < 15)) && (1 <= (rh_outer_outer + (((int)threadIdx.x) % 7)))) && ((rh_outer_outer + (((int)threadIdx.x) % 7)) < 8)) ? placeholder[((((((((int)blockIdx.x) * 3584) + (rh_outer_outer * 512)) + (((int)threadIdx.x) * 512)) + (rc_outer_outer * 2)) - 4095))] : 0.000000e+00f);
        PaddedInput_shared[(((((int)threadIdx.x) * 6) + 4))] = 0.000000e+00f;
        PaddedInput_shared[(((((int)threadIdx.x) * 6) + 5))] = 0.000000e+00f;
      }
      placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((rh_outer_outer * 786432) + (rc_outer_outer * 1024)) + ((int)threadIdx.x)))];
      placeholder_shared[((((int)threadIdx.x) + 896))] = placeholder1[(((((rh_outer_outer * 786432) + (((((int)threadIdx.x) + 896) >> 10) * 262144)) + (rc_outer_outer * 1024)) + ((((int)threadIdx.x) + 896) & 1023)))];
      placeholder_shared[((((int)threadIdx.x) + 1792))] = placeholder1[(((((rh_outer_outer * 786432) + (((((int)threadIdx.x) + 1792) >> 10) * 262144)) + (rc_outer_outer * 1024)) + ((((int)threadIdx.x) + 768) & 1023)))];
      placeholder_shared[((((int)threadIdx.x) + 2688))] = placeholder1[((((((((((int)threadIdx.x) + 2688) / 3072) * 2359296) + (rh_outer_outer * 786432)) + ((((((int)threadIdx.x) + 2688) % 3072) >> 10) * 262144)) + (rc_outer_outer * 1024)) + ((((int)threadIdx.x) + 640) & 1023)))];
      placeholder_shared[((((int)threadIdx.x) + 3584))] = placeholder1[((((((((((int)threadIdx.x) + 3584) / 3072) * 2359296) + (rh_outer_outer * 786432)) + (((((int)threadIdx.x) + 512) >> 10) * 262144)) + (rc_outer_outer * 1024)) + ((((int)threadIdx.x) + 512) & 1023)))];
      placeholder_shared[((((int)threadIdx.x) + 4480))] = placeholder1[((((((((((int)threadIdx.x) + 4480) / 3072) * 2359296) + (rh_outer_outer * 786432)) + (((((int)threadIdx.x) + 1408) >> 10) * 262144)) + (rc_outer_outer * 1024)) + ((((int)threadIdx.x) + 384) & 1023)))];
      placeholder_shared[((((int)threadIdx.x) + 5376))] = placeholder1[((((((((((int)threadIdx.x) + 5376) / 3072) * 2359296) + (rh_outer_outer * 786432)) + ((((((int)threadIdx.x) + 2304) % 3072) >> 10) * 262144)) + (rc_outer_outer * 1024)) + ((((int)threadIdx.x) + 256) & 1023)))];
      placeholder_shared[((((int)threadIdx.x) + 6272))] = placeholder1[(((((((((int)threadIdx.x) + 6272) / 3072) * 2359296) + (rh_outer_outer * 786432)) + (rc_outer_outer * 1024)) + (((int)threadIdx.x) + 128)))];
      placeholder_shared[((((int)threadIdx.x) + 7168))] = placeholder1[((((((((((int)threadIdx.x) + 7168) / 3072) * 2359296) + (rh_outer_outer * 786432)) + (((((int)threadIdx.x) + 1024) >> 10) * 262144)) + (rc_outer_outer * 1024)) + ((int)threadIdx.x)))];
      placeholder_shared[((((int)threadIdx.x) + 8064))] = placeholder1[((((((((((int)threadIdx.x) + 8064) / 3072) * 2359296) + (rh_outer_outer * 786432)) + (((((int)threadIdx.x) + 1920) >> 10) * 262144)) + (rc_outer_outer * 1024)) + ((((int)threadIdx.x) + 896) & 1023)))];
      if (((int)threadIdx.x) < 256) {
        placeholder_shared[((((int)threadIdx.x) + 8960))] = placeholder1[((((((((((int)threadIdx.x) + 8960) / 3072) * 2359296) + (rh_outer_outer * 786432)) + (((((int)threadIdx.x) + 2816) >> 10) * 262144)) + (rc_outer_outer * 1024)) + (((int)threadIdx.x) + 768)))];
      }
      __syncthreads();
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 7) * 6))] * placeholder_shared[(((((int)threadIdx.x) & 127) * 2))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 7) * 6))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 256))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 1024))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 1280))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 2048))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 2304))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 3072))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 3328))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 44))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 4096))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 44))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 4352))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 46))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 5120))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 46))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 5376))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 84))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 6144))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 84))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 6400))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 86))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 7168))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 86))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 7424))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 88))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 8192))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 88))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 8448))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 7) * 6))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 1))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 7) * 6))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 257))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 1025))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 1281))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 2049))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 2305))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 3073))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 42))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 3329))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 44))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 4097))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 44))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 4353))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 46))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 5121))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 46))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 5377))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 84))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 6145))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 84))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 6401))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 86))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 7169))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 86))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 7425))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 88))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 8193))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 88))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 8449))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 512))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 768))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 1536))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 1792))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 2560))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 2816))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 3584))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 3840))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 45))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 4608))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 45))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 4864))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 47))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 5632))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 47))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 5888))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 85))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 6656))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 85))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 6912))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 87))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 7680))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 87))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 7936))]));
      Conv3dOutput[(0)] = (Conv3dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 89))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 8704))]));
      Conv3dOutput[(2)] = (Conv3dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 89))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 8960))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 513))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 769))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 1537))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 1793))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 2561))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 2817))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 3585))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 43))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 3841))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 45))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 4609))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 45))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 4865))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 47))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 5633))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 47))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 5889))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 85))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 6657))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 85))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 6913))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 87))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 7681))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 87))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 7937))]));
      Conv3dOutput[(1)] = (Conv3dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 89))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 8705))]));
      Conv3dOutput[(3)] = (Conv3dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 7) * 6) + 89))] * placeholder_shared[((((((int)threadIdx.x) & 127) * 2) + 8961))]));
    }
  }
  for (int ax4_inner = 0; ax4_inner < 2; ++ax4_inner) {
    T_relu[(((((((int)blockIdx.x) * 3584) + ((((int)threadIdx.x) >> 7) * 512)) + ((((int)threadIdx.x) & 127) * 2)) + ax4_inner))] = max(((Conv3dOutput[(ax4_inner)] * placeholder2[((((((int)threadIdx.x) & 127) * 2) + ax4_inner))]) + placeholder3[((((((int)threadIdx.x) & 127) * 2) + ax4_inner))]), 0.000000e+00f);
    T_relu[((((((((int)blockIdx.x) * 3584) + ((((int)threadIdx.x) >> 7) * 512)) + ((((int)threadIdx.x) & 127) * 2)) + ax4_inner) + 256))] = max(((Conv3dOutput[((ax4_inner + 2))] * placeholder2[(((((((int)threadIdx.x) & 127) * 2) + ax4_inner) + 256))]) + placeholder3[(((((((int)threadIdx.x) & 127) * 2) + ax4_inner) + 256))]), 0.000000e+00f);
  }
}


