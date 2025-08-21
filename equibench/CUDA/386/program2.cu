
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
  float Conv2dOutput[8];
  __shared__ float PaddedInput_shared[384];
  __shared__ float placeholder_shared[96];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 80; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[((((int)threadIdx.x) * 10))] = placeholder[((((((((((int)threadIdx.x) * 10) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + ((((((int)threadIdx.x) * 10) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + ((((int)threadIdx.x) * 10) % 12)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 10) + 1))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 1) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 1) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 1) % 12)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 10) + 2))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 2) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 2) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 2) % 12)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 10) + 3))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 3) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 3) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 3) % 12)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 10) + 4))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 4) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 4) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 4) % 12)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 10) + 5))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 5) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 5) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 5) % 12)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 10) + 6))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 6) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 6) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 6) % 12)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 10) + 7))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 7) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 7) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 7) % 12)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 10) + 8))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 8) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 8) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 8) % 12)))];
    PaddedInput_shared[(((((int)threadIdx.x) * 10) + 9))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 9) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 9) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 9) % 12)))];
    if (((int)threadIdx.x) < 7) {
      PaddedInput_shared[(((((int)threadIdx.x) * 10) + 320))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 320) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 32) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 8) % 12)))];
    }
    if (((int)threadIdx.x) < 7) {
      PaddedInput_shared[(((((int)threadIdx.x) * 10) + 321))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 321) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 33) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 9) % 12)))];
    }
    if (((int)threadIdx.x) < 7) {
      PaddedInput_shared[(((((int)threadIdx.x) * 10) + 322))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 322) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 34) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 10) % 12)))];
    }
    if (((int)threadIdx.x) < 7) {
      PaddedInput_shared[(((((int)threadIdx.x) * 10) + 323))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 323) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 35) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 11) % 12)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 10) + 324))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 324) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 36) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + ((((int)threadIdx.x) * 10) % 12)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 10) + 325))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 325) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 37) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 1) % 12)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 10) + 326))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 326) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 38) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 2) % 12)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 10) + 327))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 327) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 39) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 3) % 12)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 10) + 328))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 328) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 40) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 4) % 12)))];
    }
    if (((int)threadIdx.x) < 6) {
      PaddedInput_shared[(((((int)threadIdx.x) * 10) + 329))] = placeholder[(((((((((((int)threadIdx.x) * 10) + 329) / 48) * 7680) + ((((int)blockIdx.x) / 20) * 3840)) + (((((((int)threadIdx.x) * 10) + 41) % 48) / 12) * 960)) + (rc_outer_outer * 12)) + (((((int)threadIdx.x) * 10) + 5) % 12)))];
    }
    if (((int)threadIdx.x) < 20) {
      placeholder_shared[((((int)threadIdx.x) * 5))] = placeholder1[(((((rc_outer_outer * 1920) + (((((int)threadIdx.x) * 5) >> 3) * 160)) + ((((int)blockIdx.x) % 20) * 8)) + ((((int)threadIdx.x) * 5) & 7)))];
    }
    if (((int)threadIdx.x) < 19) {
      placeholder_shared[(((((int)threadIdx.x) * 5) + 1))] = placeholder1[(((((rc_outer_outer * 1920) + ((((((int)threadIdx.x) * 5) + 1) >> 3) * 160)) + ((((int)blockIdx.x) % 20) * 8)) + (((((int)threadIdx.x) * 5) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 19) {
      placeholder_shared[(((((int)threadIdx.x) * 5) + 2))] = placeholder1[(((((rc_outer_outer * 1920) + ((((((int)threadIdx.x) * 5) + 2) >> 3) * 160)) + ((((int)blockIdx.x) % 20) * 8)) + (((((int)threadIdx.x) * 5) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 19) {
      placeholder_shared[(((((int)threadIdx.x) * 5) + 3))] = placeholder1[(((((rc_outer_outer * 1920) + ((((((int)threadIdx.x) * 5) + 3) >> 3) * 160)) + ((((int)blockIdx.x) % 20) * 8)) + (((((int)threadIdx.x) * 5) + 3) & 7)))];
    }
    if (((int)threadIdx.x) < 19) {
      placeholder_shared[(((((int)threadIdx.x) * 5) + 4))] = placeholder1[(((((rc_outer_outer * 1920) + ((((((int)threadIdx.x) * 5) + 4) >> 3) * 160)) + ((((int)blockIdx.x) % 20) * 8)) + (((((int)threadIdx.x) * 5) + 4) & 7)))];
    }
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((int)threadIdx.x) * 12))] * placeholder_shared[(0)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((int)threadIdx.x) * 12))] * placeholder_shared[(1)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((int)threadIdx.x) * 12))] * placeholder_shared[(2)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((int)threadIdx.x) * 12))] * placeholder_shared[(3)]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[((((int)threadIdx.x) * 12))] * placeholder_shared[(4)]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[((((int)threadIdx.x) * 12))] * placeholder_shared[(5)]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[((((int)threadIdx.x) * 12))] * placeholder_shared[(6)]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[((((int)threadIdx.x) * 12))] * placeholder_shared[(7)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 1))] * placeholder_shared[(8)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 1))] * placeholder_shared[(9)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 1))] * placeholder_shared[(10)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 1))] * placeholder_shared[(11)]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 1))] * placeholder_shared[(12)]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 1))] * placeholder_shared[(13)]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 1))] * placeholder_shared[(14)]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 1))] * placeholder_shared[(15)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 2))] * placeholder_shared[(16)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 2))] * placeholder_shared[(17)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 2))] * placeholder_shared[(18)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 2))] * placeholder_shared[(19)]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 2))] * placeholder_shared[(20)]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 2))] * placeholder_shared[(21)]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 2))] * placeholder_shared[(22)]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 2))] * placeholder_shared[(23)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 3))] * placeholder_shared[(24)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 3))] * placeholder_shared[(25)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 3))] * placeholder_shared[(26)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 3))] * placeholder_shared[(27)]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 3))] * placeholder_shared[(28)]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 3))] * placeholder_shared[(29)]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 3))] * placeholder_shared[(30)]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 3))] * placeholder_shared[(31)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 4))] * placeholder_shared[(32)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 4))] * placeholder_shared[(33)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 4))] * placeholder_shared[(34)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 4))] * placeholder_shared[(35)]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 4))] * placeholder_shared[(36)]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 4))] * placeholder_shared[(37)]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 4))] * placeholder_shared[(38)]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 4))] * placeholder_shared[(39)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 5))] * placeholder_shared[(40)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 5))] * placeholder_shared[(41)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 5))] * placeholder_shared[(42)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 5))] * placeholder_shared[(43)]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 5))] * placeholder_shared[(44)]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 5))] * placeholder_shared[(45)]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 5))] * placeholder_shared[(46)]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 5))] * placeholder_shared[(47)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 6))] * placeholder_shared[(48)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 6))] * placeholder_shared[(49)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 6))] * placeholder_shared[(50)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 6))] * placeholder_shared[(51)]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 6))] * placeholder_shared[(52)]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 6))] * placeholder_shared[(53)]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 6))] * placeholder_shared[(54)]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 6))] * placeholder_shared[(55)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 7))] * placeholder_shared[(56)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 7))] * placeholder_shared[(57)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 7))] * placeholder_shared[(58)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 7))] * placeholder_shared[(59)]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 7))] * placeholder_shared[(60)]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 7))] * placeholder_shared[(61)]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 7))] * placeholder_shared[(62)]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 7))] * placeholder_shared[(63)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 8))] * placeholder_shared[(64)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 8))] * placeholder_shared[(65)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 8))] * placeholder_shared[(66)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 8))] * placeholder_shared[(67)]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 8))] * placeholder_shared[(68)]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 8))] * placeholder_shared[(69)]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 8))] * placeholder_shared[(70)]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 8))] * placeholder_shared[(71)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 9))] * placeholder_shared[(72)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 9))] * placeholder_shared[(73)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 9))] * placeholder_shared[(74)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 9))] * placeholder_shared[(75)]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 9))] * placeholder_shared[(76)]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 9))] * placeholder_shared[(77)]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 9))] * placeholder_shared[(78)]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 9))] * placeholder_shared[(79)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 10))] * placeholder_shared[(80)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 10))] * placeholder_shared[(81)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 10))] * placeholder_shared[(82)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 10))] * placeholder_shared[(83)]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 10))] * placeholder_shared[(84)]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 10))] * placeholder_shared[(85)]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 10))] * placeholder_shared[(86)]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 10))] * placeholder_shared[(87)]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 11))] * placeholder_shared[(88)]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 11))] * placeholder_shared[(89)]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 11))] * placeholder_shared[(90)]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 11))] * placeholder_shared[(91)]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 11))] * placeholder_shared[(92)]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 11))] * placeholder_shared[(93)]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 11))] * placeholder_shared[(94)]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((int)threadIdx.x) * 12) + 11))] * placeholder_shared[(95)]));
  }
  for (int ax3_inner = 0; ax3_inner < 8; ++ax3_inner) {
    T_add[(((((((((int)threadIdx.x) >> 2) * 1280) + ((((int)blockIdx.x) / 20) * 640)) + ((((int)threadIdx.x) & 3) * 160)) + ((((int)blockIdx.x) % 20) * 8)) + ax3_inner))] = (placeholder2[(((((((((int)threadIdx.x) >> 2) * 1280) + ((((int)blockIdx.x) / 20) * 640)) + ((((int)threadIdx.x) & 3) * 160)) + ((((int)blockIdx.x) % 20) * 8)) + ax3_inner))] + (Conv2dOutput[(ax3_inner)] + placeholder3[((((((int)blockIdx.x) % 20) * 8) + ax3_inner))]));
  }
}


