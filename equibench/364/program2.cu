
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ T_relu, float* __restrict__ placeholder2, float* __restrict__ placeholder3) {
  float conv2d_transpose_nhwc[128];
  __shared__ float PadInput_shared[864];
  __shared__ float placeholder_shared[2048];
  conv2d_transpose_nhwc[(0)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(32)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(64)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(96)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(4)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(36)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(68)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(100)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(16)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(48)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(80)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(112)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(20)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(52)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(84)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(116)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(1)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(33)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(65)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(97)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(5)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(37)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(69)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(101)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(17)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(49)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(81)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(113)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(21)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(53)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(85)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(117)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(2)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(34)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(66)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(98)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(6)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(38)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(70)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(102)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(18)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(50)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(82)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(114)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(22)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(54)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(86)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(118)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(3)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(35)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(67)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(99)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(7)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(39)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(71)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(103)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(19)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(51)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(83)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(115)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(23)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(55)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(87)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(119)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(8)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(40)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(72)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(104)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(12)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(44)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(76)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(108)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(24)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(56)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(88)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(120)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(28)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(60)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(92)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(124)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(9)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(41)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(73)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(105)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(13)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(45)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(77)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(109)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(25)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(57)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(89)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(121)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(29)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(61)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(93)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(125)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(10)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(42)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(74)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(106)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(14)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(46)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(78)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(110)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(26)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(58)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(90)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(122)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(30)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(62)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(94)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(126)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(11)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(43)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(75)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(107)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(15)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(47)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(79)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(111)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(27)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(59)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(91)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(123)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(31)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(63)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(95)] = 0.000000e+00f;
  conv2d_transpose_nhwc[(127)] = 0.000000e+00f;
  for (int rh_outer_outer = 0; rh_outer_outer < 2; ++rh_outer_outer) {
    for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
      __syncthreads();
      PadInput_shared[(((int)threadIdx.x))] = (((((1 <= (((((int)threadIdx.x) % 216) / 24) + rh_outer_outer)) && ((((((int)threadIdx.x) % 216) / 24) + rh_outer_outer) < 9)) && (1 <= (((((int)blockIdx.x) >> 2) * 4) + ((((int)threadIdx.x) % 24) >> 2)))) && ((((((int)blockIdx.x) >> 2) * 4) + ((((int)threadIdx.x) % 24) >> 2)) < 9)) ? placeholder[((((((((((((int)threadIdx.x) / 216) * 32768) + (((((int)threadIdx.x) % 216) / 24) * 4096)) + (rh_outer_outer * 4096)) + ((((int)blockIdx.x) >> 2) * 2048)) + (((((int)threadIdx.x) % 24) >> 2) * 512)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 4608))] : 0.000000e+00f);
      PadInput_shared[((((int)threadIdx.x) + 256))] = (((((1 <= (((((((int)threadIdx.x) >> 2) + 10) % 54) / 6) + rh_outer_outer)) && ((((((((int)threadIdx.x) >> 2) + 10) % 54) / 6) + rh_outer_outer) < 9)) && (1 <= (((((int)blockIdx.x) >> 2) * 4) + (((((int)threadIdx.x) >> 2) + 4) % 6)))) && ((((((int)blockIdx.x) >> 2) * 4) + (((((int)threadIdx.x) >> 2) + 4) % 6)) < 9)) ? placeholder[(((((((((((((int)threadIdx.x) + 256) / 216) * 32768) + (((((((int)threadIdx.x) >> 2) + 10) % 54) / 6) * 4096)) + (rh_outer_outer * 4096)) + ((((int)blockIdx.x) >> 2) * 2048)) + ((((((int)threadIdx.x) >> 2) + 4) % 6) * 512)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 4608))] : 0.000000e+00f);
      PadInput_shared[((((int)threadIdx.x) + 512))] = (((((1 <= (((((((int)threadIdx.x) >> 2) + 20) % 54) / 6) + rh_outer_outer)) && ((((((((int)threadIdx.x) >> 2) + 20) % 54) / 6) + rh_outer_outer) < 9)) && (1 <= (((((int)blockIdx.x) >> 2) * 4) + (((((int)threadIdx.x) >> 2) + 2) % 6)))) && ((((((int)blockIdx.x) >> 2) * 4) + (((((int)threadIdx.x) >> 2) + 2) % 6)) < 9)) ? placeholder[(((((((((((((int)threadIdx.x) + 512) / 216) * 32768) + (((((((int)threadIdx.x) >> 2) + 20) % 54) / 6) * 4096)) + (rh_outer_outer * 4096)) + ((((int)blockIdx.x) >> 2) * 2048)) + ((((((int)threadIdx.x) >> 2) + 2) % 6) * 512)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 4608))] : 0.000000e+00f);
      if (((int)threadIdx.x) < 96) {
        PadInput_shared[((((int)threadIdx.x) + 768))] = ((((((((((int)threadIdx.x) >> 2) + 30) / 6) + rh_outer_outer) < 9) && (1 <= (((((int)blockIdx.x) >> 2) * 4) + ((((int)threadIdx.x) % 24) >> 2)))) && ((((((int)blockIdx.x) >> 2) * 4) + ((((int)threadIdx.x) % 24) >> 2)) < 9)) ? placeholder[(((((((((((((int)threadIdx.x) + 768) / 216) * 32768) + ((((((int)threadIdx.x) >> 2) + 30) / 6) * 4096)) + (rh_outer_outer * 4096)) + ((((int)blockIdx.x) >> 2) * 2048)) + (((((int)threadIdx.x) % 24) >> 2) * 512)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 4608))] : 0.000000e+00f);
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[((((int)threadIdx.x) * 32))] = placeholder1[(((((((((((int)threadIdx.x) >> 3) * 131072) + (rc_outer_outer * 1024)) + (((((int)threadIdx.x) & 7) >> 1) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 1) * 32)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 1))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 1) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 1) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 1) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 2))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 2) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 2) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 2) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 3))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 3) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 3) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 3) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 4))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 4) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 4) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 4) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 5))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 5) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 5) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 5) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 6))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 6) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 6) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 6) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 7))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 7) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 7) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 7) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 8))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 8) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 8) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 8) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 9))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 9) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 9) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 9) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 10))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 10) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 10) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 10) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 11))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 11) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 11) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 11) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 12))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 12) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 12) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 12) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 13))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 13) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 13) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 13) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 14))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 14) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 14) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 14) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 15))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 15) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 15) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 15) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 16))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 16) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 16) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 16) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 17))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 17) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 17) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 17) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 18))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 18) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 18) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 18) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 19))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 19) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 19) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 19) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 20))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 20) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 20) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 20) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 21))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 21) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 21) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 21) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 22))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 22) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 22) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 22) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 23))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 23) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 23) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 23) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 24))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 24) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 24) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 24) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 25))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 25) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 25) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 25) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 26))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 26) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 26) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 26) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 27))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 27) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 27) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 27) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 28))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 28) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 28) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 28) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 29))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 29) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 29) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 29) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 30))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 30) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 30) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 30) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      if (((int)threadIdx.x) < 64) {
        placeholder_shared[(((((int)threadIdx.x) * 32) + 31))] = placeholder1[(((((((((((((int)threadIdx.x) * 32) + 31) >> 8) * 131072) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 32) + 31) & 255) >> 6) * 256)) + ((((int)blockIdx.x) & 3) * 64)) + (((((int)threadIdx.x) * 32) + 31) & 63)) + 1048576) - (rh_outer_outer * 1048576)))];
      }
      __syncthreads();
      for (int rw_outer_inner = 0; rw_outer_inner < 4; ++rw_outer_inner) {
        for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
          conv2d_transpose_nhwc[(0)] = (conv2d_transpose_nhwc[(0)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(32)] = (conv2d_transpose_nhwc[(32)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 8))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(64)] = (conv2d_transpose_nhwc[(64)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 432))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(96)] = (conv2d_transpose_nhwc[(96)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 440))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(16)] = (conv2d_transpose_nhwc[(16)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 216))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(48)] = (conv2d_transpose_nhwc[(48)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 224))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(80)] = (conv2d_transpose_nhwc[(80)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 648))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(112)] = (conv2d_transpose_nhwc[(112)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 656))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(4)] = (conv2d_transpose_nhwc[(4)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 24))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(36)] = (conv2d_transpose_nhwc[(36)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 32))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(68)] = (conv2d_transpose_nhwc[(68)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 456))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(100)] = (conv2d_transpose_nhwc[(100)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 464))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(20)] = (conv2d_transpose_nhwc[(20)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 240))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(52)] = (conv2d_transpose_nhwc[(52)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 248))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(84)] = (conv2d_transpose_nhwc[(84)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 672))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(116)] = (conv2d_transpose_nhwc[(116)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 680))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(1)] = (conv2d_transpose_nhwc[(1)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(33)] = (conv2d_transpose_nhwc[(33)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 8))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(65)] = (conv2d_transpose_nhwc[(65)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 432))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(97)] = (conv2d_transpose_nhwc[(97)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 440))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(17)] = (conv2d_transpose_nhwc[(17)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 216))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(49)] = (conv2d_transpose_nhwc[(49)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 224))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(81)] = (conv2d_transpose_nhwc[(81)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 648))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(113)] = (conv2d_transpose_nhwc[(113)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 656))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(5)] = (conv2d_transpose_nhwc[(5)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 24))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(37)] = (conv2d_transpose_nhwc[(37)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 32))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(69)] = (conv2d_transpose_nhwc[(69)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 456))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(101)] = (conv2d_transpose_nhwc[(101)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 464))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(21)] = (conv2d_transpose_nhwc[(21)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 240))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(53)] = (conv2d_transpose_nhwc[(53)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 248))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(85)] = (conv2d_transpose_nhwc[(85)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 672))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(117)] = (conv2d_transpose_nhwc[(117)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 680))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(2)] = (conv2d_transpose_nhwc[(2)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(34)] = (conv2d_transpose_nhwc[(34)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 8))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(66)] = (conv2d_transpose_nhwc[(66)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 432))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(98)] = (conv2d_transpose_nhwc[(98)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 440))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(18)] = (conv2d_transpose_nhwc[(18)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 216))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(50)] = (conv2d_transpose_nhwc[(50)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 224))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(82)] = (conv2d_transpose_nhwc[(82)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 648))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(114)] = (conv2d_transpose_nhwc[(114)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 656))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(6)] = (conv2d_transpose_nhwc[(6)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 24))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(38)] = (conv2d_transpose_nhwc[(38)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 32))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(70)] = (conv2d_transpose_nhwc[(70)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 456))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(102)] = (conv2d_transpose_nhwc[(102)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 464))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(22)] = (conv2d_transpose_nhwc[(22)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 240))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(54)] = (conv2d_transpose_nhwc[(54)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 248))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(86)] = (conv2d_transpose_nhwc[(86)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 672))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(118)] = (conv2d_transpose_nhwc[(118)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 680))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(3)] = (conv2d_transpose_nhwc[(3)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(35)] = (conv2d_transpose_nhwc[(35)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 8))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(67)] = (conv2d_transpose_nhwc[(67)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 432))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(99)] = (conv2d_transpose_nhwc[(99)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 440))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(19)] = (conv2d_transpose_nhwc[(19)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 216))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(51)] = (conv2d_transpose_nhwc[(51)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 224))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(83)] = (conv2d_transpose_nhwc[(83)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 648))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(115)] = (conv2d_transpose_nhwc[(115)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 656))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(7)] = (conv2d_transpose_nhwc[(7)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 24))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(39)] = (conv2d_transpose_nhwc[(39)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 32))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(71)] = (conv2d_transpose_nhwc[(71)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 456))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(103)] = (conv2d_transpose_nhwc[(103)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 464))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(23)] = (conv2d_transpose_nhwc[(23)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 240))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(55)] = (conv2d_transpose_nhwc[(55)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 248))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(87)] = (conv2d_transpose_nhwc[(87)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 672))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(119)] = (conv2d_transpose_nhwc[(119)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 680))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(8)] = (conv2d_transpose_nhwc[(8)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 24))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(40)] = (conv2d_transpose_nhwc[(40)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 32))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(72)] = (conv2d_transpose_nhwc[(72)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 456))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(104)] = (conv2d_transpose_nhwc[(104)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 464))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(24)] = (conv2d_transpose_nhwc[(24)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 240))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(56)] = (conv2d_transpose_nhwc[(56)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 248))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(88)] = (conv2d_transpose_nhwc[(88)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 672))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(120)] = (conv2d_transpose_nhwc[(120)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 680))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(12)] = (conv2d_transpose_nhwc[(12)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 48))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(44)] = (conv2d_transpose_nhwc[(44)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 56))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(76)] = (conv2d_transpose_nhwc[(76)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 480))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(108)] = (conv2d_transpose_nhwc[(108)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 488))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(28)] = (conv2d_transpose_nhwc[(28)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 264))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(60)] = (conv2d_transpose_nhwc[(60)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 272))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(92)] = (conv2d_transpose_nhwc[(92)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 696))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(124)] = (conv2d_transpose_nhwc[(124)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 704))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(9)] = (conv2d_transpose_nhwc[(9)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 24))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(41)] = (conv2d_transpose_nhwc[(41)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 32))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(73)] = (conv2d_transpose_nhwc[(73)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 456))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(105)] = (conv2d_transpose_nhwc[(105)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 464))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(25)] = (conv2d_transpose_nhwc[(25)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 240))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(57)] = (conv2d_transpose_nhwc[(57)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 248))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(89)] = (conv2d_transpose_nhwc[(89)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 672))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(121)] = (conv2d_transpose_nhwc[(121)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 680))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(13)] = (conv2d_transpose_nhwc[(13)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 48))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(45)] = (conv2d_transpose_nhwc[(45)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 56))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(77)] = (conv2d_transpose_nhwc[(77)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 480))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(109)] = (conv2d_transpose_nhwc[(109)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 488))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(29)] = (conv2d_transpose_nhwc[(29)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 264))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(61)] = (conv2d_transpose_nhwc[(61)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 272))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(93)] = (conv2d_transpose_nhwc[(93)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 696))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(125)] = (conv2d_transpose_nhwc[(125)] + ((((rw_outer_inner % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + ((rw_outer_inner >> 1) * 4)) + rc_outer_inner) + 704))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(10)] = (conv2d_transpose_nhwc[(10)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 24))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(42)] = (conv2d_transpose_nhwc[(42)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 32))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(74)] = (conv2d_transpose_nhwc[(74)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 456))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(106)] = (conv2d_transpose_nhwc[(106)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 464))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(26)] = (conv2d_transpose_nhwc[(26)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 240))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(58)] = (conv2d_transpose_nhwc[(58)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 248))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(90)] = (conv2d_transpose_nhwc[(90)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 672))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(122)] = (conv2d_transpose_nhwc[(122)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 680))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1792) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(14)] = (conv2d_transpose_nhwc[(14)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 48))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(46)] = (conv2d_transpose_nhwc[(46)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 56))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(78)] = (conv2d_transpose_nhwc[(78)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 480))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(110)] = (conv2d_transpose_nhwc[(110)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 488))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(30)] = (conv2d_transpose_nhwc[(30)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 264))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(62)] = (conv2d_transpose_nhwc[(62)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 272))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(94)] = (conv2d_transpose_nhwc[(94)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 696))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(126)] = (conv2d_transpose_nhwc[(126)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 704))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 768) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(11)] = (conv2d_transpose_nhwc[(11)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 24))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(43)] = (conv2d_transpose_nhwc[(43)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 32))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(75)] = (conv2d_transpose_nhwc[(75)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 456))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(107)] = (conv2d_transpose_nhwc[(107)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 464))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(27)] = (conv2d_transpose_nhwc[(27)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 240))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(59)] = (conv2d_transpose_nhwc[(59)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 248))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(91)] = (conv2d_transpose_nhwc[(91)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 672))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(123)] = (conv2d_transpose_nhwc[(123)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 680))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 1793) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(15)] = (conv2d_transpose_nhwc[(15)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 48))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(47)] = (conv2d_transpose_nhwc[(47)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 56))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(79)] = (conv2d_transpose_nhwc[(79)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 480))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(111)] = (conv2d_transpose_nhwc[(111)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 488))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(31)] = (conv2d_transpose_nhwc[(31)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 264))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(63)] = (conv2d_transpose_nhwc[(63)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 272))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(95)] = (conv2d_transpose_nhwc[(95)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 696))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
          conv2d_transpose_nhwc[(127)] = (conv2d_transpose_nhwc[(127)] + (((((rw_outer_inner + 1) % 2) == 0) ? PadInput_shared[(((((((((int)threadIdx.x) >> 6) * 48) + (((((int)threadIdx.x) & 63) >> 5) * 4)) + (((rw_outer_inner + 1) >> 1) * 4)) + rc_outer_inner) + 704))] : 0.000000e+00f) * placeholder_shared[(((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 31) * 2)) + 769) - (rw_outer_inner * 256)))]));
        }
      }
    }
  }
  for (int ax0_inner = 0; ax0_inner < 2; ++ax0_inner) {
    for (int ax1_inner = 0; ax1_inner < 4; ++ax1_inner) {
      for (int ax2_inner = 0; ax2_inner < 2; ++ax2_inner) {
        for (int ax3_inner = 0; ax3_inner < 2; ++ax3_inner) {
          T_relu[((((((((((ax0_inner * 65536) + ((((int)threadIdx.x) >> 6) * 16384)) + (ax1_inner * 4096)) + ((((int)blockIdx.x) >> 2) * 2048)) + (((((int)threadIdx.x) & 63) >> 5) * 512)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))] = max(((conv2d_transpose_nhwc[(((((ax0_inner * 16) + (ax1_inner * 4)) + (ax2_inner * 2)) + ax3_inner))] * placeholder2[(((((((int)blockIdx.x) & 3) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]) + placeholder3[(((((((int)blockIdx.x) & 3) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 65536) + ((((int)threadIdx.x) >> 6) * 16384)) + (ax1_inner * 4096)) + ((((int)blockIdx.x) >> 2) * 2048)) + (((((int)threadIdx.x) & 63) >> 5) * 512)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 1024))] = max(((conv2d_transpose_nhwc[((((((ax0_inner * 16) + (ax1_inner * 4)) + (ax2_inner * 2)) + ax3_inner) + 32))] * placeholder2[(((((((int)blockIdx.x) & 3) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]) + placeholder3[(((((((int)blockIdx.x) & 3) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 65536) + ((((int)threadIdx.x) >> 6) * 16384)) + (ax1_inner * 4096)) + ((((int)blockIdx.x) >> 2) * 2048)) + (((((int)threadIdx.x) & 63) >> 5) * 512)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 131072))] = max(((conv2d_transpose_nhwc[((((((ax0_inner * 16) + (ax1_inner * 4)) + (ax2_inner * 2)) + ax3_inner) + 64))] * placeholder2[(((((((int)blockIdx.x) & 3) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]) + placeholder3[(((((((int)blockIdx.x) & 3) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]), 0.000000e+00f);
          T_relu[(((((((((((ax0_inner * 65536) + ((((int)threadIdx.x) >> 6) * 16384)) + (ax1_inner * 4096)) + ((((int)blockIdx.x) >> 2) * 2048)) + (((((int)threadIdx.x) & 63) >> 5) * 512)) + (ax2_inner * 256)) + ((((int)blockIdx.x) & 3) * 64)) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner) + 132096))] = max(((conv2d_transpose_nhwc[((((((ax0_inner * 16) + (ax1_inner * 4)) + (ax2_inner * 2)) + ax3_inner) + 96))] * placeholder2[(((((((int)blockIdx.x) & 3) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]) + placeholder3[(((((((int)blockIdx.x) & 3) * 64) + ((((int)threadIdx.x) & 31) * 2)) + ax3_inner))]), 0.000000e+00f);
        }
      }
    }
  }
}


