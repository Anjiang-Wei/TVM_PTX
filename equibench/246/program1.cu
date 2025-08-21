
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
  float Conv2dOutput[128];
  __shared__ float PaddedInput_shared[384];
  __shared__ float placeholder_shared[768];
  for (int ff_outer_inner_init = 0; ff_outer_inner_init < 64; ++ff_outer_inner_init) {
    Conv2dOutput[(ff_outer_inner_init)] = 0.000000e+00f;
    Conv2dOutput[((ff_outer_inner_init + 64))] = 0.000000e+00f;
  }
  for (int rc_outer_outer = 0; rc_outer_outer < 16; ++rc_outer_outer) {
    __syncthreads();
    ((float3*)(PaddedInput_shared + ((((int)threadIdx.x) * 3))))[0] = ((float3*)(placeholder + ((((((((((int)blockIdx.x) >> 2) * 24576) + ((((int)threadIdx.x) >> 5) * 6144)) + ((((int)blockIdx.x) & 3) * 1536)) + (((((int)threadIdx.x) & 31) >> 1) * 96)) + (rc_outer_outer * 6)) + ((((int)threadIdx.x) & 1) * 3)))))[0];
    ((float3*)(PaddedInput_shared + (((((int)threadIdx.x) * 3) + 192))))[0] = ((float3*)(placeholder + (((((((((((int)blockIdx.x) >> 2) * 24576) + ((((int)threadIdx.x) >> 5) * 6144)) + ((((int)blockIdx.x) & 3) * 1536)) + (((((int)threadIdx.x) & 31) >> 1) * 96)) + (rc_outer_outer * 6)) + ((((int)threadIdx.x) & 1) * 3)) + 12288))))[0];
    placeholder_shared[((((int)threadIdx.x) * 8))] = placeholder1[(((rc_outer_outer * 768) + (((int)threadIdx.x) * 8)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 1))] = placeholder1[(((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 1)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 2))] = placeholder1[(((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 2)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 3))] = placeholder1[(((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 3)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 4))] = placeholder1[(((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 4)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 5))] = placeholder1[(((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 5)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 6))] = placeholder1[(((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 6)))];
    placeholder_shared[(((((int)threadIdx.x) * 8) + 7))] = placeholder1[(((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 7)))];
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 512))] = placeholder1[((((rc_outer_outer * 768) + (((int)threadIdx.x) * 8)) + 512))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 513))] = placeholder1[((((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 1)) + 512))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 514))] = placeholder1[((((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 2)) + 512))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 515))] = placeholder1[((((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 3)) + 512))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 516))] = placeholder1[((((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 4)) + 512))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 517))] = placeholder1[((((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 5)) + 512))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 518))] = placeholder1[((((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 6)) + 512))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 8) + 519))] = placeholder1[((((rc_outer_outer * 768) + ((((int)threadIdx.x) * 8) + 7)) + 512))];
    }
    __syncthreads();
    for (int ff_outer_inner = 0; ff_outer_inner < 64; ++ff_outer_inner) {
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[((((int)threadIdx.x) * 6))] * placeholder_shared[(ff_outer_inner)]));
      Conv2dOutput[((ff_outer_inner + 64))] = (Conv2dOutput[((ff_outer_inner + 64))] + (PaddedInput_shared[((((int)threadIdx.x) * 6))] * placeholder_shared[((ff_outer_inner + 64))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[(((((int)threadIdx.x) * 6) + 1))] * placeholder_shared[((ff_outer_inner + 128))]));
      Conv2dOutput[((ff_outer_inner + 64))] = (Conv2dOutput[((ff_outer_inner + 64))] + (PaddedInput_shared[(((((int)threadIdx.x) * 6) + 1))] * placeholder_shared[((ff_outer_inner + 192))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[(((((int)threadIdx.x) * 6) + 2))] * placeholder_shared[((ff_outer_inner + 256))]));
      Conv2dOutput[((ff_outer_inner + 64))] = (Conv2dOutput[((ff_outer_inner + 64))] + (PaddedInput_shared[(((((int)threadIdx.x) * 6) + 2))] * placeholder_shared[((ff_outer_inner + 320))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[(((((int)threadIdx.x) * 6) + 3))] * placeholder_shared[((ff_outer_inner + 384))]));
      Conv2dOutput[((ff_outer_inner + 64))] = (Conv2dOutput[((ff_outer_inner + 64))] + (PaddedInput_shared[(((((int)threadIdx.x) * 6) + 3))] * placeholder_shared[((ff_outer_inner + 448))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[(((((int)threadIdx.x) * 6) + 4))] * placeholder_shared[((ff_outer_inner + 512))]));
      Conv2dOutput[((ff_outer_inner + 64))] = (Conv2dOutput[((ff_outer_inner + 64))] + (PaddedInput_shared[(((((int)threadIdx.x) * 6) + 4))] * placeholder_shared[((ff_outer_inner + 576))]));
      Conv2dOutput[(ff_outer_inner)] = (Conv2dOutput[(ff_outer_inner)] + (PaddedInput_shared[(((((int)threadIdx.x) * 6) + 5))] * placeholder_shared[((ff_outer_inner + 640))]));
      Conv2dOutput[((ff_outer_inner + 64))] = (Conv2dOutput[((ff_outer_inner + 64))] + (PaddedInput_shared[(((((int)threadIdx.x) * 6) + 5))] * placeholder_shared[((ff_outer_inner + 704))]));
    }
  }
  for (int ax3_inner = 0; ax3_inner < 64; ++ax3_inner) {
    T_relu[(((((((((int)blockIdx.x) >> 2) * 32768) + ((((int)threadIdx.x) >> 4) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + ((((int)threadIdx.x) & 15) * 128)) + ax3_inner))] = max((Conv2dOutput[(ax3_inner)] + placeholder2[(ax3_inner)]), 0.000000e+00f);
    T_relu[((((((((((int)blockIdx.x) >> 2) * 32768) + ((((int)threadIdx.x) >> 4) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + ((((int)threadIdx.x) & 15) * 128)) + ax3_inner) + 64))] = max((Conv2dOutput[((ax3_inner + 64))] + placeholder2[((ax3_inner + 64))]), 0.000000e+00f);
  }
}


