
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
  float Conv2dOutput[14];
  __shared__ float PaddedInput_shared[392];
  __shared__ float placeholder_shared[2];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 192; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 28; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 14) + ((int)threadIdx.x)))] = placeholder[(((((((((int)blockIdx.x) >> 6) * 75264) + (ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2688)) + ((((int)threadIdx.x) >> 1) * 384)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    }
    if (((int)threadIdx.x) < 1) {
      int2 _1 = (make_int2)(((((((int)threadIdx.x) * 24576) + (rc_outer_outer * 128)) + (((int)blockIdx.x) & 63)))+(64*0), ((((((int)threadIdx.x) * 24576) + (rc_outer_outer * 128)) + (((int)blockIdx.x) & 63)))+(64*1));
      ((float2*)(placeholder_shared + ((((int)threadIdx.x) * 2))))[0] = make_float2(placeholder1[_1.x],placeholder1[_1.y]);
    }
    __syncthreads();
    for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 28) + rc_inner))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 2))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 4))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 6))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 8))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 10))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 12))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 14))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 16))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 18))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 20))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 22))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 24))] * placeholder_shared[(rc_inner)]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[((((((int)threadIdx.x) * 28) + rc_inner) + 26))] * placeholder_shared[(rc_inner)]));
    }
  }
  T_add[(((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)))] = (placeholder2[(((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)))] + (Conv2dOutput[(0)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 64))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 64))] + (Conv2dOutput[(1)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 128))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 128))] + (Conv2dOutput[(2)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 192))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 192))] + (Conv2dOutput[(3)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 256))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 256))] + (Conv2dOutput[(4)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 320))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 320))] + (Conv2dOutput[(5)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 384))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 384))] + (Conv2dOutput[(6)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 448))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 448))] + (Conv2dOutput[(7)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 512))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 512))] + (Conv2dOutput[(8)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 576))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 576))] + (Conv2dOutput[(9)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 640))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 640))] + (Conv2dOutput[(10)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 704))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 704))] + (Conv2dOutput[(11)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 768))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 768))] + (Conv2dOutput[(12)] + placeholder3[((((int)blockIdx.x) & 63))]));
  T_add[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 832))] = (placeholder2[((((((((int)blockIdx.x) >> 6) * 12544) + (((int)threadIdx.x) * 896)) + (((int)blockIdx.x) & 63)) + 832))] + (Conv2dOutput[(13)] + placeholder3[((((int)blockIdx.x) & 63))]));
}


