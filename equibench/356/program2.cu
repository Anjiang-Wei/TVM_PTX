
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
  float compute_local[32];
  __shared__ float placeholder_d_shared[512];
  __shared__ float placeholder_shared[1024];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(16)] = 0.000000e+00f;
  compute_local[(24)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(17)] = 0.000000e+00f;
  compute_local[(25)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(18)] = 0.000000e+00f;
  compute_local[(26)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(19)] = 0.000000e+00f;
  compute_local[(27)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(20)] = 0.000000e+00f;
  compute_local[(28)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  compute_local[(21)] = 0.000000e+00f;
  compute_local[(29)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(14)] = 0.000000e+00f;
  compute_local[(22)] = 0.000000e+00f;
  compute_local[(30)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(15)] = 0.000000e+00f;
  compute_local[(23)] = 0.000000e+00f;
  compute_local[(31)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 64; ++k_outer_outer) {
    __syncthreads();
    placeholder_d_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)blockIdx.x) >> 3) * 262144) + ((((int)threadIdx.x) >> 7) * 65536)) + ((((int)blockIdx.x) & 7) * 8192)) + (((((int)threadIdx.x) & 127) >> 2) * 256)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    placeholder_d_shared[((((int)threadIdx.x) + 256))] = placeholder[(((((((((((int)blockIdx.x) >> 3) * 262144) + ((((int)threadIdx.x) >> 7) * 65536)) + ((((int)blockIdx.x) & 7) * 8192)) + (((((int)threadIdx.x) & 127) >> 2) * 256)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 131072))];
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)threadIdx.x) >> 2) * 256)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 256))] = placeholder1[(((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)threadIdx.x) >> 2) * 256)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 16384))];
    placeholder_shared[((((int)threadIdx.x) + 512))] = placeholder1[(((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)threadIdx.x) >> 2) * 256)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 32768))];
    placeholder_shared[((((int)threadIdx.x) + 768))] = placeholder1[(((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)threadIdx.x) >> 2) * 256)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 49152))];
    __syncthreads();
    compute_local[(0)] = (compute_local[(0)] + (placeholder_d_shared[(((((int)threadIdx.x) >> 4) * 8))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 16))]));
    compute_local[(8)] = (compute_local[(8)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 256))]));
    compute_local[(16)] = (compute_local[(16)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 256))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 512))]));
    compute_local[(24)] = (compute_local[(24)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 384))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 768))]));
    compute_local[(1)] = (compute_local[(1)] + (placeholder_d_shared[(((((int)threadIdx.x) >> 4) * 8))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 4))]));
    compute_local[(9)] = (compute_local[(9)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 260))]));
    compute_local[(17)] = (compute_local[(17)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 256))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 516))]));
    compute_local[(25)] = (compute_local[(25)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 384))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 772))]));
    compute_local[(2)] = (compute_local[(2)] + (placeholder_d_shared[(((((int)threadIdx.x) >> 4) * 8))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 8))]));
    compute_local[(10)] = (compute_local[(10)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 264))]));
    compute_local[(18)] = (compute_local[(18)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 256))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 520))]));
    compute_local[(26)] = (compute_local[(26)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 384))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 776))]));
    compute_local[(3)] = (compute_local[(3)] + (placeholder_d_shared[(((((int)threadIdx.x) >> 4) * 8))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 12))]));
    compute_local[(11)] = (compute_local[(11)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 128))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 268))]));
    compute_local[(19)] = (compute_local[(19)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 256))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 524))]));
    compute_local[(27)] = (compute_local[(27)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 384))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 780))]));
    compute_local[(0)] = (compute_local[(0)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 1))]));
    compute_local[(8)] = (compute_local[(8)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 257))]));
    compute_local[(16)] = (compute_local[(16)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 257))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 513))]));
    compute_local[(24)] = (compute_local[(24)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 385))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 769))]));
    compute_local[(1)] = (compute_local[(1)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 5))]));
    compute_local[(9)] = (compute_local[(9)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 261))]));
    compute_local[(17)] = (compute_local[(17)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 257))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 517))]));
    compute_local[(25)] = (compute_local[(25)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 385))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 773))]));
    compute_local[(2)] = (compute_local[(2)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 9))]));
    compute_local[(10)] = (compute_local[(10)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 265))]));
    compute_local[(18)] = (compute_local[(18)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 257))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 521))]));
    compute_local[(26)] = (compute_local[(26)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 385))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 777))]));
    compute_local[(3)] = (compute_local[(3)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 1))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 13))]));
    compute_local[(11)] = (compute_local[(11)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 129))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 269))]));
    compute_local[(19)] = (compute_local[(19)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 257))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 525))]));
    compute_local[(27)] = (compute_local[(27)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 385))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 781))]));
    compute_local[(0)] = (compute_local[(0)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 2))]));
    compute_local[(8)] = (compute_local[(8)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 258))]));
    compute_local[(16)] = (compute_local[(16)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 258))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 514))]));
    compute_local[(24)] = (compute_local[(24)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 386))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 770))]));
    compute_local[(1)] = (compute_local[(1)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 6))]));
    compute_local[(9)] = (compute_local[(9)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 262))]));
    compute_local[(17)] = (compute_local[(17)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 258))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 518))]));
    compute_local[(25)] = (compute_local[(25)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 386))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 774))]));
    compute_local[(2)] = (compute_local[(2)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 10))]));
    compute_local[(10)] = (compute_local[(10)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 266))]));
    compute_local[(18)] = (compute_local[(18)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 258))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 522))]));
    compute_local[(26)] = (compute_local[(26)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 386))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 778))]));
    compute_local[(3)] = (compute_local[(3)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 2))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 14))]));
    compute_local[(11)] = (compute_local[(11)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 130))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 270))]));
    compute_local[(19)] = (compute_local[(19)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 258))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 526))]));
    compute_local[(27)] = (compute_local[(27)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 386))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 782))]));
    compute_local[(0)] = (compute_local[(0)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 3))]));
    compute_local[(8)] = (compute_local[(8)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 259))]));
    compute_local[(16)] = (compute_local[(16)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 259))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 515))]));
    compute_local[(24)] = (compute_local[(24)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 387))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 771))]));
    compute_local[(1)] = (compute_local[(1)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 7))]));
    compute_local[(9)] = (compute_local[(9)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 263))]));
    compute_local[(17)] = (compute_local[(17)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 259))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 519))]));
    compute_local[(25)] = (compute_local[(25)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 387))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 775))]));
    compute_local[(2)] = (compute_local[(2)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 11))]));
    compute_local[(10)] = (compute_local[(10)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 267))]));
    compute_local[(18)] = (compute_local[(18)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 259))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 523))]));
    compute_local[(26)] = (compute_local[(26)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 387))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 779))]));
    compute_local[(3)] = (compute_local[(3)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 3))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 15))]));
    compute_local[(11)] = (compute_local[(11)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 131))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 271))]));
    compute_local[(19)] = (compute_local[(19)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 259))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 527))]));
    compute_local[(27)] = (compute_local[(27)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 387))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 783))]));
    compute_local[(4)] = (compute_local[(4)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 4))] * placeholder_shared[(((((int)threadIdx.x) & 15) * 16))]));
    compute_local[(12)] = (compute_local[(12)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 256))]));
    compute_local[(20)] = (compute_local[(20)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 260))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 512))]));
    compute_local[(28)] = (compute_local[(28)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 388))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 768))]));
    compute_local[(5)] = (compute_local[(5)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 4))]));
    compute_local[(13)] = (compute_local[(13)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 260))]));
    compute_local[(21)] = (compute_local[(21)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 260))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 516))]));
    compute_local[(29)] = (compute_local[(29)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 388))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 772))]));
    compute_local[(6)] = (compute_local[(6)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 8))]));
    compute_local[(14)] = (compute_local[(14)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 264))]));
    compute_local[(22)] = (compute_local[(22)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 260))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 520))]));
    compute_local[(30)] = (compute_local[(30)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 388))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 776))]));
    compute_local[(7)] = (compute_local[(7)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 4))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 12))]));
    compute_local[(15)] = (compute_local[(15)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 132))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 268))]));
    compute_local[(23)] = (compute_local[(23)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 260))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 524))]));
    compute_local[(31)] = (compute_local[(31)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 388))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 780))]));
    compute_local[(4)] = (compute_local[(4)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 1))]));
    compute_local[(12)] = (compute_local[(12)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 257))]));
    compute_local[(20)] = (compute_local[(20)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 261))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 513))]));
    compute_local[(28)] = (compute_local[(28)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 389))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 769))]));
    compute_local[(5)] = (compute_local[(5)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 5))]));
    compute_local[(13)] = (compute_local[(13)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 261))]));
    compute_local[(21)] = (compute_local[(21)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 261))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 517))]));
    compute_local[(29)] = (compute_local[(29)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 389))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 773))]));
    compute_local[(6)] = (compute_local[(6)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 9))]));
    compute_local[(14)] = (compute_local[(14)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 265))]));
    compute_local[(22)] = (compute_local[(22)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 261))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 521))]));
    compute_local[(30)] = (compute_local[(30)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 389))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 777))]));
    compute_local[(7)] = (compute_local[(7)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 5))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 13))]));
    compute_local[(15)] = (compute_local[(15)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 133))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 269))]));
    compute_local[(23)] = (compute_local[(23)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 261))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 525))]));
    compute_local[(31)] = (compute_local[(31)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 389))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 781))]));
    compute_local[(4)] = (compute_local[(4)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 2))]));
    compute_local[(12)] = (compute_local[(12)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 258))]));
    compute_local[(20)] = (compute_local[(20)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 262))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 514))]));
    compute_local[(28)] = (compute_local[(28)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 390))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 770))]));
    compute_local[(5)] = (compute_local[(5)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 6))]));
    compute_local[(13)] = (compute_local[(13)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 262))]));
    compute_local[(21)] = (compute_local[(21)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 262))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 518))]));
    compute_local[(29)] = (compute_local[(29)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 390))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 774))]));
    compute_local[(6)] = (compute_local[(6)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 10))]));
    compute_local[(14)] = (compute_local[(14)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 266))]));
    compute_local[(22)] = (compute_local[(22)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 262))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 522))]));
    compute_local[(30)] = (compute_local[(30)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 390))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 778))]));
    compute_local[(7)] = (compute_local[(7)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 6))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 14))]));
    compute_local[(15)] = (compute_local[(15)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 134))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 270))]));
    compute_local[(23)] = (compute_local[(23)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 262))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 526))]));
    compute_local[(31)] = (compute_local[(31)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 390))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 782))]));
    compute_local[(4)] = (compute_local[(4)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 3))]));
    compute_local[(12)] = (compute_local[(12)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 259))]));
    compute_local[(20)] = (compute_local[(20)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 263))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 515))]));
    compute_local[(28)] = (compute_local[(28)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 391))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 771))]));
    compute_local[(5)] = (compute_local[(5)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 7))]));
    compute_local[(13)] = (compute_local[(13)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 263))]));
    compute_local[(21)] = (compute_local[(21)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 263))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 519))]));
    compute_local[(29)] = (compute_local[(29)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 391))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 775))]));
    compute_local[(6)] = (compute_local[(6)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 11))]));
    compute_local[(14)] = (compute_local[(14)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 267))]));
    compute_local[(22)] = (compute_local[(22)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 263))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 523))]));
    compute_local[(30)] = (compute_local[(30)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 391))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 779))]));
    compute_local[(7)] = (compute_local[(7)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 7))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 15))]));
    compute_local[(15)] = (compute_local[(15)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 135))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 271))]));
    compute_local[(23)] = (compute_local[(23)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 263))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 527))]));
    compute_local[(31)] = (compute_local[(31)] + (placeholder_d_shared[((((((int)threadIdx.x) >> 4) * 8) + 391))] * placeholder_shared[((((((int)threadIdx.x) & 15) * 16) + 783))]));
  }
  for (int i_inner = 0; i_inner < 2; ++i_inner) {
    for (int j_inner = 0; j_inner < 4; ++j_inner) {
      compute[((((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (i_inner * 64)) + ((((int)threadIdx.x) & 15) * 4)) + j_inner))] = compute_local[(((i_inner * 4) + j_inner))];
      compute[(((((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (i_inner * 64)) + ((((int)threadIdx.x) & 15) * 4)) + j_inner) + 16384))] = compute_local[((((i_inner * 4) + j_inner) + 8))];
      compute[(((((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (i_inner * 64)) + ((((int)threadIdx.x) & 15) * 4)) + j_inner) + 32768))] = compute_local[((((i_inner * 4) + j_inner) + 16))];
      compute[(((((((((((int)blockIdx.x) >> 3) * 65536) + ((((int)blockIdx.x) & 7) * 2048)) + ((((int)threadIdx.x) >> 4) * 128)) + (i_inner * 64)) + ((((int)threadIdx.x) & 15) * 4)) + j_inner) + 49152))] = compute_local[((((i_inner * 4) + j_inner) + 24))];
    }
  }
}


