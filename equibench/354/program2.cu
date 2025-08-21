
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ compute) {
  float compute_local[64];
  __shared__ float placeholder_d_shared[49152];
  __shared__ float placeholder_shared[12288];
  compute_local[(0)] = 0.000000e+00f;
  compute_local[(32)] = 0.000000e+00f;
  compute_local[(1)] = 0.000000e+00f;
  compute_local[(33)] = 0.000000e+00f;
  compute_local[(2)] = 0.000000e+00f;
  compute_local[(34)] = 0.000000e+00f;
  compute_local[(3)] = 0.000000e+00f;
  compute_local[(35)] = 0.000000e+00f;
  compute_local[(4)] = 0.000000e+00f;
  compute_local[(36)] = 0.000000e+00f;
  compute_local[(5)] = 0.000000e+00f;
  compute_local[(37)] = 0.000000e+00f;
  compute_local[(6)] = 0.000000e+00f;
  compute_local[(38)] = 0.000000e+00f;
  compute_local[(7)] = 0.000000e+00f;
  compute_local[(39)] = 0.000000e+00f;
  compute_local[(8)] = 0.000000e+00f;
  compute_local[(40)] = 0.000000e+00f;
  compute_local[(9)] = 0.000000e+00f;
  compute_local[(41)] = 0.000000e+00f;
  compute_local[(10)] = 0.000000e+00f;
  compute_local[(42)] = 0.000000e+00f;
  compute_local[(11)] = 0.000000e+00f;
  compute_local[(43)] = 0.000000e+00f;
  compute_local[(12)] = 0.000000e+00f;
  compute_local[(44)] = 0.000000e+00f;
  compute_local[(13)] = 0.000000e+00f;
  compute_local[(45)] = 0.000000e+00f;
  compute_local[(14)] = 0.000000e+00f;
  compute_local[(46)] = 0.000000e+00f;
  compute_local[(15)] = 0.000000e+00f;
  compute_local[(47)] = 0.000000e+00f;
  compute_local[(16)] = 0.000000e+00f;
  compute_local[(48)] = 0.000000e+00f;
  compute_local[(17)] = 0.000000e+00f;
  compute_local[(49)] = 0.000000e+00f;
  compute_local[(18)] = 0.000000e+00f;
  compute_local[(50)] = 0.000000e+00f;
  compute_local[(19)] = 0.000000e+00f;
  compute_local[(51)] = 0.000000e+00f;
  compute_local[(20)] = 0.000000e+00f;
  compute_local[(52)] = 0.000000e+00f;
  compute_local[(21)] = 0.000000e+00f;
  compute_local[(53)] = 0.000000e+00f;
  compute_local[(22)] = 0.000000e+00f;
  compute_local[(54)] = 0.000000e+00f;
  compute_local[(23)] = 0.000000e+00f;
  compute_local[(55)] = 0.000000e+00f;
  compute_local[(24)] = 0.000000e+00f;
  compute_local[(56)] = 0.000000e+00f;
  compute_local[(25)] = 0.000000e+00f;
  compute_local[(57)] = 0.000000e+00f;
  compute_local[(26)] = 0.000000e+00f;
  compute_local[(58)] = 0.000000e+00f;
  compute_local[(27)] = 0.000000e+00f;
  compute_local[(59)] = 0.000000e+00f;
  compute_local[(28)] = 0.000000e+00f;
  compute_local[(60)] = 0.000000e+00f;
  compute_local[(29)] = 0.000000e+00f;
  compute_local[(61)] = 0.000000e+00f;
  compute_local[(30)] = 0.000000e+00f;
  compute_local[(62)] = 0.000000e+00f;
  compute_local[(31)] = 0.000000e+00f;
  compute_local[(63)] = 0.000000e+00f;
  for (int k_outer_outer = 0; k_outer_outer < 2; ++k_outer_outer) {
    __syncthreads();
    for (int ax0_ax1_fused_ax2_fused_outer_outer = 0; ax0_ax1_fused_ax2_fused_outer_outer < 256; ++ax0_ax1_fused_ax2_fused_outer_outer) {
      placeholder_d_shared[(((ax0_ax1_fused_ax2_fused_outer_outer * 192) + ((int)threadIdx.x)))] = placeholder[((((((((((int)blockIdx.x) >> 3) * 196608) + ((((ax0_ax1_fused_ax2_fused_outer_outer * 3) + (((int)threadIdx.x) >> 6)) >> 6) * 16384)) + (((((int)blockIdx.x) & 7) >> 2) * 8192)) + ((((ax0_ax1_fused_ax2_fused_outer_outer * 3) + (((int)threadIdx.x) >> 6)) & 63) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((((((((int)blockIdx.x) >> 3) * 98304) + ((((int)blockIdx.x) & 3) * 2048)) + ((((int)threadIdx.x) >> 6) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 192))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + ((((int)blockIdx.x) & 3) * 2048)) + ((((int)threadIdx.x) >> 6) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)) + 384))];
    placeholder_shared[((((int)threadIdx.x) + 384))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + ((((int)blockIdx.x) & 3) * 2048)) + ((((int)threadIdx.x) >> 6) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)) + 768))];
    placeholder_shared[((((int)threadIdx.x) + 576))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + ((((int)blockIdx.x) & 3) * 2048)) + ((((int)threadIdx.x) >> 6) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)) + 1152))];
    placeholder_shared[((((int)threadIdx.x) + 768))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + ((((int)blockIdx.x) & 3) * 2048)) + ((((int)threadIdx.x) >> 6) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)) + 1536))];
    placeholder_shared[((((int)threadIdx.x) + 960))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 960) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + ((((((int)threadIdx.x) >> 6) + 15) & 15) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 1152))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 1152) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 2) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 1344))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 1344) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 5) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 1536))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 1536) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 8) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 1728))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 1728) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 11) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 1920))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 1920) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + ((((((int)threadIdx.x) >> 6) + 14) & 15) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 2112))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 2112) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 1) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 2304))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 2304) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 4) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 2496))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 2496) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 7) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 2688))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 2688) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 10) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 2880))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 2880) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 13) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 3072))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + ((((int)blockIdx.x) & 3) * 2048)) + ((((int)threadIdx.x) >> 6) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)) + 24576))];
    placeholder_shared[((((int)threadIdx.x) + 3264))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 3264) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 3) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 3456))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 3456) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 6) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 3648))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 3648) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 9) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 3840))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 3840) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 12) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 4032))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 4032) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + ((((((int)threadIdx.x) >> 6) + 15) & 15) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 4224))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 4224) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 2) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 4416))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 4416) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 5) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 4608))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 4608) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 8) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 4800))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 4800) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 11) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 4992))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 4992) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + ((((((int)threadIdx.x) >> 6) + 14) & 15) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 5184))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 5184) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 1) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 5376))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 5376) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 4) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 5568))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 5568) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 7) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 5760))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 5760) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 10) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 5952))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 5952) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 13) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 6144))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + ((((int)blockIdx.x) & 3) * 2048)) + ((((int)threadIdx.x) >> 6) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)) + 49152))];
    placeholder_shared[((((int)threadIdx.x) + 6336))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 6336) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 3) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 6528))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 6528) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 6) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 6720))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 6720) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 9) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 6912))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 6912) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 12) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 7104))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 7104) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + ((((((int)threadIdx.x) >> 6) + 15) & 15) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 7296))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 7296) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 2) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 7488))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 7488) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 5) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 7680))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 7680) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 8) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 7872))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 7872) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 11) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 8064))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 8064) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + ((((((int)threadIdx.x) >> 6) + 14) & 15) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 8256))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 8256) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 1) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 8448))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 8448) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 4) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 8640))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 8640) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 7) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 8832))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 8832) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 10) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 9024))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 9024) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 13) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 9216))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + ((((int)blockIdx.x) & 3) * 2048)) + ((((int)threadIdx.x) >> 6) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)) + 73728))];
    placeholder_shared[((((int)threadIdx.x) + 9408))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 9408) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 3) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 9600))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 9600) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 6) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 9792))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 9792) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 9) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 9984))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 9984) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 12) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 10176))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 10176) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + ((((((int)threadIdx.x) >> 6) + 15) & 15) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 10368))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 10368) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 2) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 10560))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 10560) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 5) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 10752))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 10752) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 8) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 10944))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 10944) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 11) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 11136))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 11136) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + ((((((int)threadIdx.x) >> 6) + 14) & 15) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 11328))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 11328) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 1) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 11520))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 11520) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 4) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 11712))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 11712) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 7) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 11904))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 11904) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 10) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    placeholder_shared[((((int)threadIdx.x) + 12096))] = placeholder1[((((((((((int)blockIdx.x) >> 3) * 98304) + (((((int)threadIdx.x) + 12096) >> 10) * 8192)) + ((((int)blockIdx.x) & 3) * 2048)) + (((((int)threadIdx.x) >> 6) + 13) * 128)) + (k_outer_outer * 64)) + (((int)threadIdx.x) & 63)))];
    __syncthreads();
    for (int k_outer_inner = 0; k_outer_inner < 4; ++k_outer_inner) {
      for (int b_c_outer_inner = 0; b_c_outer_inner < 4; ++b_c_outer_inner) {
        for (int i_c_outer_inner = 0; i_c_outer_inner < 8; ++i_c_outer_inner) {
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[(((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)))] * placeholder_shared[((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2048))] * placeholder_shared[((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 1))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 1))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2049))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 1))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 2))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2050))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 2))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 3))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 3))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2051))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 3))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 4))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 4))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2052))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 4))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 5))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 5))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2053))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 5))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 6))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 6))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2054))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 6))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 7))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 7))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2055))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 7))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 8))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 8))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2056))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 8))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 9))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 9))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2057))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 9))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 10))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 10))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2058))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 10))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 11))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 11))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2059))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 11))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 12))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 12))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2060))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 12))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 13))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 13))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2061))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 13))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 14))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 14))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2062))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 14))]));
          compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] = (compute_local[(((b_c_outer_inner * 8) + i_c_outer_inner))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 15))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 15))]));
          compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] = (compute_local[((((b_c_outer_inner * 8) + i_c_outer_inner) + 32))] + (placeholder_d_shared[((((((((((int)threadIdx.x) >> 6) * 16384) + (b_c_outer_inner * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_c_outer_inner * 64)) + (k_outer_inner * 16)) + 2063))] * placeholder_shared[(((((((((int)threadIdx.x) >> 6) * 4096) + (b_c_outer_inner * 1024)) + ((((int)threadIdx.x) & 15) * 64)) + (k_outer_inner * 16)) + 15))]));
        }
      }
    }
  }
  for (int b_inner = 0; b_inner < 4; ++b_inner) {
    for (int i_inner = 0; i_inner < 8; ++i_inner) {
      compute[((((((((((((int)blockIdx.x) >> 3) * 98304) + ((((int)threadIdx.x) >> 6) * 32768)) + (b_inner * 8192)) + (((((int)blockIdx.x) & 7) >> 2) * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((int)threadIdx.x) & 15)))] = compute_local[(((b_inner * 8) + i_inner))];
      compute[(((((((((((((int)blockIdx.x) >> 3) * 98304) + ((((int)threadIdx.x) >> 6) * 32768)) + (b_inner * 8192)) + (((((int)blockIdx.x) & 7) >> 2) * 4096)) + (((((int)threadIdx.x) & 63) >> 4) * 512)) + (i_inner * 64)) + ((((int)blockIdx.x) & 3) * 16)) + (((int)threadIdx.x) & 15)) + 2048))] = compute_local[((((b_inner * 8) + i_inner) + 32))];
    }
  }
}


