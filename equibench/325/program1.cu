
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_multiply, float* __restrict__ DepthwiseConv2d, float* __restrict__ placeholder) {
  T_multiply[(((((int)blockIdx.x) * 3) + ((int)threadIdx.x)))] = ((DepthwiseConv2d[(((((int)blockIdx.x) * 3) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 3) + ((int)threadIdx.x)) % 672))]) * (max(min(((DepthwiseConv2d[(((((int)blockIdx.x) * 3) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 3) + ((int)threadIdx.x)) % 672))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ DepthwiseConv2d) {
  float DepthwiseConv2d_local[98];
  __shared__ float PaddedInput_shared[7072];
  __shared__ float placeholder_shared[160];
  for (int i_c_inner_init = 0; i_c_inner_init < 7; ++i_c_inner_init) {
    DepthwiseConv2d_local[((i_c_inner_init * 7))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 49))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 1))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 50))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 2))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 51))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 3))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 52))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 4))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 53))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 5))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 54))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 6))] = 0.000000e+00f;
    DepthwiseConv2d_local[(((i_c_inner_init * 7) + 55))] = 0.000000e+00f;
  }
  for (int dj_outer_outer = 0; dj_outer_outer < 5; ++dj_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 442; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)))] = (((((832 <= ((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x))) && (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) < 6656)) && (2 <= (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) % 416) >> 5) + dj_outer_outer))) && ((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) % 416) >> 5) + dj_outer_outer) < 16)) ? placeholder[((((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) / 416) * 9408) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) % 416) >> 5) * 672)) + (dj_outer_outer * 672)) + (((int)blockIdx.x) * 32)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 16) + ((int)threadIdx.x)) & 31)) - 20160))] : 0.000000e+00f);
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((dj_outer_outer * 672) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 16))] = placeholder1[(((((dj_outer_outer * 672) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)) + 16))];
    placeholder_shared[((((int)threadIdx.x) + 32))] = placeholder1[(((((dj_outer_outer * 672) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)) + 3360))];
    placeholder_shared[((((int)threadIdx.x) + 48))] = placeholder1[(((((((((int)threadIdx.x) + 48) >> 5) * 3360) + (dj_outer_outer * 672)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 16)))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[(((((dj_outer_outer * 672) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)) + 6720))];
    placeholder_shared[((((int)threadIdx.x) + 80))] = placeholder1[(((((((((int)threadIdx.x) + 80) >> 5) * 3360) + (dj_outer_outer * 672)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 16)))];
    placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[(((((dj_outer_outer * 672) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)) + 10080))];
    placeholder_shared[((((int)threadIdx.x) + 112))] = placeholder1[(((((((((int)threadIdx.x) + 112) >> 5) * 3360) + (dj_outer_outer * 672)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 16)))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[(((((dj_outer_outer * 672) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)) + 13440))];
    placeholder_shared[((((int)threadIdx.x) + 144))] = placeholder1[(((((((((int)threadIdx.x) + 144) >> 5) * 3360) + (dj_outer_outer * 672)) + (((int)blockIdx.x) * 32)) + (((int)threadIdx.x) + 16)))];
    __syncthreads();
    for (int di_outer_inner = 0; di_outer_inner < 5; ++di_outer_inner) {
      for (int i_c_inner = 0; i_c_inner < 7; ++i_c_inner) {
        DepthwiseConv2d_local[((i_c_inner * 7))] = (DepthwiseConv2d_local[((i_c_inner * 7))] + (PaddedInput_shared[((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)))] * placeholder_shared[(((di_outer_inner * 32) + ((int)threadIdx.x)))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 49))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 49))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 16))] * placeholder_shared[((((di_outer_inner * 32) + ((int)threadIdx.x)) + 16))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 1))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 1))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 64))] * placeholder_shared[(((di_outer_inner * 32) + ((int)threadIdx.x)))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 50))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 50))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 80))] * placeholder_shared[((((di_outer_inner * 32) + ((int)threadIdx.x)) + 16))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 2))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 2))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 128))] * placeholder_shared[(((di_outer_inner * 32) + ((int)threadIdx.x)))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 51))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 51))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 144))] * placeholder_shared[((((di_outer_inner * 32) + ((int)threadIdx.x)) + 16))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 3))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 3))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 192))] * placeholder_shared[(((di_outer_inner * 32) + ((int)threadIdx.x)))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 52))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 52))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 208))] * placeholder_shared[((((di_outer_inner * 32) + ((int)threadIdx.x)) + 16))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 4))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 4))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 256))] * placeholder_shared[(((di_outer_inner * 32) + ((int)threadIdx.x)))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 53))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 53))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 272))] * placeholder_shared[((((di_outer_inner * 32) + ((int)threadIdx.x)) + 16))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 5))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 5))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 320))] * placeholder_shared[(((di_outer_inner * 32) + ((int)threadIdx.x)))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 54))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 54))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 336))] * placeholder_shared[((((di_outer_inner * 32) + ((int)threadIdx.x)) + 16))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 6))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 6))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 384))] * placeholder_shared[(((di_outer_inner * 32) + ((int)threadIdx.x)))]));
        DepthwiseConv2d_local[(((i_c_inner * 7) + 55))] = (DepthwiseConv2d_local[(((i_c_inner * 7) + 55))] + (PaddedInput_shared[(((((i_c_inner * 832) + (di_outer_inner * 416)) + ((int)threadIdx.x)) + 400))] * placeholder_shared[((((di_outer_inner * 32) + ((int)threadIdx.x)) + 16))]));
      }
    }
  }
  for (int i_inner = 0; i_inner < 7; ++i_inner) {
    for (int j_inner = 0; j_inner < 7; ++j_inner) {
      DepthwiseConv2d[(((((i_inner * 4704) + (j_inner * 672)) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)))] = DepthwiseConv2d_local[(((i_inner * 7) + j_inner))];
      DepthwiseConv2d[((((((i_inner * 4704) + (j_inner * 672)) + (((int)blockIdx.x) * 32)) + ((int)threadIdx.x)) + 16))] = DepthwiseConv2d_local[((((i_inner * 7) + j_inner) + 49))];
    }
  }
}


