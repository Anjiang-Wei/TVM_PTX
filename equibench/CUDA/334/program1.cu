
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
  float T_dense[64];
  __shared__ float placeholder_d_shared[2];
  __shared__ float placeholder_shared[1024];
  T_dense[(0)] = 0.000000e+00f;
  T_dense[(1)] = 0.000000e+00f;
  T_dense[(2)] = 0.000000e+00f;
  T_dense[(3)] = 0.000000e+00f;
  T_dense[(4)] = 0.000000e+00f;
  T_dense[(5)] = 0.000000e+00f;
  T_dense[(6)] = 0.000000e+00f;
  T_dense[(7)] = 0.000000e+00f;
  T_dense[(32)] = 0.000000e+00f;
  T_dense[(33)] = 0.000000e+00f;
  T_dense[(34)] = 0.000000e+00f;
  T_dense[(35)] = 0.000000e+00f;
  T_dense[(36)] = 0.000000e+00f;
  T_dense[(37)] = 0.000000e+00f;
  T_dense[(38)] = 0.000000e+00f;
  T_dense[(39)] = 0.000000e+00f;
  T_dense[(8)] = 0.000000e+00f;
  T_dense[(9)] = 0.000000e+00f;
  T_dense[(10)] = 0.000000e+00f;
  T_dense[(11)] = 0.000000e+00f;
  T_dense[(12)] = 0.000000e+00f;
  T_dense[(13)] = 0.000000e+00f;
  T_dense[(14)] = 0.000000e+00f;
  T_dense[(15)] = 0.000000e+00f;
  T_dense[(40)] = 0.000000e+00f;
  T_dense[(41)] = 0.000000e+00f;
  T_dense[(42)] = 0.000000e+00f;
  T_dense[(43)] = 0.000000e+00f;
  T_dense[(44)] = 0.000000e+00f;
  T_dense[(45)] = 0.000000e+00f;
  T_dense[(46)] = 0.000000e+00f;
  T_dense[(47)] = 0.000000e+00f;
  T_dense[(16)] = 0.000000e+00f;
  T_dense[(17)] = 0.000000e+00f;
  T_dense[(18)] = 0.000000e+00f;
  T_dense[(19)] = 0.000000e+00f;
  T_dense[(20)] = 0.000000e+00f;
  T_dense[(21)] = 0.000000e+00f;
  T_dense[(22)] = 0.000000e+00f;
  T_dense[(23)] = 0.000000e+00f;
  T_dense[(48)] = 0.000000e+00f;
  T_dense[(49)] = 0.000000e+00f;
  T_dense[(50)] = 0.000000e+00f;
  T_dense[(51)] = 0.000000e+00f;
  T_dense[(52)] = 0.000000e+00f;
  T_dense[(53)] = 0.000000e+00f;
  T_dense[(54)] = 0.000000e+00f;
  T_dense[(55)] = 0.000000e+00f;
  T_dense[(24)] = 0.000000e+00f;
  T_dense[(25)] = 0.000000e+00f;
  T_dense[(26)] = 0.000000e+00f;
  T_dense[(27)] = 0.000000e+00f;
  T_dense[(28)] = 0.000000e+00f;
  T_dense[(29)] = 0.000000e+00f;
  T_dense[(30)] = 0.000000e+00f;
  T_dense[(31)] = 0.000000e+00f;
  T_dense[(56)] = 0.000000e+00f;
  T_dense[(57)] = 0.000000e+00f;
  T_dense[(58)] = 0.000000e+00f;
  T_dense[(59)] = 0.000000e+00f;
  T_dense[(60)] = 0.000000e+00f;
  T_dense[(61)] = 0.000000e+00f;
  T_dense[(62)] = 0.000000e+00f;
  T_dense[(63)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 100; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[((((int)threadIdx.x) * 2))] = placeholder[(((((((int)blockIdx.x) / 25) * 200) + (((int)threadIdx.x) * 200)) + k_outer_outer))];
    }
    if (((int)threadIdx.x) < 1) {
      placeholder_d_shared[(((((int)threadIdx.x) * 2) + 1))] = placeholder[((((((((int)blockIdx.x) / 25) * 200) + (((int)threadIdx.x) * 200)) + k_outer_outer) + 100))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer))];
    placeholder_shared[((((int)threadIdx.x) + 32))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 3200))];
    placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 6400))];
    placeholder_shared[((((int)threadIdx.x) + 96))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 9600))];
    placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 12800))];
    placeholder_shared[((((int)threadIdx.x) + 160))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 16000))];
    placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 19200))];
    placeholder_shared[((((int)threadIdx.x) + 224))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 22400))];
    placeholder_shared[((((int)threadIdx.x) + 256))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 25600))];
    placeholder_shared[((((int)threadIdx.x) + 288))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 28800))];
    placeholder_shared[((((int)threadIdx.x) + 320))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 32000))];
    placeholder_shared[((((int)threadIdx.x) + 352))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 35200))];
    placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 38400))];
    placeholder_shared[((((int)threadIdx.x) + 416))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 41600))];
    placeholder_shared[((((int)threadIdx.x) + 448))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 44800))];
    placeholder_shared[((((int)threadIdx.x) + 480))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 48000))];
    placeholder_shared[((((int)threadIdx.x) + 512))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 51200))];
    placeholder_shared[((((int)threadIdx.x) + 544))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 54400))];
    placeholder_shared[((((int)threadIdx.x) + 576))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 57600))];
    placeholder_shared[((((int)threadIdx.x) + 608))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 60800))];
    placeholder_shared[((((int)threadIdx.x) + 640))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 64000))];
    placeholder_shared[((((int)threadIdx.x) + 672))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 67200))];
    placeholder_shared[((((int)threadIdx.x) + 704))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 70400))];
    placeholder_shared[((((int)threadIdx.x) + 736))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 73600))];
    placeholder_shared[((((int)threadIdx.x) + 768))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 76800))];
    placeholder_shared[((((int)threadIdx.x) + 800))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 80000))];
    placeholder_shared[((((int)threadIdx.x) + 832))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 83200))];
    placeholder_shared[((((int)threadIdx.x) + 864))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 86400))];
    placeholder_shared[((((int)threadIdx.x) + 896))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 89600))];
    placeholder_shared[((((int)threadIdx.x) + 928))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 92800))];
    placeholder_shared[((((int)threadIdx.x) + 960))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 96000))];
    placeholder_shared[((((int)threadIdx.x) + 992))] = placeholder1[((((((((int)blockIdx.x) % 25) * 102400) + (((int)threadIdx.x) * 100)) + k_outer_outer) + 99200))];
    __syncthreads();
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(0)] * placeholder_shared[((((int)threadIdx.x) * 32))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 1))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 2))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 3))]));
    T_dense[(4)] = (T_dense[(4)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 4))]));
    T_dense[(5)] = (T_dense[(5)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 5))]));
    T_dense[(6)] = (T_dense[(6)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 6))]));
    T_dense[(7)] = (T_dense[(7)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 7))]));
    T_dense[(32)] = (T_dense[(32)] + (placeholder_d_shared[(1)] * placeholder_shared[((((int)threadIdx.x) * 32))]));
    T_dense[(33)] = (T_dense[(33)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 1))]));
    T_dense[(34)] = (T_dense[(34)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 2))]));
    T_dense[(35)] = (T_dense[(35)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 3))]));
    T_dense[(36)] = (T_dense[(36)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 4))]));
    T_dense[(37)] = (T_dense[(37)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 5))]));
    T_dense[(38)] = (T_dense[(38)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 6))]));
    T_dense[(39)] = (T_dense[(39)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 7))]));
    T_dense[(8)] = (T_dense[(8)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 8))]));
    T_dense[(9)] = (T_dense[(9)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 9))]));
    T_dense[(10)] = (T_dense[(10)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 10))]));
    T_dense[(11)] = (T_dense[(11)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 11))]));
    T_dense[(12)] = (T_dense[(12)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 12))]));
    T_dense[(13)] = (T_dense[(13)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 13))]));
    T_dense[(14)] = (T_dense[(14)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 14))]));
    T_dense[(15)] = (T_dense[(15)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 15))]));
    T_dense[(40)] = (T_dense[(40)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 8))]));
    T_dense[(41)] = (T_dense[(41)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 9))]));
    T_dense[(42)] = (T_dense[(42)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 10))]));
    T_dense[(43)] = (T_dense[(43)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 11))]));
    T_dense[(44)] = (T_dense[(44)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 12))]));
    T_dense[(45)] = (T_dense[(45)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 13))]));
    T_dense[(46)] = (T_dense[(46)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 14))]));
    T_dense[(47)] = (T_dense[(47)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 15))]));
    T_dense[(16)] = (T_dense[(16)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 16))]));
    T_dense[(17)] = (T_dense[(17)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 17))]));
    T_dense[(18)] = (T_dense[(18)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 18))]));
    T_dense[(19)] = (T_dense[(19)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 19))]));
    T_dense[(20)] = (T_dense[(20)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 20))]));
    T_dense[(21)] = (T_dense[(21)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 21))]));
    T_dense[(22)] = (T_dense[(22)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 22))]));
    T_dense[(23)] = (T_dense[(23)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 23))]));
    T_dense[(48)] = (T_dense[(48)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 16))]));
    T_dense[(49)] = (T_dense[(49)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 17))]));
    T_dense[(50)] = (T_dense[(50)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 18))]));
    T_dense[(51)] = (T_dense[(51)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 19))]));
    T_dense[(52)] = (T_dense[(52)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 20))]));
    T_dense[(53)] = (T_dense[(53)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 21))]));
    T_dense[(54)] = (T_dense[(54)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 22))]));
    T_dense[(55)] = (T_dense[(55)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 23))]));
    T_dense[(24)] = (T_dense[(24)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 24))]));
    T_dense[(25)] = (T_dense[(25)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 25))]));
    T_dense[(26)] = (T_dense[(26)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 26))]));
    T_dense[(27)] = (T_dense[(27)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 27))]));
    T_dense[(28)] = (T_dense[(28)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 28))]));
    T_dense[(29)] = (T_dense[(29)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 29))]));
    T_dense[(30)] = (T_dense[(30)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 30))]));
    T_dense[(31)] = (T_dense[(31)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 31))]));
    T_dense[(56)] = (T_dense[(56)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 24))]));
    T_dense[(57)] = (T_dense[(57)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 25))]));
    T_dense[(58)] = (T_dense[(58)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 26))]));
    T_dense[(59)] = (T_dense[(59)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 27))]));
    T_dense[(60)] = (T_dense[(60)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 28))]));
    T_dense[(61)] = (T_dense[(61)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 29))]));
    T_dense[(62)] = (T_dense[(62)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 30))]));
    T_dense[(63)] = (T_dense[(63)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 32) + 31))]));
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 32; ++ax1_inner) {
      T_relu[(((((((((int)blockIdx.x) / 25) * 51200) + (ax0_inner * 25600)) + ((((int)blockIdx.x) % 25) * 1024)) + (((int)threadIdx.x) * 32)) + ax1_inner))] = max(T_dense[(((ax0_inner * 32) + ax1_inner))], 0.000000e+00f);
    }
  }
}


