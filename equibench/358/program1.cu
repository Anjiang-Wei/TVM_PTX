
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute) {
  float compute_local[16];
  __shared__ float placeholder_d_shared[128];
  __shared__ float placeholder_shared[64];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(14)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(15)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 32; ++k_outer_outer) {
    __syncthreads();
    ((float2*)(placeholder_d_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder + (((((((((int)blockIdx.x) >> 8) * 65536) + (((((int)blockIdx.x) & 255) >> 4) * 1024)) + ((((int)threadIdx.x) >> 1) * 128)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) & 1) * 2)))))[0];
    ((float2*)(placeholder_d_shared + (((((int)threadIdx.x) * 2) + 16))))[0] = ((float2*)(placeholder + ((((((((((int)blockIdx.x) >> 8) * 65536) + (((((int)blockIdx.x) & 255) >> 4) * 1024)) + ((((int)threadIdx.x) >> 1) * 128)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) & 1) * 2)) + 512))))[0];
    ((float2*)(placeholder_d_shared + (((((int)threadIdx.x) * 2) + 32))))[0] = ((float2*)(placeholder + ((((((((((int)blockIdx.x) >> 8) * 65536) + (((((int)blockIdx.x) & 255) >> 4) * 1024)) + ((((int)threadIdx.x) >> 1) * 128)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) & 1) * 2)) + 16384))))[0];
    ((float2*)(placeholder_d_shared + (((((((((int)threadIdx.x) * 2) + 48) >> 5) * 32) + (((((int)threadIdx.x) >> 1) + 4) * 4)) + ((((int)threadIdx.x) & 1) * 2)))))[0] = ((float2*)(placeholder + ((((((((((int)blockIdx.x) >> 8) * 65536) + ((((((int)threadIdx.x) * 2) + 48) >> 5) * 16384)) + (((((int)blockIdx.x) & 255) >> 4) * 1024)) + (((((int)threadIdx.x) >> 1) + 4) * 128)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) & 1) * 2)))))[0];
    ((float2*)(placeholder_d_shared + (((((int)threadIdx.x) * 2) + 64))))[0] = ((float2*)(placeholder + ((((((((((int)blockIdx.x) >> 8) * 65536) + (((((int)blockIdx.x) & 255) >> 4) * 1024)) + ((((int)threadIdx.x) >> 1) * 128)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) & 1) * 2)) + 32768))))[0];
    ((float2*)(placeholder_d_shared + (((((((((int)threadIdx.x) * 2) + 80) >> 5) * 32) + (((((int)threadIdx.x) >> 1) + 4) * 4)) + ((((int)threadIdx.x) & 1) * 2)))))[0] = ((float2*)(placeholder + ((((((((((int)blockIdx.x) >> 8) * 65536) + ((((((int)threadIdx.x) * 2) + 80) >> 5) * 16384)) + (((((int)blockIdx.x) & 255) >> 4) * 1024)) + (((((int)threadIdx.x) >> 1) + 4) * 128)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) & 1) * 2)))))[0];
    ((float2*)(placeholder_d_shared + (((((int)threadIdx.x) * 2) + 96))))[0] = ((float2*)(placeholder + ((((((((((int)blockIdx.x) >> 8) * 65536) + (((((int)blockIdx.x) & 255) >> 4) * 1024)) + ((((int)threadIdx.x) >> 1) * 128)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) & 1) * 2)) + 49152))))[0];
    ((float2*)(placeholder_d_shared + (((((((((int)threadIdx.x) * 2) + 112) >> 5) * 32) + (((((int)threadIdx.x) >> 1) + 4) * 4)) + ((((int)threadIdx.x) & 1) * 2)))))[0] = ((float2*)(placeholder + ((((((((((int)blockIdx.x) >> 8) * 65536) + ((((((int)threadIdx.x) * 2) + 112) >> 5) * 16384)) + (((((int)blockIdx.x) & 255) >> 4) * 1024)) + (((((int)threadIdx.x) >> 1) + 4) * 128)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) & 1) * 2)))))[0];
    ((float4*)(placeholder_shared + ((((int)threadIdx.x) * 4))))[0] = ((float4*)(placeholder1 + (((((((((int)blockIdx.x) >> 8) * 32768) + ((((int)threadIdx.x) >> 2) * 8192)) + ((((int)blockIdx.x) & 15) * 512)) + ((((int)threadIdx.x) & 3) * 128)) + (k_outer_outer * 4)))))[0];
    ((float4*)(placeholder_shared + (((((int)threadIdx.x) * 4) + 32))))[0] = ((float4*)(placeholder1 + ((((((((((int)blockIdx.x) >> 8) * 32768) + ((((int)threadIdx.x) >> 2) * 8192)) + ((((int)blockIdx.x) & 15) * 512)) + ((((int)threadIdx.x) & 3) * 128)) + (k_outer_outer * 4)) + 16384))))[0];
    __syncthreads();
    compute_local[(0)] = (compute_local[(0)] + (placeholder_d_shared[((((int)threadIdx.x) * 8))] * placeholder_shared[(((((int)threadIdx.x) >> 2) * 16))]));
    compute_local[(8)] = (compute_local[(8)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 64))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 32))]));
    compute_local[(1)] = (compute_local[(1)] + (placeholder_d_shared[((((int)threadIdx.x) * 8))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 4))]));
    compute_local[(9)] = (compute_local[(9)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 64))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 36))]));
    compute_local[(4)] = (compute_local[(4)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 4))] * placeholder_shared[(((((int)threadIdx.x) >> 2) * 16))]));
    compute_local[(12)] = (compute_local[(12)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 68))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 32))]));
    compute_local[(5)] = (compute_local[(5)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 4))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 4))]));
    compute_local[(13)] = (compute_local[(13)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 68))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 36))]));
    compute_local[(0)] = (compute_local[(0)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 1))]));
    compute_local[(8)] = (compute_local[(8)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 65))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 33))]));
    compute_local[(1)] = (compute_local[(1)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 5))]));
    compute_local[(9)] = (compute_local[(9)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 65))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 37))]));
    compute_local[(4)] = (compute_local[(4)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 1))]));
    compute_local[(12)] = (compute_local[(12)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 69))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 33))]));
    compute_local[(5)] = (compute_local[(5)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 5))]));
    compute_local[(13)] = (compute_local[(13)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 69))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 37))]));
    compute_local[(2)] = (compute_local[(2)] + (placeholder_d_shared[((((int)threadIdx.x) * 8))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 8))]));
    compute_local[(10)] = (compute_local[(10)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 64))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 40))]));
    compute_local[(3)] = (compute_local[(3)] + (placeholder_d_shared[((((int)threadIdx.x) * 8))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 12))]));
    compute_local[(11)] = (compute_local[(11)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 64))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 44))]));
    compute_local[(6)] = (compute_local[(6)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 4))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 8))]));
    compute_local[(14)] = (compute_local[(14)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 68))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 40))]));
    compute_local[(7)] = (compute_local[(7)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 4))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 12))]));
    compute_local[(15)] = (compute_local[(15)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 68))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 44))]));
    compute_local[(2)] = (compute_local[(2)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 9))]));
    compute_local[(10)] = (compute_local[(10)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 65))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 41))]));
    compute_local[(3)] = (compute_local[(3)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 13))]));
    compute_local[(11)] = (compute_local[(11)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 65))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 45))]));
    compute_local[(6)] = (compute_local[(6)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 9))]));
    compute_local[(14)] = (compute_local[(14)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 69))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 41))]));
    compute_local[(7)] = (compute_local[(7)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 13))]));
    compute_local[(15)] = (compute_local[(15)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 69))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 45))]));
    compute_local[(0)] = (compute_local[(0)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 2))]));
    compute_local[(8)] = (compute_local[(8)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 66))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 34))]));
    compute_local[(1)] = (compute_local[(1)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 6))]));
    compute_local[(9)] = (compute_local[(9)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 66))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 38))]));
    compute_local[(4)] = (compute_local[(4)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 2))]));
    compute_local[(12)] = (compute_local[(12)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 70))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 34))]));
    compute_local[(5)] = (compute_local[(5)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 6))]));
    compute_local[(13)] = (compute_local[(13)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 70))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 38))]));
    compute_local[(0)] = (compute_local[(0)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 3))]));
    compute_local[(8)] = (compute_local[(8)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 67))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 35))]));
    compute_local[(1)] = (compute_local[(1)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 7))]));
    compute_local[(9)] = (compute_local[(9)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 67))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 39))]));
    compute_local[(4)] = (compute_local[(4)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 3))]));
    compute_local[(12)] = (compute_local[(12)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 71))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 35))]));
    compute_local[(5)] = (compute_local[(5)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 7))]));
    compute_local[(13)] = (compute_local[(13)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 71))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 39))]));
    compute_local[(2)] = (compute_local[(2)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 10))]));
    compute_local[(10)] = (compute_local[(10)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 66))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 42))]));
    compute_local[(3)] = (compute_local[(3)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 14))]));
    compute_local[(11)] = (compute_local[(11)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 66))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 46))]));
    compute_local[(6)] = (compute_local[(6)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 10))]));
    compute_local[(14)] = (compute_local[(14)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 70))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 42))]));
    compute_local[(7)] = (compute_local[(7)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 14))]));
    compute_local[(15)] = (compute_local[(15)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 70))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 46))]));
    compute_local[(2)] = (compute_local[(2)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 11))]));
    compute_local[(10)] = (compute_local[(10)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 67))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 43))]));
    compute_local[(3)] = (compute_local[(3)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 15))]));
    compute_local[(11)] = (compute_local[(11)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 67))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 47))]));
    compute_local[(6)] = (compute_local[(6)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 11))]));
    compute_local[(14)] = (compute_local[(14)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 71))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 43))]));
    compute_local[(7)] = (compute_local[(7)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 15))]));
    compute_local[(15)] = (compute_local[(15)] + (placeholder_d_shared[(((((int)threadIdx.x) * 8) + 71))] * placeholder_shared[((((((int)threadIdx.x) >> 2) * 16) + 47))]));
  }
  for (int i_inner = 0; i_inner < 2; ++i_inner) {
    for (int j_inner = 0; j_inner < 4; ++j_inner) {
      compute[(((((((((((int)blockIdx.x) >> 8) * 32768) + ((((int)threadIdx.x) >> 2) * 8192)) + (((((int)blockIdx.x) & 255) >> 4) * 512)) + ((((int)threadIdx.x) & 3) * 128)) + (i_inner * 64)) + ((((int)blockIdx.x) & 15) * 4)) + j_inner))] = compute_local[(((i_inner * 4) + j_inner))];
      compute[((((((((((((int)blockIdx.x) >> 8) * 32768) + ((((int)threadIdx.x) >> 2) * 8192)) + (((((int)blockIdx.x) & 255) >> 4) * 512)) + ((((int)threadIdx.x) & 3) * 128)) + (i_inner * 64)) + ((((int)blockIdx.x) & 15) * 4)) + j_inner) + 16384))] = compute_local[((((i_inner * 4) + j_inner) + 8))];
    }
  }
}


