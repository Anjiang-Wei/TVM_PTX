
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
  float Conv2dOutput[56];
  __shared__ float PaddedInput_shared[4480];
  __shared__ float placeholder_shared[2048];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(28)] = 0.000000e+00f;
  Conv2dOutput[(35)] = 0.000000e+00f;
  Conv2dOutput[(42)] = 0.000000e+00f;
  Conv2dOutput[(49)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(29)] = 0.000000e+00f;
  Conv2dOutput[(36)] = 0.000000e+00f;
  Conv2dOutput[(43)] = 0.000000e+00f;
  Conv2dOutput[(50)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  Conv2dOutput[(30)] = 0.000000e+00f;
  Conv2dOutput[(37)] = 0.000000e+00f;
  Conv2dOutput[(44)] = 0.000000e+00f;
  Conv2dOutput[(51)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(24)] = 0.000000e+00f;
  Conv2dOutput[(31)] = 0.000000e+00f;
  Conv2dOutput[(38)] = 0.000000e+00f;
  Conv2dOutput[(45)] = 0.000000e+00f;
  Conv2dOutput[(52)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(25)] = 0.000000e+00f;
  Conv2dOutput[(32)] = 0.000000e+00f;
  Conv2dOutput[(39)] = 0.000000e+00f;
  Conv2dOutput[(46)] = 0.000000e+00f;
  Conv2dOutput[(53)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(26)] = 0.000000e+00f;
  Conv2dOutput[(33)] = 0.000000e+00f;
  Conv2dOutput[(40)] = 0.000000e+00f;
  Conv2dOutput[(47)] = 0.000000e+00f;
  Conv2dOutput[(54)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(27)] = 0.000000e+00f;
  Conv2dOutput[(34)] = 0.000000e+00f;
  Conv2dOutput[(41)] = 0.000000e+00f;
  Conv2dOutput[(48)] = 0.000000e+00f;
  Conv2dOutput[(55)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 2; ++rc_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 224; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      int2 _1;
        int2 _2;
          int2 _3;
            int2 _4 = make_int2(((((((int)blockIdx.x) / 20) * 44800) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) * 2)) / 896) * 8960)) + (((((int)blockIdx.x) % 20) >> 2) * 1792)), ((((((int)blockIdx.x) / 20) * 44800) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) * 2)) / 896) * 8960)) + (((((int)blockIdx.x) % 20) >> 2) * 1792)));
            int2 _5;
              int2 _6;
                int2 _7 = (make_int2)(((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) * 2)) % 896))+(1*0), ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) * 2)) % 896))+(1*1));
                int2 _8 = make_int2(128, 128);
                _6.x = (_7.x%_8.x);
                _6.y = (_7.y%_8.y);
              int2 _9;
                int2 _10 = (make_int2)(((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) * 2)) % 896))+(1*0), ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) * 2)) % 896))+(1*1));
                int2 _11 = make_int2(128, 128);
                _9.x = (_10.x/_11.x);
                _9.y = (_10.y/_11.y);
              int2 _12;
              ushort2 _13;
                ushort2 _14;
                  ushort2 _15;
                    int2 _16 = make_int2(128, 128);
                    int2 _17 = make_int2(0, 0);
                    _15.x = (_16.x>=_17.x);
                    _15.y = (_16.y>=_17.y);
                  ushort2 _18;
                    int2 _19 = make_int2(0, 0);
                    _18.x = (_6.x>=_19.x);
                    _18.y = (_6.y>=_19.y);
                  _14.x = (_15.x&&_18.x);
                  _14.y = (_15.y&&_18.y);
                ushort2 _20;
                  ushort2 _21;
                    int2 _22 = make_int2(128, 128);
                    int2 _23 = make_int2(0, 0);
                    _21.x = (_22.x<_23.x);
                    _21.y = (_22.y<_23.y);
                  ushort2 _24;
                    int2 _25 = make_int2(0, 0);
                    _24.x = (_6.x<=_25.x);
                    _24.y = (_6.y<=_25.y);
                  _20.x = (_21.x&&_24.x);
                  _20.y = (_21.y&&_24.y);
                _13.x = (_14.x||_20.x);
                _13.y = (_14.y||_20.y);
              int2 _26;
                int2 _27 = make_int2(1, 1);
                _26.x = (_9.x-_27.x);
                _26.y = (_9.y-_27.y);
              _12.x = (bool(_13.x)?_9.x:_26.x);
              _12.y = (bool(_13.y)?_9.y:_26.y);
              int2 _28 = make_int2(256, 256);
              _5.x = (_12.x*_28.x);
              _5.y = (_12.y*_28.y);
            _3.x = (_4.x+_5.x);
            _3.y = (_4.y+_5.y);
          int2 _29 = make_int2((rc_outer_outer * 128), (rc_outer_outer * 128));
          _2.x = (_3.x+_29.x);
          _2.y = (_3.y+_29.y);
        int2 _30 = (make_int2)(((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) * 2)) & 127))+(1*0), ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) * 2)) & 127))+(1*1));
        _1.x = (_2.x+_30.x);
        _1.y = (_2.y+_30.y);
      ((float2*)(PaddedInput_shared + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 20) + (((int)threadIdx.x) * 2)))))[0] = make_float2(placeholder[_1.x],placeholder[_1.y]);
    }
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 < 205; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1) {
      if (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 10) + ((int)threadIdx.x)) < 2048) {
        placeholder_shared[(((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 10) + ((int)threadIdx.x)))] = placeholder1[(((((rc_outer_outer * 8192) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 10) + ((int)threadIdx.x)) >> 4) * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer1 * 10) + ((int)threadIdx.x)) & 15)))];
      }
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 8; ++rc_outer_inner) {
      for (int xx_outer_inner = 0; xx_outer_inner < 7; ++xx_outer_inner) {
        for (int rc_inner = 0; rc_inner < 16; ++rc_inner) {
          Conv2dOutput[(xx_outer_inner)] = (Conv2dOutput[(xx_outer_inner)] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 896) + (xx_outer_inner * 128)) + (rc_outer_inner * 16)) + rc_inner))] * placeholder_shared[((((rc_outer_inner * 256) + (rc_inner * 16)) + (((int)threadIdx.x) & 1)))]));
          Conv2dOutput[((xx_outer_inner + 7))] = (Conv2dOutput[((xx_outer_inner + 7))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 896) + (xx_outer_inner * 128)) + (rc_outer_inner * 16)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 16)) + (((int)threadIdx.x) & 1)) + 2))]));
          Conv2dOutput[((xx_outer_inner + 14))] = (Conv2dOutput[((xx_outer_inner + 14))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 896) + (xx_outer_inner * 128)) + (rc_outer_inner * 16)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 16)) + (((int)threadIdx.x) & 1)) + 4))]));
          Conv2dOutput[((xx_outer_inner + 21))] = (Conv2dOutput[((xx_outer_inner + 21))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 896) + (xx_outer_inner * 128)) + (rc_outer_inner * 16)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 16)) + (((int)threadIdx.x) & 1)) + 6))]));
          Conv2dOutput[((xx_outer_inner + 28))] = (Conv2dOutput[((xx_outer_inner + 28))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 896) + (xx_outer_inner * 128)) + (rc_outer_inner * 16)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 16)) + (((int)threadIdx.x) & 1)) + 8))]));
          Conv2dOutput[((xx_outer_inner + 35))] = (Conv2dOutput[((xx_outer_inner + 35))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 896) + (xx_outer_inner * 128)) + (rc_outer_inner * 16)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 16)) + (((int)threadIdx.x) & 1)) + 10))]));
          Conv2dOutput[((xx_outer_inner + 42))] = (Conv2dOutput[((xx_outer_inner + 42))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 896) + (xx_outer_inner * 128)) + (rc_outer_inner * 16)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 16)) + (((int)threadIdx.x) & 1)) + 12))]));
          Conv2dOutput[((xx_outer_inner + 49))] = (Conv2dOutput[((xx_outer_inner + 49))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 1) * 896) + (xx_outer_inner * 128)) + (rc_outer_inner * 16)) + rc_inner))] * placeholder_shared[(((((rc_outer_inner * 256) + (rc_inner * 16)) + (((int)threadIdx.x) & 1)) + 14))]));
        }
      }
    }
  }
  for (int ax2_inner = 0; ax2_inner < 7; ++ax2_inner) {
    T_relu[((((((((((int)blockIdx.x) / 20) * 11200) + ((((int)threadIdx.x) >> 1) * 2240)) + (((((int)blockIdx.x) % 20) >> 2) * 448)) + (ax2_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((int)threadIdx.x) & 1)))] = max((Conv2dOutput[(ax2_inner)] + placeholder2[((((((int)blockIdx.x) & 3) * 16) + (((int)threadIdx.x) & 1)))]), 0.000000e+00f);
    T_relu[(((((((((((int)blockIdx.x) / 20) * 11200) + ((((int)threadIdx.x) >> 1) * 2240)) + (((((int)blockIdx.x) % 20) >> 2) * 448)) + (ax2_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((int)threadIdx.x) & 1)) + 2))] = max((Conv2dOutput[((ax2_inner + 7))] + placeholder2[(((((((int)blockIdx.x) & 3) * 16) + (((int)threadIdx.x) & 1)) + 2))]), 0.000000e+00f);
    T_relu[(((((((((((int)blockIdx.x) / 20) * 11200) + ((((int)threadIdx.x) >> 1) * 2240)) + (((((int)blockIdx.x) % 20) >> 2) * 448)) + (ax2_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((int)threadIdx.x) & 1)) + 4))] = max((Conv2dOutput[((ax2_inner + 14))] + placeholder2[(((((((int)blockIdx.x) & 3) * 16) + (((int)threadIdx.x) & 1)) + 4))]), 0.000000e+00f);
    T_relu[(((((((((((int)blockIdx.x) / 20) * 11200) + ((((int)threadIdx.x) >> 1) * 2240)) + (((((int)blockIdx.x) % 20) >> 2) * 448)) + (ax2_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((int)threadIdx.x) & 1)) + 6))] = max((Conv2dOutput[((ax2_inner + 21))] + placeholder2[(((((((int)blockIdx.x) & 3) * 16) + (((int)threadIdx.x) & 1)) + 6))]), 0.000000e+00f);
    T_relu[(((((((((((int)blockIdx.x) / 20) * 11200) + ((((int)threadIdx.x) >> 1) * 2240)) + (((((int)blockIdx.x) % 20) >> 2) * 448)) + (ax2_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((int)threadIdx.x) & 1)) + 8))] = max((Conv2dOutput[((ax2_inner + 28))] + placeholder2[(((((((int)blockIdx.x) & 3) * 16) + (((int)threadIdx.x) & 1)) + 8))]), 0.000000e+00f);
    T_relu[(((((((((((int)blockIdx.x) / 20) * 11200) + ((((int)threadIdx.x) >> 1) * 2240)) + (((((int)blockIdx.x) % 20) >> 2) * 448)) + (ax2_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((int)threadIdx.x) & 1)) + 10))] = max((Conv2dOutput[((ax2_inner + 35))] + placeholder2[(((((((int)blockIdx.x) & 3) * 16) + (((int)threadIdx.x) & 1)) + 10))]), 0.000000e+00f);
    T_relu[(((((((((((int)blockIdx.x) / 20) * 11200) + ((((int)threadIdx.x) >> 1) * 2240)) + (((((int)blockIdx.x) % 20) >> 2) * 448)) + (ax2_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((int)threadIdx.x) & 1)) + 12))] = max((Conv2dOutput[((ax2_inner + 42))] + placeholder2[(((((((int)blockIdx.x) & 3) * 16) + (((int)threadIdx.x) & 1)) + 12))]), 0.000000e+00f);
    T_relu[(((((((((((int)blockIdx.x) / 20) * 11200) + ((((int)threadIdx.x) >> 1) * 2240)) + (((((int)blockIdx.x) % 20) >> 2) * 448)) + (ax2_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((int)threadIdx.x) & 1)) + 14))] = max((Conv2dOutput[((ax2_inner + 49))] + placeholder2[(((((((int)blockIdx.x) & 3) * 16) + (((int)threadIdx.x) & 1)) + 14))]), 0.000000e+00f);
  }
}


