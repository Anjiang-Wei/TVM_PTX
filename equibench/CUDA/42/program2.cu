
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
  float Conv2dOutput[16];
  __shared__ float PaddedInput_shared[672];
  __shared__ float placeholder_shared[768];
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
    PaddedInput_shared[((((int)threadIdx.x) * 2))] = placeholder[((((((((((int)blockIdx.x) / 7) * 150528) + ((((int)threadIdx.x) / 168) * 75264)) + ((((int)blockIdx.x) % 7) * 10752)) + (((((int)threadIdx.x) % 168) / 6) * 384)) + (rc_outer_outer * 12)) + ((((int)threadIdx.x) % 6) * 2)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder[((((((((((int)blockIdx.x) / 7) * 150528) + ((((((int)threadIdx.x) * 2) + 1) / 336) * 75264)) + ((((int)blockIdx.x) % 7) * 10752)) + (((((((int)threadIdx.x) * 2) + 1) % 336) / 12) * 384)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 2) + 1) % 12)))];
    if (((int)threadIdx.x) < 112) {
      PaddedInput_shared[(((((int)threadIdx.x) * 2) + 448))] = placeholder[((((((((((int)blockIdx.x) / 7) * 150528) + ((((((int)threadIdx.x) * 2) + 448) / 336) * 75264)) + ((((int)blockIdx.x) % 7) * 10752)) + ((((((int)threadIdx.x) * 2) + 112) / 12) * 384)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 2) + 4) % 12)))];
    }
    if (((int)threadIdx.x) < 112) {
      PaddedInput_shared[(((((int)threadIdx.x) * 2) + 449))] = placeholder[((((((((((int)blockIdx.x) / 7) * 150528) + ((((((int)threadIdx.x) * 2) + 449) / 336) * 75264)) + ((((int)blockIdx.x) % 7) * 10752)) + ((((((int)threadIdx.x) * 2) + 113) / 12) * 384)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 2) + 5) % 12)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 768) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[((((rc_outer_outer * 768) + ((int)threadIdx.x)) + 224))];
    placeholder_shared[((((int)threadIdx.x) + 448))] = placeholder1[((((rc_outer_outer * 768) + ((int)threadIdx.x)) + 448))];
    if (((int)threadIdx.x) < 96) {
      placeholder_shared[((((int)threadIdx.x) + 672))] = placeholder1[((((rc_outer_outer * 768) + ((int)threadIdx.x)) + 672))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 12))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 2))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 12))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 32))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 336))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 2))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 336))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 32))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 168))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 2))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 168))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 32))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 504))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 2))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 504))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 32))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 64))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 96))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 337))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 64))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 337))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 96))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 169))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 64))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 169))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 96))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 505))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 64))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 505))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 96))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 128))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 160))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 338))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 128))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 338))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 160))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 170))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 128))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 170))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 160))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 506))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 128))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 506))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 160))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 192))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 224))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 339))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 192))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 339))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 224))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 171))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 192))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 171))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 224))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 507))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 192))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 507))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 224))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 256))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 288))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 340))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 256))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 340))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 288))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 172))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 256))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 172))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 288))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 508))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 256))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 508))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 288))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 320))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 352))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 341))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 320))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 341))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 352))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 173))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 320))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 173))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 352))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 509))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 320))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 509))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 352))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 384))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 416))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 342))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 384))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 342))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 416))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 174))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 384))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 174))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 416))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 510))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 384))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 510))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 416))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 448))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 480))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 343))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 448))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 343))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 480))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 175))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 448))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 175))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 480))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 511))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 448))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 511))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 480))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 512))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 544))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 344))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 512))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 344))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 544))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 176))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 512))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 176))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 544))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 512))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 512))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 512))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 544))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 576))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 608))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 345))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 576))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 345))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 608))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 177))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 576))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 177))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 608))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 513))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 576))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 513))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 608))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 640))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 672))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 346))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 640))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 346))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 672))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 178))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 640))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 178))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 672))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 514))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 640))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 514))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 672))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 704))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 736))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 347))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 704))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 347))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 736))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 179))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 704))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 179))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 736))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 515))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 704))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 515))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 736))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 12))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 1))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) >> 4) * 12))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 33))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 336))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 1))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 336))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 33))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 168))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 1))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 168))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 33))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 504))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 1))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 504))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 33))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 65))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 97))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 337))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 65))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 337))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 97))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 169))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 65))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 169))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 97))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 505))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 65))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 505))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 97))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 129))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 161))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 338))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 129))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 338))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 161))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 170))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 129))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 170))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 161))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 506))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 129))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 506))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 161))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 193))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 225))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 339))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 193))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 339))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 225))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 171))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 193))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 171))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 225))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 507))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 193))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 507))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 225))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 257))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 289))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 340))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 257))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 340))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 289))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 172))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 257))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 172))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 289))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 508))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 257))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 508))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 289))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 321))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 353))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 341))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 321))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 341))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 353))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 173))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 321))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 173))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 353))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 509))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 321))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 509))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 353))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 385))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 417))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 342))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 385))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 342))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 417))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 174))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 385))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 174))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 417))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 510))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 385))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 510))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 417))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 449))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 481))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 343))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 449))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 343))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 481))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 175))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 449))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 175))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 481))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 511))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 449))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 511))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 481))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 513))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 8))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 545))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 344))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 513))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 344))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 545))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 176))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 513))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 176))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 545))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 512))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 513))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 512))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 545))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 577))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 9))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 609))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 345))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 577))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 345))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 609))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 177))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 577))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 177))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 609))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 513))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 577))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 513))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 609))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 641))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 10))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 673))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 346))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 641))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 346))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 673))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 178))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 641))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 178))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 673))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 514))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 641))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 514))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 673))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 705))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 11))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 737))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 347))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 705))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 347))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 737))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 179))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 705))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 179))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 737))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 515))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 705))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 4) * 12) + 515))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 2) + 737))]));
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_add[((((((((((int)blockIdx.x) / 7) * 25088) + ((((int)blockIdx.x) % 7) * 1792)) + (ax1_inner * 896)) + ((((int)threadIdx.x) >> 4) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))] = (placeholder2[((((((((((int)blockIdx.x) / 7) * 25088) + ((((int)blockIdx.x) % 7) * 1792)) + (ax1_inner * 896)) + ((((int)threadIdx.x) >> 4) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner))] + (Conv2dOutput[(((ax1_inner * 2) + ax3_inner))] + placeholder3[((((((int)threadIdx.x) & 15) * 2) + ax3_inner))]));
      T_add[(((((((((((int)blockIdx.x) / 7) * 25088) + ((((int)blockIdx.x) % 7) * 1792)) + (ax1_inner * 896)) + ((((int)threadIdx.x) >> 4) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))] = (placeholder2[(((((((((((int)blockIdx.x) / 7) * 25088) + ((((int)blockIdx.x) % 7) * 1792)) + (ax1_inner * 896)) + ((((int)threadIdx.x) >> 4) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 32))] + (Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 4))] + placeholder3[(((((((int)threadIdx.x) & 15) * 2) + ax3_inner) + 32))]));
      T_add[(((((((((((int)blockIdx.x) / 7) * 25088) + ((((int)blockIdx.x) % 7) * 1792)) + (ax1_inner * 896)) + ((((int)threadIdx.x) >> 4) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 12544))] = (placeholder2[(((((((((((int)blockIdx.x) / 7) * 25088) + ((((int)blockIdx.x) % 7) * 1792)) + (ax1_inner * 896)) + ((((int)threadIdx.x) >> 4) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 12544))] + (Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 8))] + placeholder3[((((((int)threadIdx.x) & 15) * 2) + ax3_inner))]));
      T_add[(((((((((((int)blockIdx.x) / 7) * 25088) + ((((int)blockIdx.x) % 7) * 1792)) + (ax1_inner * 896)) + ((((int)threadIdx.x) >> 4) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 12576))] = (placeholder2[(((((((((((int)blockIdx.x) / 7) * 25088) + ((((int)blockIdx.x) % 7) * 1792)) + (ax1_inner * 896)) + ((((int)threadIdx.x) >> 4) * 64)) + ((((int)threadIdx.x) & 15) * 2)) + ax3_inner) + 12576))] + (Conv2dOutput[((((ax1_inner * 2) + ax3_inner) + 12))] + placeholder3[(((((((int)threadIdx.x) & 15) * 2) + ax3_inner) + 32))]));
    }
  }
}


