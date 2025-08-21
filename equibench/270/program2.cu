
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
  float compute[8];
  __shared__ float pad_temp_shared[512];
  __shared__ float placeholder_shared[288];
  compute[(0)] = 0.000000e+00f;
  compute[(2)] = 0.000000e+00f;
  compute[(4)] = 0.000000e+00f;
  compute[(6)] = 0.000000e+00f;
  compute[(1)] = 0.000000e+00f;
  compute[(3)] = 0.000000e+00f;
  compute[(5)] = 0.000000e+00f;
  compute[(7)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 2; ++rc_outer_outer) {
    __syncthreads();
    pad_temp_shared[(((int)threadIdx.x))] = (((64 <= (((int)blockIdx.x) % 896)) && (1 <= ((((((int)blockIdx.x) & 63) >> 5) * 14) + (((int)threadIdx.x) >> 2)))) ? placeholder[((((((((((((int)blockIdx.x) / 896) * 401408) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + ((((int)threadIdx.x) >> 2) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 7424))] : 0.000000e+00f);
    pad_temp_shared[((((int)threadIdx.x) + 56))] = ((((1 <= ((((((int)blockIdx.x) % 896) >> 6) * 2) + ((((int)threadIdx.x) + 56) >> 6))) && (1 <= ((((((int)blockIdx.x) & 63) >> 5) * 14) + (((((int)threadIdx.x) >> 2) + 14) & 15)))) && (((((((int)blockIdx.x) & 63) >> 5) * 14) + (((((int)threadIdx.x) >> 2) + 14) & 15)) < 29)) ? placeholder[(((((((((((((int)blockIdx.x) / 896) * 401408) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + (((((int)threadIdx.x) + 56) >> 6) * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + ((((((int)threadIdx.x) >> 2) + 14) & 15) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 7424))] : 0.000000e+00f);
    pad_temp_shared[((((int)threadIdx.x) + 112))] = (((1 <= ((((((int)blockIdx.x) & 63) >> 5) * 14) + (((((int)threadIdx.x) >> 2) + 12) & 15))) && (((((((int)blockIdx.x) & 63) >> 5) * 14) + (((((int)threadIdx.x) >> 2) + 12) & 15)) < 29)) ? placeholder[(((((((((((((int)blockIdx.x) / 896) * 401408) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + (((((int)threadIdx.x) + 112) >> 6) * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + ((((((int)threadIdx.x) >> 2) + 12) & 15) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 7424))] : 0.000000e+00f);
    pad_temp_shared[((((int)threadIdx.x) + 168))] = ((((((((((int)blockIdx.x) % 896) >> 6) * 2) + ((((int)threadIdx.x) + 168) >> 6)) < 29) && (1 <= ((((((int)blockIdx.x) & 63) >> 5) * 14) + (((((int)threadIdx.x) >> 2) + 10) & 15)))) && (((((((int)blockIdx.x) & 63) >> 5) * 14) + (((((int)threadIdx.x) >> 2) + 10) & 15)) < 29)) ? placeholder[(((((((((((((int)blockIdx.x) / 896) * 401408) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + (((((int)threadIdx.x) + 168) >> 6) * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + ((((((int)threadIdx.x) >> 2) + 10) & 15) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 7424))] : 0.000000e+00f);
    pad_temp_shared[((((int)threadIdx.x) + 224))] = (((((1 <= ((((((int)blockIdx.x) % 896) >> 6) * 2) + ((((((int)threadIdx.x) >> 2) + 56) & 63) >> 4))) && (((((((int)blockIdx.x) % 896) >> 6) * 2) + ((((((int)threadIdx.x) >> 2) + 56) & 63) >> 4)) < 29)) && (1 <= ((((((int)blockIdx.x) & 63) >> 5) * 14) + (((((int)threadIdx.x) >> 2) + 8) & 15)))) && (((((((int)blockIdx.x) & 63) >> 5) * 14) + (((((int)threadIdx.x) >> 2) + 8) & 15)) < 29)) ? placeholder[((((((((((((((int)blockIdx.x) / 896) * 401408) + (((((int)threadIdx.x) + 224) >> 8) * 200704)) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + (((((((int)threadIdx.x) >> 2) + 56) & 63) >> 4) * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + ((((((int)threadIdx.x) >> 2) + 8) & 15) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 7424))] : 0.000000e+00f);
    pad_temp_shared[((((int)threadIdx.x) + 280))] = ((((1 <= ((((((int)blockIdx.x) % 896) >> 6) * 2) + (((((int)threadIdx.x) >> 2) + 6) >> 4))) && (1 <= ((((((int)blockIdx.x) & 63) >> 5) * 14) + (((((int)threadIdx.x) >> 2) + 6) & 15)))) && (((((((int)blockIdx.x) & 63) >> 5) * 14) + (((((int)threadIdx.x) >> 2) + 6) & 15)) < 29)) ? placeholder[((((((((((((((int)blockIdx.x) / 896) * 401408) + (((((int)threadIdx.x) + 280) >> 8) * 200704)) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + ((((((int)threadIdx.x) >> 2) + 6) >> 4) * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + ((((((int)threadIdx.x) >> 2) + 6) & 15) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 7424))] : 0.000000e+00f);
    pad_temp_shared[((((int)threadIdx.x) + 336))] = (((1 <= ((((((int)blockIdx.x) & 63) >> 5) * 14) + (((((int)threadIdx.x) >> 2) + 4) & 15))) && (((((((int)blockIdx.x) & 63) >> 5) * 14) + (((((int)threadIdx.x) >> 2) + 4) & 15)) < 29)) ? placeholder[((((((((((((((int)blockIdx.x) / 896) * 401408) + (((((int)threadIdx.x) + 336) >> 8) * 200704)) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + ((((((int)threadIdx.x) >> 2) + 20) >> 4) * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + ((((((int)threadIdx.x) >> 2) + 4) & 15) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 7424))] : 0.000000e+00f);
    pad_temp_shared[((((int)threadIdx.x) + 392))] = ((((((((int)blockIdx.x) & 63) >> 5) * 14) + ((((int)threadIdx.x) >> 2) + 2)) < 29) ? placeholder[((((((((((((((int)blockIdx.x) / 896) * 401408) + (((((int)threadIdx.x) + 392) >> 8) * 200704)) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + ((((((int)threadIdx.x) >> 2) + 34) >> 4) * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + (((((int)threadIdx.x) >> 2) + 2) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 7424))] : 0.000000e+00f);
    pad_temp_shared[((((int)threadIdx.x) + 448))] = (((((((((int)blockIdx.x) % 896) >> 6) * 2) + (((((int)threadIdx.x) >> 2) + 48) >> 4)) < 29) && (1 <= ((((((int)blockIdx.x) & 63) >> 5) * 14) + (((int)threadIdx.x) >> 2)))) ? placeholder[((((((((((((((int)blockIdx.x) / 896) * 401408) + (((((int)threadIdx.x) + 448) >> 8) * 200704)) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + ((((((int)threadIdx.x) >> 2) + 48) >> 4) * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + ((((int)threadIdx.x) >> 2) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 7424))] : 0.000000e+00f);
    if (((int)threadIdx.x) < 8) {
      pad_temp_shared[((((int)threadIdx.x) + 504))] = (((((((((int)blockIdx.x) % 896) >> 6) * 2) + (((((int)threadIdx.x) >> 2) + 62) >> 4)) < 29) && (((((((int)blockIdx.x) & 63) >> 5) * 14) + ((((int)threadIdx.x) >> 2) + 14)) < 29)) ? placeholder[((((((((((((((int)blockIdx.x) / 896) * 401408) + (((((int)threadIdx.x) + 504) >> 8) * 200704)) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + ((((((int)threadIdx.x) >> 2) + 62) >> 4) * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + (((((int)threadIdx.x) >> 2) + 14) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (rc_outer_outer * 4)) + (((int)threadIdx.x) & 3)) - 7424))] : 0.000000e+00f);
    }
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[((((int)threadIdx.x) * 12))] = placeholder1[((((((((((int)threadIdx.x) * 12) >> 5) * 2048) + (rc_outer_outer * 1024)) + ((((((int)threadIdx.x) * 12) & 31) >> 3) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + ((((int)threadIdx.x) * 12) & 7)))];
    }
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[(((((int)threadIdx.x) * 12) + 1))] = placeholder1[(((((((((((int)threadIdx.x) * 12) + 1) >> 5) * 2048) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 12) + 1) & 31) >> 3) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((((int)threadIdx.x) * 12) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[(((((int)threadIdx.x) * 12) + 2))] = placeholder1[(((((((((((int)threadIdx.x) * 12) + 2) >> 5) * 2048) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 12) + 2) & 31) >> 3) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((((int)threadIdx.x) * 12) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[(((((int)threadIdx.x) * 12) + 3))] = placeholder1[(((((((((((int)threadIdx.x) * 12) + 3) >> 5) * 2048) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 12) + 3) & 31) >> 3) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((((int)threadIdx.x) * 12) + 3) & 7)))];
    }
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[(((((int)threadIdx.x) * 12) + 4))] = placeholder1[(((((((((((int)threadIdx.x) * 12) + 4) >> 5) * 2048) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 12) + 4) & 31) >> 3) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((((int)threadIdx.x) * 12) + 4) & 7)))];
    }
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[(((((int)threadIdx.x) * 12) + 5))] = placeholder1[(((((((((((int)threadIdx.x) * 12) + 5) >> 5) * 2048) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 12) + 5) & 31) >> 3) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((((int)threadIdx.x) * 12) + 5) & 7)))];
    }
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[(((((int)threadIdx.x) * 12) + 6))] = placeholder1[(((((((((((int)threadIdx.x) * 12) + 6) >> 5) * 2048) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 12) + 6) & 31) >> 3) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((((int)threadIdx.x) * 12) + 6) & 7)))];
    }
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[(((((int)threadIdx.x) * 12) + 7))] = placeholder1[(((((((((((int)threadIdx.x) * 12) + 7) >> 5) * 2048) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 12) + 7) & 31) >> 3) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((((int)threadIdx.x) * 12) + 7) & 7)))];
    }
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[(((((int)threadIdx.x) * 12) + 8))] = placeholder1[(((((((((((int)threadIdx.x) * 12) + 8) >> 5) * 2048) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 12) + 8) & 31) >> 3) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + ((((int)threadIdx.x) * 12) & 7)))];
    }
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[(((((int)threadIdx.x) * 12) + 9))] = placeholder1[(((((((((((int)threadIdx.x) * 12) + 9) >> 5) * 2048) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 12) + 9) & 31) >> 3) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((((int)threadIdx.x) * 12) + 1) & 7)))];
    }
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[(((((int)threadIdx.x) * 12) + 10))] = placeholder1[(((((((((((int)threadIdx.x) * 12) + 10) >> 5) * 2048) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 12) + 10) & 31) >> 3) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((((int)threadIdx.x) * 12) + 2) & 7)))];
    }
    if (((int)threadIdx.x) < 24) {
      placeholder_shared[(((((int)threadIdx.x) * 12) + 11))] = placeholder1[(((((((((((int)threadIdx.x) * 12) + 11) >> 5) * 2048) + (rc_outer_outer * 1024)) + (((((((int)threadIdx.x) * 12) + 11) & 31) >> 3) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((((int)threadIdx.x) * 12) + 3) & 7)))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 2; ++rc_outer_inner) {
      for (int ry_inner = 0; ry_inner < 3; ++ry_inner) {
        compute[(0)] = (compute[(0)] + (pad_temp_shared[((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)))] * placeholder_shared[((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)))]));
        compute[(2)] = (compute[(2)] + (pad_temp_shared[((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 2))]));
        compute[(4)] = (compute[(4)] + (pad_temp_shared[((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 4))]));
        compute[(6)] = (compute[(6)] + (pad_temp_shared[((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 6))]));
        compute[(1)] = (compute[(1)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 64))] * placeholder_shared[((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)))]));
        compute[(3)] = (compute[(3)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 64))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 2))]));
        compute[(5)] = (compute[(5)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 64))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 4))]));
        compute[(7)] = (compute[(7)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 64))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 6))]));
        compute[(0)] = (compute[(0)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 8))]));
        compute[(2)] = (compute[(2)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 10))]));
        compute[(4)] = (compute[(4)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 12))]));
        compute[(6)] = (compute[(6)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 1))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 14))]));
        compute[(1)] = (compute[(1)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 65))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 8))]));
        compute[(3)] = (compute[(3)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 65))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 10))]));
        compute[(5)] = (compute[(5)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 65))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 12))]));
        compute[(7)] = (compute[(7)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 65))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 14))]));
        compute[(0)] = (compute[(0)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 4))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 32))]));
        compute[(2)] = (compute[(2)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 4))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 34))]));
        compute[(4)] = (compute[(4)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 4))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 36))]));
        compute[(6)] = (compute[(6)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 4))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 38))]));
        compute[(1)] = (compute[(1)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 68))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 32))]));
        compute[(3)] = (compute[(3)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 68))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 34))]));
        compute[(5)] = (compute[(5)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 68))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 36))]));
        compute[(7)] = (compute[(7)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 68))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 38))]));
        compute[(0)] = (compute[(0)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 5))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 40))]));
        compute[(2)] = (compute[(2)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 5))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 42))]));
        compute[(4)] = (compute[(4)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 5))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 44))]));
        compute[(6)] = (compute[(6)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 5))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 46))]));
        compute[(1)] = (compute[(1)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 69))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 40))]));
        compute[(3)] = (compute[(3)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 69))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 42))]));
        compute[(5)] = (compute[(5)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 69))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 44))]));
        compute[(7)] = (compute[(7)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 69))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 46))]));
        compute[(0)] = (compute[(0)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 8))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 64))]));
        compute[(2)] = (compute[(2)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 8))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 66))]));
        compute[(4)] = (compute[(4)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 8))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 68))]));
        compute[(6)] = (compute[(6)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 8))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 70))]));
        compute[(1)] = (compute[(1)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 72))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 64))]));
        compute[(3)] = (compute[(3)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 72))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 66))]));
        compute[(5)] = (compute[(5)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 72))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 68))]));
        compute[(7)] = (compute[(7)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 72))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 70))]));
        compute[(0)] = (compute[(0)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 9))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 72))]));
        compute[(2)] = (compute[(2)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 9))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 74))]));
        compute[(4)] = (compute[(4)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 9))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 76))]));
        compute[(6)] = (compute[(6)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 9))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 78))]));
        compute[(1)] = (compute[(1)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 73))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 72))]));
        compute[(3)] = (compute[(3)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 73))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 74))]));
        compute[(5)] = (compute[(5)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 73))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 76))]));
        compute[(7)] = (compute[(7)] + (pad_temp_shared[(((((((((int)threadIdx.x) / 28) * 256) + (ry_inner * 64)) + (((((int)threadIdx.x) % 28) >> 1) * 4)) + (rc_outer_inner * 2)) + 73))] * placeholder_shared[(((((ry_inner * 96) + (rc_outer_inner * 16)) + (((int)threadIdx.x) & 1)) + 78))]));
      }
    }
  }
  for (int ax1_inner = 0; ax1_inner < 2; ++ax1_inner) {
    T_relu[((((((((((((int)blockIdx.x) / 896) * 401408) + ((((int)threadIdx.x) / 28) * 200704)) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + (ax1_inner * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + (((((int)threadIdx.x) % 28) >> 1) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((int)threadIdx.x) & 1)))] = max((compute[(ax1_inner)] + placeholder2[((((((int)blockIdx.x) & 31) * 8) + (((int)threadIdx.x) & 1)))]), 0.000000e+00f);
    T_relu[(((((((((((((int)blockIdx.x) / 896) * 401408) + ((((int)threadIdx.x) / 28) * 200704)) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + (ax1_inner * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + (((((int)threadIdx.x) % 28) >> 1) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((int)threadIdx.x) & 1)) + 2))] = max((compute[((ax1_inner + 2))] + placeholder2[(((((((int)blockIdx.x) & 31) * 8) + (((int)threadIdx.x) & 1)) + 2))]), 0.000000e+00f);
    T_relu[(((((((((((((int)blockIdx.x) / 896) * 401408) + ((((int)threadIdx.x) / 28) * 200704)) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + (ax1_inner * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + (((((int)threadIdx.x) % 28) >> 1) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((int)threadIdx.x) & 1)) + 4))] = max((compute[((ax1_inner + 4))] + placeholder2[(((((((int)blockIdx.x) & 31) * 8) + (((int)threadIdx.x) & 1)) + 4))]), 0.000000e+00f);
    T_relu[(((((((((((((int)blockIdx.x) / 896) * 401408) + ((((int)threadIdx.x) / 28) * 200704)) + (((((int)blockIdx.x) % 896) >> 6) * 14336)) + (ax1_inner * 7168)) + (((((int)blockIdx.x) & 63) >> 5) * 3584)) + (((((int)threadIdx.x) % 28) >> 1) * 256)) + ((((int)blockIdx.x) & 31) * 8)) + (((int)threadIdx.x) & 1)) + 6))] = max((compute[((ax1_inner + 6))] + placeholder2[(((((((int)blockIdx.x) & 31) * 8) + (((int)threadIdx.x) & 1)) + 6))]), 0.000000e+00f);
  }
}


