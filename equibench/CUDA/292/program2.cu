
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
  float T_dense[32];
  __shared__ float placeholder_d_shared[16];
  __shared__ float placeholder_shared[1000];
  T_dense[(0)] = 0.000000e+00f;
  T_dense[(4)] = 0.000000e+00f;
  T_dense[(1)] = 0.000000e+00f;
  T_dense[(5)] = 0.000000e+00f;
  T_dense[(2)] = 0.000000e+00f;
  T_dense[(6)] = 0.000000e+00f;
  T_dense[(3)] = 0.000000e+00f;
  T_dense[(7)] = 0.000000e+00f;
  T_dense[(8)] = 0.000000e+00f;
  T_dense[(12)] = 0.000000e+00f;
  T_dense[(9)] = 0.000000e+00f;
  T_dense[(13)] = 0.000000e+00f;
  T_dense[(10)] = 0.000000e+00f;
  T_dense[(14)] = 0.000000e+00f;
  T_dense[(11)] = 0.000000e+00f;
  T_dense[(15)] = 0.000000e+00f;
  T_dense[(16)] = 0.000000e+00f;
  T_dense[(20)] = 0.000000e+00f;
  T_dense[(17)] = 0.000000e+00f;
  T_dense[(21)] = 0.000000e+00f;
  T_dense[(18)] = 0.000000e+00f;
  T_dense[(22)] = 0.000000e+00f;
  T_dense[(19)] = 0.000000e+00f;
  T_dense[(23)] = 0.000000e+00f;
  T_dense[(24)] = 0.000000e+00f;
  T_dense[(28)] = 0.000000e+00f;
  T_dense[(25)] = 0.000000e+00f;
  T_dense[(29)] = 0.000000e+00f;
  T_dense[(26)] = 0.000000e+00f;
  T_dense[(30)] = 0.000000e+00f;
  T_dense[(27)] = 0.000000e+00f;
  T_dense[(31)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 1024; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 16) {
      placeholder_d_shared[(((int)threadIdx.x))] = placeholder[(((((((int)threadIdx.x) >> 1) * 2048) + (k_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    }
    ((float2*)(placeholder_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 1024000) + (((int)threadIdx.x) * 2048)) + (k_outer_outer * 2)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 250))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 1024000) + (((int)threadIdx.x) * 2048)) + (k_outer_outer * 2)) + 256000))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 500))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 1024000) + (((int)threadIdx.x) * 2048)) + (k_outer_outer * 2)) + 512000))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 750))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 1024000) + (((int)threadIdx.x) * 2048)) + (k_outer_outer * 2)) + 768000))))[0];
    __syncthreads();
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(0)] * placeholder_shared[((((int)threadIdx.x) * 8))]));
    T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(2)] * placeholder_shared[((((int)threadIdx.x) * 8))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 2))]));
    T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 2))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 4))]));
    T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 4))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 6))]));
    T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 6))]));
    T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(4)] * placeholder_shared[((((int)threadIdx.x) * 8))]));
    T_dense[(12)] = (T_dense[(12)] + (placeholder_d_shared[(6)] * placeholder_shared[((((int)threadIdx.x) * 8))]));
    T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 2))]));
    T_dense[(13)] = (T_dense[(13)] + (placeholder_d_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 2))]));
    T_dense[(10)] = (T_dense[(10)] + (placeholder_d_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 4))]));
    T_dense[(14)] = (T_dense[(14)] + (placeholder_d_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 4))]));
    T_dense[(11)] = (T_dense[(11)] + (placeholder_d_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 6))]));
    T_dense[(15)] = (T_dense[(15)] + (placeholder_d_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 6))]));
    T_dense[(16)] = (T_dense[(16)] + (placeholder_d_shared[(8)] * placeholder_shared[((((int)threadIdx.x) * 8))]));
    T_dense[(20)] = (T_dense[(20)] + (placeholder_d_shared[(10)] * placeholder_shared[((((int)threadIdx.x) * 8))]));
    T_dense[(17)] = (T_dense[(17)] + (placeholder_d_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 2))]));
    T_dense[(21)] = (T_dense[(21)] + (placeholder_d_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 2))]));
    T_dense[(18)] = (T_dense[(18)] + (placeholder_d_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 4))]));
    T_dense[(22)] = (T_dense[(22)] + (placeholder_d_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 4))]));
    T_dense[(19)] = (T_dense[(19)] + (placeholder_d_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 6))]));
    T_dense[(23)] = (T_dense[(23)] + (placeholder_d_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 6))]));
    T_dense[(24)] = (T_dense[(24)] + (placeholder_d_shared[(12)] * placeholder_shared[((((int)threadIdx.x) * 8))]));
    T_dense[(28)] = (T_dense[(28)] + (placeholder_d_shared[(14)] * placeholder_shared[((((int)threadIdx.x) * 8))]));
    T_dense[(25)] = (T_dense[(25)] + (placeholder_d_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 2))]));
    T_dense[(29)] = (T_dense[(29)] + (placeholder_d_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 2))]));
    T_dense[(26)] = (T_dense[(26)] + (placeholder_d_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 4))]));
    T_dense[(30)] = (T_dense[(30)] + (placeholder_d_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 4))]));
    T_dense[(27)] = (T_dense[(27)] + (placeholder_d_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 6))]));
    T_dense[(31)] = (T_dense[(31)] + (placeholder_d_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 6))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 1))]));
    T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 1))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 3))]));
    T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 3))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 5))]));
    T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 5))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 7))]));
    T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 7))]));
    T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 1))]));
    T_dense[(12)] = (T_dense[(12)] + (placeholder_d_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 1))]));
    T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 3))]));
    T_dense[(13)] = (T_dense[(13)] + (placeholder_d_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 3))]));
    T_dense[(10)] = (T_dense[(10)] + (placeholder_d_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 5))]));
    T_dense[(14)] = (T_dense[(14)] + (placeholder_d_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 5))]));
    T_dense[(11)] = (T_dense[(11)] + (placeholder_d_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 7))]));
    T_dense[(15)] = (T_dense[(15)] + (placeholder_d_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 7))]));
    T_dense[(16)] = (T_dense[(16)] + (placeholder_d_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 1))]));
    T_dense[(20)] = (T_dense[(20)] + (placeholder_d_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 1))]));
    T_dense[(17)] = (T_dense[(17)] + (placeholder_d_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 3))]));
    T_dense[(21)] = (T_dense[(21)] + (placeholder_d_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 3))]));
    T_dense[(18)] = (T_dense[(18)] + (placeholder_d_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 5))]));
    T_dense[(22)] = (T_dense[(22)] + (placeholder_d_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 5))]));
    T_dense[(19)] = (T_dense[(19)] + (placeholder_d_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 7))]));
    T_dense[(23)] = (T_dense[(23)] + (placeholder_d_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 7))]));
    T_dense[(24)] = (T_dense[(24)] + (placeholder_d_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 1))]));
    T_dense[(28)] = (T_dense[(28)] + (placeholder_d_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 1))]));
    T_dense[(25)] = (T_dense[(25)] + (placeholder_d_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 3))]));
    T_dense[(29)] = (T_dense[(29)] + (placeholder_d_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 3))]));
    T_dense[(26)] = (T_dense[(26)] + (placeholder_d_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 5))]));
    T_dense[(30)] = (T_dense[(30)] + (placeholder_d_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 5))]));
    T_dense[(27)] = (T_dense[(27)] + (placeholder_d_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 7))]));
    T_dense[(31)] = (T_dense[(31)] + (placeholder_d_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 8) + 7))]));
  }
  for (int ax0_inner = 0; ax0_inner < 8; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
      T_add[(((((ax0_inner * 1000) + (((int)blockIdx.x) * 500)) + (((int)threadIdx.x) * 4)) + ax1_inner))] = (T_dense[(((ax0_inner * 4) + ax1_inner))] + placeholder2[((((((int)blockIdx.x) * 500) + (((int)threadIdx.x) * 4)) + ax1_inner))]);
    }
  }
}


