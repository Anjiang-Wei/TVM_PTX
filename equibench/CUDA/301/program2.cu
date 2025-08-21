
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
  float Conv2dOutput[480];
  __shared__ float PaddedInput_shared[236];
  __shared__ float placeholder_shared[256];
  for (int nn_outer_inner_init = 0; nn_outer_inner_init < 4; ++nn_outer_inner_init) {
    for (int yy_inner_init = 0; yy_inner_init < 10; ++yy_inner_init) {
      Conv2dOutput[(((nn_outer_inner_init * 20) + (yy_inner_init * 2)))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 20) + (yy_inner_init * 2)) + 80))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 20) + (yy_inner_init * 2)) + 160))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 20) + (yy_inner_init * 2)) + 240))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 20) + (yy_inner_init * 2)) + 320))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 20) + (yy_inner_init * 2)) + 400))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 20) + (yy_inner_init * 2)) + 1))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 20) + (yy_inner_init * 2)) + 81))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 20) + (yy_inner_init * 2)) + 161))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 20) + (yy_inner_init * 2)) + 241))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 20) + (yy_inner_init * 2)) + 321))] = 0.000000e+00f;
      Conv2dOutput[((((nn_outer_inner_init * 20) + (yy_inner_init * 2)) + 401))] = 0.000000e+00f;
    }
  }
  for (int ry_outer_outer = 0; ry_outer_outer < 3; ++ry_outer_outer) {
    for (int rx_outer_outer = 0; rx_outer_outer < 3; ++rx_outer_outer) {
      for (int rc_outer_outer = 0; rc_outer_outer < 256; ++rc_outer_outer) {
        __syncthreads();
        PaddedInput_shared[((((int)threadIdx.x) * 2))] = (((1 <= (ry_outer_outer + ((((int)threadIdx.x) * 2) % 59))) && (1 <= ((((int)blockIdx.x) * 2) + rx_outer_outer))) ? placeholder[((((((((((((int)threadIdx.x) * 2) / 59) * 921600) + (ry_outer_outer * 15360)) + (((((int)threadIdx.x) * 2) % 59) * 15360)) + (((int)blockIdx.x) * 512)) + (rx_outer_outer * 256)) + rc_outer_outer) - 15616))] : 0.000000e+00f);
        PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1))] = (((1 <= (ry_outer_outer + (((((int)threadIdx.x) * 2) + 1) % 59))) && (1 <= ((((int)blockIdx.x) * 2) + rx_outer_outer))) ? placeholder[(((((((((((((int)threadIdx.x) * 2) + 1) / 59) * 921600) + (ry_outer_outer * 15360)) + ((((((int)threadIdx.x) * 2) + 1) % 59) * 15360)) + (((int)blockIdx.x) * 512)) + (rx_outer_outer * 256)) + rc_outer_outer) - 15616))] : 0.000000e+00f);
        if (((int)threadIdx.x) < 54) {
          PaddedInput_shared[(((((int)threadIdx.x) * 2) + 128))] = (((1 <= (ry_outer_outer + (((((int)threadIdx.x) * 2) + 10) % 59))) && (1 <= ((((int)blockIdx.x) * 2) + rx_outer_outer))) ? placeholder[(((((((((((((int)threadIdx.x) * 2) + 128) / 59) * 921600) + (ry_outer_outer * 15360)) + ((((((int)threadIdx.x) * 2) + 10) % 59) * 15360)) + (((int)blockIdx.x) * 512)) + (rx_outer_outer * 256)) + rc_outer_outer) - 15616))] : 0.000000e+00f);
        }
        if (((int)threadIdx.x) < 54) {
          PaddedInput_shared[(((((int)threadIdx.x) * 2) + 129))] = (((1 <= (ry_outer_outer + (((((int)threadIdx.x) * 2) + 11) % 59))) && (1 <= ((((int)blockIdx.x) * 2) + rx_outer_outer))) ? placeholder[(((((((((((((int)threadIdx.x) * 2) + 129) / 59) * 921600) + (ry_outer_outer * 15360)) + ((((((int)threadIdx.x) * 2) + 11) % 59) * 15360)) + (((int)blockIdx.x) * 512)) + (rx_outer_outer * 256)) + rc_outer_outer) - 15616))] : 0.000000e+00f);
        }
        placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((ry_outer_outer * 196608) + (rx_outer_outer * 65536)) + (rc_outer_outer * 256)) + ((int)threadIdx.x)))];
        placeholder_shared[((((int)threadIdx.x) + 64))] = placeholder1[((((((ry_outer_outer * 196608) + (rx_outer_outer * 65536)) + (rc_outer_outer * 256)) + ((int)threadIdx.x)) + 64))];
        placeholder_shared[((((int)threadIdx.x) + 128))] = placeholder1[((((((ry_outer_outer * 196608) + (rx_outer_outer * 65536)) + (rc_outer_outer * 256)) + ((int)threadIdx.x)) + 128))];
        placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[((((((ry_outer_outer * 196608) + (rx_outer_outer * 65536)) + (rc_outer_outer * 256)) + ((int)threadIdx.x)) + 192))];
        __syncthreads();
        for (int nn_outer_inner = 0; nn_outer_inner < 4; ++nn_outer_inner) {
          for (int yy_inner = 0; yy_inner < 10; ++yy_inner) {
            Conv2dOutput[(((nn_outer_inner * 20) + (yy_inner * 2)))] = (Conv2dOutput[(((nn_outer_inner * 20) + (yy_inner * 2)))] + (PaddedInput_shared[(((nn_outer_inner * 59) + (yy_inner * 2)))] * placeholder_shared[((((int)threadIdx.x) * 2))]));
            Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 80))] = (Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 80))] + (PaddedInput_shared[(((nn_outer_inner * 59) + (yy_inner * 2)))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
            Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 160))] = (Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 160))] + (PaddedInput_shared[((((nn_outer_inner * 59) + (yy_inner * 2)) + 20))] * placeholder_shared[((((int)threadIdx.x) * 2))]));
            Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 240))] = (Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 240))] + (PaddedInput_shared[((((nn_outer_inner * 59) + (yy_inner * 2)) + 20))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
            Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 320))] = (Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 320))] + (PaddedInput_shared[((((nn_outer_inner * 59) + (yy_inner * 2)) + 40))] * placeholder_shared[((((int)threadIdx.x) * 2))]));
            Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 400))] = (Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 400))] + (PaddedInput_shared[((((nn_outer_inner * 59) + (yy_inner * 2)) + 40))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
            Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 1))] = (Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 1))] + (PaddedInput_shared[(((nn_outer_inner * 59) + (yy_inner * 2)))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
            Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 81))] = (Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 81))] + (PaddedInput_shared[(((nn_outer_inner * 59) + (yy_inner * 2)))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
            Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 161))] = (Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 161))] + (PaddedInput_shared[((((nn_outer_inner * 59) + (yy_inner * 2)) + 20))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
            Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 241))] = (Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 241))] + (PaddedInput_shared[((((nn_outer_inner * 59) + (yy_inner * 2)) + 20))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
            Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 321))] = (Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 321))] + (PaddedInput_shared[((((nn_outer_inner * 59) + (yy_inner * 2)) + 40))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
            Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 401))] = (Conv2dOutput[((((nn_outer_inner * 20) + (yy_inner * 2)) + 401))] + (PaddedInput_shared[((((nn_outer_inner * 59) + (yy_inner * 2)) + 40))] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
          }
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 4; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 10; ++ax1_inner) {
      for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
        T_relu[((((((ax0_inner * 230400) + (ax1_inner * 7680)) + (((int)blockIdx.x) * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner))] = max((Conv2dOutput[((((ax0_inner * 20) + (ax1_inner * 2)) + ax3_inner))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 230400) + (ax1_inner * 7680)) + (((int)blockIdx.x) * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 128))] = max((Conv2dOutput[(((((ax0_inner * 20) + (ax1_inner * 2)) + ax3_inner) + 80))] + placeholder2[((((((int)threadIdx.x) * 2) + ax3_inner) + 128))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 230400) + (ax1_inner * 7680)) + (((int)blockIdx.x) * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 76800))] = max((Conv2dOutput[(((((ax0_inner * 20) + (ax1_inner * 2)) + ax3_inner) + 160))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 230400) + (ax1_inner * 7680)) + (((int)blockIdx.x) * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 76928))] = max((Conv2dOutput[(((((ax0_inner * 20) + (ax1_inner * 2)) + ax3_inner) + 240))] + placeholder2[((((((int)threadIdx.x) * 2) + ax3_inner) + 128))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 230400) + (ax1_inner * 7680)) + (((int)blockIdx.x) * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 153600))] = max((Conv2dOutput[(((((ax0_inner * 20) + (ax1_inner * 2)) + ax3_inner) + 320))] + placeholder2[(((((int)threadIdx.x) * 2) + ax3_inner))]), 0.000000e+00f);
        T_relu[(((((((ax0_inner * 230400) + (ax1_inner * 7680)) + (((int)blockIdx.x) * 256)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 153728))] = max((Conv2dOutput[(((((ax0_inner * 20) + (ax1_inner * 2)) + ax3_inner) + 400))] + placeholder2[((((((int)threadIdx.x) * 2) + ax3_inner) + 128))]), 0.000000e+00f);
      }
    }
  }
}


