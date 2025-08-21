
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
  float T_dense[200];
  __shared__ float placeholder_d_shared[8];
  __shared__ float placeholder_shared[3200];
  for (int j_outer_inner_init = 0; j_outer_inner_init < 25; ++j_outer_inner_init) {
    T_dense[((j_outer_inner_init * 2))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 100))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 1))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 101))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 50))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 150))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 51))] = 0.000000e+00f;
    T_dense[(((j_outer_inner_init * 2) + 151))] = 0.000000e+00f;
  }
  for (int k_outer_outer = 0; k_outer_outer < 50; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[((((int)threadIdx.x) * 4))] = placeholder[(((((int)threadIdx.x) * 200) + (k_outer_outer * 2)))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 4) + 1))] = placeholder[((((((int)threadIdx.x) * 200) + (k_outer_outer * 2)) + 1))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 4) + 2))] = placeholder[((((((int)threadIdx.x) * 200) + (k_outer_outer * 2)) + 100))];
    }
    if (((int)threadIdx.x) < 2) {
      placeholder_d_shared[(((((int)threadIdx.x) * 4) + 3))] = placeholder[((((((int)threadIdx.x) * 200) + (k_outer_outer * 2)) + 101))];
    }
    ((float2*)(placeholder_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder1 + ((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 64))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 3200))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 128))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 6400))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 192))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 9600))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 256))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 12800))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 320))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 16000))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 384))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 19200))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 448))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 22400))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 512))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 25600))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 576))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 28800))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 640))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 32000))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 704))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 35200))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 768))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 38400))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 832))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 41600))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 896))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 44800))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 960))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 48000))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1024))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 51200))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1088))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 54400))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1152))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 57600))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1216))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 60800))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1280))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 64000))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1344))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 67200))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1408))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 70400))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1472))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 73600))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1536))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 76800))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1600))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 80000))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1664))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 83200))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1728))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 86400))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1792))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 89600))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1856))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 92800))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1920))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 96000))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 1984))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 99200))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2048))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 102400))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2112))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 105600))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2176))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 108800))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2240))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 112000))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2304))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 115200))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2368))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 118400))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2432))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 121600))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2496))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 124800))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2560))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 128000))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2624))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 131200))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2688))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 134400))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2752))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 137600))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2816))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 140800))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2880))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 144000))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 2944))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 147200))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 3008))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 150400))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 3072))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 153600))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 3136))))[0] = ((float2*)(placeholder1 + (((((((int)blockIdx.x) * 160000) + (((int)threadIdx.x) * 100)) + (k_outer_outer * 2)) + 156800))))[0];
    __syncthreads();
    for (int j_outer_inner = 0; j_outer_inner < 25; ++j_outer_inner) {
      T_dense[((j_outer_inner * 2))] = (T_dense[((j_outer_inner * 2))] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 100) + (j_outer_inner * 4)))]));
      T_dense[(((j_outer_inner * 2) + 100))] = (T_dense[(((j_outer_inner * 2) + 100))] + (placeholder_d_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 100) + (j_outer_inner * 4)))]));
      T_dense[(((j_outer_inner * 2) + 1))] = (T_dense[(((j_outer_inner * 2) + 1))] + (placeholder_d_shared[(0)] * placeholder_shared[((((((int)threadIdx.x) * 100) + (j_outer_inner * 4)) + 2))]));
      T_dense[(((j_outer_inner * 2) + 101))] = (T_dense[(((j_outer_inner * 2) + 101))] + (placeholder_d_shared[(4)] * placeholder_shared[((((((int)threadIdx.x) * 100) + (j_outer_inner * 4)) + 2))]));
      T_dense[(((j_outer_inner * 2) + 50))] = (T_dense[(((j_outer_inner * 2) + 50))] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 100) + (j_outer_inner * 4)))]));
      T_dense[(((j_outer_inner * 2) + 150))] = (T_dense[(((j_outer_inner * 2) + 150))] + (placeholder_d_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 100) + (j_outer_inner * 4)))]));
      T_dense[(((j_outer_inner * 2) + 51))] = (T_dense[(((j_outer_inner * 2) + 51))] + (placeholder_d_shared[(2)] * placeholder_shared[((((((int)threadIdx.x) * 100) + (j_outer_inner * 4)) + 2))]));
      T_dense[(((j_outer_inner * 2) + 151))] = (T_dense[(((j_outer_inner * 2) + 151))] + (placeholder_d_shared[(6)] * placeholder_shared[((((((int)threadIdx.x) * 100) + (j_outer_inner * 4)) + 2))]));
      T_dense[((j_outer_inner * 2))] = (T_dense[((j_outer_inner * 2))] + (placeholder_d_shared[(1)] * placeholder_shared[((((((int)threadIdx.x) * 100) + (j_outer_inner * 4)) + 1))]));
      T_dense[(((j_outer_inner * 2) + 100))] = (T_dense[(((j_outer_inner * 2) + 100))] + (placeholder_d_shared[(5)] * placeholder_shared[((((((int)threadIdx.x) * 100) + (j_outer_inner * 4)) + 1))]));
      T_dense[(((j_outer_inner * 2) + 1))] = (T_dense[(((j_outer_inner * 2) + 1))] + (placeholder_d_shared[(1)] * placeholder_shared[((((((int)threadIdx.x) * 100) + (j_outer_inner * 4)) + 3))]));
      T_dense[(((j_outer_inner * 2) + 101))] = (T_dense[(((j_outer_inner * 2) + 101))] + (placeholder_d_shared[(5)] * placeholder_shared[((((((int)threadIdx.x) * 100) + (j_outer_inner * 4)) + 3))]));
      T_dense[(((j_outer_inner * 2) + 50))] = (T_dense[(((j_outer_inner * 2) + 50))] + (placeholder_d_shared[(3)] * placeholder_shared[((((((int)threadIdx.x) * 100) + (j_outer_inner * 4)) + 1))]));
      T_dense[(((j_outer_inner * 2) + 150))] = (T_dense[(((j_outer_inner * 2) + 150))] + (placeholder_d_shared[(7)] * placeholder_shared[((((((int)threadIdx.x) * 100) + (j_outer_inner * 4)) + 1))]));
      T_dense[(((j_outer_inner * 2) + 51))] = (T_dense[(((j_outer_inner * 2) + 51))] + (placeholder_d_shared[(3)] * placeholder_shared[((((((int)threadIdx.x) * 100) + (j_outer_inner * 4)) + 3))]));
      T_dense[(((j_outer_inner * 2) + 151))] = (T_dense[(((j_outer_inner * 2) + 151))] + (placeholder_d_shared[(7)] * placeholder_shared[((((((int)threadIdx.x) * 100) + (j_outer_inner * 4)) + 3))]));
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 50; ++ax1_inner) {
      T_relu[(((((ax0_inner * 25600) + (((int)blockIdx.x) * 1600)) + (((int)threadIdx.x) * 50)) + ax1_inner))] = max(T_dense[(((ax0_inner * 50) + ax1_inner))], 0.000000e+00f);
      T_relu[((((((ax0_inner * 25600) + (((int)blockIdx.x) * 1600)) + (((int)threadIdx.x) * 50)) + ax1_inner) + 51200))] = max(T_dense[((((ax0_inner * 50) + ax1_inner) + 100))], 0.000000e+00f);
    }
  }
}


