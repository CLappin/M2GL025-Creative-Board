// Copyright (c) 2017, Microsemi Corporation
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL MICROSEMI CORPORATIONM BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// Description:
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
`define RANDOMIZE
`timescale 1ns/10ps
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_FPU(
  input         clock,
  input         reset,
  input  [31:0] io_inst,
  input  [31:0] io_fromint_data,
  input  [2:0]  io_fcsr_rm,
  output        io_fcsr_flags_valid,
  output [4:0]  io_fcsr_flags_bits,
  output [31:0] io_store_data,
  output [31:0] io_toint_data,
  input         io_dmem_resp_val,
  input  [4:0]  io_dmem_resp_tag,
  input  [31:0] io_dmem_resp_data,
  input         io_valid,
  output        io_fcsr_rdy,
  output        io_nack_mem,
  output        io_illegal_rm,
  input         io_killx,
  input         io_killm,
  output        io_dec_wen,
  output        io_dec_ren1,
  output        io_dec_ren2,
  output        io_dec_ren3,
  output        io_sboard_set,
  output        io_sboard_clr,
  output [4:0]  io_sboard_clra,
  output        io_cp_req_ready,
  input         io_cp_req_valid,
  input         io_cp_req_bits_ren2,
  input         io_cp_req_bits_ren3,
  input         io_cp_req_bits_swap23,
  input         io_cp_req_bits_singleOut,
  input         io_cp_req_bits_fromint,
  input         io_cp_req_bits_toint,
  input         io_cp_req_bits_fastpipe,
  input         io_cp_req_bits_fma,
  input         io_cp_req_bits_div,
  input         io_cp_req_bits_sqrt,
  input         io_cp_req_bits_wflags,
  input  [2:0]  io_cp_req_bits_rm,
  input  [1:0]  io_cp_req_bits_fmaCmd,
  input  [1:0]  io_cp_req_bits_typ,
  input  [32:0] io_cp_req_bits_in1,
  input  [32:0] io_cp_req_bits_in2,
  input  [32:0] io_cp_req_bits_in3
);
  reg  ex_reg_valid;
  reg [31:0] _RAND_0;
  wire  req_valid;
  reg [31:0] ex_reg_inst;
  reg [31:0] _RAND_1;
  wire [31:0] _GEN_0;
  wire  ex_cp_valid;
  reg  mem_cp_valid;
  reg [31:0] _RAND_2;
  reg  wb_cp_valid;
  reg [31:0] _RAND_3;
  reg  mem_reg_valid;
  reg [31:0] _RAND_4;
  wire  _T_45;
  wire  _T_47;
  wire  killm;
  wire  _T_48;
  wire  killx;
  wire  _T_50;
  wire  _T_51;
  wire  _T_52;
  reg [31:0] mem_reg_inst;
  reg [31:0] _RAND_5;
  wire [31:0] _GEN_1;
  wire  _T_55;
  wire  _T_56;
  wire  _T_57;
  reg  wb_reg_valid;
  reg [31:0] _RAND_6;
  wire [31:0] fp_decoder_io_inst;
  wire  fp_decoder_io_sigs_wen;
  wire  fp_decoder_io_sigs_ren1;
  wire  fp_decoder_io_sigs_ren2;
  wire  fp_decoder_io_sigs_ren3;
  wire  fp_decoder_io_sigs_swap12;
  wire  fp_decoder_io_sigs_swap23;
  wire  fp_decoder_io_sigs_singleOut;
  wire  fp_decoder_io_sigs_fromint;
  wire  fp_decoder_io_sigs_toint;
  wire  fp_decoder_io_sigs_fastpipe;
  wire  fp_decoder_io_sigs_fma;
  wire  fp_decoder_io_sigs_div;
  wire  fp_decoder_io_sigs_sqrt;
  wire  fp_decoder_io_sigs_wflags;
  reg  _T_64_ren2;
  reg [31:0] _RAND_7;
  reg  _T_64_ren3;
  reg [31:0] _RAND_8;
  reg  _T_64_swap23;
  reg [31:0] _RAND_9;
  reg  _T_64_singleOut;
  reg [31:0] _RAND_10;
  reg  _T_64_fromint;
  reg [31:0] _RAND_11;
  reg  _T_64_toint;
  reg [31:0] _RAND_12;
  reg  _T_64_fastpipe;
  reg [31:0] _RAND_13;
  reg  _T_64_fma;
  reg [31:0] _RAND_14;
  reg  _T_64_div;
  reg [31:0] _RAND_15;
  reg  _T_64_sqrt;
  reg [31:0] _RAND_16;
  reg  _T_64_wflags;
  reg [31:0] _RAND_17;
  wire  _GEN_5;
  wire  _GEN_6;
  wire  _GEN_8;
  wire  _GEN_10;
  wire  _GEN_11;
  wire  _GEN_12;
  wire  _GEN_13;
  wire  _GEN_14;
  wire  _GEN_15;
  wire  _GEN_16;
  wire  _GEN_17;
  wire  ex_ctrl_ren2;
  wire  ex_ctrl_ren3;
  wire  ex_ctrl_swap23;
  wire  ex_ctrl_singleOut;
  wire  ex_ctrl_fromint;
  wire  ex_ctrl_toint;
  wire  ex_ctrl_fastpipe;
  wire  ex_ctrl_fma;
  wire  ex_ctrl_div;
  wire  ex_ctrl_sqrt;
  wire  ex_ctrl_wflags;
  reg  mem_ctrl_singleOut;
  reg [31:0] _RAND_18;
  reg  mem_ctrl_fromint;
  reg [31:0] _RAND_19;
  reg  mem_ctrl_toint;
  reg [31:0] _RAND_20;
  reg  mem_ctrl_fastpipe;
  reg [31:0] _RAND_21;
  reg  mem_ctrl_fma;
  reg [31:0] _RAND_22;
  reg  mem_ctrl_div;
  reg [31:0] _RAND_23;
  reg  mem_ctrl_sqrt;
  reg [31:0] _RAND_24;
  reg  mem_ctrl_wflags;
  reg [31:0] _RAND_25;
  wire  _GEN_26;
  wire  _GEN_27;
  wire  _GEN_28;
  wire  _GEN_29;
  wire  _GEN_30;
  wire  _GEN_31;
  wire  _GEN_32;
  wire  _GEN_33;
  reg  wb_ctrl_toint;
  reg [31:0] _RAND_26;
  wire  _GEN_44;
  reg  load_wb;
  reg [31:0] _RAND_27;
  reg [31:0] load_wb_data;
  reg [31:0] _RAND_28;
  wire [31:0] _GEN_51;
  reg [4:0] load_wb_tag;
  reg [31:0] _RAND_29;
  wire [4:0] _GEN_52;
  reg [32:0] regfile [0:31];
  reg [63:0] _RAND_30;
  wire [32:0] regfile_ex_rs_0_data;
  wire [4:0] regfile_ex_rs_0_addr;
  wire [32:0] regfile_ex_rs_1_data;
  wire [4:0] regfile_ex_rs_1_addr;
  wire [32:0] regfile_ex_rs_2_data;
  wire [4:0] regfile_ex_rs_2_addr;
  wire [32:0] regfile__T_256_data;
  wire [4:0] regfile__T_256_addr;
  wire  regfile__T_256_mask;
  wire  regfile__T_256_en;
  wire [32:0] regfile__T_474_data;
  wire [4:0] regfile__T_474_addr;
  wire  regfile__T_474_mask;
  wire  regfile__T_474_en;
  wire  _T_76;
  wire [7:0] _T_77;
  wire [22:0] _T_78;
  wire  _T_80;
  wire  _T_82;
  wire [15:0] _T_83;
  wire [7:0] _T_88;
  wire [15:0] _T_89;
  wire [7:0] _T_90;
  wire [15:0] _GEN_153;
  wire [15:0] _T_91;
  wire [15:0] _T_93;
  wire [15:0] _T_94;
  wire [11:0] _T_98;
  wire [15:0] _GEN_154;
  wire [15:0] _T_99;
  wire [11:0] _T_100;
  wire [15:0] _GEN_155;
  wire [15:0] _T_101;
  wire [15:0] _T_103;
  wire [15:0] _T_104;
  wire [13:0] _T_108;
  wire [15:0] _GEN_156;
  wire [15:0] _T_109;
  wire [13:0] _T_110;
  wire [15:0] _GEN_157;
  wire [15:0] _T_111;
  wire [15:0] _T_113;
  wire [15:0] _T_114;
  wire [14:0] _T_118;
  wire [15:0] _GEN_158;
  wire [15:0] _T_119;
  wire [14:0] _T_120;
  wire [15:0] _GEN_159;
  wire [15:0] _T_121;
  wire [15:0] _T_123;
  wire [15:0] _T_124;
  wire [6:0] _T_125;
  wire [3:0] _T_126;
  wire [1:0] _T_127;
  wire  _T_128;
  wire  _T_129;
  wire [1:0] _T_130;
  wire [1:0] _T_131;
  wire  _T_132;
  wire  _T_133;
  wire [1:0] _T_134;
  wire [3:0] _T_135;
  wire [2:0] _T_136;
  wire [1:0] _T_137;
  wire  _T_138;
  wire  _T_139;
  wire [1:0] _T_140;
  wire  _T_141;
  wire [2:0] _T_142;
  wire [6:0] _T_143;
  wire [22:0] _T_144;
  wire  _T_145;
  wire  _T_146;
  wire  _T_147;
  wire  _T_148;
  wire  _T_149;
  wire  _T_150;
  wire  _T_151;
  wire  _T_152;
  wire  _T_153;
  wire  _T_154;
  wire  _T_155;
  wire  _T_156;
  wire  _T_157;
  wire  _T_158;
  wire  _T_159;
  wire  _T_160;
  wire  _T_161;
  wire  _T_162;
  wire  _T_163;
  wire  _T_164;
  wire  _T_165;
  wire  _T_166;
  wire [4:0] _T_191;
  wire [4:0] _T_192;
  wire [4:0] _T_193;
  wire [4:0] _T_194;
  wire [4:0] _T_195;
  wire [4:0] _T_196;
  wire [4:0] _T_197;
  wire [4:0] _T_198;
  wire [4:0] _T_199;
  wire [4:0] _T_200;
  wire [4:0] _T_201;
  wire [4:0] _T_202;
  wire [4:0] _T_203;
  wire [4:0] _T_204;
  wire [4:0] _T_205;
  wire [4:0] _T_206;
  wire [4:0] _T_207;
  wire [4:0] _T_208;
  wire [4:0] _T_209;
  wire [4:0] _T_210;
  wire [4:0] _T_211;
  wire [4:0] _T_212;
  wire [53:0] _GEN_160;
  wire [53:0] _T_213;
  wire [21:0] _T_214;
  wire [22:0] _GEN_161;
  wire [22:0] _T_215;
  wire [8:0] _GEN_162;
  wire [8:0] _T_217;
  wire [8:0] _T_218;
  wire [1:0] _T_222;
  wire [7:0] _GEN_163;
  wire [7:0] _T_223;
  wire [8:0] _GEN_164;
  wire [9:0] _T_224;
  wire [8:0] _T_225;
  wire  _T_226;
  wire [1:0] _T_227;
  wire  _T_229;
  wire  _T_233;
  wire  _T_234;
  wire [9:0] _T_237;
  wire  _T_240;
  wire [22:0] _T_241;
  wire [1:0] _T_242;
  wire [24:0] _T_243;
  wire [2:0] _T_245;
  wire [2:0] _T_246;
  wire [2:0] _GEN_165;
  wire [2:0] _T_250;
  wire [5:0] _T_251;
  wire [22:0] _T_252;
  wire [28:0] _T_253;
  wire [3:0] _T_254;
  wire [32:0] _T_255;
  reg [4:0] ex_ra_0;
  reg [31:0] _RAND_31;
  reg [4:0] ex_ra_1;
  reg [31:0] _RAND_32;
  reg [4:0] ex_ra_2;
  reg [31:0] _RAND_33;
  wire  _T_274;
  wire [4:0] _T_275;
  wire [4:0] _GEN_57;
  wire [4:0] _GEN_58;
  wire [4:0] _GEN_59;
  wire [4:0] _GEN_60;
  wire [4:0] _T_277;
  wire [4:0] _GEN_61;
  wire [4:0] _GEN_62;
  wire  _T_282;
  wire  _T_283;
  wire [4:0] _GEN_63;
  wire [4:0] _GEN_64;
  wire [4:0] _GEN_65;
  wire [4:0] _GEN_66;
  wire [4:0] _T_285;
  wire [4:0] _GEN_67;
  wire [4:0] _GEN_68;
  wire [4:0] _GEN_69;
  wire [4:0] _GEN_70;
  wire [2:0] _T_286;
  wire  _T_288;
  wire [2:0] ex_rm;
  wire  sfma_clock;
  wire  sfma_reset;
  wire  sfma_io_in_valid;
  wire  sfma_io_in_bits_ren3;
  wire  sfma_io_in_bits_swap23;
  wire [2:0] sfma_io_in_bits_rm;
  wire [1:0] sfma_io_in_bits_fmaCmd;
  wire [32:0] sfma_io_in_bits_in1;
  wire [32:0] sfma_io_in_bits_in2;
  wire [32:0] sfma_io_in_bits_in3;
  wire [32:0] sfma_io_out_bits_data;
  wire [4:0] sfma_io_out_bits_exc;
  wire  _T_290;
  wire  _T_291;
  wire [32:0] _T_298;
  wire [32:0] _T_301;
  wire [32:0] _T_304;
  wire [1:0] _T_305;
  wire [1:0] _T_306;
  wire  _T_308;
  wire  _T_309;
  wire  _T_310;
  wire [1:0] _GEN_166;
  wire [1:0] _T_311;
  wire [32:0] _GEN_71;
  wire [32:0] _GEN_72;
  wire  _GEN_76;
  wire  _GEN_77;
  wire  _GEN_79;
  wire  _GEN_88;
  wire [2:0] _GEN_89;
  wire [1:0] _GEN_90;
  wire [1:0] _GEN_91;
  wire [32:0] _GEN_92;
  wire [32:0] _GEN_93;
  wire [32:0] _GEN_94;
  wire  fpiu_clock;
  wire  fpiu_io_in_valid;
  wire  fpiu_io_in_bits_ren2;
  wire  fpiu_io_in_bits_wflags;
  wire [2:0] fpiu_io_in_bits_rm;
  wire [1:0] fpiu_io_in_bits_typ;
  wire [32:0] fpiu_io_in_bits_in1;
  wire [32:0] fpiu_io_in_bits_in2;
  wire [2:0] fpiu_io_out_bits_in_rm;
  wire [32:0] fpiu_io_out_bits_in_in1;
  wire [32:0] fpiu_io_out_bits_in_in2;
  wire  fpiu_io_out_bits_lt;
  wire [31:0] fpiu_io_out_bits_store;
  wire [31:0] fpiu_io_out_bits_toint;
  wire [4:0] fpiu_io_out_bits_exc;
  wire  _T_312;
  wire  _T_313;
  wire  _T_314;
  wire  _T_315;
  wire  _T_316;
  wire  ifpu_clock;
  wire  ifpu_reset;
  wire  ifpu_io_in_valid;
  wire  ifpu_io_in_bits_wflags;
  wire [2:0] ifpu_io_in_bits_rm;
  wire [1:0] ifpu_io_in_bits_typ;
  wire [32:0] ifpu_io_in_bits_in1;
  wire [32:0] ifpu_io_out_bits_data;
  wire [4:0] ifpu_io_out_bits_exc;
  wire  _T_340;
  wire [32:0] _T_341;
  wire  fpmu_clock;
  wire  fpmu_reset;
  wire  fpmu_io_in_valid;
  wire  fpmu_io_in_bits_wflags;
  wire [2:0] fpmu_io_in_bits_rm;
  wire [32:0] fpmu_io_in_bits_in1;
  wire [32:0] fpmu_io_in_bits_in2;
  wire [32:0] fpmu_io_out_bits_data;
  wire [4:0] fpmu_io_out_bits_exc;
  wire  fpmu_io_lt;
  wire  _T_342;
  reg [4:0] divSqrt_waddr;
  reg [31:0] _RAND_34;
  wire  _T_357;
  wire [1:0] _T_360;
  wire  _T_361;
  wire [1:0] _GEN_168;
  wire [1:0] memLatencyMask;
  reg [1:0] wen;
  reg [31:0] _RAND_35;
  reg [4:0] wbInfo_0_rd;
  reg [31:0] _RAND_36;
  reg  wbInfo_0_cp;
  reg [31:0] _RAND_37;
  reg [1:0] wbInfo_0_pipeid;
  reg [31:0] _RAND_38;
  reg [4:0] wbInfo_1_rd;
  reg [31:0] _RAND_39;
  reg  wbInfo_1_cp;
  reg [31:0] _RAND_40;
  reg [1:0] wbInfo_1_pipeid;
  reg [31:0] _RAND_41;
  wire  _T_371;
  wire  _T_372;
  wire  mem_wen;
  wire [1:0] _T_375;
  wire [1:0] _T_378;
  wire  _T_379;
  wire [2:0] _T_382;
  wire [1:0] _T_383;
  wire [2:0] _GEN_169;
  wire [2:0] _T_384;
  wire [2:0] _GEN_170;
  wire [2:0] _T_385;
  wire  _T_387;
  wire  _T_388;
  wire [2:0] _T_391;
  wire [2:0] _T_394;
  wire [3:0] _T_398;
  wire [2:0] _T_399;
  wire [3:0] _GEN_171;
  wire [3:0] _T_400;
  wire [3:0] _GEN_172;
  wire [3:0] _T_401;
  wire  _T_403;
  wire  _T_404;
  reg  write_port_busy;
  reg [31:0] _RAND_42;
  wire  _GEN_102;
  wire  _T_406;
  wire [4:0] _GEN_103;
  wire  _GEN_105;
  wire [1:0] _GEN_106;
  wire  _T_407;
  wire [1:0] _GEN_173;
  wire [1:0] _T_411;
  wire [1:0] _GEN_107;
  wire  _T_413;
  wire  _T_414;
  wire  _T_415;
  wire [1:0] _GEN_174;
  wire [1:0] _T_427;
  wire [4:0] _T_428;
  wire  _GEN_108;
  wire [1:0] _GEN_110;
  wire [4:0] _GEN_111;
  wire  _T_431;
  wire  _T_432;
  wire  _GEN_112;
  wire [1:0] _GEN_114;
  wire [4:0] _GEN_115;
  wire [1:0] _GEN_116;
  wire  _GEN_117;
  wire [1:0] _GEN_119;
  wire [4:0] _GEN_120;
  wire  _GEN_121;
  wire [1:0] _GEN_123;
  wire [4:0] _GEN_124;
  wire [4:0] waddr;
  wire  _T_449;
  wire [32:0] _T_450;
  wire  _T_452;
  wire [32:0] _T_453;
  wire  _T_455;
  wire [32:0] _T_456;
  wire [32:0] wdata;
  wire [4:0] _T_459;
  wire [4:0] _T_462;
  wire [4:0] wexc;
  wire  _T_466;
  wire  _T_467;
  wire  _T_468;
  wire  _T_469;
  wire  _T_479;
  wire  wb_toint_valid;
  reg [4:0] wb_toint_exc;
  reg [31:0] _RAND_43;
  wire [4:0] _GEN_131;
  wire  _T_481;
  wire  _T_483;
  wire [4:0] _T_485;
  wire [4:0] _T_487;
  wire [4:0] _T_488;
  wire [4:0] _T_491;
  wire [4:0] _T_492;
  wire  _T_493;
  wire  _T_495;
  wire  divSqrt_write_port_busy;
  wire  _T_496;
  wire  _T_497;
  wire  _T_498;
  wire  _T_500;
  wire  _T_503;
  wire  _T_504;
  wire  _T_506;
  wire  _T_507;
  wire  _T_508;
  wire  _T_510;
  wire  _T_511;
  reg  _T_516;
  reg [31:0] _RAND_44;
  wire  _T_517;
  wire  _T_524;
  wire [2:0] _T_525;
  wire  _T_528;
  wire  _T_529;
  wire  _T_530;
  wire  _T_533;
  wire  _T_535;
  wire  _T_536;
  wire  _T_537;
  reg  _T_539;
  reg [31:0] _RAND_45;
  wire  _T_541;
  wire  DivSqrtRecFN_small_clock;
  wire  DivSqrtRecFN_small_reset;
  wire  DivSqrtRecFN_small_io_inReady;
  wire  DivSqrtRecFN_small_io_inValid;
  wire  DivSqrtRecFN_small_io_sqrtOp;
  wire [32:0] DivSqrtRecFN_small_io_a;
  wire [32:0] DivSqrtRecFN_small_io_b;
  wire [2:0] DivSqrtRecFN_small_io_roundingMode;
  wire  DivSqrtRecFN_small_io_detectTininess;
  wire  DivSqrtRecFN_small_io_outValid_div;
  wire  DivSqrtRecFN_small_io_outValid_sqrt;
  wire [32:0] DivSqrtRecFN_small_io_out;
  wire [4:0] DivSqrtRecFN_small_io_exceptionFlags;
  wire  _T_543;
  wire  _T_544;
  wire  _T_546;
  wire  _T_548;
  wire  _T_549;
  wire  _T_552;
  wire  _T_554;
  wire  _GEN_133;
  wire [4:0] _GEN_134;
  wire  _T_556;
  wire  _T_558;
  wire  _GEN_135;
  wire [32:0] _GEN_136;
  wire [4:0] _GEN_137;
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_FPU_DECODER fp_decoder (
    .io_inst(fp_decoder_io_inst),
    .io_sigs_wen(fp_decoder_io_sigs_wen),
    .io_sigs_ren1(fp_decoder_io_sigs_ren1),
    .io_sigs_ren2(fp_decoder_io_sigs_ren2),
    .io_sigs_ren3(fp_decoder_io_sigs_ren3),
    .io_sigs_swap12(fp_decoder_io_sigs_swap12),
    .io_sigs_swap23(fp_decoder_io_sigs_swap23),
    .io_sigs_singleOut(fp_decoder_io_sigs_singleOut),
    .io_sigs_fromint(fp_decoder_io_sigs_fromint),
    .io_sigs_toint(fp_decoder_io_sigs_toint),
    .io_sigs_fastpipe(fp_decoder_io_sigs_fastpipe),
    .io_sigs_fma(fp_decoder_io_sigs_fma),
    .io_sigs_div(fp_decoder_io_sigs_div),
    .io_sigs_sqrt(fp_decoder_io_sigs_sqrt),
    .io_sigs_wflags(fp_decoder_io_sigs_wflags)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_FPUFMA_PIPE sfma (
    .clock(sfma_clock),
    .reset(sfma_reset),
    .io_in_valid(sfma_io_in_valid),
    .io_in_bits_ren3(sfma_io_in_bits_ren3),
    .io_in_bits_swap23(sfma_io_in_bits_swap23),
    .io_in_bits_rm(sfma_io_in_bits_rm),
    .io_in_bits_fmaCmd(sfma_io_in_bits_fmaCmd),
    .io_in_bits_in1(sfma_io_in_bits_in1),
    .io_in_bits_in2(sfma_io_in_bits_in2),
    .io_in_bits_in3(sfma_io_in_bits_in3),
    .io_out_bits_data(sfma_io_out_bits_data),
    .io_out_bits_exc(sfma_io_out_bits_exc)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_FP_TO_INT fpiu (
    .clock(fpiu_clock),
    .io_in_valid(fpiu_io_in_valid),
    .io_in_bits_ren2(fpiu_io_in_bits_ren2),
    .io_in_bits_wflags(fpiu_io_in_bits_wflags),
    .io_in_bits_rm(fpiu_io_in_bits_rm),
    .io_in_bits_typ(fpiu_io_in_bits_typ),
    .io_in_bits_in1(fpiu_io_in_bits_in1),
    .io_in_bits_in2(fpiu_io_in_bits_in2),
    .io_out_bits_in_rm(fpiu_io_out_bits_in_rm),
    .io_out_bits_in_in1(fpiu_io_out_bits_in_in1),
    .io_out_bits_in_in2(fpiu_io_out_bits_in_in2),
    .io_out_bits_lt(fpiu_io_out_bits_lt),
    .io_out_bits_store(fpiu_io_out_bits_store),
    .io_out_bits_toint(fpiu_io_out_bits_toint),
    .io_out_bits_exc(fpiu_io_out_bits_exc)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_INT_TO_FP ifpu (
    .clock(ifpu_clock),
    .reset(ifpu_reset),
    .io_in_valid(ifpu_io_in_valid),
    .io_in_bits_wflags(ifpu_io_in_bits_wflags),
    .io_in_bits_rm(ifpu_io_in_bits_rm),
    .io_in_bits_typ(ifpu_io_in_bits_typ),
    .io_in_bits_in1(ifpu_io_in_bits_in1),
    .io_out_bits_data(ifpu_io_out_bits_data),
    .io_out_bits_exc(ifpu_io_out_bits_exc)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_FP_TO_FP fpmu (
    .clock(fpmu_clock),
    .reset(fpmu_reset),
    .io_in_valid(fpmu_io_in_valid),
    .io_in_bits_wflags(fpmu_io_in_bits_wflags),
    .io_in_bits_rm(fpmu_io_in_bits_rm),
    .io_in_bits_in1(fpmu_io_in_bits_in1),
    .io_in_bits_in2(fpmu_io_in_bits_in2),
    .io_out_bits_data(fpmu_io_out_bits_data),
    .io_out_bits_exc(fpmu_io_out_bits_exc),
    .io_lt(fpmu_io_lt)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_DIV_SQRT_REC_FN_SMALL ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_DIV_SQRT_REC_FN_SMALL (
    .clock(DivSqrtRecFN_small_clock),
    .reset(DivSqrtRecFN_small_reset),
    .io_inReady(DivSqrtRecFN_small_io_inReady),
    .io_inValid(DivSqrtRecFN_small_io_inValid),
    .io_sqrtOp(DivSqrtRecFN_small_io_sqrtOp),
    .io_a(DivSqrtRecFN_small_io_a),
    .io_b(DivSqrtRecFN_small_io_b),
    .io_roundingMode(DivSqrtRecFN_small_io_roundingMode),
    .io_detectTininess(DivSqrtRecFN_small_io_detectTininess),
    .io_outValid_div(DivSqrtRecFN_small_io_outValid_div),
    .io_outValid_sqrt(DivSqrtRecFN_small_io_outValid_sqrt),
    .io_out(DivSqrtRecFN_small_io_out),
    .io_exceptionFlags(DivSqrtRecFN_small_io_exceptionFlags)
  );
  assign io_fcsr_flags_valid = _T_483;
  assign io_fcsr_flags_bits = _T_492;
  assign io_store_data = fpiu_io_out_bits_store;
  assign io_toint_data = fpiu_io_out_bits_toint;
  assign io_fcsr_rdy = _T_506;
  assign io_nack_mem = _T_508;
  assign io_illegal_rm = _T_537;
  assign io_dec_wen = fp_decoder_io_sigs_wen;
  assign io_dec_ren1 = fp_decoder_io_sigs_ren1;
  assign io_dec_ren2 = fp_decoder_io_sigs_ren2;
  assign io_dec_ren3 = fp_decoder_io_sigs_ren3;
  assign io_sboard_set = _T_517;
  assign io_sboard_clr = _T_524;
  assign io_sboard_clra = waddr;
  assign io_cp_req_ready = _T_479;
  assign req_valid = ex_reg_valid | io_cp_req_valid;
  assign _GEN_0 = io_valid ? io_inst : ex_reg_inst;
  assign ex_cp_valid = io_cp_req_ready & io_cp_req_valid;
  assign _T_45 = io_killm | io_nack_mem;
  assign _T_47 = mem_cp_valid == 1'h0;
  assign killm = _T_45 & _T_47;
  assign _T_48 = mem_reg_valid & killm;
  assign killx = io_killx | _T_48;
  assign _T_50 = killx == 1'h0;
  assign _T_51 = ex_reg_valid & _T_50;
  assign _T_52 = _T_51 | ex_cp_valid;
  assign _GEN_1 = ex_reg_valid ? ex_reg_inst : mem_reg_inst;
  assign _T_55 = killm == 1'h0;
  assign _T_56 = _T_55 | mem_cp_valid;
  assign _T_57 = mem_reg_valid & _T_56;
  assign fp_decoder_io_inst = io_inst;
  assign _GEN_5 = io_valid ? fp_decoder_io_sigs_ren2 : _T_64_ren2;
  assign _GEN_6 = io_valid ? fp_decoder_io_sigs_ren3 : _T_64_ren3;
  assign _GEN_8 = io_valid ? fp_decoder_io_sigs_swap23 : _T_64_swap23;
  assign _GEN_10 = io_valid ? fp_decoder_io_sigs_singleOut : _T_64_singleOut;
  assign _GEN_11 = io_valid ? fp_decoder_io_sigs_fromint : _T_64_fromint;
  assign _GEN_12 = io_valid ? fp_decoder_io_sigs_toint : _T_64_toint;
  assign _GEN_13 = io_valid ? fp_decoder_io_sigs_fastpipe : _T_64_fastpipe;
  assign _GEN_14 = io_valid ? fp_decoder_io_sigs_fma : _T_64_fma;
  assign _GEN_15 = io_valid ? fp_decoder_io_sigs_div : _T_64_div;
  assign _GEN_16 = io_valid ? fp_decoder_io_sigs_sqrt : _T_64_sqrt;
  assign _GEN_17 = io_valid ? fp_decoder_io_sigs_wflags : _T_64_wflags;
  assign ex_ctrl_ren2 = ex_cp_valid ? io_cp_req_bits_ren2 : _T_64_ren2;
  assign ex_ctrl_ren3 = ex_cp_valid ? io_cp_req_bits_ren3 : _T_64_ren3;
  assign ex_ctrl_swap23 = ex_cp_valid ? io_cp_req_bits_swap23 : _T_64_swap23;
  assign ex_ctrl_singleOut = ex_cp_valid ? io_cp_req_bits_singleOut : _T_64_singleOut;
  assign ex_ctrl_fromint = ex_cp_valid ? io_cp_req_bits_fromint : _T_64_fromint;
  assign ex_ctrl_toint = ex_cp_valid ? io_cp_req_bits_toint : _T_64_toint;
  assign ex_ctrl_fastpipe = ex_cp_valid ? io_cp_req_bits_fastpipe : _T_64_fastpipe;
  assign ex_ctrl_fma = ex_cp_valid ? io_cp_req_bits_fma : _T_64_fma;
  assign ex_ctrl_div = ex_cp_valid ? io_cp_req_bits_div : _T_64_div;
  assign ex_ctrl_sqrt = ex_cp_valid ? io_cp_req_bits_sqrt : _T_64_sqrt;
  assign ex_ctrl_wflags = ex_cp_valid ? io_cp_req_bits_wflags : _T_64_wflags;
  assign _GEN_26 = req_valid ? ex_ctrl_singleOut : mem_ctrl_singleOut;
  assign _GEN_27 = req_valid ? ex_ctrl_fromint : mem_ctrl_fromint;
  assign _GEN_28 = req_valid ? ex_ctrl_toint : mem_ctrl_toint;
  assign _GEN_29 = req_valid ? ex_ctrl_fastpipe : mem_ctrl_fastpipe;
  assign _GEN_30 = req_valid ? ex_ctrl_fma : mem_ctrl_fma;
  assign _GEN_31 = req_valid ? ex_ctrl_div : mem_ctrl_div;
  assign _GEN_32 = req_valid ? ex_ctrl_sqrt : mem_ctrl_sqrt;
  assign _GEN_33 = req_valid ? ex_ctrl_wflags : mem_ctrl_wflags;
  assign _GEN_44 = mem_reg_valid ? mem_ctrl_toint : wb_ctrl_toint;
  assign _GEN_51 = io_dmem_resp_val ? io_dmem_resp_data : load_wb_data;
  assign _GEN_52 = io_dmem_resp_val ? io_dmem_resp_tag : load_wb_tag;
  assign regfile_ex_rs_0_addr = ex_ra_0;
  assign regfile_ex_rs_0_data = regfile[regfile_ex_rs_0_addr];
  assign regfile_ex_rs_1_addr = ex_ra_1;
  assign regfile_ex_rs_1_data = regfile[regfile_ex_rs_1_addr];
  assign regfile_ex_rs_2_addr = ex_ra_2;
  assign regfile_ex_rs_2_data = regfile[regfile_ex_rs_2_addr];
  assign regfile__T_256_data = _T_255;
  assign regfile__T_256_addr = load_wb_tag;
  assign regfile__T_256_mask = load_wb;
  assign regfile__T_256_en = load_wb;
  assign regfile__T_474_data = wdata;
  assign regfile__T_474_addr = waddr;
  assign regfile__T_474_mask = _T_469;
  assign regfile__T_474_en = _T_469;
  assign _T_76 = load_wb_data[31];
  assign _T_77 = load_wb_data[30:23];
  assign _T_78 = load_wb_data[22:0];
  assign _T_80 = _T_77 == 8'h0;
  assign _T_82 = _T_78 == 23'h0;
  assign _T_83 = _T_78[15:0];
  assign _T_88 = _T_83[15:8];
  assign _T_89 = {{8'd0}, _T_88};
  assign _T_90 = _T_83[7:0];
  assign _GEN_153 = {{8'd0}, _T_90};
  assign _T_91 = _GEN_153 << 8;
  assign _T_93 = _T_91 & 16'hff00;
  assign _T_94 = _T_89 | _T_93;
  assign _T_98 = _T_94[15:4];
  assign _GEN_154 = {{4'd0}, _T_98};
  assign _T_99 = _GEN_154 & 16'hf0f;
  assign _T_100 = _T_94[11:0];
  assign _GEN_155 = {{4'd0}, _T_100};
  assign _T_101 = _GEN_155 << 4;
  assign _T_103 = _T_101 & 16'hf0f0;
  assign _T_104 = _T_99 | _T_103;
  assign _T_108 = _T_104[15:2];
  assign _GEN_156 = {{2'd0}, _T_108};
  assign _T_109 = _GEN_156 & 16'h3333;
  assign _T_110 = _T_104[13:0];
  assign _GEN_157 = {{2'd0}, _T_110};
  assign _T_111 = _GEN_157 << 2;
  assign _T_113 = _T_111 & 16'hcccc;
  assign _T_114 = _T_109 | _T_113;
  assign _T_118 = _T_114[15:1];
  assign _GEN_158 = {{1'd0}, _T_118};
  assign _T_119 = _GEN_158 & 16'h5555;
  assign _T_120 = _T_114[14:0];
  assign _GEN_159 = {{1'd0}, _T_120};
  assign _T_121 = _GEN_159 << 1;
  assign _T_123 = _T_121 & 16'haaaa;
  assign _T_124 = _T_119 | _T_123;
  assign _T_125 = _T_78[22:16];
  assign _T_126 = _T_125[3:0];
  assign _T_127 = _T_126[1:0];
  assign _T_128 = _T_127[0];
  assign _T_129 = _T_127[1];
  assign _T_130 = {_T_128,_T_129};
  assign _T_131 = _T_126[3:2];
  assign _T_132 = _T_131[0];
  assign _T_133 = _T_131[1];
  assign _T_134 = {_T_132,_T_133};
  assign _T_135 = {_T_130,_T_134};
  assign _T_136 = _T_125[6:4];
  assign _T_137 = _T_136[1:0];
  assign _T_138 = _T_137[0];
  assign _T_139 = _T_137[1];
  assign _T_140 = {_T_138,_T_139};
  assign _T_141 = _T_136[2];
  assign _T_142 = {_T_140,_T_141};
  assign _T_143 = {_T_135,_T_142};
  assign _T_144 = {_T_124,_T_143};
  assign _T_145 = _T_144[0];
  assign _T_146 = _T_144[1];
  assign _T_147 = _T_144[2];
  assign _T_148 = _T_144[3];
  assign _T_149 = _T_144[4];
  assign _T_150 = _T_144[5];
  assign _T_151 = _T_144[6];
  assign _T_152 = _T_144[7];
  assign _T_153 = _T_144[8];
  assign _T_154 = _T_144[9];
  assign _T_155 = _T_144[10];
  assign _T_156 = _T_144[11];
  assign _T_157 = _T_144[12];
  assign _T_158 = _T_144[13];
  assign _T_159 = _T_144[14];
  assign _T_160 = _T_144[15];
  assign _T_161 = _T_144[16];
  assign _T_162 = _T_144[17];
  assign _T_163 = _T_144[18];
  assign _T_164 = _T_144[19];
  assign _T_165 = _T_144[20];
  assign _T_166 = _T_144[21];
  assign _T_191 = _T_166 ? 5'h15 : 5'h16;
  assign _T_192 = _T_165 ? 5'h14 : _T_191;
  assign _T_193 = _T_164 ? 5'h13 : _T_192;
  assign _T_194 = _T_163 ? 5'h12 : _T_193;
  assign _T_195 = _T_162 ? 5'h11 : _T_194;
  assign _T_196 = _T_161 ? 5'h10 : _T_195;
  assign _T_197 = _T_160 ? 5'hf : _T_196;
  assign _T_198 = _T_159 ? 5'he : _T_197;
  assign _T_199 = _T_158 ? 5'hd : _T_198;
  assign _T_200 = _T_157 ? 5'hc : _T_199;
  assign _T_201 = _T_156 ? 5'hb : _T_200;
  assign _T_202 = _T_155 ? 5'ha : _T_201;
  assign _T_203 = _T_154 ? 5'h9 : _T_202;
  assign _T_204 = _T_153 ? 5'h8 : _T_203;
  assign _T_205 = _T_152 ? 5'h7 : _T_204;
  assign _T_206 = _T_151 ? 5'h6 : _T_205;
  assign _T_207 = _T_150 ? 5'h5 : _T_206;
  assign _T_208 = _T_149 ? 5'h4 : _T_207;
  assign _T_209 = _T_148 ? 5'h3 : _T_208;
  assign _T_210 = _T_147 ? 5'h2 : _T_209;
  assign _T_211 = _T_146 ? 5'h1 : _T_210;
  assign _T_212 = _T_145 ? 5'h0 : _T_211;
  assign _GEN_160 = {{31'd0}, _T_78};
  assign _T_213 = _GEN_160 << _T_212;
  assign _T_214 = _T_213[21:0];
  assign _GEN_161 = {{1'd0}, _T_214};
  assign _T_215 = _GEN_161 << 1;
  assign _GEN_162 = {{4'd0}, _T_212};
  assign _T_217 = _GEN_162 ^ 9'h1ff;
  assign _T_218 = _T_80 ? _T_217 : {{1'd0}, _T_77};
  assign _T_222 = _T_80 ? 2'h2 : 2'h1;
  assign _GEN_163 = {{6'd0}, _T_222};
  assign _T_223 = 8'h80 | _GEN_163;
  assign _GEN_164 = {{1'd0}, _T_223};
  assign _T_224 = _T_218 + _GEN_164;
  assign _T_225 = _T_224[8:0];
  assign _T_226 = _T_80 & _T_82;
  assign _T_227 = _T_225[8:7];
  assign _T_229 = _T_227 == 2'h3;
  assign _T_233 = _T_82 == 1'h0;
  assign _T_234 = _T_229 & _T_233;
  assign _T_237 = {1'b0,$signed(_T_225)};
  assign _T_240 = _T_226 == 1'h0;
  assign _T_241 = _T_80 ? _T_215 : _T_78;
  assign _T_242 = {1'h0,_T_240};
  assign _T_243 = {_T_242,_T_241};
  assign _T_245 = _T_237[8:6];
  assign _T_246 = _T_226 ? 3'h0 : _T_245;
  assign _GEN_165 = {{2'd0}, _T_234};
  assign _T_250 = _T_246 | _GEN_165;
  assign _T_251 = _T_237[5:0];
  assign _T_252 = _T_243[22:0];
  assign _T_253 = {_T_251,_T_252};
  assign _T_254 = {_T_76,_T_250};
  assign _T_255 = {_T_254,_T_253};
  assign _T_274 = fp_decoder_io_sigs_swap12 == 1'h0;
  assign _T_275 = io_inst[19:15];
  assign _GEN_57 = _T_274 ? _T_275 : ex_ra_0;
  assign _GEN_58 = fp_decoder_io_sigs_swap12 ? _T_275 : ex_ra_1;
  assign _GEN_59 = fp_decoder_io_sigs_ren1 ? _GEN_57 : ex_ra_0;
  assign _GEN_60 = fp_decoder_io_sigs_ren1 ? _GEN_58 : ex_ra_1;
  assign _T_277 = io_inst[24:20];
  assign _GEN_61 = fp_decoder_io_sigs_swap12 ? _T_277 : _GEN_59;
  assign _GEN_62 = fp_decoder_io_sigs_swap23 ? _T_277 : ex_ra_2;
  assign _T_282 = fp_decoder_io_sigs_swap23 == 1'h0;
  assign _T_283 = _T_274 & _T_282;
  assign _GEN_63 = _T_283 ? _T_277 : _GEN_60;
  assign _GEN_64 = fp_decoder_io_sigs_ren2 ? _GEN_61 : _GEN_59;
  assign _GEN_65 = fp_decoder_io_sigs_ren2 ? _GEN_62 : ex_ra_2;
  assign _GEN_66 = fp_decoder_io_sigs_ren2 ? _GEN_63 : _GEN_60;
  assign _T_285 = io_inst[31:27];
  assign _GEN_67 = fp_decoder_io_sigs_ren3 ? _T_285 : _GEN_65;
  assign _GEN_68 = io_valid ? _GEN_64 : ex_ra_0;
  assign _GEN_69 = io_valid ? _GEN_66 : ex_ra_1;
  assign _GEN_70 = io_valid ? _GEN_67 : ex_ra_2;
  assign _T_286 = ex_reg_inst[14:12];
  assign _T_288 = _T_286 == 3'h7;
  assign ex_rm = _T_288 ? io_fcsr_rm : _T_286;
  assign sfma_clock = clock;
  assign sfma_reset = reset;
  assign sfma_io_in_valid = _T_291;
  assign sfma_io_in_bits_ren3 = _GEN_77;
  assign sfma_io_in_bits_swap23 = _GEN_79;
  assign sfma_io_in_bits_rm = _GEN_89;
  assign sfma_io_in_bits_fmaCmd = _GEN_90;
  assign sfma_io_in_bits_in1 = _GEN_92;
  assign sfma_io_in_bits_in2 = _GEN_93;
  assign sfma_io_in_bits_in3 = _GEN_94;
  assign _T_290 = req_valid & ex_ctrl_fma;
  assign _T_291 = _T_290 & ex_ctrl_singleOut;
  assign _T_298 = regfile_ex_rs_0_data;
  assign _T_301 = regfile_ex_rs_1_data;
  assign _T_304 = regfile_ex_rs_2_data;
  assign _T_305 = ex_reg_inst[21:20];
  assign _T_306 = ex_reg_inst[3:2];
  assign _T_308 = ex_ctrl_ren3 == 1'h0;
  assign _T_309 = ex_reg_inst[27];
  assign _T_310 = _T_308 & _T_309;
  assign _GEN_166 = {{1'd0}, _T_310};
  assign _T_311 = _T_306 | _GEN_166;
  assign _GEN_71 = io_cp_req_bits_swap23 ? io_cp_req_bits_in3 : io_cp_req_bits_in2;
  assign _GEN_72 = io_cp_req_bits_swap23 ? io_cp_req_bits_in2 : io_cp_req_bits_in3;
  assign _GEN_76 = ex_cp_valid ? io_cp_req_bits_ren2 : ex_ctrl_ren2;
  assign _GEN_77 = ex_cp_valid ? io_cp_req_bits_ren3 : ex_ctrl_ren3;
  assign _GEN_79 = ex_cp_valid ? io_cp_req_bits_swap23 : ex_ctrl_swap23;
  assign _GEN_88 = ex_cp_valid ? io_cp_req_bits_wflags : ex_ctrl_wflags;
  assign _GEN_89 = ex_cp_valid ? io_cp_req_bits_rm : ex_rm;
  assign _GEN_90 = ex_cp_valid ? io_cp_req_bits_fmaCmd : _T_311;
  assign _GEN_91 = ex_cp_valid ? io_cp_req_bits_typ : _T_305;
  assign _GEN_92 = ex_cp_valid ? io_cp_req_bits_in1 : _T_298;
  assign _GEN_93 = ex_cp_valid ? _GEN_71 : _T_301;
  assign _GEN_94 = ex_cp_valid ? _GEN_72 : _T_304;
  assign fpiu_clock = clock;
  assign fpiu_io_in_valid = _T_316;
  assign fpiu_io_in_bits_ren2 = _GEN_76;
  assign fpiu_io_in_bits_wflags = _GEN_88;
  assign fpiu_io_in_bits_rm = _GEN_89;
  assign fpiu_io_in_bits_typ = _GEN_91;
  assign fpiu_io_in_bits_in1 = _GEN_92;
  assign fpiu_io_in_bits_in2 = _GEN_93;
  assign _T_312 = ex_ctrl_toint | ex_ctrl_div;
  assign _T_313 = _T_312 | ex_ctrl_sqrt;
  assign _T_314 = ex_ctrl_fastpipe & ex_ctrl_wflags;
  assign _T_315 = _T_313 | _T_314;
  assign _T_316 = req_valid & _T_315;
  assign ifpu_clock = clock;
  assign ifpu_reset = reset;
  assign ifpu_io_in_valid = _T_340;
  assign ifpu_io_in_bits_wflags = fpiu_io_in_bits_wflags;
  assign ifpu_io_in_bits_rm = fpiu_io_in_bits_rm;
  assign ifpu_io_in_bits_typ = fpiu_io_in_bits_typ;
  assign ifpu_io_in_bits_in1 = _T_341;
  assign _T_340 = req_valid & ex_ctrl_fromint;
  assign _T_341 = ex_cp_valid ? io_cp_req_bits_in1 : {{1'd0}, io_fromint_data};
  assign fpmu_clock = clock;
  assign fpmu_reset = reset;
  assign fpmu_io_in_valid = _T_342;
  assign fpmu_io_in_bits_wflags = fpiu_io_in_bits_wflags;
  assign fpmu_io_in_bits_rm = fpiu_io_in_bits_rm;
  assign fpmu_io_in_bits_in1 = fpiu_io_in_bits_in1;
  assign fpmu_io_in_bits_in2 = fpiu_io_in_bits_in2;
  assign fpmu_io_lt = fpiu_io_out_bits_lt;
  assign _T_342 = req_valid & ex_ctrl_fastpipe;
  assign _T_357 = mem_ctrl_fma & mem_ctrl_singleOut;
  assign _T_360 = _T_357 ? 2'h2 : 2'h0;
  assign _T_361 = mem_ctrl_fastpipe | mem_ctrl_fromint;
  assign _GEN_168 = {{1'd0}, _T_361};
  assign memLatencyMask = _GEN_168 | _T_360;
  assign _T_371 = mem_ctrl_fma | mem_ctrl_fastpipe;
  assign _T_372 = _T_371 | mem_ctrl_fromint;
  assign mem_wen = mem_reg_valid & _T_372;
  assign _T_375 = ex_ctrl_fastpipe ? 2'h2 : 2'h0;
  assign _T_378 = ex_ctrl_fromint ? 2'h2 : 2'h0;
  assign _T_379 = ex_ctrl_fma & ex_ctrl_singleOut;
  assign _T_382 = _T_379 ? 3'h4 : 3'h0;
  assign _T_383 = _T_375 | _T_378;
  assign _GEN_169 = {{1'd0}, _T_383};
  assign _T_384 = _GEN_169 | _T_382;
  assign _GEN_170 = {{1'd0}, memLatencyMask};
  assign _T_385 = _GEN_170 & _T_384;
  assign _T_387 = _T_385 != 3'h0;
  assign _T_388 = mem_wen & _T_387;
  assign _T_391 = ex_ctrl_fastpipe ? 3'h4 : 3'h0;
  assign _T_394 = ex_ctrl_fromint ? 3'h4 : 3'h0;
  assign _T_398 = _T_379 ? 4'h8 : 4'h0;
  assign _T_399 = _T_391 | _T_394;
  assign _GEN_171 = {{1'd0}, _T_399};
  assign _T_400 = _GEN_171 | _T_398;
  assign _GEN_172 = {{2'd0}, wen};
  assign _T_401 = _GEN_172 & _T_400;
  assign _T_403 = _T_401 != 4'h0;
  assign _T_404 = _T_388 | _T_403;
  assign _GEN_102 = req_valid ? _T_404 : write_port_busy;
  assign _T_406 = wen[1];
  assign _GEN_103 = _T_406 ? wbInfo_1_rd : wbInfo_0_rd;
  assign _GEN_105 = _T_406 ? wbInfo_1_cp : wbInfo_0_cp;
  assign _GEN_106 = _T_406 ? wbInfo_1_pipeid : wbInfo_0_pipeid;
  assign _T_407 = wen[1:1];
  assign _GEN_173 = {{1'd0}, _T_407};
  assign _T_411 = _GEN_173 | memLatencyMask;
  assign _GEN_107 = _T_55 ? _T_411 : {{1'd0}, _T_407};
  assign _T_413 = write_port_busy == 1'h0;
  assign _T_414 = memLatencyMask[0];
  assign _T_415 = _T_413 & _T_414;
  assign _GEN_174 = {{1'd0}, mem_ctrl_fromint};
  assign _T_427 = _GEN_174 | _T_360;
  assign _T_428 = mem_reg_inst[11:7];
  assign _GEN_108 = _T_415 ? mem_cp_valid : _GEN_105;
  assign _GEN_110 = _T_415 ? _T_427 : _GEN_106;
  assign _GEN_111 = _T_415 ? _T_428 : _GEN_103;
  assign _T_431 = memLatencyMask[1];
  assign _T_432 = _T_413 & _T_431;
  assign _GEN_112 = _T_432 ? mem_cp_valid : wbInfo_1_cp;
  assign _GEN_114 = _T_432 ? _T_427 : wbInfo_1_pipeid;
  assign _GEN_115 = _T_432 ? _T_428 : wbInfo_1_rd;
  assign _GEN_116 = mem_wen ? _GEN_107 : {{1'd0}, _T_407};
  assign _GEN_117 = mem_wen ? _GEN_108 : _GEN_105;
  assign _GEN_119 = mem_wen ? _GEN_110 : _GEN_106;
  assign _GEN_120 = mem_wen ? _GEN_111 : _GEN_103;
  assign _GEN_121 = mem_wen ? _GEN_112 : wbInfo_1_cp;
  assign _GEN_123 = mem_wen ? _GEN_114 : wbInfo_1_pipeid;
  assign _GEN_124 = mem_wen ? _GEN_115 : wbInfo_1_rd;
  assign waddr = _GEN_135 ? divSqrt_waddr : wbInfo_0_rd;
  assign _T_449 = wbInfo_0_pipeid == 2'h1;
  assign _T_450 = _T_449 ? ifpu_io_out_bits_data : fpmu_io_out_bits_data;
  assign _T_452 = wbInfo_0_pipeid == 2'h2;
  assign _T_453 = _T_452 ? sfma_io_out_bits_data : _T_450;
  assign _T_455 = wbInfo_0_pipeid == 2'h3;
  assign _T_456 = _T_455 ? sfma_io_out_bits_data : _T_453;
  assign wdata = _GEN_135 ? _GEN_136 : _T_456;
  assign _T_459 = _T_449 ? ifpu_io_out_bits_exc : fpmu_io_out_bits_exc;
  assign _T_462 = _T_452 ? sfma_io_out_bits_exc : _T_459;
  assign wexc = _T_455 ? sfma_io_out_bits_exc : _T_462;
  assign _T_466 = wbInfo_0_cp == 1'h0;
  assign _T_467 = wen[0];
  assign _T_468 = _T_466 & _T_467;
  assign _T_469 = _T_468 | _GEN_135;
  assign _T_479 = ex_reg_valid == 1'h0;
  assign wb_toint_valid = wb_reg_valid & wb_ctrl_toint;
  assign _GEN_131 = mem_ctrl_toint ? fpiu_io_out_bits_exc : wb_toint_exc;
  assign _T_481 = wb_toint_valid | _GEN_135;
  assign _T_483 = _T_481 | _T_467;
  assign _T_485 = wb_toint_valid ? wb_toint_exc : 5'h0;
  assign _T_487 = _GEN_135 ? _GEN_137 : 5'h0;
  assign _T_488 = _T_485 | _T_487;
  assign _T_491 = _T_467 ? wexc : 5'h0;
  assign _T_492 = _T_488 | _T_491;
  assign _T_493 = mem_ctrl_div | mem_ctrl_sqrt;
  assign _T_495 = wen != 2'h0;
  assign divSqrt_write_port_busy = _T_493 & _T_495;
  assign _T_496 = ex_reg_valid & ex_ctrl_wflags;
  assign _T_497 = mem_reg_valid & mem_ctrl_wflags;
  assign _T_498 = _T_496 | _T_497;
  assign _T_500 = _T_498 | wb_toint_valid;
  assign _T_503 = _T_500 | _T_495;
  assign _T_504 = _T_503 | _T_552;
  assign _T_506 = _T_504 == 1'h0;
  assign _T_507 = write_port_busy | divSqrt_write_port_busy;
  assign _T_508 = _T_507 | _T_552;
  assign _T_510 = wb_cp_valid == 1'h0;
  assign _T_511 = wb_reg_valid & _T_510;
  assign _T_517 = _T_511 & _T_516;
  assign _T_524 = _T_510 & _GEN_135;
  assign _T_525 = io_inst[14:12];
  assign _T_528 = _T_525 == 3'h5;
  assign _T_529 = _T_525 == 3'h6;
  assign _T_530 = _T_528 | _T_529;
  assign _T_533 = _T_525 == 3'h7;
  assign _T_535 = io_fcsr_rm >= 3'h5;
  assign _T_536 = _T_533 & _T_535;
  assign _T_537 = _T_530 | _T_536;
  assign _T_541 = mem_ctrl_singleOut == 1'h0;
  assign DivSqrtRecFN_small_clock = clock;
  assign DivSqrtRecFN_small_reset = reset;
  assign DivSqrtRecFN_small_io_inValid = _T_549;
  assign DivSqrtRecFN_small_io_sqrtOp = mem_ctrl_sqrt;
  assign DivSqrtRecFN_small_io_a = fpiu_io_out_bits_in_in1;
  assign DivSqrtRecFN_small_io_b = fpiu_io_out_bits_in_in2;
  assign DivSqrtRecFN_small_io_roundingMode = fpiu_io_out_bits_in_rm;
  assign DivSqrtRecFN_small_io_detectTininess = 1'h1;
  assign _T_543 = _T_541 == 1'h0;
  assign _T_544 = mem_reg_valid & _T_543;
  assign _T_546 = _T_544 & _T_493;
  assign _T_548 = _T_552 == 1'h0;
  assign _T_549 = _T_546 & _T_548;
  assign _T_552 = DivSqrtRecFN_small_io_inReady == 1'h0;
  assign _T_554 = DivSqrtRecFN_small_io_inValid & DivSqrtRecFN_small_io_inReady;
  assign _GEN_133 = _T_554 ? killm : _T_539;
  assign _GEN_134 = _T_554 ? _T_428 : divSqrt_waddr;
  assign _T_556 = DivSqrtRecFN_small_io_outValid_div | DivSqrtRecFN_small_io_outValid_sqrt;
  assign _T_558 = _T_539 == 1'h0;
  assign _GEN_135 = _T_556 ? _T_558 : 1'h0;
  assign _GEN_136 = DivSqrtRecFN_small_io_out;
  assign _GEN_137 = DivSqrtRecFN_small_io_exceptionFlags;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  ex_reg_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  ex_reg_inst = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  mem_cp_valid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  wb_cp_valid = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  mem_reg_valid = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  mem_reg_inst = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  wb_reg_valid = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  _T_64_ren2 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_64_ren3 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  _T_64_swap23 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_64_singleOut = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  _T_64_fromint = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  _T_64_toint = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  _T_64_fastpipe = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  _T_64_fma = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  _T_64_div = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  _T_64_sqrt = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  _T_64_wflags = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  mem_ctrl_singleOut = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  mem_ctrl_fromint = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  mem_ctrl_toint = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  mem_ctrl_fastpipe = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  mem_ctrl_fma = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  mem_ctrl_div = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  mem_ctrl_sqrt = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  mem_ctrl_wflags = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  wb_ctrl_toint = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  load_wb = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  load_wb_data = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  load_wb_tag = _RAND_29[4:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_30 = {2{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    regfile[initvar] = _RAND_30[32:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  ex_ra_0 = _RAND_31[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  ex_ra_1 = _RAND_32[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  ex_ra_2 = _RAND_33[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  divSqrt_waddr = _RAND_34[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  wen = _RAND_35[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  wbInfo_0_rd = _RAND_36[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  wbInfo_0_cp = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  wbInfo_0_pipeid = _RAND_38[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  wbInfo_1_rd = _RAND_39[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  wbInfo_1_cp = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  wbInfo_1_pipeid = _RAND_41[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  write_port_busy = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  wb_toint_exc = _RAND_43[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  _T_516 = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{$random}};
  _T_539 = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      ex_reg_valid <= 1'h0;
    end else begin
      ex_reg_valid <= io_valid;
    end
    if (io_valid) begin
      ex_reg_inst <= io_inst;
    end
    if (reset) begin
      mem_cp_valid <= 1'h0;
    end else begin
      mem_cp_valid <= ex_cp_valid;
    end
    if (reset) begin
      wb_cp_valid <= 1'h0;
    end else begin
      wb_cp_valid <= mem_cp_valid;
    end
    if (reset) begin
      mem_reg_valid <= 1'h0;
    end else begin
      mem_reg_valid <= _T_52;
    end
    if (ex_reg_valid) begin
      mem_reg_inst <= ex_reg_inst;
    end
    if (reset) begin
      wb_reg_valid <= 1'h0;
    end else begin
      wb_reg_valid <= _T_57;
    end
    if (io_valid) begin
      _T_64_ren2 <= fp_decoder_io_sigs_ren2;
    end
    if (io_valid) begin
      _T_64_ren3 <= fp_decoder_io_sigs_ren3;
    end
    if (io_valid) begin
      _T_64_swap23 <= fp_decoder_io_sigs_swap23;
    end
    if (io_valid) begin
      _T_64_singleOut <= fp_decoder_io_sigs_singleOut;
    end
    if (io_valid) begin
      _T_64_fromint <= fp_decoder_io_sigs_fromint;
    end
    if (io_valid) begin
      _T_64_toint <= fp_decoder_io_sigs_toint;
    end
    if (io_valid) begin
      _T_64_fastpipe <= fp_decoder_io_sigs_fastpipe;
    end
    if (io_valid) begin
      _T_64_fma <= fp_decoder_io_sigs_fma;
    end
    if (io_valid) begin
      _T_64_div <= fp_decoder_io_sigs_div;
    end
    if (io_valid) begin
      _T_64_sqrt <= fp_decoder_io_sigs_sqrt;
    end
    if (io_valid) begin
      _T_64_wflags <= fp_decoder_io_sigs_wflags;
    end
    if (req_valid) begin
      if (ex_cp_valid) begin
        mem_ctrl_singleOut <= io_cp_req_bits_singleOut;
      end else begin
        mem_ctrl_singleOut <= _T_64_singleOut;
      end
    end
    if (req_valid) begin
      if (ex_cp_valid) begin
        mem_ctrl_fromint <= io_cp_req_bits_fromint;
      end else begin
        mem_ctrl_fromint <= _T_64_fromint;
      end
    end
    if (req_valid) begin
      if (ex_cp_valid) begin
        mem_ctrl_toint <= io_cp_req_bits_toint;
      end else begin
        mem_ctrl_toint <= _T_64_toint;
      end
    end
    if (req_valid) begin
      if (ex_cp_valid) begin
        mem_ctrl_fastpipe <= io_cp_req_bits_fastpipe;
      end else begin
        mem_ctrl_fastpipe <= _T_64_fastpipe;
      end
    end
    if (req_valid) begin
      if (ex_cp_valid) begin
        mem_ctrl_fma <= io_cp_req_bits_fma;
      end else begin
        mem_ctrl_fma <= _T_64_fma;
      end
    end
    if (req_valid) begin
      if (ex_cp_valid) begin
        mem_ctrl_div <= io_cp_req_bits_div;
      end else begin
        mem_ctrl_div <= _T_64_div;
      end
    end
    if (req_valid) begin
      if (ex_cp_valid) begin
        mem_ctrl_sqrt <= io_cp_req_bits_sqrt;
      end else begin
        mem_ctrl_sqrt <= _T_64_sqrt;
      end
    end
    if (req_valid) begin
      if (ex_cp_valid) begin
        mem_ctrl_wflags <= io_cp_req_bits_wflags;
      end else begin
        mem_ctrl_wflags <= _T_64_wflags;
      end
    end
    if (mem_reg_valid) begin
      wb_ctrl_toint <= mem_ctrl_toint;
    end
    load_wb <= io_dmem_resp_val;
    if (io_dmem_resp_val) begin
      load_wb_data <= io_dmem_resp_data;
    end
    if (io_dmem_resp_val) begin
      load_wb_tag <= io_dmem_resp_tag;
    end
    if(regfile__T_256_en & regfile__T_256_mask) begin
      regfile[regfile__T_256_addr] <= regfile__T_256_data;
    end
    if(regfile__T_474_en & regfile__T_474_mask) begin
      regfile[regfile__T_474_addr] <= regfile__T_474_data;
    end
    if (io_valid) begin
      ex_ra_0 <= _GEN_64;
    end
    if (io_valid) begin
      ex_ra_1 <= _GEN_66;
    end
    if (io_valid) begin
      ex_ra_2 <= _GEN_67;
    end
    if (_T_554) begin
      divSqrt_waddr <= _T_428;
    end
    if (reset) begin
      wen <= 2'h0;
    end else begin
      if (mem_wen) begin
        if (_T_55) begin
          wen <= _T_411;
        end else begin
          wen <= {{1'd0}, _T_407};
        end
      end else begin
        wen <= {{1'd0}, _T_407};
      end
    end
    if (mem_wen) begin
      if (_T_415) begin
        wbInfo_0_rd <= _T_428;
      end else begin
        if (_T_406) begin
          wbInfo_0_rd <= wbInfo_1_rd;
        end
      end
    end else begin
      if (_T_406) begin
        wbInfo_0_rd <= wbInfo_1_rd;
      end
    end
    if (mem_wen) begin
      if (_T_415) begin
        wbInfo_0_cp <= mem_cp_valid;
      end else begin
        if (_T_406) begin
          wbInfo_0_cp <= wbInfo_1_cp;
        end
      end
    end else begin
      if (_T_406) begin
        wbInfo_0_cp <= wbInfo_1_cp;
      end
    end
    if (mem_wen) begin
      if (_T_415) begin
        wbInfo_0_pipeid <= _T_427;
      end else begin
        if (_T_406) begin
          wbInfo_0_pipeid <= wbInfo_1_pipeid;
        end
      end
    end else begin
      if (_T_406) begin
        wbInfo_0_pipeid <= wbInfo_1_pipeid;
      end
    end
    if (mem_wen) begin
      if (_T_432) begin
        wbInfo_1_rd <= _T_428;
      end
    end
    if (mem_wen) begin
      if (_T_432) begin
        wbInfo_1_cp <= mem_cp_valid;
      end
    end
    if (mem_wen) begin
      if (_T_432) begin
        wbInfo_1_pipeid <= _T_427;
      end
    end
    if (req_valid) begin
      write_port_busy <= _T_404;
    end
    if (mem_ctrl_toint) begin
      wb_toint_exc <= fpiu_io_out_bits_exc;
    end
    _T_516 <= _T_493;
    if (_T_554) begin
      _T_539 <= killm;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at FPU.scala:620 assert(consistent(wdata))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (1'h0) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (1'h0) begin
          $fwrite(32'h80000002,"Assertion failed\n    at FPU.scala:728 assert(consistent(wdata))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (1'h0) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
