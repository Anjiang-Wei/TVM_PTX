
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute, float* __restrict__ placeholder2) {
  float DepthwiseConv2d[14];
  __shared__ float PaddedInput_shared[360];
  __shared__ float placeholder_shared[60];
  DepthwiseConv2d[(0)] = 0.000000e+00f;
  DepthwiseConv2d[(1)] = 0.000000e+00f;
  DepthwiseConv2d[(2)] = 0.000000e+00f;
  DepthwiseConv2d[(3)] = 0.000000e+00f;
  DepthwiseConv2d[(4)] = 0.000000e+00f;
  DepthwiseConv2d[(5)] = 0.000000e+00f;
  DepthwiseConv2d[(6)] = 0.000000e+00f;
  DepthwiseConv2d[(7)] = 0.000000e+00f;
  DepthwiseConv2d[(8)] = 0.000000e+00f;
  DepthwiseConv2d[(9)] = 0.000000e+00f;
  DepthwiseConv2d[(10)] = 0.000000e+00f;
  DepthwiseConv2d[(11)] = 0.000000e+00f;
  DepthwiseConv2d[(12)] = 0.000000e+00f;
  DepthwiseConv2d[(13)] = 0.000000e+00f;
  for (int dj_outer_outer = 0; dj_outer_outer < 3; ++dj_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer < 9; ++ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer) {
      PaddedInput_shared[(((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) * 2)) / 180) * 180) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) / 10)) % 9) * 20)) + ((((int)threadIdx.x) % 10) * 2)))] = (((((1 <= (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) / 10)) % 9)) && ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) / 10)) % 9) < 8)) && (1 <= (((((int)blockIdx.x) % 336) / 48) + dj_outer_outer))) && ((((((int)blockIdx.x) % 336) / 48) + dj_outer_outer) < 8)) ? placeholder[(((((((((((int)blockIdx.x) / 336) * 94080) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) * 2)) / 180) * 47040)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((int)threadIdx.x) / 10)) % 9) * 6720)) + (dj_outer_outer * 960)) + ((((int)blockIdx.x) % 336) * 20)) + ((((int)threadIdx.x) % 10) * 2)) - 7680))] : 0.000000e+00f);
      PaddedInput_shared[((((((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) * 2)) + 1) / 180) * 180) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((((int)threadIdx.x) * 2) + 1) / 20)) % 9) * 20)) + (((((int)threadIdx.x) * 2) + 1) % 20)))] = (((((1 <= (((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((((int)threadIdx.x) * 2) + 1) / 20)) % 9)) && ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((((int)threadIdx.x) * 2) + 1) / 20)) % 9) < 8)) && (1 <= (((((int)blockIdx.x) % 336) / 48) + dj_outer_outer))) && ((((((int)blockIdx.x) % 336) / 48) + dj_outer_outer) < 8)) ? placeholder[(((((((((((int)blockIdx.x) / 336) * 94080) + (((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 40) + (((int)threadIdx.x) * 2)) + 1) / 180) * 47040)) + ((((ax0_ax1_fused_ax2_fused_ax3_fused_outer_outer * 2) + (((((int)threadIdx.x) * 2) + 1) / 20)) % 9) * 6720)) + (dj_outer_outer * 960)) + ((((int)blockIdx.x) % 336) * 20)) + (((((int)threadIdx.x) * 2) + 1) % 20)) - 7680))] : 0.000000e+00f);
    }
    int3 _1;
      int3 _2;
        int3 _3;
          int3 _4;
            int3 _5;
              int3 _6 = (make_int3)(((((int)threadIdx.x) * 3))+(1*0), ((((int)threadIdx.x) * 3))+(1*1), ((((int)threadIdx.x) * 3))+(1*2));
              int3 _7 = make_int3(20, 20, 20);
              _5.x = (_6.x%_7.x);
              _5.y = (_6.y%_7.y);
              _5.z = (_6.z%_7.z);
            int3 _8;
              int3 _9 = (make_int3)(((((int)threadIdx.x) * 3))+(1*0), ((((int)threadIdx.x) * 3))+(1*1), ((((int)threadIdx.x) * 3))+(1*2));
              int3 _10 = make_int3(20, 20, 20);
              _8.x = (_9.x/_10.x);
              _8.y = (_9.y/_10.y);
              _8.z = (_9.z/_10.z);
            int3 _11;
            ushort3 _12;
              ushort3 _13;
                ushort3 _14;
                  int3 _15 = make_int3(20, 20, 20);
                  int3 _16 = make_int3(0, 0, 0);
                  _14.x = (_15.x>=_16.x);
                  _14.y = (_15.y>=_16.y);
                  _14.z = (_15.z>=_16.z);
                ushort3 _17;
                  int3 _18 = make_int3(0, 0, 0);
                  _17.x = (_5.x>=_18.x);
                  _17.y = (_5.y>=_18.y);
                  _17.z = (_5.z>=_18.z);
                _13.x = (_14.x&&_17.x);
                _13.y = (_14.y&&_17.y);
                _13.z = (_14.z&&_17.z);
              ushort3 _19;
                ushort3 _20;
                  int3 _21 = make_int3(20, 20, 20);
                  int3 _22 = make_int3(0, 0, 0);
                  _20.x = (_21.x<_22.x);
                  _20.y = (_21.y<_22.y);
                  _20.z = (_21.z<_22.z);
                ushort3 _23;
                  int3 _24 = make_int3(0, 0, 0);
                  _23.x = (_5.x<=_24.x);
                  _23.y = (_5.y<=_24.y);
                  _23.z = (_5.z<=_24.z);
                _19.x = (_20.x&&_23.x);
                _19.y = (_20.y&&_23.y);
                _19.z = (_20.z&&_23.z);
              _12.x = (_13.x||_19.x);
              _12.y = (_13.y||_19.y);
              _12.z = (_13.z||_19.z);
            int3 _25;
              int3 _26 = make_int3(1, 1, 1);
              _25.x = (_8.x-_26.x);
              _25.y = (_8.y-_26.y);
              _25.z = (_8.z-_26.z);
            _11.x = (bool(_12.x)?_8.x:_25.x);
            _11.y = (bool(_12.y)?_8.y:_25.y);
            _11.z = (bool(_12.z)?_8.z:_25.z);
            int3 _27 = make_int3(2880, 2880, 2880);
            _4.x = (_11.x*_27.x);
            _4.y = (_11.y*_27.y);
            _4.z = (_11.z*_27.z);
          int3 _28 = make_int3((dj_outer_outer * 960), (dj_outer_outer * 960), (dj_outer_outer * 960));
          _3.x = (_4.x+_28.x);
          _3.y = (_4.y+_28.y);
          _3.z = (_4.z+_28.z);
        int3 _29 = make_int3(((((int)blockIdx.x) % 48) * 20), ((((int)blockIdx.x) % 48) * 20), ((((int)blockIdx.x) % 48) * 20));
        _2.x = (_3.x+_29.x);
        _2.y = (_3.y+_29.y);
        _2.z = (_3.z+_29.z);
      int3 _30;
        int3 _31 = (make_int3)(((((int)threadIdx.x) * 3))+(1*0), ((((int)threadIdx.x) * 3))+(1*1), ((((int)threadIdx.x) * 3))+(1*2));
        int3 _32 = make_int3(20, 20, 20);
        _30.x = (_31.x%_32.x);
        _30.y = (_31.y%_32.y);
        _30.z = (_31.z%_32.z);
      int3 _33;
      ushort3 _34;
        ushort3 _35;
          ushort3 _36;
            int3 _37 = make_int3(20, 20, 20);
            int3 _38 = make_int3(0, 0, 0);
            _36.x = (_37.x>=_38.x);
            _36.y = (_37.y>=_38.y);
            _36.z = (_37.z>=_38.z);
          ushort3 _39;
            int3 _40 = make_int3(0, 0, 0);
            _39.x = (_30.x>=_40.x);
            _39.y = (_30.y>=_40.y);
            _39.z = (_30.z>=_40.z);
          _35.x = (_36.x&&_39.x);
          _35.y = (_36.y&&_39.y);
          _35.z = (_36.z&&_39.z);
        ushort3 _41;
          ushort3 _42;
            int3 _43 = make_int3(20, 20, 20);
            int3 _44 = make_int3(0, 0, 0);
            _42.x = (_43.x<_44.x);
            _42.y = (_43.y<_44.y);
            _42.z = (_43.z<_44.z);
          ushort3 _45;
            int3 _46 = make_int3(0, 0, 0);
            _45.x = (_30.x<=_46.x);
            _45.y = (_30.y<=_46.y);
            _45.z = (_30.z<=_46.z);
          _41.x = (_42.x&&_45.x);
          _41.y = (_42.y&&_45.y);
          _41.z = (_42.z&&_45.z);
        _34.x = (_35.x||_41.x);
        _34.y = (_35.y||_41.y);
        _34.z = (_35.z||_41.z);
      int3 _47;
        int3 _48 = make_int3(20, 20, 20);
        _47.x = (_30.x+_48.x);
        _47.y = (_30.y+_48.y);
        _47.z = (_30.z+_48.z);
      _33.x = (bool(_34.x)?_30.x:_47.x);
      _33.y = (bool(_34.y)?_30.y:_47.y);
      _33.z = (bool(_34.z)?_30.z:_47.z);
      _1.x = (_2.x+_33.x);
      _1.y = (_2.y+_33.y);
      _1.z = (_2.z+_33.z);
    ((float3*)(placeholder_shared + ((((int)threadIdx.x) * 3))))[0] = make_float3(placeholder1[_1.x],placeholder1[_1.y],placeholder1[_1.z]);
    __syncthreads();
    for (int di_inner = 0; di_inner < 3; ++di_inner) {
      DepthwiseConv2d[(0)] = (DepthwiseConv2d[(0)] + (PaddedInput_shared[(((di_inner * 20) + ((int)threadIdx.x)))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(1)] = (DepthwiseConv2d[(1)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 20))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(2)] = (DepthwiseConv2d[(2)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 40))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(3)] = (DepthwiseConv2d[(3)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 60))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(4)] = (DepthwiseConv2d[(4)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 80))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(5)] = (DepthwiseConv2d[(5)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 100))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(6)] = (DepthwiseConv2d[(6)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 120))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(7)] = (DepthwiseConv2d[(7)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 180))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(8)] = (DepthwiseConv2d[(8)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 200))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(9)] = (DepthwiseConv2d[(9)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 220))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(10)] = (DepthwiseConv2d[(10)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 240))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(11)] = (DepthwiseConv2d[(11)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 260))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(12)] = (DepthwiseConv2d[(12)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 280))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
      DepthwiseConv2d[(13)] = (DepthwiseConv2d[(13)] + (PaddedInput_shared[((((di_inner * 20) + ((int)threadIdx.x)) + 300))] * placeholder_shared[(((di_inner * 20) + ((int)threadIdx.x)))]));
    }
  }
  for (int i0_inner = 0; i0_inner < 2; ++i0_inner) {
    for (int i1_inner = 0; i1_inner < 7; ++i1_inner) {
      compute[(((((((((int)blockIdx.x) / 336) * 94080) + (i0_inner * 47040)) + (i1_inner * 6720)) + ((((int)blockIdx.x) % 336) * 20)) + ((int)threadIdx.x)))] = max(min((DepthwiseConv2d[(((i0_inner * 7) + i1_inner))] + placeholder2[((((((int)blockIdx.x) % 48) * 20) + ((int)threadIdx.x)))]), 6.000000e+00f), 0.000000e+00f);
    }
  }
}


