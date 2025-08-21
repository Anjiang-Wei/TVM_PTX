
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
  float T_dense[10];
  __shared__ float placeholder_d_shared[16];
  __shared__ float placeholder_shared[400];
  T_dense[(0)] = 0.000000e+00f;
  T_dense[(1)] = 0.000000e+00f;
  T_dense[(2)] = 0.000000e+00f;
  T_dense[(3)] = 0.000000e+00f;
  T_dense[(4)] = 0.000000e+00f;
  T_dense[(5)] = 0.000000e+00f;
  T_dense[(6)] = 0.000000e+00f;
  T_dense[(7)] = 0.000000e+00f;
  T_dense[(8)] = 0.000000e+00f;
  T_dense[(9)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 128; ++k_outer_outer) {
    __syncthreads();
    placeholder_d_shared[(((int)threadIdx.x))] = placeholder[(((((((int)threadIdx.x) >> 3) * 1024) + (k_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    if (((int)threadIdx.x) < 6) {
      placeholder_d_shared[((((int)threadIdx.x) + 10))] = placeholder[((((((((int)threadIdx.x) + 10) >> 3) * 1024) + (k_outer_outer * 8)) + (((int)threadIdx.x) + 2)))];
    }
    ((float2*)(placeholder_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 51200) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_outer_outer * 8)) + ((((int)threadIdx.x) & 3) * 2)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 20))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 51200) + ((((((int)threadIdx.x) * 2) + 20) >> 3) * 1024)) + (k_outer_outer * 8)) + (((((int)threadIdx.x) * 2) + 4) & 7)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 40))))[0] = ((float2*)(placeholder1 + ((((((((int)blockIdx.x) * 51200) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_outer_outer * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 5120))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 60))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 51200) + ((((((int)threadIdx.x) * 2) + 60) >> 3) * 1024)) + (k_outer_outer * 8)) + (((((int)threadIdx.x) * 2) + 4) & 7)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 80))))[0] = ((float2*)(placeholder1 + ((((((((int)blockIdx.x) * 51200) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_outer_outer * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 10240))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 100))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 51200) + ((((((int)threadIdx.x) * 2) + 100) >> 3) * 1024)) + (k_outer_outer * 8)) + (((((int)threadIdx.x) * 2) + 4) & 7)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 120))))[0] = ((float2*)(placeholder1 + ((((((((int)blockIdx.x) * 51200) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_outer_outer * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 15360))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 140))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 51200) + ((((((int)threadIdx.x) * 2) + 140) >> 3) * 1024)) + (k_outer_outer * 8)) + (((((int)threadIdx.x) * 2) + 4) & 7)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 160))))[0] = ((float2*)(placeholder1 + ((((((((int)blockIdx.x) * 51200) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_outer_outer * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 20480))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 180))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 51200) + ((((((int)threadIdx.x) * 2) + 180) >> 3) * 1024)) + (k_outer_outer * 8)) + (((((int)threadIdx.x) * 2) + 4) & 7)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 200))))[0] = ((float2*)(placeholder1 + ((((((((int)blockIdx.x) * 51200) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_outer_outer * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 25600))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 220))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 51200) + ((((((int)threadIdx.x) * 2) + 220) >> 3) * 1024)) + (k_outer_outer * 8)) + (((((int)threadIdx.x) * 2) + 4) & 7)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 240))))[0] = ((float2*)(placeholder1 + ((((((((int)blockIdx.x) * 51200) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_outer_outer * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 30720))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 260))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 51200) + ((((((int)threadIdx.x) * 2) + 260) >> 3) * 1024)) + (k_outer_outer * 8)) + (((((int)threadIdx.x) * 2) + 4) & 7)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 280))))[0] = ((float2*)(placeholder1 + ((((((((int)blockIdx.x) * 51200) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_outer_outer * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 35840))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 300))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 51200) + ((((((int)threadIdx.x) * 2) + 300) >> 3) * 1024)) + (k_outer_outer * 8)) + (((((int)threadIdx.x) * 2) + 4) & 7)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 320))))[0] = ((float2*)(placeholder1 + ((((((((int)blockIdx.x) * 51200) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_outer_outer * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 40960))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 340))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 51200) + ((((((int)threadIdx.x) * 2) + 340) >> 3) * 1024)) + (k_outer_outer * 8)) + (((((int)threadIdx.x) * 2) + 4) & 7)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 360))))[0] = ((float2*)(placeholder1 + ((((((((int)blockIdx.x) * 51200) + ((((int)threadIdx.x) >> 2) * 1024)) + (k_outer_outer * 8)) + ((((int)threadIdx.x) & 3) * 2)) + 46080))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 380))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 51200) + ((((((int)threadIdx.x) * 2) + 380) >> 3) * 1024)) + (k_outer_outer * 8)) + (((((int)threadIdx.x) * 2) + 4) & 7)))))[0];
    __syncthreads();
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(0)] * placeholder_shared[((((int)threadIdx.x) * 40))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 8))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 16))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 24))]));
    T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 32))]));
    T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(8)] * placeholder_shared[((((int)threadIdx.x) * 40))]));
    T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 8))]));
    T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 16))]));
    T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 24))]));
    T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 32))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 1))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 9))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 17))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 25))]));
    T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 33))]));
    T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 1))]));
    T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 9))]));
    T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 17))]));
    T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 25))]));
    T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 33))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 2))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 10))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 18))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 26))]));
    T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 34))]));
    T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 2))]));
    T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 10))]));
    T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 18))]));
    T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 26))]));
    T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 34))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 3))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 11))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 19))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 27))]));
    T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 35))]));
    T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 3))]));
    T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 11))]));
    T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 19))]));
    T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 27))]));
    T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 35))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 4))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 12))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 20))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 28))]));
    T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 36))]));
    T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 4))]));
    T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 12))]));
    T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 20))]));
    T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 28))]));
    T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 36))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 5))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 13))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 21))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 29))]));
    T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 37))]));
    T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 5))]));
    T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 13))]));
    T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 21))]));
    T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 29))]));
    T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 37))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 6))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 14))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 22))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 30))]));
    T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 38))]));
    T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 6))]));
    T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 14))]));
    T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 22))]));
    T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 30))]));
    T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 38))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 7))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 15))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 23))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 31))]));
    T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 39))]));
    T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 7))]));
    T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 15))]));
    T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 23))]));
    T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 31))]));
    T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 40) + 39))]));
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 5; ++ax1_inner) {
      T_add[(((((ax0_inner * 1000) + (((int)blockIdx.x) * 50)) + (((int)threadIdx.x) * 5)) + ax1_inner))] = (T_dense[(((ax0_inner * 5) + ax1_inner))] + placeholder2[((((((int)blockIdx.x) * 50) + (((int)threadIdx.x) * 5)) + ax1_inner))]);
    }
  }
}


