
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
  float Conv2dOutput[280];
  __shared__ float PaddedInput_shared[7350];
  __shared__ float placeholder_shared[96];
  for (int yy_outer_inner_init = 0; yy_outer_inner_init < 7; ++yy_outer_inner_init) {
    Conv2dOutput[((yy_outer_inner_init * 20))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 1))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 4))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 5))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 8))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 9))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 12))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 13))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 16))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 17))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 140))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 141))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 144))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 145))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 148))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 149))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 152))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 153))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 156))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 157))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 2))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 3))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 6))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 7))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 10))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 11))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 14))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 15))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 18))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 19))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 142))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 143))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 146))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 147))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 150))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 151))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 154))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 155))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 158))] = 0.000000e+00f;
    Conv2dOutput[(((yy_outer_inner_init * 20) + 159))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 96; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((int)threadIdx.x) / 3) * 288) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 280))] = placeholder[((((((((int)threadIdx.x) + 280) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 560))] = placeholder[((((((((int)threadIdx.x) + 560) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 840))] = placeholder[((((((((int)threadIdx.x) / 3) * 288) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 80640))];
    PaddedInput_shared[((((int)threadIdx.x) + 1120))] = placeholder[((((((((int)threadIdx.x) + 1120) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1400))] = placeholder[((((((((int)threadIdx.x) + 1400) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1680))] = placeholder[((((((((int)threadIdx.x) / 3) * 288) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 161280))];
    PaddedInput_shared[((((int)threadIdx.x) + 1960))] = placeholder[((((((((int)threadIdx.x) + 1960) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2240))] = placeholder[((((((((int)threadIdx.x) + 2240) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2520))] = placeholder[((((((((int)threadIdx.x) / 3) * 288) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 241920))];
    PaddedInput_shared[((((int)threadIdx.x) + 2800))] = placeholder[((((((((int)threadIdx.x) + 2800) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3080))] = placeholder[((((((((int)threadIdx.x) + 3080) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3360))] = placeholder[((((((((int)threadIdx.x) / 3) * 288) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 322560))];
    PaddedInput_shared[((((int)threadIdx.x) + 3640))] = placeholder[((((((((int)threadIdx.x) + 3640) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3920))] = placeholder[((((((((int)threadIdx.x) + 3920) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4200))] = placeholder[((((((((int)threadIdx.x) / 3) * 288) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 403200))];
    PaddedInput_shared[((((int)threadIdx.x) + 4480))] = placeholder[((((((((int)threadIdx.x) + 4480) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 4760))] = placeholder[((((((((int)threadIdx.x) + 4760) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5040))] = placeholder[((((((((int)threadIdx.x) / 3) * 288) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 483840))];
    PaddedInput_shared[((((int)threadIdx.x) + 5320))] = placeholder[((((((((int)threadIdx.x) + 5320) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5600))] = placeholder[((((((((int)threadIdx.x) + 5600) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 5880))] = placeholder[((((((((int)threadIdx.x) / 3) * 288) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 564480))];
    PaddedInput_shared[((((int)threadIdx.x) + 6160))] = placeholder[((((((((int)threadIdx.x) + 6160) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6440))] = placeholder[((((((((int)threadIdx.x) + 6440) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    PaddedInput_shared[((((int)threadIdx.x) + 6720))] = placeholder[((((((((int)threadIdx.x) / 3) * 288) + (rc_outer_outer * 3)) + (((int)threadIdx.x) % 3)) + 645120))];
    PaddedInput_shared[((((int)threadIdx.x) + 7000))] = placeholder[((((((((int)threadIdx.x) + 7000) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 1) % 3)))];
    if (((int)threadIdx.x) < 70) {
      PaddedInput_shared[((((int)threadIdx.x) + 7280))] = placeholder[((((((((int)threadIdx.x) + 7280) / 3) * 288) + (rc_outer_outer * 3)) + ((((int)threadIdx.x) + 2) % 3)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[((((int)threadIdx.x) * 9))] = placeholder1[(((((rc_outer_outer * 192) + (((((int)threadIdx.x) * 9) >> 5) * 64)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) * 9) & 31)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 9) + 1))] = placeholder1[(((((rc_outer_outer * 192) + ((((((int)threadIdx.x) * 9) + 1) >> 5) * 64)) + (((int)blockIdx.x) * 32)) + (((((int)threadIdx.x) * 9) + 1) & 31)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 9) + 2))] = placeholder1[(((((rc_outer_outer * 192) + ((((((int)threadIdx.x) * 9) + 2) >> 5) * 64)) + (((int)blockIdx.x) * 32)) + (((((int)threadIdx.x) * 9) + 2) & 31)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 9) + 3))] = placeholder1[(((((rc_outer_outer * 192) + ((((((int)threadIdx.x) * 9) + 3) >> 5) * 64)) + (((int)blockIdx.x) * 32)) + (((((int)threadIdx.x) * 9) + 3) & 31)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 9) + 4))] = placeholder1[(((((rc_outer_outer * 192) + ((((((int)threadIdx.x) * 9) + 4) >> 5) * 64)) + (((int)blockIdx.x) * 32)) + (((((int)threadIdx.x) * 9) + 4) & 31)))];
    }
    if (((int)threadIdx.x) < 11) {
      placeholder_shared[(((((int)threadIdx.x) * 9) + 5))] = placeholder1[(((((rc_outer_outer * 192) + ((((((int)threadIdx.x) * 9) + 5) >> 5) * 64)) + (((int)blockIdx.x) * 32)) + (((((int)threadIdx.x) * 9) + 5) & 31)))];
    }
    if (((int)threadIdx.x) < 10) {
      placeholder_shared[(((((int)threadIdx.x) * 9) + 6))] = placeholder1[(((((rc_outer_outer * 192) + ((((((int)threadIdx.x) * 9) + 6) >> 5) * 64)) + (((int)blockIdx.x) * 32)) + (((((int)threadIdx.x) * 9) + 6) & 31)))];
    }
    if (((int)threadIdx.x) < 10) {
      placeholder_shared[(((((int)threadIdx.x) * 9) + 7))] = placeholder1[(((((rc_outer_outer * 192) + ((((((int)threadIdx.x) * 9) + 7) >> 5) * 64)) + (((int)blockIdx.x) * 32)) + (((((int)threadIdx.x) * 9) + 7) & 31)))];
    }
    if (((int)threadIdx.x) < 10) {
      placeholder_shared[(((((int)threadIdx.x) * 9) + 8))] = placeholder1[(((((rc_outer_outer * 192) + ((((((int)threadIdx.x) * 9) + 8) >> 5) * 64)) + (((int)blockIdx.x) * 32)) + (((((int)threadIdx.x) * 9) + 8) & 31)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 3; ++rc_outer_inner) {
      for (int yy_outer_inner = 0; yy_outer_inner < 7; ++yy_outer_inner) {
        Conv2dOutput[((yy_outer_inner * 20))] = (Conv2dOutput[((yy_outer_inner * 20))] + (PaddedInput_shared[((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 1))] = (Conv2dOutput[(((yy_outer_inner * 20) + 1))] + (PaddedInput_shared[((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 4))] = (Conv2dOutput[(((yy_outer_inner * 20) + 4))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 105))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 5))] = (Conv2dOutput[(((yy_outer_inner * 20) + 5))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 105))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 8))] = (Conv2dOutput[(((yy_outer_inner * 20) + 8))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 210))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 9))] = (Conv2dOutput[(((yy_outer_inner * 20) + 9))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 210))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 12))] = (Conv2dOutput[(((yy_outer_inner * 20) + 12))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 315))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 13))] = (Conv2dOutput[(((yy_outer_inner * 20) + 13))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 315))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 16))] = (Conv2dOutput[(((yy_outer_inner * 20) + 16))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 420))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 17))] = (Conv2dOutput[(((yy_outer_inner * 20) + 17))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 140))] = (Conv2dOutput[(((yy_outer_inner * 20) + 140))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3675))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 141))] = (Conv2dOutput[(((yy_outer_inner * 20) + 141))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3675))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 144))] = (Conv2dOutput[(((yy_outer_inner * 20) + 144))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3780))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 145))] = (Conv2dOutput[(((yy_outer_inner * 20) + 145))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3780))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 148))] = (Conv2dOutput[(((yy_outer_inner * 20) + 148))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3885))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 149))] = (Conv2dOutput[(((yy_outer_inner * 20) + 149))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3885))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 152))] = (Conv2dOutput[(((yy_outer_inner * 20) + 152))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3990))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 153))] = (Conv2dOutput[(((yy_outer_inner * 20) + 153))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3990))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 156))] = (Conv2dOutput[(((yy_outer_inner * 20) + 156))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 4095))] * placeholder_shared[(((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 157))] = (Conv2dOutput[(((yy_outer_inner * 20) + 157))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 4095))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 2))] = (Conv2dOutput[(((yy_outer_inner * 20) + 2))] + (PaddedInput_shared[((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 3))] = (Conv2dOutput[(((yy_outer_inner * 20) + 3))] + (PaddedInput_shared[((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 6))] = (Conv2dOutput[(((yy_outer_inner * 20) + 6))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 105))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 7))] = (Conv2dOutput[(((yy_outer_inner * 20) + 7))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 105))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 10))] = (Conv2dOutput[(((yy_outer_inner * 20) + 10))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 210))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 11))] = (Conv2dOutput[(((yy_outer_inner * 20) + 11))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 210))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 14))] = (Conv2dOutput[(((yy_outer_inner * 20) + 14))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 315))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 15))] = (Conv2dOutput[(((yy_outer_inner * 20) + 15))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 315))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 18))] = (Conv2dOutput[(((yy_outer_inner * 20) + 18))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 19))] = (Conv2dOutput[(((yy_outer_inner * 20) + 19))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 142))] = (Conv2dOutput[(((yy_outer_inner * 20) + 142))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3675))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 143))] = (Conv2dOutput[(((yy_outer_inner * 20) + 143))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3675))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 146))] = (Conv2dOutput[(((yy_outer_inner * 20) + 146))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3780))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 147))] = (Conv2dOutput[(((yy_outer_inner * 20) + 147))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3780))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 150))] = (Conv2dOutput[(((yy_outer_inner * 20) + 150))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3885))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 151))] = (Conv2dOutput[(((yy_outer_inner * 20) + 151))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3885))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 154))] = (Conv2dOutput[(((yy_outer_inner * 20) + 154))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3990))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 155))] = (Conv2dOutput[(((yy_outer_inner * 20) + 155))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 3990))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 158))] = (Conv2dOutput[(((yy_outer_inner * 20) + 158))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 4095))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
        Conv2dOutput[(((yy_outer_inner * 20) + 159))] = (Conv2dOutput[(((yy_outer_inner * 20) + 159))] + (PaddedInput_shared[(((((yy_outer_inner * 525) + ((((int)threadIdx.x) >> 3) * 3)) + rc_outer_inner) + 4095))] * placeholder_shared[((((rc_outer_inner * 32) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 35; ++ax1_inner) {
      for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
        T_relu[(((((((ax0_inner * 78400) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + (((int)blockIdx.x) * 32)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 140) + (ax1_inner * 4)) + ax3_inner))] + placeholder2[((((((int)blockIdx.x) * 32) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))]), 0.000000e+00f);
      }
    }
  }
}


