
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_multiply, float* __restrict__ Conv2dOutput, float* __restrict__ placeholder) {
  T_multiply[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] = ((Conv2dOutput[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 240))]) * (max(min(((Conv2dOutput[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 240))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ Conv2dOutput) {
  float Conv2dOutput_local[1440];
  __shared__ float PaddedInput_shared[1200];
  __shared__ float placeholder_shared[240];
  for (int ff_c_outer_inner_init = 0; ff_c_outer_inner_init < 6; ++ff_c_outer_inner_init) {
    for (int nn_c_inner_init = 0; nn_c_inner_init < 2; ++nn_c_inner_init) {
      for (int xx_c_inner_init = 0; xx_c_inner_init < 30; ++xx_c_inner_init) {
        Conv2dOutput_local[((((nn_c_inner_init * 720) + (xx_c_inner_init * 24)) + (ff_c_outer_inner_init * 4)))] = 0.000000e+00f;
        Conv2dOutput_local[(((((nn_c_inner_init * 720) + (xx_c_inner_init * 24)) + (ff_c_outer_inner_init * 4)) + 1))] = 0.000000e+00f;
        Conv2dOutput_local[(((((nn_c_inner_init * 720) + (xx_c_inner_init * 24)) + (ff_c_outer_inner_init * 4)) + 2))] = 0.000000e+00f;
        Conv2dOutput_local[(((((nn_c_inner_init * 720) + (xx_c_inner_init * 24)) + (ff_c_outer_inner_init * 4)) + 3))] = 0.000000e+00f;
      }
    }
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 20; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[(((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 50))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 1000))];
    PaddedInput_shared[((((int)threadIdx.x) + 100))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 2000))];
    PaddedInput_shared[((((int)threadIdx.x) + 150))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 3000))];
    PaddedInput_shared[((((int)threadIdx.x) + 200))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 4000))];
    PaddedInput_shared[((((int)threadIdx.x) + 250))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 5000))];
    PaddedInput_shared[((((int)threadIdx.x) + 300))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 6000))];
    PaddedInput_shared[((((int)threadIdx.x) + 350))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 7000))];
    PaddedInput_shared[((((int)threadIdx.x) + 400))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 8000))];
    PaddedInput_shared[((((int)threadIdx.x) + 450))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 9000))];
    PaddedInput_shared[((((int)threadIdx.x) + 500))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 10000))];
    PaddedInput_shared[((((int)threadIdx.x) + 550))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 11000))];
    PaddedInput_shared[((((int)threadIdx.x) + 600))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + ((((int)threadIdx.x) >> 1) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)) + 36000))];
    PaddedInput_shared[((((int)threadIdx.x) + 650))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)threadIdx.x) + 650) / 600) * 36000)) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + (((((int)threadIdx.x) >> 1) + 25) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 700))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)threadIdx.x) + 700) / 600) * 36000)) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + (((((int)threadIdx.x) >> 1) + 50) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 750))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)threadIdx.x) + 750) / 600) * 36000)) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + (((((int)threadIdx.x) >> 1) + 75) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 800))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)threadIdx.x) + 800) / 600) * 36000)) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + (((((int)threadIdx.x) >> 1) + 100) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 850))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)threadIdx.x) + 850) / 600) * 36000)) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + (((((int)threadIdx.x) >> 1) + 125) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 900))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)threadIdx.x) + 900) / 600) * 36000)) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + (((((int)threadIdx.x) >> 1) + 150) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 950))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)threadIdx.x) + 950) / 600) * 36000)) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + (((((int)threadIdx.x) >> 1) + 175) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1000))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)threadIdx.x) + 1000) / 600) * 36000)) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + (((((int)threadIdx.x) >> 1) + 200) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1050))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)threadIdx.x) + 1050) / 600) * 36000)) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + (((((int)threadIdx.x) >> 1) + 225) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1100))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)threadIdx.x) + 1100) / 600) * 36000)) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + (((((int)threadIdx.x) >> 1) + 250) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1150))] = placeholder[((((((((((int)blockIdx.x) / 6) * 72000) + (((((int)threadIdx.x) + 1150) / 600) * 36000)) + (((((int)blockIdx.x) % 6) >> 1) * 12000)) + (((((int)threadIdx.x) >> 1) + 275) * 40)) + (rc_outer_outer * 2)) + (((int)threadIdx.x) & 1)))];
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[((((int)threadIdx.x) * 60))] = placeholder1[(((((rc_outer_outer * 480) + ((((int)threadIdx.x) >> 1) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + ((((int)threadIdx.x) & 1) * 60)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 1))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 1) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 1) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 2))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 2) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 2) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 3))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 3) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 3) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 4))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 4) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 4) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 5))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 5) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 5) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 6))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 6) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 6) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 7))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 7) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 7) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 8))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 8) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 8) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 9))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 9) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 9) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 10))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 10) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 10) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 11))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 11) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 11) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 12))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 12) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 12) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 13))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 13) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 13) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 14))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 14) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 14) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 15))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 15) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 15) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 16))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 16) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 16) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 17))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 17) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 17) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 18))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 18) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 18) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 19))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 19) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 19) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 20))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 20) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 20) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 21))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 21) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 21) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 22))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 22) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 22) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 23))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 23) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 23) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 24))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 24) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 24) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 25))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 25) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 25) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 26))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 26) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 26) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 27))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 27) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 27) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 28))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 28) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 28) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 29))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 29) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 29) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 30))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 30) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 30) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 31))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 31) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 31) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 32))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 32) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 32) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 33))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 33) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 33) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 34))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 34) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 34) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 35))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 35) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 35) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 36))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 36) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 36) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 37))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 37) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 37) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 38))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 38) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 38) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 39))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 39) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 39) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 40))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 40) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 40) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 41))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 41) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 41) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 42))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 42) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 42) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 43))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 43) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 43) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 44))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 44) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 44) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 45))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 45) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 45) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 46))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 46) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 46) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 47))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 47) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 47) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 48))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 48) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 48) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 49))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 49) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 49) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 50))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 50) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 50) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 51))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 51) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 51) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 52))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 52) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 52) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 53))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 53) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 53) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 54))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 54) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 54) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 55))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 55) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 55) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 56))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 56) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 56) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 57))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 57) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 57) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 58))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 58) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 58) % 120)))];
    }
    if (((int)threadIdx.x) < 4) {
      placeholder_shared[(((((int)threadIdx.x) * 60) + 59))] = placeholder1[(((((rc_outer_outer * 480) + ((((((int)threadIdx.x) * 60) + 59) / 120) * 240)) + ((((int)blockIdx.x) & 1) * 120)) + (((((int)threadIdx.x) * 60) + 59) % 120)))];
    }
    __syncthreads();
    for (int ff_c_outer_inner = 0; ff_c_outer_inner < 6; ++ff_c_outer_inner) {
      for (int rc_inner = 0; rc_inner < 2; ++rc_inner) {
        for (int nn_c_inner = 0; nn_c_inner < 2; ++nn_c_inner) {
          for (int xx_c_inner = 0; xx_c_inner < 30; ++xx_c_inner) {
            Conv2dOutput_local[((((nn_c_inner * 720) + (xx_c_inner * 24)) + (ff_c_outer_inner * 4)))] = (Conv2dOutput_local[((((nn_c_inner * 720) + (xx_c_inner * 24)) + (ff_c_outer_inner * 4)))] + (PaddedInput_shared[(((((nn_c_inner * 600) + ((((int)threadIdx.x) / 5) * 60)) + (xx_c_inner * 2)) + rc_inner))] * placeholder_shared[((((rc_inner * 120) + ((((int)threadIdx.x) % 5) * 24)) + (ff_c_outer_inner * 4)))]));
            Conv2dOutput_local[(((((nn_c_inner * 720) + (xx_c_inner * 24)) + (ff_c_outer_inner * 4)) + 1))] = (Conv2dOutput_local[(((((nn_c_inner * 720) + (xx_c_inner * 24)) + (ff_c_outer_inner * 4)) + 1))] + (PaddedInput_shared[(((((nn_c_inner * 600) + ((((int)threadIdx.x) / 5) * 60)) + (xx_c_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_inner * 120) + ((((int)threadIdx.x) % 5) * 24)) + (ff_c_outer_inner * 4)) + 1))]));
            Conv2dOutput_local[(((((nn_c_inner * 720) + (xx_c_inner * 24)) + (ff_c_outer_inner * 4)) + 2))] = (Conv2dOutput_local[(((((nn_c_inner * 720) + (xx_c_inner * 24)) + (ff_c_outer_inner * 4)) + 2))] + (PaddedInput_shared[(((((nn_c_inner * 600) + ((((int)threadIdx.x) / 5) * 60)) + (xx_c_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_inner * 120) + ((((int)threadIdx.x) % 5) * 24)) + (ff_c_outer_inner * 4)) + 2))]));
            Conv2dOutput_local[(((((nn_c_inner * 720) + (xx_c_inner * 24)) + (ff_c_outer_inner * 4)) + 3))] = (Conv2dOutput_local[(((((nn_c_inner * 720) + (xx_c_inner * 24)) + (ff_c_outer_inner * 4)) + 3))] + (PaddedInput_shared[(((((nn_c_inner * 600) + ((((int)threadIdx.x) / 5) * 60)) + (xx_c_inner * 2)) + rc_inner))] * placeholder_shared[(((((rc_inner * 120) + ((((int)threadIdx.x) % 5) * 24)) + (ff_c_outer_inner * 4)) + 3))]));
          }
        }
      }
    }
  }
  for (int nn_inner = 0; nn_inner < 2; ++nn_inner) {
    for (int xx_inner = 0; xx_inner < 30; ++xx_inner) {
      for (int ff_inner = 0; ff_inner < 24; ++ff_inner) {
        Conv2dOutput[((((((((((((int)blockIdx.x) / 6) * 432000) + (nn_inner * 216000)) + (((((int)blockIdx.x) % 6) >> 1) * 72000)) + ((((int)threadIdx.x) / 5) * 7200)) + (xx_inner * 240)) + ((((int)blockIdx.x) & 1) * 120)) + ((((int)threadIdx.x) % 5) * 24)) + ff_inner))] = Conv2dOutput_local[((((nn_inner * 720) + (xx_inner * 24)) + ff_inner))];
      }
    }
  }
}


