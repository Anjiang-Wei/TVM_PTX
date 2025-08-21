
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
  float Conv2dOutput[16];
  __shared__ float PaddedInput_shared[384];
  __shared__ float placeholder_shared[96];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
    __syncthreads();
    ((float2*)(PaddedInput_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder + ((((((((int)blockIdx.x) >> 3) * 24576) + ((((int)threadIdx.x) / 3) * 768)) + (rc_outer_outer * 6)) + ((((int)threadIdx.x) % 3) * 2)))))[0];
    int2 _1;
      int2 _2;
        int2 _3;
          int2 _4 = make_int2((((((((int)threadIdx.x) * 2) + 128) / 192) * 196608) + ((((int)blockIdx.x) >> 3) * 24576)), (((((((int)threadIdx.x) * 2) + 128) / 192) * 196608) + ((((int)blockIdx.x) >> 3) * 24576)));
          int2 _5;
            int2 _6;
              int2 _7 = (make_int2)(((((((int)threadIdx.x) * 2) + 128) % 192))+(1*0), ((((((int)threadIdx.x) * 2) + 128) % 192))+(1*1));
              int2 _8 = make_int2(6, 6);
              _6.x = (_7.x%_8.x);
              _6.y = (_7.y%_8.y);
            int2 _9;
              int2 _10 = (make_int2)(((((((int)threadIdx.x) * 2) + 128) % 192))+(1*0), ((((((int)threadIdx.x) * 2) + 128) % 192))+(1*1));
              int2 _11 = make_int2(6, 6);
              _9.x = (_10.x/_11.x);
              _9.y = (_10.y/_11.y);
            int2 _12;
            ushort2 _13;
              ushort2 _14;
                ushort2 _15;
                  int2 _16 = make_int2(6, 6);
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
                  int2 _22 = make_int2(6, 6);
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
            int2 _28 = make_int2(768, 768);
            _5.x = (_12.x*_28.x);
            _5.y = (_12.y*_28.y);
          _3.x = (_4.x+_5.x);
          _3.y = (_4.y+_5.y);
        int2 _29 = make_int2((rc_outer_outer * 6), (rc_outer_outer * 6));
        _2.x = (_3.x+_29.x);
        _2.y = (_3.y+_29.y);
      int2 _30 = (make_int2)(((((((int)threadIdx.x) * 2) + 2) % 6))+(1*0), ((((((int)threadIdx.x) * 2) + 2) % 6))+(1*1));
      _1.x = (_2.x+_30.x);
      _1.y = (_2.y+_30.y);
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 128))))[0] = make_float2(placeholder[_1.x],placeholder[_1.y]);
    ((float2*)(PaddedInput_shared + (((((int)threadIdx.x) * 2) + 256))))[0] = ((float2*)(placeholder + (((((((((((int)threadIdx.x) * 2) + 256) / 192) * 196608) + ((((int)blockIdx.x) >> 3) * 24576)) + ((((((int)threadIdx.x) * 2) + 64) / 6) * 768)) + (rc_outer_outer * 6)) + (((((int)threadIdx.x) * 2) + 4) % 6)))))[0];
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[((((int)threadIdx.x) * 3))] = placeholder1[(((((rc_outer_outer * 768) + (((((int)threadIdx.x) * 3) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + ((((int)threadIdx.x) * 3) & 15)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 3) + 1))] = placeholder1[(((((rc_outer_outer * 768) + ((((((int)threadIdx.x) * 3) + 1) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 3) + 1) & 15)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 3) + 2))] = placeholder1[(((((rc_outer_outer * 768) + ((((((int)threadIdx.x) * 3) + 2) >> 4) * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((((int)threadIdx.x) * 3) + 2) & 15)))];
    }
    __syncthreads();
    for (int xx_outer_inner = 0; xx_outer_inner < 4; ++xx_outer_inner) {
      for (int rc_inner = 0; rc_inner < 6; ++rc_inner) {
        Conv2dOutput[(xx_outer_inner)] = (Conv2dOutput[(xx_outer_inner)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 4) * 24) + (xx_outer_inner * 6)) + rc_inner))] * placeholder_shared[(((rc_inner * 16) + (((int)threadIdx.x) & 15)))]));
        Conv2dOutput[((xx_outer_inner + 8))] = (Conv2dOutput[((xx_outer_inner + 8))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 24) + (xx_outer_inner * 6)) + rc_inner) + 96))] * placeholder_shared[(((rc_inner * 16) + (((int)threadIdx.x) & 15)))]));
        Conv2dOutput[((xx_outer_inner + 4))] = (Conv2dOutput[((xx_outer_inner + 4))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 24) + (xx_outer_inner * 6)) + rc_inner) + 192))] * placeholder_shared[(((rc_inner * 16) + (((int)threadIdx.x) & 15)))]));
        Conv2dOutput[((xx_outer_inner + 12))] = (Conv2dOutput[((xx_outer_inner + 12))] + (PaddedInput_shared[((((((((int)threadIdx.x) >> 4) * 24) + (xx_outer_inner * 6)) + rc_inner) + 288))] * placeholder_shared[(((rc_inner * 16) + (((int)threadIdx.x) & 15)))]));
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax2_inner = 0; ax2_inner < 4; ++ax2_inner) {
      T_relu[(((((((ax0_inner * 32768) + ((((int)blockIdx.x) >> 3) * 4096)) + ((((int)threadIdx.x) >> 4) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((int)threadIdx.x) & 15)))] = max((Conv2dOutput[(((ax0_inner * 4) + ax2_inner))] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + (((int)threadIdx.x) & 15)))]), 0.000000e+00f);
      T_relu[((((((((ax0_inner * 32768) + ((((int)blockIdx.x) >> 3) * 4096)) + ((((int)threadIdx.x) >> 4) * 512)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 7) * 16)) + (((int)threadIdx.x) & 15)) + 2048))] = max((Conv2dOutput[((((ax0_inner * 4) + ax2_inner) + 8))] + placeholder2[((((((int)blockIdx.x) & 7) * 16) + (((int)threadIdx.x) & 15)))]), 0.000000e+00f);
    }
  }
}


