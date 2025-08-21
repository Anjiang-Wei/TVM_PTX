
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
  float Conv2dOutput[280];
  __shared__ float PaddedInput_shared[700];
  __shared__ float placeholder_shared[256];
  Conv2dOutput[(0)] = 0.000000e+00f;
  Conv2dOutput[(20)] = 0.000000e+00f;
  Conv2dOutput[(40)] = 0.000000e+00f;
  Conv2dOutput[(60)] = 0.000000e+00f;
  Conv2dOutput[(80)] = 0.000000e+00f;
  Conv2dOutput[(100)] = 0.000000e+00f;
  Conv2dOutput[(120)] = 0.000000e+00f;
  Conv2dOutput[(140)] = 0.000000e+00f;
  Conv2dOutput[(160)] = 0.000000e+00f;
  Conv2dOutput[(180)] = 0.000000e+00f;
  Conv2dOutput[(200)] = 0.000000e+00f;
  Conv2dOutput[(220)] = 0.000000e+00f;
  Conv2dOutput[(240)] = 0.000000e+00f;
  Conv2dOutput[(260)] = 0.000000e+00f;
  Conv2dOutput[(1)] = 0.000000e+00f;
  Conv2dOutput[(21)] = 0.000000e+00f;
  Conv2dOutput[(41)] = 0.000000e+00f;
  Conv2dOutput[(61)] = 0.000000e+00f;
  Conv2dOutput[(81)] = 0.000000e+00f;
  Conv2dOutput[(101)] = 0.000000e+00f;
  Conv2dOutput[(121)] = 0.000000e+00f;
  Conv2dOutput[(141)] = 0.000000e+00f;
  Conv2dOutput[(161)] = 0.000000e+00f;
  Conv2dOutput[(181)] = 0.000000e+00f;
  Conv2dOutput[(201)] = 0.000000e+00f;
  Conv2dOutput[(221)] = 0.000000e+00f;
  Conv2dOutput[(241)] = 0.000000e+00f;
  Conv2dOutput[(261)] = 0.000000e+00f;
  Conv2dOutput[(2)] = 0.000000e+00f;
  Conv2dOutput[(22)] = 0.000000e+00f;
  Conv2dOutput[(42)] = 0.000000e+00f;
  Conv2dOutput[(62)] = 0.000000e+00f;
  Conv2dOutput[(82)] = 0.000000e+00f;
  Conv2dOutput[(102)] = 0.000000e+00f;
  Conv2dOutput[(122)] = 0.000000e+00f;
  Conv2dOutput[(142)] = 0.000000e+00f;
  Conv2dOutput[(162)] = 0.000000e+00f;
  Conv2dOutput[(182)] = 0.000000e+00f;
  Conv2dOutput[(202)] = 0.000000e+00f;
  Conv2dOutput[(222)] = 0.000000e+00f;
  Conv2dOutput[(242)] = 0.000000e+00f;
  Conv2dOutput[(262)] = 0.000000e+00f;
  Conv2dOutput[(3)] = 0.000000e+00f;
  Conv2dOutput[(23)] = 0.000000e+00f;
  Conv2dOutput[(43)] = 0.000000e+00f;
  Conv2dOutput[(63)] = 0.000000e+00f;
  Conv2dOutput[(83)] = 0.000000e+00f;
  Conv2dOutput[(103)] = 0.000000e+00f;
  Conv2dOutput[(123)] = 0.000000e+00f;
  Conv2dOutput[(143)] = 0.000000e+00f;
  Conv2dOutput[(163)] = 0.000000e+00f;
  Conv2dOutput[(183)] = 0.000000e+00f;
  Conv2dOutput[(203)] = 0.000000e+00f;
  Conv2dOutput[(223)] = 0.000000e+00f;
  Conv2dOutput[(243)] = 0.000000e+00f;
  Conv2dOutput[(263)] = 0.000000e+00f;
  Conv2dOutput[(4)] = 0.000000e+00f;
  Conv2dOutput[(24)] = 0.000000e+00f;
  Conv2dOutput[(44)] = 0.000000e+00f;
  Conv2dOutput[(64)] = 0.000000e+00f;
  Conv2dOutput[(84)] = 0.000000e+00f;
  Conv2dOutput[(104)] = 0.000000e+00f;
  Conv2dOutput[(124)] = 0.000000e+00f;
  Conv2dOutput[(144)] = 0.000000e+00f;
  Conv2dOutput[(164)] = 0.000000e+00f;
  Conv2dOutput[(184)] = 0.000000e+00f;
  Conv2dOutput[(204)] = 0.000000e+00f;
  Conv2dOutput[(224)] = 0.000000e+00f;
  Conv2dOutput[(244)] = 0.000000e+00f;
  Conv2dOutput[(264)] = 0.000000e+00f;
  Conv2dOutput[(5)] = 0.000000e+00f;
  Conv2dOutput[(25)] = 0.000000e+00f;
  Conv2dOutput[(45)] = 0.000000e+00f;
  Conv2dOutput[(65)] = 0.000000e+00f;
  Conv2dOutput[(85)] = 0.000000e+00f;
  Conv2dOutput[(105)] = 0.000000e+00f;
  Conv2dOutput[(125)] = 0.000000e+00f;
  Conv2dOutput[(145)] = 0.000000e+00f;
  Conv2dOutput[(165)] = 0.000000e+00f;
  Conv2dOutput[(185)] = 0.000000e+00f;
  Conv2dOutput[(205)] = 0.000000e+00f;
  Conv2dOutput[(225)] = 0.000000e+00f;
  Conv2dOutput[(245)] = 0.000000e+00f;
  Conv2dOutput[(265)] = 0.000000e+00f;
  Conv2dOutput[(6)] = 0.000000e+00f;
  Conv2dOutput[(26)] = 0.000000e+00f;
  Conv2dOutput[(46)] = 0.000000e+00f;
  Conv2dOutput[(66)] = 0.000000e+00f;
  Conv2dOutput[(86)] = 0.000000e+00f;
  Conv2dOutput[(106)] = 0.000000e+00f;
  Conv2dOutput[(126)] = 0.000000e+00f;
  Conv2dOutput[(146)] = 0.000000e+00f;
  Conv2dOutput[(166)] = 0.000000e+00f;
  Conv2dOutput[(186)] = 0.000000e+00f;
  Conv2dOutput[(206)] = 0.000000e+00f;
  Conv2dOutput[(226)] = 0.000000e+00f;
  Conv2dOutput[(246)] = 0.000000e+00f;
  Conv2dOutput[(266)] = 0.000000e+00f;
  Conv2dOutput[(7)] = 0.000000e+00f;
  Conv2dOutput[(27)] = 0.000000e+00f;
  Conv2dOutput[(47)] = 0.000000e+00f;
  Conv2dOutput[(67)] = 0.000000e+00f;
  Conv2dOutput[(87)] = 0.000000e+00f;
  Conv2dOutput[(107)] = 0.000000e+00f;
  Conv2dOutput[(127)] = 0.000000e+00f;
  Conv2dOutput[(147)] = 0.000000e+00f;
  Conv2dOutput[(167)] = 0.000000e+00f;
  Conv2dOutput[(187)] = 0.000000e+00f;
  Conv2dOutput[(207)] = 0.000000e+00f;
  Conv2dOutput[(227)] = 0.000000e+00f;
  Conv2dOutput[(247)] = 0.000000e+00f;
  Conv2dOutput[(267)] = 0.000000e+00f;
  Conv2dOutput[(8)] = 0.000000e+00f;
  Conv2dOutput[(28)] = 0.000000e+00f;
  Conv2dOutput[(48)] = 0.000000e+00f;
  Conv2dOutput[(68)] = 0.000000e+00f;
  Conv2dOutput[(88)] = 0.000000e+00f;
  Conv2dOutput[(108)] = 0.000000e+00f;
  Conv2dOutput[(128)] = 0.000000e+00f;
  Conv2dOutput[(148)] = 0.000000e+00f;
  Conv2dOutput[(168)] = 0.000000e+00f;
  Conv2dOutput[(188)] = 0.000000e+00f;
  Conv2dOutput[(208)] = 0.000000e+00f;
  Conv2dOutput[(228)] = 0.000000e+00f;
  Conv2dOutput[(248)] = 0.000000e+00f;
  Conv2dOutput[(268)] = 0.000000e+00f;
  Conv2dOutput[(9)] = 0.000000e+00f;
  Conv2dOutput[(29)] = 0.000000e+00f;
  Conv2dOutput[(49)] = 0.000000e+00f;
  Conv2dOutput[(69)] = 0.000000e+00f;
  Conv2dOutput[(89)] = 0.000000e+00f;
  Conv2dOutput[(109)] = 0.000000e+00f;
  Conv2dOutput[(129)] = 0.000000e+00f;
  Conv2dOutput[(149)] = 0.000000e+00f;
  Conv2dOutput[(169)] = 0.000000e+00f;
  Conv2dOutput[(189)] = 0.000000e+00f;
  Conv2dOutput[(209)] = 0.000000e+00f;
  Conv2dOutput[(229)] = 0.000000e+00f;
  Conv2dOutput[(249)] = 0.000000e+00f;
  Conv2dOutput[(269)] = 0.000000e+00f;
  Conv2dOutput[(10)] = 0.000000e+00f;
  Conv2dOutput[(30)] = 0.000000e+00f;
  Conv2dOutput[(50)] = 0.000000e+00f;
  Conv2dOutput[(70)] = 0.000000e+00f;
  Conv2dOutput[(90)] = 0.000000e+00f;
  Conv2dOutput[(110)] = 0.000000e+00f;
  Conv2dOutput[(130)] = 0.000000e+00f;
  Conv2dOutput[(150)] = 0.000000e+00f;
  Conv2dOutput[(170)] = 0.000000e+00f;
  Conv2dOutput[(190)] = 0.000000e+00f;
  Conv2dOutput[(210)] = 0.000000e+00f;
  Conv2dOutput[(230)] = 0.000000e+00f;
  Conv2dOutput[(250)] = 0.000000e+00f;
  Conv2dOutput[(270)] = 0.000000e+00f;
  Conv2dOutput[(11)] = 0.000000e+00f;
  Conv2dOutput[(31)] = 0.000000e+00f;
  Conv2dOutput[(51)] = 0.000000e+00f;
  Conv2dOutput[(71)] = 0.000000e+00f;
  Conv2dOutput[(91)] = 0.000000e+00f;
  Conv2dOutput[(111)] = 0.000000e+00f;
  Conv2dOutput[(131)] = 0.000000e+00f;
  Conv2dOutput[(151)] = 0.000000e+00f;
  Conv2dOutput[(171)] = 0.000000e+00f;
  Conv2dOutput[(191)] = 0.000000e+00f;
  Conv2dOutput[(211)] = 0.000000e+00f;
  Conv2dOutput[(231)] = 0.000000e+00f;
  Conv2dOutput[(251)] = 0.000000e+00f;
  Conv2dOutput[(271)] = 0.000000e+00f;
  Conv2dOutput[(12)] = 0.000000e+00f;
  Conv2dOutput[(32)] = 0.000000e+00f;
  Conv2dOutput[(52)] = 0.000000e+00f;
  Conv2dOutput[(72)] = 0.000000e+00f;
  Conv2dOutput[(92)] = 0.000000e+00f;
  Conv2dOutput[(112)] = 0.000000e+00f;
  Conv2dOutput[(132)] = 0.000000e+00f;
  Conv2dOutput[(152)] = 0.000000e+00f;
  Conv2dOutput[(172)] = 0.000000e+00f;
  Conv2dOutput[(192)] = 0.000000e+00f;
  Conv2dOutput[(212)] = 0.000000e+00f;
  Conv2dOutput[(232)] = 0.000000e+00f;
  Conv2dOutput[(252)] = 0.000000e+00f;
  Conv2dOutput[(272)] = 0.000000e+00f;
  Conv2dOutput[(13)] = 0.000000e+00f;
  Conv2dOutput[(33)] = 0.000000e+00f;
  Conv2dOutput[(53)] = 0.000000e+00f;
  Conv2dOutput[(73)] = 0.000000e+00f;
  Conv2dOutput[(93)] = 0.000000e+00f;
  Conv2dOutput[(113)] = 0.000000e+00f;
  Conv2dOutput[(133)] = 0.000000e+00f;
  Conv2dOutput[(153)] = 0.000000e+00f;
  Conv2dOutput[(173)] = 0.000000e+00f;
  Conv2dOutput[(193)] = 0.000000e+00f;
  Conv2dOutput[(213)] = 0.000000e+00f;
  Conv2dOutput[(233)] = 0.000000e+00f;
  Conv2dOutput[(253)] = 0.000000e+00f;
  Conv2dOutput[(273)] = 0.000000e+00f;
  Conv2dOutput[(14)] = 0.000000e+00f;
  Conv2dOutput[(34)] = 0.000000e+00f;
  Conv2dOutput[(54)] = 0.000000e+00f;
  Conv2dOutput[(74)] = 0.000000e+00f;
  Conv2dOutput[(94)] = 0.000000e+00f;
  Conv2dOutput[(114)] = 0.000000e+00f;
  Conv2dOutput[(134)] = 0.000000e+00f;
  Conv2dOutput[(154)] = 0.000000e+00f;
  Conv2dOutput[(174)] = 0.000000e+00f;
  Conv2dOutput[(194)] = 0.000000e+00f;
  Conv2dOutput[(214)] = 0.000000e+00f;
  Conv2dOutput[(234)] = 0.000000e+00f;
  Conv2dOutput[(254)] = 0.000000e+00f;
  Conv2dOutput[(274)] = 0.000000e+00f;
  Conv2dOutput[(15)] = 0.000000e+00f;
  Conv2dOutput[(35)] = 0.000000e+00f;
  Conv2dOutput[(55)] = 0.000000e+00f;
  Conv2dOutput[(75)] = 0.000000e+00f;
  Conv2dOutput[(95)] = 0.000000e+00f;
  Conv2dOutput[(115)] = 0.000000e+00f;
  Conv2dOutput[(135)] = 0.000000e+00f;
  Conv2dOutput[(155)] = 0.000000e+00f;
  Conv2dOutput[(175)] = 0.000000e+00f;
  Conv2dOutput[(195)] = 0.000000e+00f;
  Conv2dOutput[(215)] = 0.000000e+00f;
  Conv2dOutput[(235)] = 0.000000e+00f;
  Conv2dOutput[(255)] = 0.000000e+00f;
  Conv2dOutput[(275)] = 0.000000e+00f;
  Conv2dOutput[(16)] = 0.000000e+00f;
  Conv2dOutput[(36)] = 0.000000e+00f;
  Conv2dOutput[(56)] = 0.000000e+00f;
  Conv2dOutput[(76)] = 0.000000e+00f;
  Conv2dOutput[(96)] = 0.000000e+00f;
  Conv2dOutput[(116)] = 0.000000e+00f;
  Conv2dOutput[(136)] = 0.000000e+00f;
  Conv2dOutput[(156)] = 0.000000e+00f;
  Conv2dOutput[(176)] = 0.000000e+00f;
  Conv2dOutput[(196)] = 0.000000e+00f;
  Conv2dOutput[(216)] = 0.000000e+00f;
  Conv2dOutput[(236)] = 0.000000e+00f;
  Conv2dOutput[(256)] = 0.000000e+00f;
  Conv2dOutput[(276)] = 0.000000e+00f;
  Conv2dOutput[(17)] = 0.000000e+00f;
  Conv2dOutput[(37)] = 0.000000e+00f;
  Conv2dOutput[(57)] = 0.000000e+00f;
  Conv2dOutput[(77)] = 0.000000e+00f;
  Conv2dOutput[(97)] = 0.000000e+00f;
  Conv2dOutput[(117)] = 0.000000e+00f;
  Conv2dOutput[(137)] = 0.000000e+00f;
  Conv2dOutput[(157)] = 0.000000e+00f;
  Conv2dOutput[(177)] = 0.000000e+00f;
  Conv2dOutput[(197)] = 0.000000e+00f;
  Conv2dOutput[(217)] = 0.000000e+00f;
  Conv2dOutput[(237)] = 0.000000e+00f;
  Conv2dOutput[(257)] = 0.000000e+00f;
  Conv2dOutput[(277)] = 0.000000e+00f;
  Conv2dOutput[(18)] = 0.000000e+00f;
  Conv2dOutput[(38)] = 0.000000e+00f;
  Conv2dOutput[(58)] = 0.000000e+00f;
  Conv2dOutput[(78)] = 0.000000e+00f;
  Conv2dOutput[(98)] = 0.000000e+00f;
  Conv2dOutput[(118)] = 0.000000e+00f;
  Conv2dOutput[(138)] = 0.000000e+00f;
  Conv2dOutput[(158)] = 0.000000e+00f;
  Conv2dOutput[(178)] = 0.000000e+00f;
  Conv2dOutput[(198)] = 0.000000e+00f;
  Conv2dOutput[(218)] = 0.000000e+00f;
  Conv2dOutput[(238)] = 0.000000e+00f;
  Conv2dOutput[(258)] = 0.000000e+00f;
  Conv2dOutput[(278)] = 0.000000e+00f;
  Conv2dOutput[(19)] = 0.000000e+00f;
  Conv2dOutput[(39)] = 0.000000e+00f;
  Conv2dOutput[(59)] = 0.000000e+00f;
  Conv2dOutput[(79)] = 0.000000e+00f;
  Conv2dOutput[(99)] = 0.000000e+00f;
  Conv2dOutput[(119)] = 0.000000e+00f;
  Conv2dOutput[(139)] = 0.000000e+00f;
  Conv2dOutput[(159)] = 0.000000e+00f;
  Conv2dOutput[(179)] = 0.000000e+00f;
  Conv2dOutput[(199)] = 0.000000e+00f;
  Conv2dOutput[(219)] = 0.000000e+00f;
  Conv2dOutput[(239)] = 0.000000e+00f;
  Conv2dOutput[(259)] = 0.000000e+00f;
  Conv2dOutput[(279)] = 0.000000e+00f;
  for (int rc_outer_outer = 0; rc_outer_outer < 64; ++rc_outer_outer) {
    __syncthreads();
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[((((int)threadIdx.x) * 40))] = placeholder[((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 1))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 2))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 2))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 3))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 3))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 4))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 256))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 5))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 257))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 6))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 258))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 7))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 259))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 8))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 512))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 9))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 513))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 10))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 514))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 11))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 515))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 12))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 768))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 13))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 769))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 14))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 770))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 15))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 771))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 16))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1024))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 17))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1025))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 18))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1026))];
    }
    if (((int)threadIdx.x) < 18) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 19))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1027))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 20))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1280))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 21))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1281))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 22))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1282))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 23))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1283))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 24))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1536))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 25))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1537))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 26))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1538))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 27))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1539))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 28))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1792))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 29))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1793))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 30))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1794))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 31))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 1795))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 32))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 2048))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 33))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 2049))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 34))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 2050))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 35))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 2051))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 36))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 2304))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 37))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 2305))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 38))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 2306))];
    }
    if (((int)threadIdx.x) < 17) {
      PaddedInput_shared[(((((int)threadIdx.x) * 40) + 39))] = placeholder[(((((((int)blockIdx.x) * 44800) + (((int)threadIdx.x) * 2560)) + (rc_outer_outer * 4)) + 2307))];
    }
    placeholder_shared[(((int)threadIdx.x))] = placeholder1[(((rc_outer_outer * 256) + ((int)threadIdx.x)))];
    placeholder_shared[((((int)threadIdx.x) + 40))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 40))];
    placeholder_shared[((((int)threadIdx.x) + 80))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 80))];
    placeholder_shared[((((int)threadIdx.x) + 120))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 120))];
    placeholder_shared[((((int)threadIdx.x) + 160))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 160))];
    placeholder_shared[((((int)threadIdx.x) + 200))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 200))];
    if (((int)threadIdx.x) < 16) {
      placeholder_shared[((((int)threadIdx.x) + 240))] = placeholder1[((((rc_outer_outer * 256) + ((int)threadIdx.x)) + 240))];
    }
    __syncthreads();
    for (int rc_outer_inner = 0; rc_outer_inner < 4; ++rc_outer_inner) {
      Conv2dOutput[(0)] = (Conv2dOutput[(0)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(20)] = (Conv2dOutput[(20)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(40)] = (Conv2dOutput[(40)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 20))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(60)] = (Conv2dOutput[(60)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 20))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(80)] = (Conv2dOutput[(80)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 40))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(100)] = (Conv2dOutput[(100)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 40))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(120)] = (Conv2dOutput[(120)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 60))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(140)] = (Conv2dOutput[(140)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 60))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(160)] = (Conv2dOutput[(160)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 80))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(180)] = (Conv2dOutput[(180)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 80))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(200)] = (Conv2dOutput[(200)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 100))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(220)] = (Conv2dOutput[(220)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 100))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(240)] = (Conv2dOutput[(240)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 120))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(260)] = (Conv2dOutput[(260)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 120))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(1)] = (Conv2dOutput[(1)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(21)] = (Conv2dOutput[(21)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(41)] = (Conv2dOutput[(41)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 20))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(61)] = (Conv2dOutput[(61)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 20))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(81)] = (Conv2dOutput[(81)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 40))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(101)] = (Conv2dOutput[(101)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 40))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(121)] = (Conv2dOutput[(121)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 60))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(141)] = (Conv2dOutput[(141)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 60))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(161)] = (Conv2dOutput[(161)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 80))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(181)] = (Conv2dOutput[(181)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 80))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(201)] = (Conv2dOutput[(201)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 100))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(221)] = (Conv2dOutput[(221)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 100))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(241)] = (Conv2dOutput[(241)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 120))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(261)] = (Conv2dOutput[(261)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 120))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(2)] = (Conv2dOutput[(2)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(22)] = (Conv2dOutput[(22)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(42)] = (Conv2dOutput[(42)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 20))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(62)] = (Conv2dOutput[(62)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 20))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(82)] = (Conv2dOutput[(82)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 40))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(102)] = (Conv2dOutput[(102)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 40))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(122)] = (Conv2dOutput[(122)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 60))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(142)] = (Conv2dOutput[(142)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 60))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(162)] = (Conv2dOutput[(162)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 80))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(182)] = (Conv2dOutput[(182)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 80))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(202)] = (Conv2dOutput[(202)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 100))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(222)] = (Conv2dOutput[(222)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 100))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(242)] = (Conv2dOutput[(242)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 120))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(262)] = (Conv2dOutput[(262)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 120))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(3)] = (Conv2dOutput[(3)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(23)] = (Conv2dOutput[(23)] + (PaddedInput_shared[((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(43)] = (Conv2dOutput[(43)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 20))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(63)] = (Conv2dOutput[(63)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 20))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(83)] = (Conv2dOutput[(83)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 40))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(103)] = (Conv2dOutput[(103)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 40))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(123)] = (Conv2dOutput[(123)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 60))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(143)] = (Conv2dOutput[(143)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 60))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(163)] = (Conv2dOutput[(163)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 80))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(183)] = (Conv2dOutput[(183)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 80))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(203)] = (Conv2dOutput[(203)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 100))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(223)] = (Conv2dOutput[(223)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 100))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(243)] = (Conv2dOutput[(243)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 120))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(263)] = (Conv2dOutput[(263)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 120))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(4)] = (Conv2dOutput[(4)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 140))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(24)] = (Conv2dOutput[(24)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 140))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(44)] = (Conv2dOutput[(44)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 160))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(64)] = (Conv2dOutput[(64)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 160))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(84)] = (Conv2dOutput[(84)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 180))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(104)] = (Conv2dOutput[(104)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 180))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(124)] = (Conv2dOutput[(124)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 200))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(144)] = (Conv2dOutput[(144)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 200))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(164)] = (Conv2dOutput[(164)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 220))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(184)] = (Conv2dOutput[(184)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 220))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(204)] = (Conv2dOutput[(204)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 240))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(224)] = (Conv2dOutput[(224)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 240))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(244)] = (Conv2dOutput[(244)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 260))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(264)] = (Conv2dOutput[(264)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 260))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(5)] = (Conv2dOutput[(5)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 140))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(25)] = (Conv2dOutput[(25)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 140))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(45)] = (Conv2dOutput[(45)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 160))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(65)] = (Conv2dOutput[(65)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 160))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(85)] = (Conv2dOutput[(85)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 180))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(105)] = (Conv2dOutput[(105)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 180))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(125)] = (Conv2dOutput[(125)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 200))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(145)] = (Conv2dOutput[(145)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 200))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(165)] = (Conv2dOutput[(165)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 220))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(185)] = (Conv2dOutput[(185)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 220))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(205)] = (Conv2dOutput[(205)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 240))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(225)] = (Conv2dOutput[(225)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 240))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(245)] = (Conv2dOutput[(245)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 260))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(265)] = (Conv2dOutput[(265)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 260))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(6)] = (Conv2dOutput[(6)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 140))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(26)] = (Conv2dOutput[(26)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 140))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(46)] = (Conv2dOutput[(46)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 160))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(66)] = (Conv2dOutput[(66)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 160))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(86)] = (Conv2dOutput[(86)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 180))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(106)] = (Conv2dOutput[(106)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 180))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(126)] = (Conv2dOutput[(126)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 200))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(146)] = (Conv2dOutput[(146)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 200))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(166)] = (Conv2dOutput[(166)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 220))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(186)] = (Conv2dOutput[(186)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 220))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(206)] = (Conv2dOutput[(206)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 240))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(226)] = (Conv2dOutput[(226)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 240))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(246)] = (Conv2dOutput[(246)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 260))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(266)] = (Conv2dOutput[(266)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 260))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(7)] = (Conv2dOutput[(7)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 140))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(27)] = (Conv2dOutput[(27)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 140))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(47)] = (Conv2dOutput[(47)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 160))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(67)] = (Conv2dOutput[(67)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 160))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(87)] = (Conv2dOutput[(87)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 180))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(107)] = (Conv2dOutput[(107)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 180))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(127)] = (Conv2dOutput[(127)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 200))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(147)] = (Conv2dOutput[(147)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 200))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(167)] = (Conv2dOutput[(167)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 220))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(187)] = (Conv2dOutput[(187)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 220))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(207)] = (Conv2dOutput[(207)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 240))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(227)] = (Conv2dOutput[(227)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 240))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(247)] = (Conv2dOutput[(247)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 260))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(267)] = (Conv2dOutput[(267)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 260))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(8)] = (Conv2dOutput[(8)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 280))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(28)] = (Conv2dOutput[(28)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 280))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(48)] = (Conv2dOutput[(48)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 300))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(68)] = (Conv2dOutput[(68)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 300))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(88)] = (Conv2dOutput[(88)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 320))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(108)] = (Conv2dOutput[(108)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 320))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(128)] = (Conv2dOutput[(128)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 340))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(148)] = (Conv2dOutput[(148)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 340))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(168)] = (Conv2dOutput[(168)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 360))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(188)] = (Conv2dOutput[(188)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 360))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(208)] = (Conv2dOutput[(208)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 380))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(228)] = (Conv2dOutput[(228)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 380))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(248)] = (Conv2dOutput[(248)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 400))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(268)] = (Conv2dOutput[(268)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 400))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(9)] = (Conv2dOutput[(9)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 280))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(29)] = (Conv2dOutput[(29)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 280))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(49)] = (Conv2dOutput[(49)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 300))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(69)] = (Conv2dOutput[(69)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 300))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(89)] = (Conv2dOutput[(89)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 320))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(109)] = (Conv2dOutput[(109)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 320))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(129)] = (Conv2dOutput[(129)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 340))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(149)] = (Conv2dOutput[(149)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 340))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(169)] = (Conv2dOutput[(169)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 360))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(189)] = (Conv2dOutput[(189)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 360))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(209)] = (Conv2dOutput[(209)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 380))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(229)] = (Conv2dOutput[(229)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 380))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(249)] = (Conv2dOutput[(249)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 400))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(269)] = (Conv2dOutput[(269)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 400))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(10)] = (Conv2dOutput[(10)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 280))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(30)] = (Conv2dOutput[(30)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 280))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(50)] = (Conv2dOutput[(50)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 300))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(70)] = (Conv2dOutput[(70)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 300))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(90)] = (Conv2dOutput[(90)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 320))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(110)] = (Conv2dOutput[(110)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 320))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(130)] = (Conv2dOutput[(130)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 340))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(150)] = (Conv2dOutput[(150)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 340))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(170)] = (Conv2dOutput[(170)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 360))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(190)] = (Conv2dOutput[(190)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 360))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(210)] = (Conv2dOutput[(210)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 380))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(230)] = (Conv2dOutput[(230)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 380))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(250)] = (Conv2dOutput[(250)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 400))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(270)] = (Conv2dOutput[(270)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 400))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(11)] = (Conv2dOutput[(11)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 280))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(31)] = (Conv2dOutput[(31)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 280))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(51)] = (Conv2dOutput[(51)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 300))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(71)] = (Conv2dOutput[(71)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 300))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(91)] = (Conv2dOutput[(91)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 320))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(111)] = (Conv2dOutput[(111)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 320))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(131)] = (Conv2dOutput[(131)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 340))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(151)] = (Conv2dOutput[(151)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 340))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(171)] = (Conv2dOutput[(171)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 360))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(191)] = (Conv2dOutput[(191)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 360))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(211)] = (Conv2dOutput[(211)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 380))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(231)] = (Conv2dOutput[(231)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 380))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(251)] = (Conv2dOutput[(251)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 400))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(271)] = (Conv2dOutput[(271)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 400))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(12)] = (Conv2dOutput[(12)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 420))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(32)] = (Conv2dOutput[(32)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(52)] = (Conv2dOutput[(52)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 440))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(72)] = (Conv2dOutput[(72)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 440))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(92)] = (Conv2dOutput[(92)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 460))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(112)] = (Conv2dOutput[(112)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 460))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(132)] = (Conv2dOutput[(132)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 480))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(152)] = (Conv2dOutput[(152)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 480))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(172)] = (Conv2dOutput[(172)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 500))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(192)] = (Conv2dOutput[(192)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 500))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(212)] = (Conv2dOutput[(212)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 520))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(232)] = (Conv2dOutput[(232)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 520))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(252)] = (Conv2dOutput[(252)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 540))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(272)] = (Conv2dOutput[(272)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 540))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(13)] = (Conv2dOutput[(13)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(33)] = (Conv2dOutput[(33)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(53)] = (Conv2dOutput[(53)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 440))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(73)] = (Conv2dOutput[(73)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 440))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(93)] = (Conv2dOutput[(93)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 460))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(113)] = (Conv2dOutput[(113)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 460))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(133)] = (Conv2dOutput[(133)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 480))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(153)] = (Conv2dOutput[(153)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 480))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(173)] = (Conv2dOutput[(173)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 500))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(193)] = (Conv2dOutput[(193)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 500))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(213)] = (Conv2dOutput[(213)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 520))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(233)] = (Conv2dOutput[(233)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 520))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(253)] = (Conv2dOutput[(253)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 540))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(273)] = (Conv2dOutput[(273)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 540))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(14)] = (Conv2dOutput[(14)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(34)] = (Conv2dOutput[(34)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(54)] = (Conv2dOutput[(54)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 440))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(74)] = (Conv2dOutput[(74)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 440))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(94)] = (Conv2dOutput[(94)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 460))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(114)] = (Conv2dOutput[(114)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 460))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(134)] = (Conv2dOutput[(134)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 480))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(154)] = (Conv2dOutput[(154)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 480))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(174)] = (Conv2dOutput[(174)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 500))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(194)] = (Conv2dOutput[(194)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 500))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(214)] = (Conv2dOutput[(214)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 520))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(234)] = (Conv2dOutput[(234)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 520))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(254)] = (Conv2dOutput[(254)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 540))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(274)] = (Conv2dOutput[(274)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 540))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(15)] = (Conv2dOutput[(15)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(35)] = (Conv2dOutput[(35)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 420))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(55)] = (Conv2dOutput[(55)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 440))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(75)] = (Conv2dOutput[(75)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 440))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(95)] = (Conv2dOutput[(95)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 460))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(115)] = (Conv2dOutput[(115)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 460))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(135)] = (Conv2dOutput[(135)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 480))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(155)] = (Conv2dOutput[(155)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 480))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(175)] = (Conv2dOutput[(175)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 500))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(195)] = (Conv2dOutput[(195)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 500))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(215)] = (Conv2dOutput[(215)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 520))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(235)] = (Conv2dOutput[(235)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 520))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(255)] = (Conv2dOutput[(255)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 540))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(275)] = (Conv2dOutput[(275)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 540))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(16)] = (Conv2dOutput[(16)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 560))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(36)] = (Conv2dOutput[(36)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 560))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(56)] = (Conv2dOutput[(56)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 580))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(76)] = (Conv2dOutput[(76)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 580))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(96)] = (Conv2dOutput[(96)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 600))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(116)] = (Conv2dOutput[(116)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(136)] = (Conv2dOutput[(136)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 620))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(156)] = (Conv2dOutput[(156)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 620))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(176)] = (Conv2dOutput[(176)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 640))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(196)] = (Conv2dOutput[(196)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 640))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(216)] = (Conv2dOutput[(216)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 660))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(236)] = (Conv2dOutput[(236)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 660))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(256)] = (Conv2dOutput[(256)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 680))] * placeholder_shared[(((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)))]));
      Conv2dOutput[(276)] = (Conv2dOutput[(276)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 680))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 32))]));
      Conv2dOutput[(17)] = (Conv2dOutput[(17)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 560))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(37)] = (Conv2dOutput[(37)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 560))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(57)] = (Conv2dOutput[(57)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 580))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(77)] = (Conv2dOutput[(77)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 580))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(97)] = (Conv2dOutput[(97)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(117)] = (Conv2dOutput[(117)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(137)] = (Conv2dOutput[(137)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 620))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(157)] = (Conv2dOutput[(157)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 620))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(177)] = (Conv2dOutput[(177)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 640))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(197)] = (Conv2dOutput[(197)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 640))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(217)] = (Conv2dOutput[(217)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 660))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(237)] = (Conv2dOutput[(237)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 660))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(257)] = (Conv2dOutput[(257)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 680))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 1))]));
      Conv2dOutput[(277)] = (Conv2dOutput[(277)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 680))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 33))]));
      Conv2dOutput[(18)] = (Conv2dOutput[(18)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 560))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(38)] = (Conv2dOutput[(38)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 560))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(58)] = (Conv2dOutput[(58)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 580))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(78)] = (Conv2dOutput[(78)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 580))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(98)] = (Conv2dOutput[(98)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(118)] = (Conv2dOutput[(118)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(138)] = (Conv2dOutput[(138)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 620))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(158)] = (Conv2dOutput[(158)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 620))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(178)] = (Conv2dOutput[(178)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 640))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(198)] = (Conv2dOutput[(198)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 640))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(218)] = (Conv2dOutput[(218)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 660))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(238)] = (Conv2dOutput[(238)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 660))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(258)] = (Conv2dOutput[(258)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 680))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 2))]));
      Conv2dOutput[(278)] = (Conv2dOutput[(278)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 680))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 34))]));
      Conv2dOutput[(19)] = (Conv2dOutput[(19)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 560))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(39)] = (Conv2dOutput[(39)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 560))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(59)] = (Conv2dOutput[(59)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 580))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(79)] = (Conv2dOutput[(79)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 580))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(99)] = (Conv2dOutput[(99)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(119)] = (Conv2dOutput[(119)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 600))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(139)] = (Conv2dOutput[(139)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 620))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(159)] = (Conv2dOutput[(159)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 620))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(179)] = (Conv2dOutput[(179)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 640))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(199)] = (Conv2dOutput[(199)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 640))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(219)] = (Conv2dOutput[(219)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 660))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(239)] = (Conv2dOutput[(239)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 660))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
      Conv2dOutput[(259)] = (Conv2dOutput[(259)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 680))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 3))]));
      Conv2dOutput[(279)] = (Conv2dOutput[(279)] + (PaddedInput_shared[(((((((int)threadIdx.x) >> 3) * 4) + rc_outer_inner) + 680))] * placeholder_shared[((((rc_outer_inner * 64) + ((((int)threadIdx.x) & 7) * 4)) + 35))]));
    }
  }
  for (int ax1_inner = 0; ax1_inner < 5; ++ax1_inner) {
    for (int ax3_inner = 0; ax3_inner < 4; ++ax3_inner) {
      T_relu[((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner))] = max((Conv2dOutput[(((ax1_inner * 4) + ax3_inner))] + placeholder2[((((((int)threadIdx.x) & 7) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 32))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 20))] + placeholder2[(((((((int)threadIdx.x) & 7) * 4) + ax3_inner) + 32))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 320))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 40))] + placeholder2[((((((int)threadIdx.x) & 7) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 352))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 60))] + placeholder2[(((((((int)threadIdx.x) & 7) * 4) + ax3_inner) + 32))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 640))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 80))] + placeholder2[((((((int)threadIdx.x) & 7) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 672))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 100))] + placeholder2[(((((((int)threadIdx.x) & 7) * 4) + ax3_inner) + 32))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 960))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 120))] + placeholder2[((((((int)threadIdx.x) & 7) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 992))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 140))] + placeholder2[(((((((int)threadIdx.x) & 7) * 4) + ax3_inner) + 32))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 1280))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 160))] + placeholder2[((((((int)threadIdx.x) & 7) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 1312))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 180))] + placeholder2[(((((((int)threadIdx.x) & 7) * 4) + ax3_inner) + 32))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 1600))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 200))] + placeholder2[((((((int)threadIdx.x) & 7) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 1632))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 220))] + placeholder2[(((((((int)threadIdx.x) & 7) * 4) + ax3_inner) + 32))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 1920))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 240))] + placeholder2[((((((int)threadIdx.x) & 7) * 4) + ax3_inner))]), 0.000000e+00f);
      T_relu[(((((((((int)blockIdx.x) * 11200) + (ax1_inner * 2240)) + ((((int)threadIdx.x) >> 3) * 64)) + ((((int)threadIdx.x) & 7) * 4)) + ax3_inner) + 1952))] = max((Conv2dOutput[((((ax1_inner * 4) + ax3_inner) + 260))] + placeholder2[(((((((int)threadIdx.x) & 7) * 4) + ax3_inner) + 32))]), 0.000000e+00f);
    }
  }
}


