
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
  float DepthwiseConv2d[56];
  __shared__ float PaddedInput_shared[3364];
  __shared__ float placeholder_shared[9];
  for (int i_inner_init = 0; i_inner_init < 56; ++i_inner_init) {
    DepthwiseConv2d[(i_inner_init)] = 0.000000e+00f;
  }
  for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 61; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
    if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) < 3364) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)))] = (((((58 <= ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x))) && (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) < 3306)) && (1 <= (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 58))) && ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 58) < 57)) ? placeholder[(((((((((int)blockIdx.x) / 72) * 225792) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) / 58) * 4032)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 56) + ((int)threadIdx.x)) % 58) * 72)) + (((int)blockIdx.x) % 72)) - 4104))] : 0.000000e+00f);
    }
  }
  if (((int)threadIdx.x) < 3) {
    int3 _1 = (make_int3)((((((int)threadIdx.x) * 216) + (((int)blockIdx.x) % 72)))+(72*0), (((((int)threadIdx.x) * 216) + (((int)blockIdx.x) % 72)))+(72*1), (((((int)threadIdx.x) * 216) + (((int)blockIdx.x) % 72)))+(72*2));
    ((float3*)(placeholder_shared + ((((int)threadIdx.x) * 3))))[0] = make_float3(placeholder1[_1.x],placeholder1[_1.y],placeholder1[_1.z]);
  }
  __syncthreads();
  for (int di_outer_inner = 0; di_outer_inner < 3; ++di_outer_inner) {
    for (int dj_inner = 0; dj_inner < 3; ++dj_inner) {
      for (int i_inner = 0; i_inner < 56; ++i_inner) {
        DepthwiseConv2d[(i_inner)] = (DepthwiseConv2d[(i_inner)] + (PaddedInput_shared[(((((i_inner * 58) + (di_outer_inner * 58)) + ((int)threadIdx.x)) + dj_inner))] * placeholder_shared[(((di_outer_inner * 3) + dj_inner))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 56; ++ax1_inner) {
    T_relu[((((((((int)blockIdx.x) / 72) * 225792) + (ax1_inner * 4032)) + (((int)threadIdx.x) * 72)) + (((int)blockIdx.x) % 72)))] = max((DepthwiseConv2d[(ax1_inner)] + placeholder2[((((int)blockIdx.x) % 72))]), 0.000000e+00f);
  }
}


