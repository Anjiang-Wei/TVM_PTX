
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
  float Conv2dOutput[6720];
  __shared__ float PaddedInput_shared[896];
  __shared__ float placeholder_shared[240];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 6; ++ff_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 28; ++yy_inner_init) {
      Conv2dOutput[(((yy_inner_init * 120) + (ff_outer_inner_init * 10)))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3360))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3361))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 2))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3362))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3363))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 4))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3364))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 5))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3365))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 6))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3366))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 7))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3367))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 8))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3368))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 9))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3369))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 60))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3420))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 61))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3421))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 62))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3422))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 63))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3423))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 64))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3424))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 65))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3425))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 66))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3426))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 67))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3427))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 68))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3428))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 69))] = 0.000000e+00f;
      Conv2dOutput[((((yy_inner_init * 120) + (ff_outer_inner_init * 10)) + 3429))] = 0.000000e+00f;
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 20; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 8))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 2240))];
    PaddedInput_shared[((((int)threadIdx.x) + 16))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 4480))];
    PaddedInput_shared[((((int)threadIdx.x) + 24))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 6720))];
    PaddedInput_shared[((((int)threadIdx.x) + 32))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 8960))];
    PaddedInput_shared[((((int)threadIdx.x) + 40))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 11200))];
    PaddedInput_shared[((((int)threadIdx.x) + 48))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 13440))];
    PaddedInput_shared[((((int)threadIdx.x) + 56))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 15680))];
    PaddedInput_shared[((((int)threadIdx.x) + 64))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 17920))];
    PaddedInput_shared[((((int)threadIdx.x) + 72))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 20160))];
    PaddedInput_shared[((((int)threadIdx.x) + 80))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 22400))];
    PaddedInput_shared[((((int)threadIdx.x) + 88))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 24640))];
    PaddedInput_shared[((((int)threadIdx.x) + 96))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 26880))];
    PaddedInput_shared[((((int)threadIdx.x) + 104))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 29120))];
    PaddedInput_shared[((((int)threadIdx.x) + 112))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 31360))];
    PaddedInput_shared[((((int)threadIdx.x) + 120))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 33600))];
    PaddedInput_shared[((((int)threadIdx.x) + 128))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 35840))];
    PaddedInput_shared[((((int)threadIdx.x) + 136))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 38080))];
    PaddedInput_shared[((((int)threadIdx.x) + 144))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 40320))];
    PaddedInput_shared[((((int)threadIdx.x) + 152))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 42560))];
    PaddedInput_shared[((((int)threadIdx.x) + 160))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 44800))];
    PaddedInput_shared[((((int)threadIdx.x) + 168))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 47040))];
    PaddedInput_shared[((((int)threadIdx.x) + 176))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 49280))];
    PaddedInput_shared[((((int)threadIdx.x) + 184))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 51520))];
    PaddedInput_shared[((((int)threadIdx.x) + 192))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 53760))];
    PaddedInput_shared[((((int)threadIdx.x) + 200))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 56000))];
    PaddedInput_shared[((((int)threadIdx.x) + 208))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 58240))];
    PaddedInput_shared[((((int)threadIdx.x) + 216))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 60480))];
    PaddedInput_shared[((((int)threadIdx.x) + 224))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 62720))];
    PaddedInput_shared[((((int)threadIdx.x) + 232))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 64960))];
    PaddedInput_shared[((((int)threadIdx.x) + 240))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 67200))];
    PaddedInput_shared[((((int)threadIdx.x) + 248))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 69440))];
    PaddedInput_shared[((((int)threadIdx.x) + 256))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 71680))];
    PaddedInput_shared[((((int)threadIdx.x) + 264))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 73920))];
    PaddedInput_shared[((((int)threadIdx.x) + 272))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 76160))];
    PaddedInput_shared[((((int)threadIdx.x) + 280))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 78400))];
    PaddedInput_shared[((((int)threadIdx.x) + 288))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 80640))];
    PaddedInput_shared[((((int)threadIdx.x) + 296))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 82880))];
    PaddedInput_shared[((((int)threadIdx.x) + 304))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 85120))];
    PaddedInput_shared[((((int)threadIdx.x) + 312))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 87360))];
    PaddedInput_shared[((((int)threadIdx.x) + 320))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 89600))];
    PaddedInput_shared[((((int)threadIdx.x) + 328))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 91840))];
    PaddedInput_shared[((((int)threadIdx.x) + 336))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 94080))];
    PaddedInput_shared[((((int)threadIdx.x) + 344))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 96320))];
    PaddedInput_shared[((((int)threadIdx.x) + 352))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 98560))];
    PaddedInput_shared[((((int)threadIdx.x) + 360))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 100800))];
    PaddedInput_shared[((((int)threadIdx.x) + 368))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 103040))];
    PaddedInput_shared[((((int)threadIdx.x) + 376))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 105280))];
    PaddedInput_shared[((((int)threadIdx.x) + 384))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 107520))];
    PaddedInput_shared[((((int)threadIdx.x) + 392))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 109760))];
    PaddedInput_shared[((((int)threadIdx.x) + 400))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 112000))];
    PaddedInput_shared[((((int)threadIdx.x) + 408))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 114240))];
    PaddedInput_shared[((((int)threadIdx.x) + 416))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 116480))];
    PaddedInput_shared[((((int)threadIdx.x) + 424))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 118720))];
    PaddedInput_shared[((((int)threadIdx.x) + 432))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 120960))];
    PaddedInput_shared[((((int)threadIdx.x) + 440))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 123200))];
    PaddedInput_shared[((((int)threadIdx.x) + 448))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 125440))];
    PaddedInput_shared[((((int)threadIdx.x) + 456))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 127680))];
    PaddedInput_shared[((((int)threadIdx.x) + 464))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 129920))];
    PaddedInput_shared[((((int)threadIdx.x) + 472))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 132160))];
    PaddedInput_shared[((((int)threadIdx.x) + 480))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 134400))];
    PaddedInput_shared[((((int)threadIdx.x) + 488))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 136640))];
    PaddedInput_shared[((((int)threadIdx.x) + 496))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 138880))];
    PaddedInput_shared[((((int)threadIdx.x) + 504))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 141120))];
    PaddedInput_shared[((((int)threadIdx.x) + 512))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 143360))];
    PaddedInput_shared[((((int)threadIdx.x) + 520))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 145600))];
    PaddedInput_shared[((((int)threadIdx.x) + 528))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 147840))];
    PaddedInput_shared[((((int)threadIdx.x) + 536))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 150080))];
    PaddedInput_shared[((((int)threadIdx.x) + 544))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 152320))];
    PaddedInput_shared[((((int)threadIdx.x) + 552))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 154560))];
    PaddedInput_shared[((((int)threadIdx.x) + 560))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 156800))];
    PaddedInput_shared[((((int)threadIdx.x) + 568))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 159040))];
    PaddedInput_shared[((((int)threadIdx.x) + 576))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 161280))];
    PaddedInput_shared[((((int)threadIdx.x) + 584))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 163520))];
    PaddedInput_shared[((((int)threadIdx.x) + 592))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 165760))];
    PaddedInput_shared[((((int)threadIdx.x) + 600))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 168000))];
    PaddedInput_shared[((((int)threadIdx.x) + 608))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 170240))];
    PaddedInput_shared[((((int)threadIdx.x) + 616))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 172480))];
    PaddedInput_shared[((((int)threadIdx.x) + 624))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 174720))];
    PaddedInput_shared[((((int)threadIdx.x) + 632))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 176960))];
    PaddedInput_shared[((((int)threadIdx.x) + 640))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 179200))];
    PaddedInput_shared[((((int)threadIdx.x) + 648))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 181440))];
    PaddedInput_shared[((((int)threadIdx.x) + 656))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 183680))];
    PaddedInput_shared[((((int)threadIdx.x) + 664))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 185920))];
    PaddedInput_shared[((((int)threadIdx.x) + 672))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 188160))];
    PaddedInput_shared[((((int)threadIdx.x) + 680))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 190400))];
    PaddedInput_shared[((((int)threadIdx.x) + 688))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 192640))];
    PaddedInput_shared[((((int)threadIdx.x) + 696))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 194880))];
    PaddedInput_shared[((((int)threadIdx.x) + 704))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 197120))];
    PaddedInput_shared[((((int)threadIdx.x) + 712))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 199360))];
    PaddedInput_shared[((((int)threadIdx.x) + 720))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 201600))];
    PaddedInput_shared[((((int)threadIdx.x) + 728))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 203840))];
    PaddedInput_shared[((((int)threadIdx.x) + 736))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 206080))];
    PaddedInput_shared[((((int)threadIdx.x) + 744))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 208320))];
    PaddedInput_shared[((((int)threadIdx.x) + 752))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 210560))];
    PaddedInput_shared[((((int)threadIdx.x) + 760))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 212800))];
    PaddedInput_shared[((((int)threadIdx.x) + 768))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 215040))];
    PaddedInput_shared[((((int)threadIdx.x) + 776))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 217280))];
    PaddedInput_shared[((((int)threadIdx.x) + 784))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 219520))];
    PaddedInput_shared[((((int)threadIdx.x) + 792))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 221760))];
    PaddedInput_shared[((((int)threadIdx.x) + 800))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 224000))];
    PaddedInput_shared[((((int)threadIdx.x) + 808))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 226240))];
    PaddedInput_shared[((((int)threadIdx.x) + 816))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 228480))];
    PaddedInput_shared[((((int)threadIdx.x) + 824))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 230720))];
    PaddedInput_shared[((((int)threadIdx.x) + 832))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 232960))];
    PaddedInput_shared[((((int)threadIdx.x) + 840))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 235200))];
    PaddedInput_shared[((((int)threadIdx.x) + 848))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 237440))];
    PaddedInput_shared[((((int)threadIdx.x) + 856))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 239680))];
    PaddedInput_shared[((((int)threadIdx.x) + 864))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 241920))];
    PaddedInput_shared[((((int)threadIdx.x) + 872))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 244160))];
    PaddedInput_shared[((((int)threadIdx.x) + 880))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 246400))];
    PaddedInput_shared[((((int)threadIdx.x) + 888))] = placeholder[((((((((((int)threadIdx.x) >> 2) * 1120) + (((int)blockIdx.x) * 80)) + (((((int)threadIdx.x) & 3) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 248640))];
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[((((int)threadIdx.x) * 60))] = placeholder1[(((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 1))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 1))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 2))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 2))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 3))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 3))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 4))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 4))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 5))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 5))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 6))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 6))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 7))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 7))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 8))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 8))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 9))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 9))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 10))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 10))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 11))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 11))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 12))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 12))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 13))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 13))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 14))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 14))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 15))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 15))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 16))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 16))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 17))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 17))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 18))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 18))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 19))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 19))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 20))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 20))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 21))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 21))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 22))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 22))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 23))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 23))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 24))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 24))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 25))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 25))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 26))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 26))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 27))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 27))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 28))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 28))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 29))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 29))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 30))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 30))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 31))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 31))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 32))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 32))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 33))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 33))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 34))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 34))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 35))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 35))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 36))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 36))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 37))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 37))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 38))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 38))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 39))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 39))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 40))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 40))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 41))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 41))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 42))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 42))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 43))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 43))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 44))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 44))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 45))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 45))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 46))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 46))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 47))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 47))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 48))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 48))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 49))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 49))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 50))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 50))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 51))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 51))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 52))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 52))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 53))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 53))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 54))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 54))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 55))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 55))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 56))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 56))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 57))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 57))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 58))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 58))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 59))] = placeholder1[((((rc_outer_outer * 240) + (((int)threadIdx.x) * 60)) + 59))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int ff_outer_inner = 0; ff_outer_inner < 6; ++ff_outer_inner) {
        for (int yy_inner = 0; yy_inner < 28; ++yy_inner) {
          Conv2dOutput[(((yy_inner * 120) + (ff_outer_inner * 10)))] = (Conv2dOutput[(((yy_inner * 120) + (ff_outer_inner * 10)))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3360))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3360))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 448))] * placeholder_shared[((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 1))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 1))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 1))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3361))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3361))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 448))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 1))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 2))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 2))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 2))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3362))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3362))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 448))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 2))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 3))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3363))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3363))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 448))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 3))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 4))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 4))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 4))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3364))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3364))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 448))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 4))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 5))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 5))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 5))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3365))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3365))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 448))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 5))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 6))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 6))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 6))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3366))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3366))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 448))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 6))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 7))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 7))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 7))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3367))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3367))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 448))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 7))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 8))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 8))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 8))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3368))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3368))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 448))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 8))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 9))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 9))] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 9))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3369))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3369))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 448))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 9))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 60))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 60))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 2))] * placeholder_shared[((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3420))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3420))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 450))] * placeholder_shared[((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 61))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 61))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 2))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 1))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3421))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3421))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 450))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 1))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 62))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 62))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 2))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 2))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3422))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3422))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 450))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 2))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 63))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 63))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 2))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 3))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3423))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3423))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 450))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 3))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 64))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 2))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 4))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3424))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3424))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 450))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 4))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 65))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 2))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 5))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3425))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3425))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 450))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 5))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 66))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 66))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 2))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 6))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3426))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3426))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 450))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 6))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 67))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 67))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 2))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 7))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3427))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3427))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 450))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 7))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 68))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 68))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 2))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 8))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3428))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3428))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 450))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 8))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 69))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 69))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 2))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 9))]));
          Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3429))] = (Conv2dOutput[((((yy_inner * 120) + (ff_outer_inner * 10)) + 3429))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 112) + (yy_inner * 4)) + rc_outer_inner) + 450))] * placeholder_shared[(((((rc_outer_inner * 120) + ((((int)threadIdx.x) & 1) * 60)) + (ff_outer_inner * 10)) + 9))]));
        }
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 28; ++ax1_inner) {
    for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
      for (int ax3_inner = 0; ax3_inner < 60; ++ax3_inner) {
        T_relu[((((((((((int)threadIdx.x) >> 1) * 94080) + (ax1_inner * 3360)) + (((int)blockIdx.x) * 240)) + (ax2_inner * 120)) + ((((int)threadIdx.x) & 1) * 60)) + ax3_inner))] = max((Conv2dOutput[((((ax1_inner * 120) + (ax2_inner * 60)) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 1) * 60) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((((((int)threadIdx.x) >> 1) * 94080) + (ax1_inner * 3360)) + (((int)blockIdx.x) * 240)) + (ax2_inner * 120)) + ((((int)threadIdx.x) & 1) * 60)) + ax3_inner) + 376320))] = max((Conv2dOutput[(((((ax1_inner * 120) + (ax2_inner * 60)) + ax3_inner) + 3360))] + placeholder2[((((((int)threadIdx.x) & 1) * 60) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


