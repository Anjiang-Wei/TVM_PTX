
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_add, float* __restrict__ placeholder2) {
  float T_dense[4];
  __shared__ float placeholder_d_shared[4];
  __shared__ float placeholder_shared[800];
  T_dense[(0)] = 0.000000e+00f;
  T_dense[(1)] = 0.000000e+00f;
  T_dense[(2)] = 0.000000e+00f;
  T_dense[(3)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 128; ++k_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 4) {
      placeholder_d_shared[(((int)threadIdx.x))] = placeholder[(((k_outer_outer * 4) + ((int)threadIdx.x)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((((int)blockIdx.x) * 102400) + ((((int)threadIdx.x) >> 2) * 512)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 50))] = placeholder1[(((((((int)blockIdx.x) * 102400) + (((((int)threadIdx.x) + 50) >> 2) * 512)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) + 2) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 100))] = placeholder1[((((((((int)blockIdx.x) * 102400) + ((((int)threadIdx.x) >> 2) * 512)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 12800))];
    placeholder_shared[((((int)threadIdx.x) + 150))] = placeholder1[(((((((int)blockIdx.x) * 102400) + (((((int)threadIdx.x) + 150) >> 2) * 512)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) + 2) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 200))] = placeholder1[((((((((int)blockIdx.x) * 102400) + ((((int)threadIdx.x) >> 2) * 512)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 25600))];
    placeholder_shared[((((int)threadIdx.x) + 250))] = placeholder1[(((((((int)blockIdx.x) * 102400) + (((((int)threadIdx.x) + 250) >> 2) * 512)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) + 2) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 300))] = placeholder1[((((((((int)blockIdx.x) * 102400) + ((((int)threadIdx.x) >> 2) * 512)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 38400))];
    placeholder_shared[((((int)threadIdx.x) + 350))] = placeholder1[(((((((int)blockIdx.x) * 102400) + (((((int)threadIdx.x) + 350) >> 2) * 512)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) + 2) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 400))] = placeholder1[((((((((int)blockIdx.x) * 102400) + ((((int)threadIdx.x) >> 2) * 512)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 51200))];
    placeholder_shared[((((int)threadIdx.x) + 450))] = placeholder1[(((((((int)blockIdx.x) * 102400) + (((((int)threadIdx.x) + 450) >> 2) * 512)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) + 2) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 500))] = placeholder1[((((((((int)blockIdx.x) * 102400) + ((((int)threadIdx.x) >> 2) * 512)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 64000))];
    placeholder_shared[((((int)threadIdx.x) + 550))] = placeholder1[(((((((int)blockIdx.x) * 102400) + (((((int)threadIdx.x) + 550) >> 2) * 512)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) + 2) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 600))] = placeholder1[((((((((int)blockIdx.x) * 102400) + ((((int)threadIdx.x) >> 2) * 512)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 76800))];
    placeholder_shared[((((int)threadIdx.x) + 650))] = placeholder1[(((((((int)blockIdx.x) * 102400) + (((((int)threadIdx.x) + 650) >> 2) * 512)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) + 2) & 3)))];
    placeholder_shared[((((int)threadIdx.x) + 700))] = placeholder1[((((((((int)blockIdx.x) * 102400) + ((((int)threadIdx.x) >> 2) * 512)) + (k_outer_outer * 4)) + (((int)threadIdx.x) & 3)) + 89600))];
    placeholder_shared[((((int)threadIdx.x) + 750))] = placeholder1[(((((((int)blockIdx.x) * 102400) + (((((int)threadIdx.x) + 750) >> 2) * 512)) + (k_outer_outer * 4)) + ((((int)threadIdx.x) + 2) & 3)))];
    __syncthreads();
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(0)] * placeholder_shared[((((int)threadIdx.x) * 4))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 200))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 400))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 600))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 1))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 201))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 401))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 601))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 2))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 202))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 402))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 602))]));
    T_dense[(0)] = (T_dense[(0)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 3))]));
    T_dense[(1)] = (T_dense[(1)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 203))]));
    T_dense[(2)] = (T_dense[(2)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 403))]));
    T_dense[(3)] = (T_dense[(3)] + (placeholder_d_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 4) + 603))]));
  }
  T_add[(((((int)blockIdx.x) * 200) + ((int)threadIdx.x)))] = (T_dense[(0)] + placeholder2[(((((int)blockIdx.x) * 200) + ((int)threadIdx.x)))]);
  T_add[((((((int)blockIdx.x) * 200) + ((int)threadIdx.x)) + 50))] = (T_dense[(1)] + placeholder2[((((((int)blockIdx.x) * 200) + ((int)threadIdx.x)) + 50))]);
  T_add[((((((int)blockIdx.x) * 200) + ((int)threadIdx.x)) + 100))] = (T_dense[(2)] + placeholder2[((((((int)blockIdx.x) * 200) + ((int)threadIdx.x)) + 100))]);
  T_add[((((((int)blockIdx.x) * 200) + ((int)threadIdx.x)) + 150))] = (T_dense[(3)] + placeholder2[((((((int)blockIdx.x) * 200) + ((int)threadIdx.x)) + 150))]);
}


