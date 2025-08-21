
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu) {
  float T_dense[1024];
  __shared__ float placeholder_d_shared[8];
  __shared__ float placeholder_shared[768];
  for (int j_outer_inner_init = 0; j_outer_inner_init < 64; ++j_outer_inner_init) {
    T_dense[((j_outer_inner_init * 2))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 1))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 128))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 129))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 256))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 257))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 384))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 385))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 512))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 513))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 640))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 641))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 768))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 769))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 896))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 897))] = 0.000000e+00f;
  }
  for (int k_outer_outer = 0; k_outer_outer < 100; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[((((int)threadIdx.x) * 8))] = placeholder[(((((int)threadIdx.x) * 800) + k_outer_outer))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 1))] = placeholder[((((((int)threadIdx.x) * 800) + k_outer_outer) + 100))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 2))] = placeholder[((((((int)threadIdx.x) * 800) + k_outer_outer) + 200))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 3))] = placeholder[((((((int)threadIdx.x) * 800) + k_outer_outer) + 300))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 4))] = placeholder[((((((int)threadIdx.x) * 800) + k_outer_outer) + 400))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 5))] = placeholder[((((((int)threadIdx.x) * 800) + k_outer_outer) + 500))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 6))] = placeholder[((((((int)threadIdx.x) * 800) + k_outer_outer) + 600))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 8) + 7))] = placeholder[((((((int)threadIdx.x) * 800) + k_outer_outer) + 700))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer))];
    placeholder_shared[((((int)threadIdx.x) + 6))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 600))];
    placeholder_shared[((((int)threadIdx.x) + 12))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 1200))];
    placeholder_shared[((((int)threadIdx.x) + 18))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 1800))];
    placeholder_shared[((((int)threadIdx.x) + 24))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 2400))];
    placeholder_shared[((((int)threadIdx.x) + 30))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 3000))];
    placeholder_shared[((((int)threadIdx.x) + 36))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 3600))];
    placeholder_shared[((((int)threadIdx.x) + 42))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 4200))];
    placeholder_shared[((((int)threadIdx.x) + 48))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 4800))];
    placeholder_shared[((((int)threadIdx.x) + 54))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 5400))];
    placeholder_shared[((((int)threadIdx.x) + 60))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 6000))];
    placeholder_shared[((((int)threadIdx.x) + 66))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 6600))];
    placeholder_shared[((((int)threadIdx.x) + 72))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 7200))];
    placeholder_shared[((((int)threadIdx.x) + 78))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 7800))];
    placeholder_shared[((((int)threadIdx.x) + 84))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 8400))];
    placeholder_shared[((((int)threadIdx.x) + 90))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 9000))];
    placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 9600))];
    placeholder_shared[((((int)threadIdx.x) + 102))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 10200))];
    placeholder_shared[((((int)threadIdx.x) + 108))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 10800))];
    placeholder_shared[((((int)threadIdx.x) + 114))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 11400))];
    placeholder_shared[((((int)threadIdx.x) + 120))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 12000))];
    placeholder_shared[((((int)threadIdx.x) + 126))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 12600))];
    placeholder_shared[((((int)threadIdx.x) + 132))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 13200))];
    placeholder_shared[((((int)threadIdx.x) + 138))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 13800))];
    placeholder_shared[((((int)threadIdx.x) + 144))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 14400))];
    placeholder_shared[((((int)threadIdx.x) + 150))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 15000))];
    placeholder_shared[((((int)threadIdx.x) + 156))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 15600))];
    placeholder_shared[((((int)threadIdx.x) + 162))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 16200))];
    placeholder_shared[((((int)threadIdx.x) + 168))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 16800))];
    placeholder_shared[((((int)threadIdx.x) + 174))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 17400))];
    placeholder_shared[((((int)threadIdx.x) + 180))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 18000))];
    placeholder_shared[((((int)threadIdx.x) + 186))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 18600))];
    placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 19200))];
    placeholder_shared[((((int)threadIdx.x) + 198))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 19800))];
    placeholder_shared[((((int)threadIdx.x) + 204))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 20400))];
    placeholder_shared[((((int)threadIdx.x) + 210))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 21000))];
    placeholder_shared[((((int)threadIdx.x) + 216))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 21600))];
    placeholder_shared[((((int)threadIdx.x) + 222))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 22200))];
    placeholder_shared[((((int)threadIdx.x) + 228))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 22800))];
    placeholder_shared[((((int)threadIdx.x) + 234))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 23400))];
    placeholder_shared[((((int)threadIdx.x) + 240))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 24000))];
    placeholder_shared[((((int)threadIdx.x) + 246))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 24600))];
    placeholder_shared[((((int)threadIdx.x) + 252))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 25200))];
    placeholder_shared[((((int)threadIdx.x) + 258))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 25800))];
    placeholder_shared[((((int)threadIdx.x) + 264))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 26400))];
    placeholder_shared[((((int)threadIdx.x) + 270))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 27000))];
    placeholder_shared[((((int)threadIdx.x) + 276))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 27600))];
    placeholder_shared[((((int)threadIdx.x) + 282))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 28200))];
    placeholder_shared[((((int)threadIdx.x) + 288))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 28800))];
    placeholder_shared[((((int)threadIdx.x) + 294))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 29400))];
    placeholder_shared[((((int)threadIdx.x) + 300))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 30000))];
    placeholder_shared[((((int)threadIdx.x) + 306))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 30600))];
    placeholder_shared[((((int)threadIdx.x) + 312))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 31200))];
    placeholder_shared[((((int)threadIdx.x) + 318))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 31800))];
    placeholder_shared[((((int)threadIdx.x) + 324))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 32400))];
    placeholder_shared[((((int)threadIdx.x) + 330))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 33000))];
    placeholder_shared[((((int)threadIdx.x) + 336))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 33600))];
    placeholder_shared[((((int)threadIdx.x) + 342))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 34200))];
    placeholder_shared[((((int)threadIdx.x) + 348))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 34800))];
    placeholder_shared[((((int)threadIdx.x) + 354))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 35400))];
    placeholder_shared[((((int)threadIdx.x) + 360))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 36000))];
    placeholder_shared[((((int)threadIdx.x) + 366))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 36600))];
    placeholder_shared[((((int)threadIdx.x) + 372))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 37200))];
    placeholder_shared[((((int)threadIdx.x) + 378))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 37800))];
    placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 38400))];
    placeholder_shared[((((int)threadIdx.x) + 390))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 39000))];
    placeholder_shared[((((int)threadIdx.x) + 396))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 39600))];
    placeholder_shared[((((int)threadIdx.x) + 402))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 40200))];
    placeholder_shared[((((int)threadIdx.x) + 408))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 40800))];
    placeholder_shared[((((int)threadIdx.x) + 414))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 41400))];
    placeholder_shared[((((int)threadIdx.x) + 420))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 42000))];
    placeholder_shared[((((int)threadIdx.x) + 426))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 42600))];
    placeholder_shared[((((int)threadIdx.x) + 432))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 43200))];
    placeholder_shared[((((int)threadIdx.x) + 438))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 43800))];
    placeholder_shared[((((int)threadIdx.x) + 444))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 44400))];
    placeholder_shared[((((int)threadIdx.x) + 450))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 45000))];
    placeholder_shared[((((int)threadIdx.x) + 456))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 45600))];
    placeholder_shared[((((int)threadIdx.x) + 462))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 46200))];
    placeholder_shared[((((int)threadIdx.x) + 468))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 46800))];
    placeholder_shared[((((int)threadIdx.x) + 474))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 47400))];
    placeholder_shared[((((int)threadIdx.x) + 480))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 48000))];
    placeholder_shared[((((int)threadIdx.x) + 486))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 48600))];
    placeholder_shared[((((int)threadIdx.x) + 492))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 49200))];
    placeholder_shared[((((int)threadIdx.x) + 498))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 49800))];
    placeholder_shared[((((int)threadIdx.x) + 504))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 50400))];
    placeholder_shared[((((int)threadIdx.x) + 510))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 51000))];
    placeholder_shared[((((int)threadIdx.x) + 516))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 51600))];
    placeholder_shared[((((int)threadIdx.x) + 522))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 52200))];
    placeholder_shared[((((int)threadIdx.x) + 528))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 52800))];
    placeholder_shared[((((int)threadIdx.x) + 534))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 53400))];
    placeholder_shared[((((int)threadIdx.x) + 540))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 54000))];
    placeholder_shared[((((int)threadIdx.x) + 546))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 54600))];
    placeholder_shared[((((int)threadIdx.x) + 552))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 55200))];
    placeholder_shared[((((int)threadIdx.x) + 558))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 55800))];
    placeholder_shared[((((int)threadIdx.x) + 564))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 56400))];
    placeholder_shared[((((int)threadIdx.x) + 570))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 57000))];
    placeholder_shared[((((int)threadIdx.x) + 576))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 57600))];
    placeholder_shared[((((int)threadIdx.x) + 582))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 58200))];
    placeholder_shared[((((int)threadIdx.x) + 588))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 58800))];
    placeholder_shared[((((int)threadIdx.x) + 594))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 59400))];
    placeholder_shared[((((int)threadIdx.x) + 600))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 60000))];
    placeholder_shared[((((int)threadIdx.x) + 606))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 60600))];
    placeholder_shared[((((int)threadIdx.x) + 612))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 61200))];
    placeholder_shared[((((int)threadIdx.x) + 618))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 61800))];
    placeholder_shared[((((int)threadIdx.x) + 624))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 62400))];
    placeholder_shared[((((int)threadIdx.x) + 630))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 63000))];
    placeholder_shared[((((int)threadIdx.x) + 636))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 63600))];
    placeholder_shared[((((int)threadIdx.x) + 642))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 64200))];
    placeholder_shared[((((int)threadIdx.x) + 648))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 64800))];
    placeholder_shared[((((int)threadIdx.x) + 654))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 65400))];
    placeholder_shared[((((int)threadIdx.x) + 660))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 66000))];
    placeholder_shared[((((int)threadIdx.x) + 666))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 66600))];
    placeholder_shared[((((int)threadIdx.x) + 672))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 67200))];
    placeholder_shared[((((int)threadIdx.x) + 678))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 67800))];
    placeholder_shared[((((int)threadIdx.x) + 684))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 68400))];
    placeholder_shared[((((int)threadIdx.x) + 690))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 69000))];
    placeholder_shared[((((int)threadIdx.x) + 696))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 69600))];
    placeholder_shared[((((int)threadIdx.x) + 702))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 70200))];
    placeholder_shared[((((int)threadIdx.x) + 708))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 70800))];
    placeholder_shared[((((int)threadIdx.x) + 714))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 71400))];
    placeholder_shared[((((int)threadIdx.x) + 720))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 72000))];
    placeholder_shared[((((int)threadIdx.x) + 726))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 72600))];
    placeholder_shared[((((int)threadIdx.x) + 732))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 73200))];
    placeholder_shared[((((int)threadIdx.x) + 738))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 73800))];
    placeholder_shared[((((int)threadIdx.x) + 744))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 74400))];
    placeholder_shared[((((int)threadIdx.x) + 750))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 75000))];
    placeholder_shared[((((int)threadIdx.x) + 756))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 75600))];
    placeholder_shared[((((int)threadIdx.x) + 762))] = placeholder1[(((((((int)blockIdx.x) * 76800) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 76200))];
    __syncthreads();
    for (int j_outer_inner = 0; j_outer_inner < 64; ++j_outer_inner) {
      T_dense[((j_outer_inner * 2))] = (T_dense[((j_outer_inner * 2))] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 128) + (j_outer_inner * 2)))]));
      T_dense[(((j_outer_inner * 2) + 1))] = (T_dense[(((j_outer_inner * 2) + 1))] + (placeholder_d_shared[(0)] * placeholder_shared[((((((int)threadIdx.x) * 128) + (j_outer_inner * 2)) + 1))]));
      T_dense[(((j_outer_inner * 2) + 128))] = (T_dense[(((j_outer_inner * 2) + 128))] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 128) + (j_outer_inner * 2)))]));
      T_dense[(((j_outer_inner * 2) + 129))] = (T_dense[(((j_outer_inner * 2) + 129))] + (placeholder_d_shared[(1)] * placeholder_shared[((((((int)threadIdx.x) * 128) + (j_outer_inner * 2)) + 1))]));
      T_dense[(((j_outer_inner * 2) + 256))] = (T_dense[(((j_outer_inner * 2) + 256))] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 128) + (j_outer_inner * 2)))]));
      T_dense[(((j_outer_inner * 2) + 257))] = (T_dense[(((j_outer_inner * 2) + 257))] + (placeholder_d_shared[(2)] * placeholder_shared[((((((int)threadIdx.x) * 128) + (j_outer_inner * 2)) + 1))]));
      T_dense[(((j_outer_inner * 2) + 384))] = (T_dense[(((j_outer_inner * 2) + 384))] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 128) + (j_outer_inner * 2)))]));
      T_dense[(((j_outer_inner * 2) + 385))] = (T_dense[(((j_outer_inner * 2) + 385))] + (placeholder_d_shared[(3)] * placeholder_shared[((((((int)threadIdx.x) * 128) + (j_outer_inner * 2)) + 1))]));
      T_dense[(((j_outer_inner * 2) + 512))] = (T_dense[(((j_outer_inner * 2) + 512))] + (placeholder_d_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 128) + (j_outer_inner * 2)))]));
      T_dense[(((j_outer_inner * 2) + 513))] = (T_dense[(((j_outer_inner * 2) + 513))] + (placeholder_d_shared[(4)] * placeholder_shared[((((((int)threadIdx.x) * 128) + (j_outer_inner * 2)) + 1))]));
      T_dense[(((j_outer_inner * 2) + 640))] = (T_dense[(((j_outer_inner * 2) + 640))] + (placeholder_d_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 128) + (j_outer_inner * 2)))]));
      T_dense[(((j_outer_inner * 2) + 641))] = (T_dense[(((j_outer_inner * 2) + 641))] + (placeholder_d_shared[(5)] * placeholder_shared[((((((int)threadIdx.x) * 128) + (j_outer_inner * 2)) + 1))]));
      T_dense[(((j_outer_inner * 2) + 768))] = (T_dense[(((j_outer_inner * 2) + 768))] + (placeholder_d_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 128) + (j_outer_inner * 2)))]));
      T_dense[(((j_outer_inner * 2) + 769))] = (T_dense[(((j_outer_inner * 2) + 769))] + (placeholder_d_shared[(6)] * placeholder_shared[((((((int)threadIdx.x) * 128) + (j_outer_inner * 2)) + 1))]));
      T_dense[(((j_outer_inner * 2) + 896))] = (T_dense[(((j_outer_inner * 2) + 896))] + (placeholder_d_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 128) + (j_outer_inner * 2)))]));
      T_dense[(((j_outer_inner * 2) + 897))] = (T_dense[(((j_outer_inner * 2) + 897))] + (placeholder_d_shared[(7)] * placeholder_shared[((((((int)threadIdx.x) * 128) + (j_outer_inner * 2)) + 1))]));
    }
  }
  for (int ax0_inner = 0; ax0_inner < 8; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 128; ++ax1_inner) {
      T_relu[(((((ax0_inner * 36864) + (((int)blockIdx.x) * 768)) + (((int)threadIdx.x) * 128)) + ax1_inner))] = max(T_dense[(((ax0_inner * 128) + ax1_inner))], 0.000000e+00f);
    }
  }
}


