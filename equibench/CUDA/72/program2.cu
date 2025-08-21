
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
extern "C" __global__ void my_kernel_kernel1(float* __restrict__ T_multiply, float* __restrict__ DepthwiseConv2d, float* __restrict__ placeholder) {
  T_multiply[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] = ((DepthwiseConv2d[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 184))]) * (max(min(((DepthwiseConv2d[(((((int)blockIdx.x) * 32) + ((int)threadIdx.x)))] + placeholder[((((((int)blockIdx.x) * 32) + ((int)threadIdx.x)) % 184))]) + 3.000000e+00f), 6.000000e+00f), 0.000000e+00f) * 1.666667e-01f));
}

extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ DepthwiseConv2d) {
  float DepthwiseConv2d_local[4];
  __shared__ float PaddedInput_shared[4416];
  __shared__ float placeholder_shared[414];
  DepthwiseConv2d_local[(0)] = 0.000000e+00f;
  DepthwiseConv2d_local[(2)] = 0.000000e+00f;
  DepthwiseConv2d_local[(1)] = 0.000000e+00f;
  DepthwiseConv2d_local[(3)] = 0.000000e+00f;
  PaddedInput_shared[((((int)threadIdx.x) * 9))] = (((((1 <= ((((((int)threadIdx.x) * 9) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && (((((((int)threadIdx.x) * 9) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (46 <= ((((int)threadIdx.x) * 9) % 736))) && (((((int)threadIdx.x) * 9) % 736) < 690)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + (((((int)threadIdx.x) * 9) / 2208) * 36064)) + ((((((int)threadIdx.x) * 9) % 2208) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + ((((((int)threadIdx.x) * 9) % 736) / 46) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + ((((int)threadIdx.x) * 9) % 46)) - 2760))] : 0.000000e+00f);
  PaddedInput_shared[(((((int)threadIdx.x) * 9) + 1))] = (((((1 <= (((((((int)threadIdx.x) * 9) + 1) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && ((((((((int)threadIdx.x) * 9) + 1) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (46 <= (((((int)threadIdx.x) * 9) + 1) % 736))) && ((((((int)threadIdx.x) * 9) + 1) % 736) < 690)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 1) / 2208) * 36064)) + (((((((int)threadIdx.x) * 9) + 1) % 2208) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + (((((((int)threadIdx.x) * 9) + 1) % 736) / 46) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 1) % 46)) - 2760))] : 0.000000e+00f);
  PaddedInput_shared[(((((int)threadIdx.x) * 9) + 2))] = (((((1 <= (((((((int)threadIdx.x) * 9) + 2) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && ((((((((int)threadIdx.x) * 9) + 2) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (46 <= (((((int)threadIdx.x) * 9) + 2) % 736))) && ((((((int)threadIdx.x) * 9) + 2) % 736) < 690)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 2) / 2208) * 36064)) + (((((((int)threadIdx.x) * 9) + 2) % 2208) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + (((((((int)threadIdx.x) * 9) + 2) % 736) / 46) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 2) % 46)) - 2760))] : 0.000000e+00f);
  PaddedInput_shared[(((((int)threadIdx.x) * 9) + 3))] = (((((1 <= (((((((int)threadIdx.x) * 9) + 3) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && ((((((((int)threadIdx.x) * 9) + 3) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (46 <= (((((int)threadIdx.x) * 9) + 3) % 736))) && ((((((int)threadIdx.x) * 9) + 3) % 736) < 690)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 3) / 2208) * 36064)) + (((((((int)threadIdx.x) * 9) + 3) % 2208) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + (((((((int)threadIdx.x) * 9) + 3) % 736) / 46) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 3) % 46)) - 2760))] : 0.000000e+00f);
  PaddedInput_shared[(((((int)threadIdx.x) * 9) + 4))] = (((((1 <= (((((((int)threadIdx.x) * 9) + 4) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && ((((((((int)threadIdx.x) * 9) + 4) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (46 <= (((((int)threadIdx.x) * 9) + 4) % 736))) && ((((((int)threadIdx.x) * 9) + 4) % 736) < 690)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 4) / 2208) * 36064)) + (((((((int)threadIdx.x) * 9) + 4) % 2208) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + (((((((int)threadIdx.x) * 9) + 4) % 736) / 46) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 4) % 46)) - 2760))] : 0.000000e+00f);
  PaddedInput_shared[(((((int)threadIdx.x) * 9) + 5))] = (((((1 <= (((((((int)threadIdx.x) * 9) + 5) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && ((((((((int)threadIdx.x) * 9) + 5) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (46 <= (((((int)threadIdx.x) * 9) + 5) % 736))) && ((((((int)threadIdx.x) * 9) + 5) % 736) < 690)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 5) / 2208) * 36064)) + (((((((int)threadIdx.x) * 9) + 5) % 2208) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + (((((((int)threadIdx.x) * 9) + 5) % 736) / 46) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 5) % 46)) - 2760))] : 0.000000e+00f);
  PaddedInput_shared[(((((int)threadIdx.x) * 9) + 6))] = (((((1 <= (((((((int)threadIdx.x) * 9) + 6) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && ((((((((int)threadIdx.x) * 9) + 6) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (46 <= (((((int)threadIdx.x) * 9) + 6) % 736))) && ((((((int)threadIdx.x) * 9) + 6) % 736) < 690)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 6) / 2208) * 36064)) + (((((((int)threadIdx.x) * 9) + 6) % 2208) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + (((((((int)threadIdx.x) * 9) + 6) % 736) / 46) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 6) % 46)) - 2760))] : 0.000000e+00f);
  PaddedInput_shared[(((((int)threadIdx.x) * 9) + 7))] = (((((1 <= (((((((int)threadIdx.x) * 9) + 7) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && ((((((((int)threadIdx.x) * 9) + 7) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (46 <= (((((int)threadIdx.x) * 9) + 7) % 736))) && ((((((int)threadIdx.x) * 9) + 7) % 736) < 690)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 7) / 2208) * 36064)) + (((((((int)threadIdx.x) * 9) + 7) % 2208) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + (((((((int)threadIdx.x) * 9) + 7) % 736) / 46) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 7) % 46)) - 2760))] : 0.000000e+00f);
  PaddedInput_shared[(((((int)threadIdx.x) * 9) + 8))] = (((((1 <= (((((((int)threadIdx.x) * 9) + 8) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && ((((((((int)threadIdx.x) * 9) + 8) % 2208) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (46 <= (((((int)threadIdx.x) * 9) + 8) % 736))) && ((((((int)threadIdx.x) * 9) + 8) % 736) < 690)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 8) / 2208) * 36064)) + (((((((int)threadIdx.x) * 9) + 8) % 2208) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + (((((((int)threadIdx.x) * 9) + 8) % 736) / 46) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 8) % 46)) - 2760))] : 0.000000e+00f);
  if (((int)threadIdx.x) < 169) {
    PaddedInput_shared[(((((((((int)threadIdx.x) * 9) + 2898) / 736) * 736) + (((((((int)threadIdx.x) * 9) / 46) + 15) & 15) * 46)) + ((((int)threadIdx.x) * 9) % 46)))] = (((((1 <= ((((((int)threadIdx.x) * 9) + 690) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && (((((((int)threadIdx.x) * 9) + 690) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (1 <= ((((((int)threadIdx.x) * 9) / 46) + 15) & 15))) && (((((((int)threadIdx.x) * 9) / 46) + 15) & 15) < 15)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 2898) / 2208) * 36064)) + ((((((int)threadIdx.x) * 9) + 690) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + (((((((int)threadIdx.x) * 9) / 46) + 15) & 15) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + ((((int)threadIdx.x) * 9) % 46)) - 2760))] : 0.000000e+00f);
  }
  if (((int)threadIdx.x) < 169) {
    PaddedInput_shared[(((((((((int)threadIdx.x) * 9) + 2899) / 736) * 736) + ((((((((int)threadIdx.x) * 9) + 1) / 46) + 15) & 15) * 46)) + (((((int)threadIdx.x) * 9) + 1) % 46)))] = (((((1 <= ((((((int)threadIdx.x) * 9) + 691) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && (((((((int)threadIdx.x) * 9) + 691) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (1 <= (((((((int)threadIdx.x) * 9) + 1) / 46) + 15) & 15))) && ((((((((int)threadIdx.x) * 9) + 1) / 46) + 15) & 15) < 15)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 2899) / 2208) * 36064)) + ((((((int)threadIdx.x) * 9) + 691) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + ((((((((int)threadIdx.x) * 9) + 1) / 46) + 15) & 15) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 1) % 46)) - 2760))] : 0.000000e+00f);
  }
  if (((int)threadIdx.x) < 169) {
    PaddedInput_shared[(((((((((int)threadIdx.x) * 9) + 2900) / 736) * 736) + ((((((((int)threadIdx.x) * 9) + 2) / 46) + 15) & 15) * 46)) + (((((int)threadIdx.x) * 9) + 2) % 46)))] = (((((1 <= ((((((int)threadIdx.x) * 9) + 692) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && (((((((int)threadIdx.x) * 9) + 692) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (1 <= (((((((int)threadIdx.x) * 9) + 2) / 46) + 15) & 15))) && ((((((((int)threadIdx.x) * 9) + 2) / 46) + 15) & 15) < 15)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 2900) / 2208) * 36064)) + ((((((int)threadIdx.x) * 9) + 692) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + ((((((((int)threadIdx.x) * 9) + 2) / 46) + 15) & 15) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 2) % 46)) - 2760))] : 0.000000e+00f);
  }
  if (((int)threadIdx.x) < 169) {
    PaddedInput_shared[(((((((((int)threadIdx.x) * 9) + 2901) / 736) * 736) + ((((((((int)threadIdx.x) * 9) + 3) / 46) + 15) & 15) * 46)) + (((((int)threadIdx.x) * 9) + 3) % 46)))] = (((((1 <= ((((((int)threadIdx.x) * 9) + 693) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && (((((((int)threadIdx.x) * 9) + 693) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (1 <= (((((((int)threadIdx.x) * 9) + 3) / 46) + 15) & 15))) && ((((((((int)threadIdx.x) * 9) + 3) / 46) + 15) & 15) < 15)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 2901) / 2208) * 36064)) + ((((((int)threadIdx.x) * 9) + 693) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + ((((((((int)threadIdx.x) * 9) + 3) / 46) + 15) & 15) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 3) % 46)) - 2760))] : 0.000000e+00f);
  }
  if (((int)threadIdx.x) < 169) {
    PaddedInput_shared[(((((((((int)threadIdx.x) * 9) + 2902) / 736) * 736) + ((((((((int)threadIdx.x) * 9) + 4) / 46) + 15) & 15) * 46)) + (((((int)threadIdx.x) * 9) + 4) % 46)))] = (((((1 <= ((((((int)threadIdx.x) * 9) + 694) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && (((((((int)threadIdx.x) * 9) + 694) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (1 <= (((((((int)threadIdx.x) * 9) + 4) / 46) + 15) & 15))) && ((((((((int)threadIdx.x) * 9) + 4) / 46) + 15) & 15) < 15)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 2902) / 2208) * 36064)) + ((((((int)threadIdx.x) * 9) + 694) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + ((((((((int)threadIdx.x) * 9) + 4) / 46) + 15) & 15) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 4) % 46)) - 2760))] : 0.000000e+00f);
  }
  if (((int)threadIdx.x) < 169) {
    PaddedInput_shared[(((((((((int)threadIdx.x) * 9) + 2903) / 736) * 736) + ((((((((int)threadIdx.x) * 9) + 5) / 46) + 15) & 15) * 46)) + (((((int)threadIdx.x) * 9) + 5) % 46)))] = (((((1 <= ((((((int)threadIdx.x) * 9) + 695) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && (((((((int)threadIdx.x) * 9) + 695) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (1 <= (((((((int)threadIdx.x) * 9) + 5) / 46) + 15) & 15))) && ((((((((int)threadIdx.x) * 9) + 5) / 46) + 15) & 15) < 15)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 2903) / 2208) * 36064)) + ((((((int)threadIdx.x) * 9) + 695) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + ((((((((int)threadIdx.x) * 9) + 5) / 46) + 15) & 15) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 5) % 46)) - 2760))] : 0.000000e+00f);
  }
  if (((int)threadIdx.x) < 168) {
    PaddedInput_shared[(((((((((int)threadIdx.x) * 9) + 2904) / 736) * 736) + ((((((((int)threadIdx.x) * 9) + 6) / 46) + 15) & 15) * 46)) + (((((int)threadIdx.x) * 9) + 6) % 46)))] = (((((1 <= ((((((int)threadIdx.x) * 9) + 696) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && (((((((int)threadIdx.x) * 9) + 696) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (1 <= (((((((int)threadIdx.x) * 9) + 6) / 46) + 15) & 15))) && ((((((((int)threadIdx.x) * 9) + 6) / 46) + 15) & 15) < 15)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 2904) / 2208) * 36064)) + ((((((int)threadIdx.x) * 9) + 696) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + ((((((((int)threadIdx.x) * 9) + 6) / 46) + 15) & 15) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 6) % 46)) - 2760))] : 0.000000e+00f);
  }
  if (((int)threadIdx.x) < 168) {
    PaddedInput_shared[(((((((((int)threadIdx.x) * 9) + 2905) / 736) * 736) + ((((((((int)threadIdx.x) * 9) + 7) / 46) + 15) & 15) * 46)) + (((((int)threadIdx.x) * 9) + 7) % 46)))] = (((((1 <= ((((((int)threadIdx.x) * 9) + 697) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && (((((((int)threadIdx.x) * 9) + 697) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (1 <= (((((((int)threadIdx.x) * 9) + 7) / 46) + 15) & 15))) && ((((((((int)threadIdx.x) * 9) + 7) / 46) + 15) & 15) < 15)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 2905) / 2208) * 36064)) + ((((((int)threadIdx.x) * 9) + 697) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + ((((((((int)threadIdx.x) * 9) + 7) / 46) + 15) & 15) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 7) % 46)) - 2760))] : 0.000000e+00f);
  }
  if (((int)threadIdx.x) < 168) {
    PaddedInput_shared[(((((((((int)threadIdx.x) * 9) + 2906) / 736) * 736) + ((((((((int)threadIdx.x) * 9) + 8) / 46) + 15) & 15) * 46)) + (((((int)threadIdx.x) * 9) + 8) % 46)))] = (((((1 <= ((((((int)threadIdx.x) * 9) + 698) / 736) + ((((int)blockIdx.x) % 56) >> 2))) && (((((((int)threadIdx.x) * 9) + 698) / 736) + ((((int)blockIdx.x) % 56) >> 2)) < 15)) && (1 <= (((((((int)threadIdx.x) * 9) + 8) / 46) + 15) & 15))) && ((((((((int)threadIdx.x) * 9) + 8) / 46) + 15) & 15) < 15)) ? placeholder[((((((((((((int)blockIdx.x) / 56) * 72128) + ((((((int)threadIdx.x) * 9) + 2906) / 2208) * 36064)) + ((((((int)threadIdx.x) * 9) + 698) / 736) * 2576)) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + ((((((((int)threadIdx.x) * 9) + 8) / 46) + 15) & 15) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 8) % 46)) - 2760))] : 0.000000e+00f);
  }
  if (((int)threadIdx.x) < 46) {
    placeholder_shared[((((int)threadIdx.x) * 9))] = placeholder1[((((((((int)threadIdx.x) * 9) / 46) * 184) + ((((int)blockIdx.x) & 3) * 46)) + ((((int)threadIdx.x) * 9) % 46)))];
  }
  if (((int)threadIdx.x) < 46) {
    placeholder_shared[(((((int)threadIdx.x) * 9) + 1))] = placeholder1[(((((((((int)threadIdx.x) * 9) + 1) / 46) * 184) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 1) % 46)))];
  }
  if (((int)threadIdx.x) < 46) {
    placeholder_shared[(((((int)threadIdx.x) * 9) + 2))] = placeholder1[(((((((((int)threadIdx.x) * 9) + 2) / 46) * 184) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 2) % 46)))];
  }
  if (((int)threadIdx.x) < 46) {
    placeholder_shared[(((((int)threadIdx.x) * 9) + 3))] = placeholder1[(((((((((int)threadIdx.x) * 9) + 3) / 46) * 184) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 3) % 46)))];
  }
  if (((int)threadIdx.x) < 46) {
    placeholder_shared[(((((int)threadIdx.x) * 9) + 4))] = placeholder1[(((((((((int)threadIdx.x) * 9) + 4) / 46) * 184) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 4) % 46)))];
  }
  if (((int)threadIdx.x) < 46) {
    placeholder_shared[(((((int)threadIdx.x) * 9) + 5))] = placeholder1[(((((((((int)threadIdx.x) * 9) + 5) / 46) * 184) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 5) % 46)))];
  }
  if (((int)threadIdx.x) < 46) {
    placeholder_shared[(((((int)threadIdx.x) * 9) + 6))] = placeholder1[(((((((((int)threadIdx.x) * 9) + 6) / 46) * 184) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 6) % 46)))];
  }
  if (((int)threadIdx.x) < 46) {
    placeholder_shared[(((((int)threadIdx.x) * 9) + 7))] = placeholder1[(((((((((int)threadIdx.x) * 9) + 7) / 46) * 184) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 7) % 46)))];
  }
  if (((int)threadIdx.x) < 46) {
    placeholder_shared[(((((int)threadIdx.x) * 9) + 8))] = placeholder1[(((((((((int)threadIdx.x) * 9) + 8) / 46) * 184) + ((((int)blockIdx.x) & 3) * 46)) + (((((int)threadIdx.x) * 9) + 8) % 46)))];
  }
  __syncthreads();
  DepthwiseConv2d_local[(0)] = (DepthwiseConv2d_local[(0)] + (PaddedInput_shared[((((int)threadIdx.x) * 2))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 2))]));
  DepthwiseConv2d_local[(2)] = (DepthwiseConv2d_local[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2208))] * placeholder_shared[(((((int)threadIdx.x) % 23) * 2))]));
  DepthwiseConv2d_local[(1)] = (DepthwiseConv2d_local[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 1))]));
  DepthwiseConv2d_local[(3)] = (DepthwiseConv2d_local[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2209))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 1))]));
  DepthwiseConv2d_local[(0)] = (DepthwiseConv2d_local[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 46))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 46))]));
  DepthwiseConv2d_local[(2)] = (DepthwiseConv2d_local[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2254))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 46))]));
  DepthwiseConv2d_local[(1)] = (DepthwiseConv2d_local[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 47))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 47))]));
  DepthwiseConv2d_local[(3)] = (DepthwiseConv2d_local[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2255))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 47))]));
  DepthwiseConv2d_local[(0)] = (DepthwiseConv2d_local[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 92))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 92))]));
  DepthwiseConv2d_local[(2)] = (DepthwiseConv2d_local[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2300))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 92))]));
  DepthwiseConv2d_local[(1)] = (DepthwiseConv2d_local[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 93))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 93))]));
  DepthwiseConv2d_local[(3)] = (DepthwiseConv2d_local[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2301))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 93))]));
  DepthwiseConv2d_local[(0)] = (DepthwiseConv2d_local[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 736))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 138))]));
  DepthwiseConv2d_local[(2)] = (DepthwiseConv2d_local[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2944))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 138))]));
  DepthwiseConv2d_local[(1)] = (DepthwiseConv2d_local[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 737))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 139))]));
  DepthwiseConv2d_local[(3)] = (DepthwiseConv2d_local[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2945))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 139))]));
  DepthwiseConv2d_local[(0)] = (DepthwiseConv2d_local[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 782))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 184))]));
  DepthwiseConv2d_local[(2)] = (DepthwiseConv2d_local[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2990))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 184))]));
  DepthwiseConv2d_local[(1)] = (DepthwiseConv2d_local[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 783))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 185))]));
  DepthwiseConv2d_local[(3)] = (DepthwiseConv2d_local[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 2991))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 185))]));
  DepthwiseConv2d_local[(0)] = (DepthwiseConv2d_local[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 828))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 230))]));
  DepthwiseConv2d_local[(2)] = (DepthwiseConv2d_local[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 3036))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 230))]));
  DepthwiseConv2d_local[(1)] = (DepthwiseConv2d_local[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 829))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 231))]));
  DepthwiseConv2d_local[(3)] = (DepthwiseConv2d_local[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 3037))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 231))]));
  DepthwiseConv2d_local[(0)] = (DepthwiseConv2d_local[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1472))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 276))]));
  DepthwiseConv2d_local[(2)] = (DepthwiseConv2d_local[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 3680))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 276))]));
  DepthwiseConv2d_local[(1)] = (DepthwiseConv2d_local[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1473))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 277))]));
  DepthwiseConv2d_local[(3)] = (DepthwiseConv2d_local[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 3681))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 277))]));
  DepthwiseConv2d_local[(0)] = (DepthwiseConv2d_local[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1518))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 322))]));
  DepthwiseConv2d_local[(2)] = (DepthwiseConv2d_local[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 3726))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 322))]));
  DepthwiseConv2d_local[(1)] = (DepthwiseConv2d_local[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1519))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 323))]));
  DepthwiseConv2d_local[(3)] = (DepthwiseConv2d_local[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 3727))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 323))]));
  DepthwiseConv2d_local[(0)] = (DepthwiseConv2d_local[(0)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1564))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 368))]));
  DepthwiseConv2d_local[(2)] = (DepthwiseConv2d_local[(2)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 3772))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 368))]));
  DepthwiseConv2d_local[(1)] = (DepthwiseConv2d_local[(1)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 1565))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 369))]));
  DepthwiseConv2d_local[(3)] = (DepthwiseConv2d_local[(3)] + (PaddedInput_shared[(((((int)threadIdx.x) * 2) + 3773))] * placeholder_shared[((((((int)threadIdx.x) % 23) * 2) + 369))]));
  for (int c_inner = 0; c_inner < 2; ++c_inner) {
    DepthwiseConv2d[((((((((((int)blockIdx.x) / 56) * 72128) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + ((((int)threadIdx.x) / 23) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + ((((int)threadIdx.x) % 23) * 2)) + c_inner))] = DepthwiseConv2d_local[(c_inner)];
    DepthwiseConv2d[(((((((((((int)blockIdx.x) / 56) * 72128) + (((((int)blockIdx.x) % 56) >> 2) * 2576)) + ((((int)threadIdx.x) / 23) * 184)) + ((((int)blockIdx.x) & 3) * 46)) + ((((int)threadIdx.x) % 23) * 2)) + c_inner) + 36064))] = DepthwiseConv2d_local[((c_inner + 2))];
  }
}


