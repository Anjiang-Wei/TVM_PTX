
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
extern "C" __global__ void my_kernel_kernel0(float* __restrict__ placeholder, float* __restrict__ placeholder1, float* __restrict__ Conv2dOutput) {
  float Conv2dOutput_local[256];
  __shared__ float PaddedInput_shared[3136];
  __shared__ float placeholder_shared[512];
  Conv2dOutput_local[(0)] = 0.000000e+00f;
  Conv2dOutput_local[(32)] = 0.000000e+00f;
  Conv2dOutput_local[(64)] = 0.000000e+00f;
  Conv2dOutput_local[(96)] = 0.000000e+00f;
  Conv2dOutput_local[(128)] = 0.000000e+00f;
  Conv2dOutput_local[(160)] = 0.000000e+00f;
  Conv2dOutput_local[(192)] = 0.000000e+00f;
  Conv2dOutput_local[(224)] = 0.000000e+00f;
  Conv2dOutput_local[(1)] = 0.000000e+00f;
  Conv2dOutput_local[(33)] = 0.000000e+00f;
  Conv2dOutput_local[(65)] = 0.000000e+00f;
  Conv2dOutput_local[(97)] = 0.000000e+00f;
  Conv2dOutput_local[(129)] = 0.000000e+00f;
  Conv2dOutput_local[(161)] = 0.000000e+00f;
  Conv2dOutput_local[(193)] = 0.000000e+00f;
  Conv2dOutput_local[(225)] = 0.000000e+00f;
  Conv2dOutput_local[(2)] = 0.000000e+00f;
  Conv2dOutput_local[(34)] = 0.000000e+00f;
  Conv2dOutput_local[(66)] = 0.000000e+00f;
  Conv2dOutput_local[(98)] = 0.000000e+00f;
  Conv2dOutput_local[(130)] = 0.000000e+00f;
  Conv2dOutput_local[(162)] = 0.000000e+00f;
  Conv2dOutput_local[(194)] = 0.000000e+00f;
  Conv2dOutput_local[(226)] = 0.000000e+00f;
  Conv2dOutput_local[(3)] = 0.000000e+00f;
  Conv2dOutput_local[(35)] = 0.000000e+00f;
  Conv2dOutput_local[(67)] = 0.000000e+00f;
  Conv2dOutput_local[(99)] = 0.000000e+00f;
  Conv2dOutput_local[(131)] = 0.000000e+00f;
  Conv2dOutput_local[(163)] = 0.000000e+00f;
  Conv2dOutput_local[(195)] = 0.000000e+00f;
  Conv2dOutput_local[(227)] = 0.000000e+00f;
  Conv2dOutput_local[(4)] = 0.000000e+00f;
  Conv2dOutput_local[(36)] = 0.000000e+00f;
  Conv2dOutput_local[(68)] = 0.000000e+00f;
  Conv2dOutput_local[(100)] = 0.000000e+00f;
  Conv2dOutput_local[(132)] = 0.000000e+00f;
  Conv2dOutput_local[(164)] = 0.000000e+00f;
  Conv2dOutput_local[(196)] = 0.000000e+00f;
  Conv2dOutput_local[(228)] = 0.000000e+00f;
  Conv2dOutput_local[(5)] = 0.000000e+00f;
  Conv2dOutput_local[(37)] = 0.000000e+00f;
  Conv2dOutput_local[(69)] = 0.000000e+00f;
  Conv2dOutput_local[(101)] = 0.000000e+00f;
  Conv2dOutput_local[(133)] = 0.000000e+00f;
  Conv2dOutput_local[(165)] = 0.000000e+00f;
  Conv2dOutput_local[(197)] = 0.000000e+00f;
  Conv2dOutput_local[(229)] = 0.000000e+00f;
  Conv2dOutput_local[(6)] = 0.000000e+00f;
  Conv2dOutput_local[(38)] = 0.000000e+00f;
  Conv2dOutput_local[(70)] = 0.000000e+00f;
  Conv2dOutput_local[(102)] = 0.000000e+00f;
  Conv2dOutput_local[(134)] = 0.000000e+00f;
  Conv2dOutput_local[(166)] = 0.000000e+00f;
  Conv2dOutput_local[(198)] = 0.000000e+00f;
  Conv2dOutput_local[(230)] = 0.000000e+00f;
  Conv2dOutput_local[(7)] = 0.000000e+00f;
  Conv2dOutput_local[(39)] = 0.000000e+00f;
  Conv2dOutput_local[(71)] = 0.000000e+00f;
  Conv2dOutput_local[(103)] = 0.000000e+00f;
  Conv2dOutput_local[(135)] = 0.000000e+00f;
  Conv2dOutput_local[(167)] = 0.000000e+00f;
  Conv2dOutput_local[(199)] = 0.000000e+00f;
  Conv2dOutput_local[(231)] = 0.000000e+00f;
  Conv2dOutput_local[(8)] = 0.000000e+00f;
  Conv2dOutput_local[(40)] = 0.000000e+00f;
  Conv2dOutput_local[(72)] = 0.000000e+00f;
  Conv2dOutput_local[(104)] = 0.000000e+00f;
  Conv2dOutput_local[(136)] = 0.000000e+00f;
  Conv2dOutput_local[(168)] = 0.000000e+00f;
  Conv2dOutput_local[(200)] = 0.000000e+00f;
  Conv2dOutput_local[(232)] = 0.000000e+00f;
  Conv2dOutput_local[(9)] = 0.000000e+00f;
  Conv2dOutput_local[(41)] = 0.000000e+00f;
  Conv2dOutput_local[(73)] = 0.000000e+00f;
  Conv2dOutput_local[(105)] = 0.000000e+00f;
  Conv2dOutput_local[(137)] = 0.000000e+00f;
  Conv2dOutput_local[(169)] = 0.000000e+00f;
  Conv2dOutput_local[(201)] = 0.000000e+00f;
  Conv2dOutput_local[(233)] = 0.000000e+00f;
  Conv2dOutput_local[(10)] = 0.000000e+00f;
  Conv2dOutput_local[(42)] = 0.000000e+00f;
  Conv2dOutput_local[(74)] = 0.000000e+00f;
  Conv2dOutput_local[(106)] = 0.000000e+00f;
  Conv2dOutput_local[(138)] = 0.000000e+00f;
  Conv2dOutput_local[(170)] = 0.000000e+00f;
  Conv2dOutput_local[(202)] = 0.000000e+00f;
  Conv2dOutput_local[(234)] = 0.000000e+00f;
  Conv2dOutput_local[(11)] = 0.000000e+00f;
  Conv2dOutput_local[(43)] = 0.000000e+00f;
  Conv2dOutput_local[(75)] = 0.000000e+00f;
  Conv2dOutput_local[(107)] = 0.000000e+00f;
  Conv2dOutput_local[(139)] = 0.000000e+00f;
  Conv2dOutput_local[(171)] = 0.000000e+00f;
  Conv2dOutput_local[(203)] = 0.000000e+00f;
  Conv2dOutput_local[(235)] = 0.000000e+00f;
  Conv2dOutput_local[(12)] = 0.000000e+00f;
  Conv2dOutput_local[(44)] = 0.000000e+00f;
  Conv2dOutput_local[(76)] = 0.000000e+00f;
  Conv2dOutput_local[(108)] = 0.000000e+00f;
  Conv2dOutput_local[(140)] = 0.000000e+00f;
  Conv2dOutput_local[(172)] = 0.000000e+00f;
  Conv2dOutput_local[(204)] = 0.000000e+00f;
  Conv2dOutput_local[(236)] = 0.000000e+00f;
  Conv2dOutput_local[(13)] = 0.000000e+00f;
  Conv2dOutput_local[(45)] = 0.000000e+00f;
  Conv2dOutput_local[(77)] = 0.000000e+00f;
  Conv2dOutput_local[(109)] = 0.000000e+00f;
  Conv2dOutput_local[(141)] = 0.000000e+00f;
  Conv2dOutput_local[(173)] = 0.000000e+00f;
  Conv2dOutput_local[(205)] = 0.000000e+00f;
  Conv2dOutput_local[(237)] = 0.000000e+00f;
  Conv2dOutput_local[(14)] = 0.000000e+00f;
  Conv2dOutput_local[(46)] = 0.000000e+00f;
  Conv2dOutput_local[(78)] = 0.000000e+00f;
  Conv2dOutput_local[(110)] = 0.000000e+00f;
  Conv2dOutput_local[(142)] = 0.000000e+00f;
  Conv2dOutput_local[(174)] = 0.000000e+00f;
  Conv2dOutput_local[(206)] = 0.000000e+00f;
  Conv2dOutput_local[(238)] = 0.000000e+00f;
  Conv2dOutput_local[(15)] = 0.000000e+00f;
  Conv2dOutput_local[(47)] = 0.000000e+00f;
  Conv2dOutput_local[(79)] = 0.000000e+00f;
  Conv2dOutput_local[(111)] = 0.000000e+00f;
  Conv2dOutput_local[(143)] = 0.000000e+00f;
  Conv2dOutput_local[(175)] = 0.000000e+00f;
  Conv2dOutput_local[(207)] = 0.000000e+00f;
  Conv2dOutput_local[(239)] = 0.000000e+00f;
  Conv2dOutput_local[(16)] = 0.000000e+00f;
  Conv2dOutput_local[(48)] = 0.000000e+00f;
  Conv2dOutput_local[(80)] = 0.000000e+00f;
  Conv2dOutput_local[(112)] = 0.000000e+00f;
  Conv2dOutput_local[(144)] = 0.000000e+00f;
  Conv2dOutput_local[(176)] = 0.000000e+00f;
  Conv2dOutput_local[(208)] = 0.000000e+00f;
  Conv2dOutput_local[(240)] = 0.000000e+00f;
  Conv2dOutput_local[(17)] = 0.000000e+00f;
  Conv2dOutput_local[(49)] = 0.000000e+00f;
  Conv2dOutput_local[(81)] = 0.000000e+00f;
  Conv2dOutput_local[(113)] = 0.000000e+00f;
  Conv2dOutput_local[(145)] = 0.000000e+00f;
  Conv2dOutput_local[(177)] = 0.000000e+00f;
  Conv2dOutput_local[(209)] = 0.000000e+00f;
  Conv2dOutput_local[(241)] = 0.000000e+00f;
  Conv2dOutput_local[(18)] = 0.000000e+00f;
  Conv2dOutput_local[(50)] = 0.000000e+00f;
  Conv2dOutput_local[(82)] = 0.000000e+00f;
  Conv2dOutput_local[(114)] = 0.000000e+00f;
  Conv2dOutput_local[(146)] = 0.000000e+00f;
  Conv2dOutput_local[(178)] = 0.000000e+00f;
  Conv2dOutput_local[(210)] = 0.000000e+00f;
  Conv2dOutput_local[(242)] = 0.000000e+00f;
  Conv2dOutput_local[(19)] = 0.000000e+00f;
  Conv2dOutput_local[(51)] = 0.000000e+00f;
  Conv2dOutput_local[(83)] = 0.000000e+00f;
  Conv2dOutput_local[(115)] = 0.000000e+00f;
  Conv2dOutput_local[(147)] = 0.000000e+00f;
  Conv2dOutput_local[(179)] = 0.000000e+00f;
  Conv2dOutput_local[(211)] = 0.000000e+00f;
  Conv2dOutput_local[(243)] = 0.000000e+00f;
  Conv2dOutput_local[(20)] = 0.000000e+00f;
  Conv2dOutput_local[(52)] = 0.000000e+00f;
  Conv2dOutput_local[(84)] = 0.000000e+00f;
  Conv2dOutput_local[(116)] = 0.000000e+00f;
  Conv2dOutput_local[(148)] = 0.000000e+00f;
  Conv2dOutput_local[(180)] = 0.000000e+00f;
  Conv2dOutput_local[(212)] = 0.000000e+00f;
  Conv2dOutput_local[(244)] = 0.000000e+00f;
  Conv2dOutput_local[(21)] = 0.000000e+00f;
  Conv2dOutput_local[(53)] = 0.000000e+00f;
  Conv2dOutput_local[(85)] = 0.000000e+00f;
  Conv2dOutput_local[(117)] = 0.000000e+00f;
  Conv2dOutput_local[(149)] = 0.000000e+00f;
  Conv2dOutput_local[(181)] = 0.000000e+00f;
  Conv2dOutput_local[(213)] = 0.000000e+00f;
  Conv2dOutput_local[(245)] = 0.000000e+00f;
  Conv2dOutput_local[(22)] = 0.000000e+00f;
  Conv2dOutput_local[(54)] = 0.000000e+00f;
  Conv2dOutput_local[(86)] = 0.000000e+00f;
  Conv2dOutput_local[(118)] = 0.000000e+00f;
  Conv2dOutput_local[(150)] = 0.000000e+00f;
  Conv2dOutput_local[(182)] = 0.000000e+00f;
  Conv2dOutput_local[(214)] = 0.000000e+00f;
  Conv2dOutput_local[(246)] = 0.000000e+00f;
  Conv2dOutput_local[(23)] = 0.000000e+00f;
  Conv2dOutput_local[(55)] = 0.000000e+00f;
  Conv2dOutput_local[(87)] = 0.000000e+00f;
  Conv2dOutput_local[(119)] = 0.000000e+00f;
  Conv2dOutput_local[(151)] = 0.000000e+00f;
  Conv2dOutput_local[(183)] = 0.000000e+00f;
  Conv2dOutput_local[(215)] = 0.000000e+00f;
  Conv2dOutput_local[(247)] = 0.000000e+00f;
  Conv2dOutput_local[(24)] = 0.000000e+00f;
  Conv2dOutput_local[(56)] = 0.000000e+00f;
  Conv2dOutput_local[(88)] = 0.000000e+00f;
  Conv2dOutput_local[(120)] = 0.000000e+00f;
  Conv2dOutput_local[(152)] = 0.000000e+00f;
  Conv2dOutput_local[(184)] = 0.000000e+00f;
  Conv2dOutput_local[(216)] = 0.000000e+00f;
  Conv2dOutput_local[(248)] = 0.000000e+00f;
  Conv2dOutput_local[(25)] = 0.000000e+00f;
  Conv2dOutput_local[(57)] = 0.000000e+00f;
  Conv2dOutput_local[(89)] = 0.000000e+00f;
  Conv2dOutput_local[(121)] = 0.000000e+00f;
  Conv2dOutput_local[(153)] = 0.000000e+00f;
  Conv2dOutput_local[(185)] = 0.000000e+00f;
  Conv2dOutput_local[(217)] = 0.000000e+00f;
  Conv2dOutput_local[(249)] = 0.000000e+00f;
  Conv2dOutput_local[(26)] = 0.000000e+00f;
  Conv2dOutput_local[(58)] = 0.000000e+00f;
  Conv2dOutput_local[(90)] = 0.000000e+00f;
  Conv2dOutput_local[(122)] = 0.000000e+00f;
  Conv2dOutput_local[(154)] = 0.000000e+00f;
  Conv2dOutput_local[(186)] = 0.000000e+00f;
  Conv2dOutput_local[(218)] = 0.000000e+00f;
  Conv2dOutput_local[(250)] = 0.000000e+00f;
  Conv2dOutput_local[(27)] = 0.000000e+00f;
  Conv2dOutput_local[(59)] = 0.000000e+00f;
  Conv2dOutput_local[(91)] = 0.000000e+00f;
  Conv2dOutput_local[(123)] = 0.000000e+00f;
  Conv2dOutput_local[(155)] = 0.000000e+00f;
  Conv2dOutput_local[(187)] = 0.000000e+00f;
  Conv2dOutput_local[(219)] = 0.000000e+00f;
  Conv2dOutput_local[(251)] = 0.000000e+00f;
  Conv2dOutput_local[(28)] = 0.000000e+00f;
  Conv2dOutput_local[(60)] = 0.000000e+00f;
  Conv2dOutput_local[(92)] = 0.000000e+00f;
  Conv2dOutput_local[(124)] = 0.000000e+00f;
  Conv2dOutput_local[(156)] = 0.000000e+00f;
  Conv2dOutput_local[(188)] = 0.000000e+00f;
  Conv2dOutput_local[(220)] = 0.000000e+00f;
  Conv2dOutput_local[(252)] = 0.000000e+00f;
  Conv2dOutput_local[(29)] = 0.000000e+00f;
  Conv2dOutput_local[(61)] = 0.000000e+00f;
  Conv2dOutput_local[(93)] = 0.000000e+00f;
  Conv2dOutput_local[(125)] = 0.000000e+00f;
  Conv2dOutput_local[(157)] = 0.000000e+00f;
  Conv2dOutput_local[(189)] = 0.000000e+00f;
  Conv2dOutput_local[(221)] = 0.000000e+00f;
  Conv2dOutput_local[(253)] = 0.000000e+00f;
  Conv2dOutput_local[(30)] = 0.000000e+00f;
  Conv2dOutput_local[(62)] = 0.000000e+00f;
  Conv2dOutput_local[(94)] = 0.000000e+00f;
  Conv2dOutput_local[(126)] = 0.000000e+00f;
  Conv2dOutput_local[(158)] = 0.000000e+00f;
  Conv2dOutput_local[(190)] = 0.000000e+00f;
  Conv2dOutput_local[(222)] = 0.000000e+00f;
  Conv2dOutput_local[(254)] = 0.000000e+00f;
  Conv2dOutput_local[(31)] = 0.000000e+00f;
  Conv2dOutput_local[(63)] = 0.000000e+00f;
  Conv2dOutput_local[(95)] = 0.000000e+00f;
  Conv2dOutput_local[(127)] = 0.000000e+00f;
  Conv2dOutput_local[(159)] = 0.000000e+00f;
  Conv2dOutput_local[(191)] = 0.000000e+00f;
  Conv2dOutput_local[(223)] = 0.000000e+00f;
  Conv2dOutput_local[(255)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 128; ++rc_outer_outer) {
    __syncthreads();
    PaddedInput_shared[(((int)threadIdx.x))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 98))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 98) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 2) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 196))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 196) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 4) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 294))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 294) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 6) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 392))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 401408) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 50176))];
    PaddedInput_shared[((((int)threadIdx.x) + 490))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 490) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 2) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 588))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 588) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 4) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 686))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 686) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 6) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 784))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 401408) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 100352))];
    PaddedInput_shared[((((int)threadIdx.x) + 882))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 882) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 2) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 980))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 980) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 4) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1078))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 1078) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 6) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1176))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 401408) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 150528))];
    PaddedInput_shared[((((int)threadIdx.x) + 1274))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 1274) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 2) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1372))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 1372) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 4) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1470))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 1470) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 6) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1568))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 401408) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 200704))];
    PaddedInput_shared[((((int)threadIdx.x) + 1666))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 1666) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 2) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1764))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 1764) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 4) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1862))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 1862) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 6) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 1960))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 401408) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 250880))];
    PaddedInput_shared[((((int)threadIdx.x) + 2058))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 2058) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 2) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2156))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 2156) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 4) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2254))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 2254) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 6) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2352))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 401408) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 301056))];
    PaddedInput_shared[((((int)threadIdx.x) + 2450))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 2450) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 2) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2548))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 2548) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 4) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2646))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 2646) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 6) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2744))] = placeholder[(((((((((int)blockIdx.x) >> 3) * 401408) + ((((int)threadIdx.x) >> 3) * 1024)) + (rc_outer_outer * 8)) + (((int)threadIdx.x) & 7)) + 351232))];
    PaddedInput_shared[((((int)threadIdx.x) + 2842))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 2842) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 2) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 2940))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 2940) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 4) & 7)))];
    PaddedInput_shared[((((int)threadIdx.x) + 3038))] = placeholder[((((((((int)blockIdx.x) >> 3) * 401408) + (((((int)threadIdx.x) + 3038) >> 3) * 1024)) + (rc_outer_outer * 8)) + ((((int)threadIdx.x) + 6) & 7)))];
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[((((int)threadIdx.x) * 16))] = placeholder1[(((((rc_outer_outer * 4096) + ((((int)threadIdx.x) >> 2) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ((((int)threadIdx.x) & 3) * 16)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 1))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 1) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 1) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 2))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 2) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 2) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 3))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 3) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 3) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 4))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 4) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 4) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 5))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 5) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 5) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 6))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 6) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 6) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 7))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 7) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 7) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 8))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 8) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 8) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 9))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 9) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 9) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 10))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 10) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 10) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 11))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 11) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 11) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 12))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 12) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 12) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 13))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 13) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 13) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 14))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 14) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 14) & 63)))];
    }
    if (((int)threadIdx.x) < 32) {
      placeholder_shared[(((((int)threadIdx.x) * 16) + 15))] = placeholder1[(((((rc_outer_outer * 4096) + ((((((int)threadIdx.x) * 16) + 15) >> 6) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + (((((int)threadIdx.x) * 16) + 15) & 63)))];
    }
    __syncthreads();
    for (int ff_c_outer_inner = 0; ff_c_outer_inner < 16; ++ff_c_outer_inner) {
      Conv2dOutput_local[((ff_c_outer_inner * 2))] = (Conv2dOutput_local[((ff_c_outer_inner * 2))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)))] * placeholder_shared[((ff_c_outer_inner * 2))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)))] * placeholder_shared[(((ff_c_outer_inner * 2) + 32))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 56))] * placeholder_shared[((ff_c_outer_inner * 2))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 56))] * placeholder_shared[(((ff_c_outer_inner * 2) + 32))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 784))] * placeholder_shared[((ff_c_outer_inner * 2))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 784))] * placeholder_shared[(((ff_c_outer_inner * 2) + 32))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 840))] * placeholder_shared[((ff_c_outer_inner * 2))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 840))] * placeholder_shared[(((ff_c_outer_inner * 2) + 32))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)))] * placeholder_shared[(((ff_c_outer_inner * 2) + 1))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] + (PaddedInput_shared[(((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)))] * placeholder_shared[(((ff_c_outer_inner * 2) + 33))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 56))] * placeholder_shared[(((ff_c_outer_inner * 2) + 1))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 56))] * placeholder_shared[(((ff_c_outer_inner * 2) + 33))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 784))] * placeholder_shared[(((ff_c_outer_inner * 2) + 1))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 784))] * placeholder_shared[(((ff_c_outer_inner * 2) + 33))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 840))] * placeholder_shared[(((ff_c_outer_inner * 2) + 1))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 840))] * placeholder_shared[(((ff_c_outer_inner * 2) + 33))]));
      Conv2dOutput_local[((ff_c_outer_inner * 2))] = (Conv2dOutput_local[((ff_c_outer_inner * 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 1))] * placeholder_shared[(((ff_c_outer_inner * 2) + 64))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 1))] * placeholder_shared[(((ff_c_outer_inner * 2) + 96))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 57))] * placeholder_shared[(((ff_c_outer_inner * 2) + 64))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 57))] * placeholder_shared[(((ff_c_outer_inner * 2) + 96))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 785))] * placeholder_shared[(((ff_c_outer_inner * 2) + 64))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 785))] * placeholder_shared[(((ff_c_outer_inner * 2) + 96))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 841))] * placeholder_shared[(((ff_c_outer_inner * 2) + 64))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 841))] * placeholder_shared[(((ff_c_outer_inner * 2) + 96))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 1))] * placeholder_shared[(((ff_c_outer_inner * 2) + 65))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 1))] * placeholder_shared[(((ff_c_outer_inner * 2) + 97))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 57))] * placeholder_shared[(((ff_c_outer_inner * 2) + 65))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 57))] * placeholder_shared[(((ff_c_outer_inner * 2) + 97))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 785))] * placeholder_shared[(((ff_c_outer_inner * 2) + 65))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 785))] * placeholder_shared[(((ff_c_outer_inner * 2) + 97))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 841))] * placeholder_shared[(((ff_c_outer_inner * 2) + 65))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 841))] * placeholder_shared[(((ff_c_outer_inner * 2) + 97))]));
      Conv2dOutput_local[((ff_c_outer_inner * 2))] = (Conv2dOutput_local[((ff_c_outer_inner * 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 2))] * placeholder_shared[(((ff_c_outer_inner * 2) + 128))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 2))] * placeholder_shared[(((ff_c_outer_inner * 2) + 160))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 58))] * placeholder_shared[(((ff_c_outer_inner * 2) + 128))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 58))] * placeholder_shared[(((ff_c_outer_inner * 2) + 160))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 786))] * placeholder_shared[(((ff_c_outer_inner * 2) + 128))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 786))] * placeholder_shared[(((ff_c_outer_inner * 2) + 160))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 842))] * placeholder_shared[(((ff_c_outer_inner * 2) + 128))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 842))] * placeholder_shared[(((ff_c_outer_inner * 2) + 160))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 2))] * placeholder_shared[(((ff_c_outer_inner * 2) + 129))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 2))] * placeholder_shared[(((ff_c_outer_inner * 2) + 161))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 58))] * placeholder_shared[(((ff_c_outer_inner * 2) + 129))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 58))] * placeholder_shared[(((ff_c_outer_inner * 2) + 161))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 786))] * placeholder_shared[(((ff_c_outer_inner * 2) + 129))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 786))] * placeholder_shared[(((ff_c_outer_inner * 2) + 161))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 842))] * placeholder_shared[(((ff_c_outer_inner * 2) + 129))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 842))] * placeholder_shared[(((ff_c_outer_inner * 2) + 161))]));
      Conv2dOutput_local[((ff_c_outer_inner * 2))] = (Conv2dOutput_local[((ff_c_outer_inner * 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 3))] * placeholder_shared[(((ff_c_outer_inner * 2) + 192))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 3))] * placeholder_shared[(((ff_c_outer_inner * 2) + 224))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 59))] * placeholder_shared[(((ff_c_outer_inner * 2) + 192))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 59))] * placeholder_shared[(((ff_c_outer_inner * 2) + 224))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 787))] * placeholder_shared[(((ff_c_outer_inner * 2) + 192))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 787))] * placeholder_shared[(((ff_c_outer_inner * 2) + 224))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 843))] * placeholder_shared[(((ff_c_outer_inner * 2) + 192))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 843))] * placeholder_shared[(((ff_c_outer_inner * 2) + 224))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 3))] * placeholder_shared[(((ff_c_outer_inner * 2) + 193))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 3))] * placeholder_shared[(((ff_c_outer_inner * 2) + 225))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 59))] * placeholder_shared[(((ff_c_outer_inner * 2) + 193))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 59))] * placeholder_shared[(((ff_c_outer_inner * 2) + 225))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 787))] * placeholder_shared[(((ff_c_outer_inner * 2) + 193))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 787))] * placeholder_shared[(((ff_c_outer_inner * 2) + 225))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 843))] * placeholder_shared[(((ff_c_outer_inner * 2) + 193))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 843))] * placeholder_shared[(((ff_c_outer_inner * 2) + 225))]));
      Conv2dOutput_local[((ff_c_outer_inner * 2))] = (Conv2dOutput_local[((ff_c_outer_inner * 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 4))] * placeholder_shared[(((ff_c_outer_inner * 2) + 256))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 4))] * placeholder_shared[(((ff_c_outer_inner * 2) + 288))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 60))] * placeholder_shared[(((ff_c_outer_inner * 2) + 256))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 60))] * placeholder_shared[(((ff_c_outer_inner * 2) + 288))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 788))] * placeholder_shared[(((ff_c_outer_inner * 2) + 256))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 788))] * placeholder_shared[(((ff_c_outer_inner * 2) + 288))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 844))] * placeholder_shared[(((ff_c_outer_inner * 2) + 256))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 844))] * placeholder_shared[(((ff_c_outer_inner * 2) + 288))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 4))] * placeholder_shared[(((ff_c_outer_inner * 2) + 257))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 4))] * placeholder_shared[(((ff_c_outer_inner * 2) + 289))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 60))] * placeholder_shared[(((ff_c_outer_inner * 2) + 257))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 60))] * placeholder_shared[(((ff_c_outer_inner * 2) + 289))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 788))] * placeholder_shared[(((ff_c_outer_inner * 2) + 257))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 788))] * placeholder_shared[(((ff_c_outer_inner * 2) + 289))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 844))] * placeholder_shared[(((ff_c_outer_inner * 2) + 257))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 844))] * placeholder_shared[(((ff_c_outer_inner * 2) + 289))]));
      Conv2dOutput_local[((ff_c_outer_inner * 2))] = (Conv2dOutput_local[((ff_c_outer_inner * 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 5))] * placeholder_shared[(((ff_c_outer_inner * 2) + 320))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 5))] * placeholder_shared[(((ff_c_outer_inner * 2) + 352))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 61))] * placeholder_shared[(((ff_c_outer_inner * 2) + 320))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 61))] * placeholder_shared[(((ff_c_outer_inner * 2) + 352))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 789))] * placeholder_shared[(((ff_c_outer_inner * 2) + 320))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 789))] * placeholder_shared[(((ff_c_outer_inner * 2) + 352))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 845))] * placeholder_shared[(((ff_c_outer_inner * 2) + 320))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 845))] * placeholder_shared[(((ff_c_outer_inner * 2) + 352))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 5))] * placeholder_shared[(((ff_c_outer_inner * 2) + 321))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 5))] * placeholder_shared[(((ff_c_outer_inner * 2) + 353))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 61))] * placeholder_shared[(((ff_c_outer_inner * 2) + 321))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 61))] * placeholder_shared[(((ff_c_outer_inner * 2) + 353))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 789))] * placeholder_shared[(((ff_c_outer_inner * 2) + 321))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 789))] * placeholder_shared[(((ff_c_outer_inner * 2) + 353))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 845))] * placeholder_shared[(((ff_c_outer_inner * 2) + 321))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 845))] * placeholder_shared[(((ff_c_outer_inner * 2) + 353))]));
      Conv2dOutput_local[((ff_c_outer_inner * 2))] = (Conv2dOutput_local[((ff_c_outer_inner * 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 6))] * placeholder_shared[(((ff_c_outer_inner * 2) + 384))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 6))] * placeholder_shared[(((ff_c_outer_inner * 2) + 416))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 62))] * placeholder_shared[(((ff_c_outer_inner * 2) + 384))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 62))] * placeholder_shared[(((ff_c_outer_inner * 2) + 416))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 790))] * placeholder_shared[(((ff_c_outer_inner * 2) + 384))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 790))] * placeholder_shared[(((ff_c_outer_inner * 2) + 416))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 846))] * placeholder_shared[(((ff_c_outer_inner * 2) + 384))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 846))] * placeholder_shared[(((ff_c_outer_inner * 2) + 416))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 6))] * placeholder_shared[(((ff_c_outer_inner * 2) + 385))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 6))] * placeholder_shared[(((ff_c_outer_inner * 2) + 417))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 62))] * placeholder_shared[(((ff_c_outer_inner * 2) + 385))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 62))] * placeholder_shared[(((ff_c_outer_inner * 2) + 417))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 790))] * placeholder_shared[(((ff_c_outer_inner * 2) + 385))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 790))] * placeholder_shared[(((ff_c_outer_inner * 2) + 417))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 846))] * placeholder_shared[(((ff_c_outer_inner * 2) + 385))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 846))] * placeholder_shared[(((ff_c_outer_inner * 2) + 417))]));
      Conv2dOutput_local[((ff_c_outer_inner * 2))] = (Conv2dOutput_local[((ff_c_outer_inner * 2))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 7))] * placeholder_shared[(((ff_c_outer_inner * 2) + 448))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 32))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 7))] * placeholder_shared[(((ff_c_outer_inner * 2) + 480))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 64))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 63))] * placeholder_shared[(((ff_c_outer_inner * 2) + 448))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 96))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 63))] * placeholder_shared[(((ff_c_outer_inner * 2) + 480))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 128))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 791))] * placeholder_shared[(((ff_c_outer_inner * 2) + 448))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 160))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 791))] * placeholder_shared[(((ff_c_outer_inner * 2) + 480))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 192))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 847))] * placeholder_shared[(((ff_c_outer_inner * 2) + 448))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 224))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 847))] * placeholder_shared[(((ff_c_outer_inner * 2) + 480))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 1))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 7))] * placeholder_shared[(((ff_c_outer_inner * 2) + 449))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 33))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 7))] * placeholder_shared[(((ff_c_outer_inner * 2) + 481))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 65))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 63))] * placeholder_shared[(((ff_c_outer_inner * 2) + 449))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 97))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 63))] * placeholder_shared[(((ff_c_outer_inner * 2) + 481))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 129))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 791))] * placeholder_shared[(((ff_c_outer_inner * 2) + 449))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 161))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 791))] * placeholder_shared[(((ff_c_outer_inner * 2) + 481))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 193))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 847))] * placeholder_shared[(((ff_c_outer_inner * 2) + 449))]));
      Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] = (Conv2dOutput_local[(((ff_c_outer_inner * 2) + 225))] + (PaddedInput_shared[((((((((int)threadIdx.x) / 49) * 1568) + (((((int)threadIdx.x) % 49) / 7) * 112)) + ((((int)threadIdx.x) % 7) * 8)) + 847))] * placeholder_shared[(((ff_c_outer_inner * 2) + 481))]));
    }
  }
  for (int ff_inner = 0; ff_inner < 32; ++ff_inner) {
    Conv2dOutput[((((((((((int)blockIdx.x) >> 3) * 200704) + ((((int)threadIdx.x) / 49) * 100352)) + (((((int)threadIdx.x) % 49) / 7) * 7168)) + ((((int)threadIdx.x) % 7) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ff_inner))] = Conv2dOutput_local[(ff_inner)];
    Conv2dOutput[(((((((((((int)blockIdx.x) >> 3) * 200704) + ((((int)threadIdx.x) / 49) * 100352)) + (((((int)threadIdx.x) % 49) / 7) * 7168)) + ((((int)threadIdx.x) % 7) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ff_inner) + 32))] = Conv2dOutput_local[((ff_inner + 32))];
    Conv2dOutput[(((((((((((int)blockIdx.x) >> 3) * 200704) + ((((int)threadIdx.x) / 49) * 100352)) + (((((int)threadIdx.x) % 49) / 7) * 7168)) + ((((int)threadIdx.x) % 7) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ff_inner) + 3584))] = Conv2dOutput_local[((ff_inner + 64))];
    Conv2dOutput[(((((((((((int)blockIdx.x) >> 3) * 200704) + ((((int)threadIdx.x) / 49) * 100352)) + (((((int)threadIdx.x) % 49) / 7) * 7168)) + ((((int)threadIdx.x) % 7) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ff_inner) + 3616))] = Conv2dOutput_local[((ff_inner + 96))];
    Conv2dOutput[(((((((((((int)blockIdx.x) >> 3) * 200704) + ((((int)threadIdx.x) / 49) * 100352)) + (((((int)threadIdx.x) % 49) / 7) * 7168)) + ((((int)threadIdx.x) % 7) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ff_inner) + 50176))] = Conv2dOutput_local[((ff_inner + 128))];
    Conv2dOutput[(((((((((((int)blockIdx.x) >> 3) * 200704) + ((((int)threadIdx.x) / 49) * 100352)) + (((((int)threadIdx.x) % 49) / 7) * 7168)) + ((((int)threadIdx.x) % 7) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ff_inner) + 50208))] = Conv2dOutput_local[((ff_inner + 160))];
    Conv2dOutput[(((((((((((int)blockIdx.x) >> 3) * 200704) + ((((int)threadIdx.x) / 49) * 100352)) + (((((int)threadIdx.x) % 49) / 7) * 7168)) + ((((int)threadIdx.x) % 7) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ff_inner) + 53760))] = Conv2dOutput_local[((ff_inner + 192))];
    Conv2dOutput[(((((((((((int)blockIdx.x) >> 3) * 200704) + ((((int)threadIdx.x) / 49) * 100352)) + (((((int)threadIdx.x) % 49) / 7) * 7168)) + ((((int)threadIdx.x) % 7) * 512)) + ((((int)blockIdx.x) & 7) * 64)) + ff_inner) + 53792))] = Conv2dOutput_local[((ff_inner + 224))];
  }
}


