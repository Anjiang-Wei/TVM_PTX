
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
  float Conv2dOutput[18];
  __shared__ float PaddedInput_shared[72];
  __shared__ float placeholder_shared[512];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 32; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((((int)blockIdx.x) / 10) * 11520) + ((((int)threadIdx.x) / 24) * 3840)) + (((((int)blockIdx.x) % 10) >> 1) * 768)) + (((((int)threadIdx.x) % 24) >> 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 32))] = placeholder[((((((((((int)blockIdx.x) / 10) * 11520) + (((((int)threadIdx.x) + 32) / 24) * 3840)) + (((((int)blockIdx.x) % 10) >> 1) * 768)) + ((((((int)threadIdx.x) >> 3) + 1) % 3) * 256)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    if (((int)threadIdx.x) < 8) {
      PaddedInput_shared[((((int)threadIdx.x) + 64))] = placeholder[(((((((((int)blockIdx.x) / 10) * 11520) + (((((int)blockIdx.x) % 10) >> 1) * 768)) + (rc_outer_outer * 8)) + ((int)threadIdx.x)) + 8192))];
    }
    ((float2*)(placeholder_shared + ((((int)threadIdx.x) * 2))))[0] = ((float2*)(placeholder1 + ((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) * 2)))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 64))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) * 2)) + 128))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 128))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) * 2)) + 256))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 192))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) * 2)) + 384))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 256))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) * 2)) + 512))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 320))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) * 2)) + 640))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 384))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) * 2)) + 768))))[0];
    ((float2*)(placeholder_shared + (((((int)threadIdx.x) * 2) + 448))))[0] = ((float2*)(placeholder1 + (((((rc_outer_outer * 1024) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) * 2)) + 896))))[0];
    __syncthreads();
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(0)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(24)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(48)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(25)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(49)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(26)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(50)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 192))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(27)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 192))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(51)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 192))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 256))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(28)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 256))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(52)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 256))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 320))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(29)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 320))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(53)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 320))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 384))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(30)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 384))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(54)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 384))]));
    Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 448))]));
    Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(31)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 448))]));
    Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(55)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 448))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(0)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(24)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(48)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(1)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(25)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(49)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(2)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(26)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(50)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(3)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 193))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(27)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 193))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(51)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 193))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(4)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 257))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(28)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 257))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(52)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 257))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(5)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 321))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(29)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 321))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(53)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 321))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(6)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 385))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(30)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 385))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(54)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 385))]));
    Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[(7)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 449))]));
    Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(31)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 449))]));
    Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(55)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 449))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(8)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(32)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(56)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(33)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(57)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(34)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(58)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 192))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(35)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 192))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(59)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 192))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 256))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(36)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 256))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(60)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 256))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 320))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(37)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 320))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(61)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 320))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 384))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(38)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 384))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(62)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 384))]));
    Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 448))]));
    Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(39)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 448))]));
    Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(63)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 448))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(8)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(32)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(56)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(9)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(33)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(57)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(10)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(34)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(58)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(11)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 193))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(35)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 193))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(59)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 193))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(12)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 257))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(36)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 257))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(60)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 257))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(13)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 321))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(37)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 321))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(61)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 321))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(14)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 385))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(38)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 385))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(62)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 385))]));
    Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[(15)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 449))]));
    Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(39)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 449))]));
    Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(63)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 449))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(16)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(40)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(64)] * placeholder_shared[((((int)threadIdx.x) * 2))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(17)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(41)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(65)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 64))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(18)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(42)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(66)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 128))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(19)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 192))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(43)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 192))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(67)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 192))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(20)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 256))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(44)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 256))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(68)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 256))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(21)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 320))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(45)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 320))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(69)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 320))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(22)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 384))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(46)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 384))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(70)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 384))]));
    Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(23)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 448))]));
    Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(47)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 448))]));
    Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(71)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 448))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(16)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(40)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(64)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 1))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(17)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(41)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(65)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 65))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(18)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(42)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(66)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 129))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(19)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 193))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(43)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 193))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(67)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 193))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(20)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 257))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(44)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 257))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(68)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 257))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(21)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 321))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(45)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 321))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(69)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 321))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(22)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 385))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(46)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 385))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(70)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 385))]));
    Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(23)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 449))]));
    Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(47)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 449))]));
    Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(71)] * placeholder_shared[(((((int)threadIdx.x) * 2) + 449))]));
  }
  for (int ax2_inner = 0; ax2_inner < 3; ++ax2_inner) {
    for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
      T_relu[((((((((((int)blockIdx.x) / 10) * 5760) + (((((int)blockIdx.x) % 10) >> 1) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) * 2)) + ax3_inner))] = max((Conv2dOutput[(((ax2_inner * 2) + ax3_inner))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + (((int)threadIdx.x) * 2)) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) / 10) * 5760) + (((((int)blockIdx.x) % 10) >> 1) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 1920))] = max((Conv2dOutput[((((ax2_inner * 2) + ax3_inner) + 6))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + (((int)threadIdx.x) * 2)) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((((int)blockIdx.x) / 10) * 5760) + (((((int)blockIdx.x) % 10) >> 1) * 384)) + (ax2_inner * 128)) + ((((int)blockIdx.x) & 1) * 64)) + (((int)threadIdx.x) * 2)) + ax3_inner) + 3840))] = max((Conv2dOutput[((((ax2_inner * 2) + ax3_inner) + 12))] + placeholder2[(((((((int)blockIdx.x) & 1) * 64) + (((int)threadIdx.x) * 2)) + ax3_inner))]), 0.000000e+00f);
    }
  }
}


