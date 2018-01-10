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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ROCKET(
  input         clock,
  input         reset,
  input         io_hartid,
  input         io_interrupts_debug,
  input         io_interrupts_mtip,
  input         io_interrupts_msip,
  input         io_interrupts_meip,
  output        io_imem_req_valid,
  output [31:0] io_imem_req_bits_pc,
  output        io_imem_req_bits_speculative,
  output        io_imem_sfence_valid,
  output        io_imem_sfence_bits_rs1,
  output        io_imem_resp_ready,
  input         io_imem_resp_valid,
  input         io_imem_resp_bits_btb_valid,
  input         io_imem_resp_bits_btb_bits_taken,
  input         io_imem_resp_bits_btb_bits_bridx,
  input  [31:0] io_imem_resp_bits_pc,
  input  [31:0] io_imem_resp_bits_data,
  input         io_imem_resp_bits_xcpt_pf_inst,
  input         io_imem_resp_bits_xcpt_ae_inst,
  input         io_imem_resp_bits_replay,
  output        io_imem_flush_icache,
  input         io_dmem_req_ready,
  output        io_dmem_req_valid,
  output [31:0] io_dmem_req_bits_addr,
  output [5:0]  io_dmem_req_bits_tag,
  output [4:0]  io_dmem_req_bits_cmd,
  output [2:0]  io_dmem_req_bits_typ,
  output        io_dmem_req_bits_phys,
  output        io_dmem_s1_kill,
  output [31:0] io_dmem_s1_data_data,
  output [3:0]  io_dmem_s1_data_mask,
  input         io_dmem_s2_nack,
  input         io_dmem_resp_valid,
  input  [5:0]  io_dmem_resp_bits_tag,
  input  [31:0] io_dmem_resp_bits_data,
  input         io_dmem_resp_bits_replay,
  input         io_dmem_resp_bits_has_data,
  input  [31:0] io_dmem_resp_bits_data_word_bypass,
  input         io_dmem_replay_next,
  input         io_dmem_s2_xcpt_ma_ld,
  input         io_dmem_s2_xcpt_ma_st,
  input         io_dmem_s2_xcpt_pf_ld,
  input         io_dmem_s2_xcpt_pf_st,
  input         io_dmem_s2_xcpt_ae_ld,
  input         io_dmem_s2_xcpt_ae_st,
  output        io_dmem_invalidate_lr,
  input         io_dmem_ordered,
  output [21:0] io_ptw_ptbr_ppn,
  output        io_ptw_sfence_valid,
  output        io_ptw_sfence_bits_rs1,
  output [1:0]  io_ptw_status_dprv,
  output [1:0]  io_ptw_status_prv,
  output        io_ptw_status_mxr,
  output        io_ptw_status_sum,
  output [31:0] io_fpu_inst,
  output [31:0] io_fpu_fromint_data,
  output [2:0]  io_fpu_fcsr_rm,
  input         io_fpu_fcsr_flags_valid,
  input  [4:0]  io_fpu_fcsr_flags_bits,
  input  [31:0] io_fpu_store_data,
  input  [31:0] io_fpu_toint_data,
  output        io_fpu_dmem_resp_val,
  output [4:0]  io_fpu_dmem_resp_tag,
  output [31:0] io_fpu_dmem_resp_data,
  output        io_fpu_valid,
  input         io_fpu_fcsr_rdy,
  input         io_fpu_nack_mem,
  input         io_fpu_illegal_rm,
  output        io_fpu_killx,
  output        io_fpu_killm,
  input         io_fpu_dec_wen,
  input         io_fpu_dec_ren1,
  input         io_fpu_dec_ren2,
  input         io_fpu_dec_ren3,
  input         io_fpu_sboard_set,
  input         io_fpu_sboard_clr,
  input  [4:0]  io_fpu_sboard_clra,
  input         io_rocc_cmd_ready,
  input         io_rocc_interrupt
);
  reg  ex_ctrl_fp;
  reg [31:0] _RAND_0;
  reg  ex_ctrl_rocc;
  reg [31:0] _RAND_1;
  reg  ex_ctrl_branch;
  reg [31:0] _RAND_2;
  reg  ex_ctrl_jal;
  reg [31:0] _RAND_3;
  reg  ex_ctrl_jalr;
  reg [31:0] _RAND_4;
  reg  ex_ctrl_rxs2;
  reg [31:0] _RAND_5;
  reg [1:0] ex_ctrl_sel_alu2;
  reg [31:0] _RAND_6;
  reg [1:0] ex_ctrl_sel_alu1;
  reg [31:0] _RAND_7;
  reg [2:0] ex_ctrl_sel_imm;
  reg [31:0] _RAND_8;
  reg [3:0] ex_ctrl_alu_fn;
  reg [31:0] _RAND_9;
  reg  ex_ctrl_mem;
  reg [31:0] _RAND_10;
  reg [4:0] ex_ctrl_mem_cmd;
  reg [31:0] _RAND_11;
  reg [2:0] ex_ctrl_mem_type;
  reg [31:0] _RAND_12;
  reg  ex_ctrl_wfd;
  reg [31:0] _RAND_13;
  reg  ex_ctrl_div;
  reg [31:0] _RAND_14;
  reg  ex_ctrl_wxd;
  reg [31:0] _RAND_15;
  reg [2:0] ex_ctrl_csr;
  reg [31:0] _RAND_16;
  reg  ex_ctrl_fence_i;
  reg [31:0] _RAND_17;
  reg  mem_ctrl_fp;
  reg [31:0] _RAND_18;
  reg  mem_ctrl_rocc;
  reg [31:0] _RAND_19;
  reg  mem_ctrl_branch;
  reg [31:0] _RAND_20;
  reg  mem_ctrl_jal;
  reg [31:0] _RAND_21;
  reg  mem_ctrl_jalr;
  reg [31:0] _RAND_22;
  reg  mem_ctrl_mem;
  reg [31:0] _RAND_23;
  reg [2:0] mem_ctrl_mem_type;
  reg [31:0] _RAND_24;
  reg  mem_ctrl_wfd;
  reg [31:0] _RAND_25;
  reg  mem_ctrl_div;
  reg [31:0] _RAND_26;
  reg  mem_ctrl_wxd;
  reg [31:0] _RAND_27;
  reg [2:0] mem_ctrl_csr;
  reg [31:0] _RAND_28;
  reg  mem_ctrl_fence_i;
  reg [31:0] _RAND_29;
  reg  wb_ctrl_rocc;
  reg [31:0] _RAND_30;
  reg  wb_ctrl_mem;
  reg [31:0] _RAND_31;
  reg [2:0] wb_ctrl_mem_type;
  reg [31:0] _RAND_32;
  reg  wb_ctrl_wfd;
  reg [31:0] _RAND_33;
  reg  wb_ctrl_div;
  reg [31:0] _RAND_34;
  reg  wb_ctrl_wxd;
  reg [31:0] _RAND_35;
  reg [2:0] wb_ctrl_csr;
  reg [31:0] _RAND_36;
  reg  wb_ctrl_fence_i;
  reg [31:0] _RAND_37;
  reg  ex_reg_xcpt_interrupt;
  reg [31:0] _RAND_38;
  reg  ex_reg_valid;
  reg [31:0] _RAND_39;
  reg  ex_reg_rvc;
  reg [31:0] _RAND_40;
  reg  ex_reg_xcpt;
  reg [31:0] _RAND_41;
  reg  ex_reg_flush_pipe;
  reg [31:0] _RAND_42;
  reg  ex_reg_load_use;
  reg [31:0] _RAND_43;
  reg [31:0] ex_cause;
  reg [31:0] _RAND_44;
  reg  ex_reg_replay;
  reg [31:0] _RAND_45;
  reg [31:0] ex_reg_pc;
  reg [31:0] _RAND_46;
  reg [31:0] ex_reg_inst;
  reg [31:0] _RAND_47;
  reg [31:0] ex_reg_cinst;
  reg [31:0] _RAND_48;
  reg  mem_reg_xcpt_interrupt;
  reg [31:0] _RAND_49;
  reg  mem_reg_valid;
  reg [31:0] _RAND_50;
  reg  mem_reg_rvc;
  reg [31:0] _RAND_51;
  reg  mem_reg_xcpt;
  reg [31:0] _RAND_52;
  reg  mem_reg_replay;
  reg [31:0] _RAND_53;
  reg  mem_reg_flush_pipe;
  reg [31:0] _RAND_54;
  reg [31:0] mem_reg_cause;
  reg [31:0] _RAND_55;
  reg  mem_reg_slow_bypass;
  reg [31:0] _RAND_56;
  reg  mem_reg_load;
  reg [31:0] _RAND_57;
  reg  mem_reg_store;
  reg [31:0] _RAND_58;
  reg  mem_reg_sfence;
  reg [31:0] _RAND_59;
  reg [31:0] mem_reg_pc;
  reg [31:0] _RAND_60;
  reg [31:0] mem_reg_inst;
  reg [31:0] _RAND_61;
  reg [31:0] mem_reg_cinst;
  reg [31:0] _RAND_62;
  reg [31:0] bypass_mux_1;
  reg [31:0] _RAND_63;
  reg [31:0] mem_reg_rs2;
  reg [31:0] _RAND_64;
  reg  wb_reg_valid;
  reg [31:0] _RAND_65;
  reg  wb_reg_xcpt;
  reg [31:0] _RAND_66;
  reg  wb_reg_replay;
  reg [31:0] _RAND_67;
  reg  wb_reg_flush_pipe;
  reg [31:0] _RAND_68;
  reg [31:0] wb_reg_cause;
  reg [31:0] _RAND_69;
  reg  wb_reg_sfence;
  reg [31:0] _RAND_70;
  reg [31:0] wb_reg_pc;
  reg [31:0] _RAND_71;
  reg [31:0] wb_reg_inst;
  reg [31:0] _RAND_72;
  reg [31:0] wb_reg_cinst;
  reg [31:0] _RAND_73;
  reg [31:0] bypass_mux_2;
  reg [31:0] _RAND_74;
  wire  take_pc;
  wire  ibuf_clock;
  wire  ibuf_io_imem_ready;
  wire  ibuf_io_imem_valid;
  wire  ibuf_io_imem_bits_btb_valid;
  wire  ibuf_io_imem_bits_btb_bits_taken;
  wire  ibuf_io_imem_bits_btb_bits_bridx;
  wire [31:0] ibuf_io_imem_bits_pc;
  wire [31:0] ibuf_io_imem_bits_data;
  wire  ibuf_io_imem_bits_xcpt_pf_inst;
  wire  ibuf_io_imem_bits_xcpt_ae_inst;
  wire  ibuf_io_imem_bits_replay;
  wire [31:0] ibuf_io_pc;
  wire  ibuf_io_inst_0_ready;
  wire  ibuf_io_inst_0_valid;
  wire  ibuf_io_inst_0_bits_xcpt0_pf_inst;
  wire  ibuf_io_inst_0_bits_xcpt0_ae_inst;
  wire  ibuf_io_inst_0_bits_xcpt1_pf_inst;
  wire  ibuf_io_inst_0_bits_xcpt1_ae_inst;
  wire  ibuf_io_inst_0_bits_replay;
  wire  ibuf_io_inst_0_bits_rvc;
  wire [31:0] ibuf_io_inst_0_bits_inst_bits;
  wire [4:0] ibuf_io_inst_0_bits_inst_rd;
  wire [4:0] ibuf_io_inst_0_bits_inst_rs1;
  wire [4:0] ibuf_io_inst_0_bits_inst_rs2;
  wire [4:0] ibuf_io_inst_0_bits_inst_rs3;
  wire [31:0] ibuf_io_inst_0_bits_raw;
  wire [31:0] ibuf_io_inst_0_bits_cinst;
  wire [31:0] _T_709;
  wire  _T_711;
  wire [31:0] _T_713;
  wire  _T_715;
  wire [31:0] _T_717;
  wire  _T_719;
  wire [31:0] _T_721;
  wire  _T_723;
  wire [31:0] _T_725;
  wire  _T_727;
  wire [31:0] _T_729;
  wire  _T_731;
  wire [31:0] _T_733;
  wire  _T_735;
  wire [31:0] _T_737;
  wire  _T_739;
  wire [31:0] _T_741;
  wire  _T_743;
  wire [31:0] _T_745;
  wire  _T_747;
  wire [31:0] _T_749;
  wire  _T_751;
  wire [31:0] _T_753;
  wire  _T_755;
  wire  _T_759;
  wire [31:0] _T_761;
  wire  _T_763;
  wire  _T_767;
  wire [31:0] _T_769;
  wire  _T_771;
  wire  _T_775;
  wire [31:0] _T_777;
  wire  _T_779;
  wire [31:0] _T_781;
  wire  _T_783;
  wire  _T_785;
  wire [31:0] _T_787;
  wire  _T_789;
  wire [31:0] _T_791;
  wire  _T_793;
  wire [31:0] _T_795;
  wire  _T_797;
  wire  _T_799;
  wire [31:0] _T_801;
  wire  _T_803;
  wire  _T_805;
  wire [31:0] _T_807;
  wire  _T_809;
  wire [31:0] _T_811;
  wire  _T_813;
  wire [31:0] _T_815;
  wire  _T_817;
  wire [31:0] _T_819;
  wire  _T_821;
  wire [31:0] _T_823;
  wire  _T_825;
  wire [31:0] _T_827;
  wire  _T_829;
  wire  _T_833;
  wire  _T_836;
  wire  _T_837;
  wire  _T_838;
  wire  _T_839;
  wire  _T_840;
  wire  _T_841;
  wire  _T_842;
  wire  _T_843;
  wire  _T_844;
  wire  _T_845;
  wire  _T_846;
  wire  _T_847;
  wire  _T_848;
  wire  _T_849;
  wire  _T_850;
  wire  _T_851;
  wire  _T_852;
  wire  _T_853;
  wire  _T_854;
  wire  _T_855;
  wire  _T_856;
  wire  _T_857;
  wire  _T_858;
  wire  _T_859;
  wire  _T_860;
  wire  _T_861;
  wire  _T_862;
  wire  _T_863;
  wire  _T_864;
  wire  _T_865;
  wire  _T_866;
  wire  _T_867;
  wire [31:0] _T_869;
  wire  _T_871;
  wire [31:0] _T_873;
  wire  _T_875;
  wire  _T_878;
  wire [31:0] _T_881;
  wire  _T_883;
  wire [31:0] _T_887;
  wire  _T_889;
  wire [31:0] _T_893;
  wire  _T_895;
  wire [31:0] _T_899;
  wire  _T_901;
  wire [31:0] _T_903;
  wire  _T_905;
  wire [31:0] _T_907;
  wire  _T_909;
  wire  _T_912;
  wire  _T_913;
  wire [31:0] _T_915;
  wire  _T_917;
  wire [31:0] _T_919;
  wire  _T_921;
  wire [31:0] _T_923;
  wire  _T_925;
  wire [31:0] _T_927;
  wire  _T_929;
  wire [31:0] _T_931;
  wire  _T_933;
  wire  _T_936;
  wire  _T_937;
  wire  _T_938;
  wire  _T_939;
  wire [31:0] _T_941;
  wire  _T_943;
  wire [31:0] _T_945;
  wire  _T_947;
  wire [31:0] _T_949;
  wire  _T_951;
  wire [31:0] _T_953;
  wire  _T_955;
  wire [31:0] _T_957;
  wire  _T_959;
  wire  _T_962;
  wire  _T_963;
  wire  _T_964;
  wire  _T_965;
  wire  _T_969;
  wire [31:0] _T_971;
  wire  _T_973;
  wire [31:0] _T_975;
  wire  _T_977;
  wire  _T_980;
  wire  _T_981;
  wire [1:0] _T_982;
  wire [31:0] _T_984;
  wire  _T_986;
  wire [31:0] _T_988;
  wire  _T_990;
  wire [31:0] _T_992;
  wire  _T_994;
  wire  _T_997;
  wire  _T_998;
  wire  _T_999;
  wire  _T_1000;
  wire  _T_1004;
  wire  _T_1007;
  wire [1:0] _T_1008;
  wire [31:0] _T_1010;
  wire  _T_1012;
  wire  _T_1016;
  wire  _T_1019;
  wire [31:0] _T_1021;
  wire  _T_1023;
  wire  _T_1026;
  wire [31:0] _T_1028;
  wire  _T_1030;
  wire [31:0] _T_1032;
  wire  _T_1034;
  wire  _T_1038;
  wire  _T_1041;
  wire  _T_1042;
  wire [1:0] _T_1043;
  wire [2:0] _T_1044;
  wire [31:0] _T_1052;
  wire  _T_1054;
  wire [31:0] _T_1056;
  wire  _T_1058;
  wire [31:0] _T_1060;
  wire  _T_1062;
  wire  _T_1065;
  wire  _T_1066;
  wire [31:0] _T_1068;
  wire  _T_1070;
  wire [31:0] _T_1072;
  wire  _T_1074;
  wire [31:0] _T_1076;
  wire  _T_1078;
  wire [31:0] _T_1080;
  wire  _T_1082;
  wire [31:0] _T_1084;
  wire  _T_1086;
  wire [31:0] _T_1088;
  wire  _T_1090;
  wire  _T_1093;
  wire  _T_1094;
  wire  _T_1095;
  wire  _T_1096;
  wire  _T_1097;
  wire [31:0] _T_1099;
  wire  _T_1101;
  wire [31:0] _T_1103;
  wire  _T_1105;
  wire [31:0] _T_1107;
  wire  _T_1109;
  wire [31:0] _T_1111;
  wire  _T_1113;
  wire  _T_1116;
  wire  _T_1117;
  wire  _T_1118;
  wire [31:0] _T_1120;
  wire  _T_1122;
  wire [31:0] _T_1124;
  wire  _T_1126;
  wire  _T_1129;
  wire  _T_1130;
  wire  _T_1131;
  wire [1:0] _T_1132;
  wire [1:0] _T_1133;
  wire [3:0] _T_1134;
  wire [31:0] _T_1136;
  wire  _T_1138;
  wire [31:0] _T_1140;
  wire  _T_1142;
  wire  _T_1145;
  wire  _T_1146;
  wire  _T_1147;
  wire  _T_1148;
  wire  _T_1149;
  wire  _T_1150;
  wire [31:0] _T_1152;
  wire  _T_1154;
  wire [31:0] _T_1156;
  wire  _T_1158;
  wire [31:0] _T_1160;
  wire  _T_1162;
  wire [31:0] _T_1164;
  wire  _T_1166;
  wire  _T_1169;
  wire  _T_1170;
  wire  _T_1171;
  wire [31:0] _T_1173;
  wire  _T_1175;
  wire [31:0] _T_1177;
  wire  _T_1179;
  wire  _T_1182;
  wire [31:0] _T_1184;
  wire  _T_1186;
  wire [31:0] _T_1188;
  wire  _T_1190;
  wire [31:0] _T_1192;
  wire  _T_1194;
  wire  _T_1197;
  wire  _T_1198;
  wire  _T_1199;
  wire [31:0] _T_1201;
  wire  _T_1203;
  wire [1:0] _T_1207;
  wire [1:0] _T_1208;
  wire [2:0] _T_1209;
  wire [4:0] _T_1210;
  wire [31:0] _T_1212;
  wire  _T_1214;
  wire [31:0] _T_1218;
  wire  _T_1220;
  wire [31:0] _T_1224;
  wire  _T_1226;
  wire [1:0] _T_1229;
  wire [2:0] _T_1230;
  wire [31:0] _T_1232;
  wire  _T_1234;
  wire [31:0] _T_1236;
  wire [31:0] _T_1240;
  wire  _T_1242;
  wire [31:0] _T_1263;
  wire  _T_1265;
  wire  _T_1269;
  wire  _T_1272;
  wire  _T_1273;
  wire  _T_1274;
  wire [31:0] _T_1276;
  wire  _T_1278;
  wire  _T_1284;
  wire  _T_1288;
  wire [31:0] _T_1290;
  wire  _T_1292;
  wire  _T_1296;
  wire [31:0] _T_1298;
  wire  _T_1300;
  wire [31:0] _T_1302;
  wire  _T_1304;
  wire [31:0] _T_1306;
  wire  _T_1308;
  wire  _T_1311;
  wire  _T_1312;
  wire  _T_1313;
  wire  _T_1314;
  wire  _T_1315;
  wire  _T_1316;
  wire [31:0] _T_1318;
  wire  _T_1320;
  wire [31:0] _T_1324;
  wire  _T_1326;
  wire [31:0] _T_1330;
  wire  _T_1332;
  wire [1:0] _T_1335;
  wire [2:0] _T_1336;
  wire [31:0] _T_1338;
  wire  _T_1340;
  wire [31:0] _T_1344;
  wire  _T_1346;
  reg  id_reg_fence;
  reg [31:0] _RAND_75;
  reg [31:0] _T_1357 [0:30];
  reg [31:0] _RAND_76;
  wire [31:0] _T_1357__T_1366_data;
  wire [4:0] _T_1357__T_1366_addr;
  reg [31:0] _RAND_77;
  wire [31:0] _T_1357__T_1376_data;
  wire [4:0] _T_1357__T_1376_addr;
  reg [31:0] _RAND_78;
  wire [31:0] _T_1357__T_2277_data;
  wire [4:0] _T_1357__T_2277_addr;
  wire  _T_1357__T_2277_mask;
  wire  _T_1357__T_2277_en;
  wire  _T_1361;
  wire [4:0] _T_1364;
  wire [4:0] _T_1365;
  wire [31:0] _T_1367;
  wire [4:0] _T_1374;
  wire [4:0] _T_1375;
  wire [31:0] _T_1377;
  wire  csr_clock;
  wire  csr_reset;
  wire  csr_io_interrupts_debug;
  wire  csr_io_interrupts_mtip;
  wire  csr_io_interrupts_msip;
  wire  csr_io_interrupts_meip;
  wire  csr_io_hartid;
  wire [11:0] csr_io_rw_addr;
  wire [2:0] csr_io_rw_cmd;
  wire [31:0] csr_io_rw_rdata;
  wire [31:0] csr_io_rw_wdata;
  wire [11:0] csr_io_decode_csr;
  wire  csr_io_decode_fp_illegal;
  wire  csr_io_decode_read_illegal;
  wire  csr_io_decode_write_illegal;
  wire  csr_io_decode_write_flush;
  wire  csr_io_decode_system_illegal;
  wire  csr_io_csr_stall;
  wire  csr_io_eret;
  wire  csr_io_singleStep;
  wire  csr_io_status_debug;
  wire [31:0] csr_io_status_isa;
  wire [1:0] csr_io_status_dprv;
  wire [1:0] csr_io_status_prv;
  wire  csr_io_status_sd;
  wire [26:0] csr_io_status_zero2;
  wire [1:0] csr_io_status_sxl;
  wire [1:0] csr_io_status_uxl;
  wire  csr_io_status_sd_rv32;
  wire [7:0] csr_io_status_zero1;
  wire  csr_io_status_tsr;
  wire  csr_io_status_tw;
  wire  csr_io_status_tvm;
  wire  csr_io_status_mxr;
  wire  csr_io_status_sum;
  wire  csr_io_status_mprv;
  wire [1:0] csr_io_status_xs;
  wire [1:0] csr_io_status_fs;
  wire [1:0] csr_io_status_mpp;
  wire [1:0] csr_io_status_hpp;
  wire  csr_io_status_spp;
  wire  csr_io_status_mpie;
  wire  csr_io_status_hpie;
  wire  csr_io_status_spie;
  wire  csr_io_status_upie;
  wire  csr_io_status_mie;
  wire  csr_io_status_hie;
  wire  csr_io_status_sie;
  wire  csr_io_status_uie;
  wire [21:0] csr_io_ptbr_ppn;
  wire [31:0] csr_io_evec;
  wire  csr_io_exception;
  wire  csr_io_retire;
  wire [31:0] csr_io_cause;
  wire [31:0] csr_io_pc;
  wire [31:0] csr_io_badaddr;
  wire [31:0] csr_io_time;
  wire [2:0] csr_io_fcsr_rm;
  wire  csr_io_fcsr_flags_valid;
  wire [4:0] csr_io_fcsr_flags_bits;
  wire  csr_io_rocc_interrupt;
  wire  csr_io_interrupt;
  wire [31:0] csr_io_interrupt_cause;
  wire  csr_io_bp_0_control_action;
  wire  csr_io_bp_0_control_chain;
  wire [1:0] csr_io_bp_0_control_tmatch;
  wire  csr_io_bp_0_control_m;
  wire  csr_io_bp_0_control_h;
  wire  csr_io_bp_0_control_s;
  wire  csr_io_bp_0_control_u;
  wire  csr_io_bp_0_control_x;
  wire  csr_io_bp_0_control_w;
  wire  csr_io_bp_0_control_r;
  wire [31:0] csr_io_bp_0_address;
  wire  csr_io_bp_1_control_action;
  wire  csr_io_bp_1_control_chain;
  wire [1:0] csr_io_bp_1_control_tmatch;
  wire  csr_io_bp_1_control_m;
  wire  csr_io_bp_1_control_h;
  wire  csr_io_bp_1_control_s;
  wire  csr_io_bp_1_control_u;
  wire  csr_io_bp_1_control_x;
  wire  csr_io_bp_1_control_w;
  wire  csr_io_bp_1_control_r;
  wire [31:0] csr_io_bp_1_address;
  wire  _T_1471;
  wire  _T_1472;
  wire  _T_1473;
  wire  _T_1474;
  wire  id_csr_en;
  wire  id_system_insn;
  wire  id_csr_ren;
  wire [2:0] id_csr;
  wire  _T_1485;
  wire  id_sfence;
  wire  _T_1486;
  wire  _T_1488;
  wire  _T_1489;
  wire  _T_1490;
  wire  id_csr_flush;
  wire  _T_1492;
  wire  _T_1493;
  wire  _T_1495;
  wire  _T_1496;
  wire  _T_1497;
  wire  _T_1498;
  wire  _T_1500;
  wire  _T_1501;
  wire  _T_1502;
  wire  _T_1503;
  wire  _T_1504;
  wire  _T_1505;
  wire  _T_1511;
  wire  _T_1513;
  wire  _T_1514;
  wire  _T_1515;
  wire  _T_1520;
  wire  _T_1521;
  wire  _T_1522;
  wire  _T_1523;
  wire  _T_1525;
  wire  _T_1527;
  wire  _T_1528;
  wire  id_illegal_insn;
  wire  id_amo_aq;
  wire  id_amo_rl;
  wire  _T_1529;
  wire  id_fence_next;
  wire  _T_1531;
  wire  id_mem_busy;
  wire  _T_1533;
  wire  _GEN_0;
  wire  _T_1540;
  wire  _T_1543;
  wire  _T_1544;
  wire  _T_1546;
  wire  _T_1547;
  wire  _T_1548;
  wire  bpu_io_status_debug;
  wire [1:0] bpu_io_status_prv;
  wire  bpu_io_bp_0_control_action;
  wire  bpu_io_bp_0_control_chain;
  wire [1:0] bpu_io_bp_0_control_tmatch;
  wire  bpu_io_bp_0_control_m;
  wire  bpu_io_bp_0_control_h;
  wire  bpu_io_bp_0_control_s;
  wire  bpu_io_bp_0_control_u;
  wire  bpu_io_bp_0_control_x;
  wire  bpu_io_bp_0_control_w;
  wire  bpu_io_bp_0_control_r;
  wire [31:0] bpu_io_bp_0_address;
  wire  bpu_io_bp_1_control_action;
  wire  bpu_io_bp_1_control_chain;
  wire [1:0] bpu_io_bp_1_control_tmatch;
  wire  bpu_io_bp_1_control_m;
  wire  bpu_io_bp_1_control_h;
  wire  bpu_io_bp_1_control_s;
  wire  bpu_io_bp_1_control_u;
  wire  bpu_io_bp_1_control_x;
  wire  bpu_io_bp_1_control_w;
  wire  bpu_io_bp_1_control_r;
  wire [31:0] bpu_io_bp_1_address;
  wire [31:0] bpu_io_pc;
  wire [31:0] bpu_io_ea;
  wire  bpu_io_xcpt_if;
  wire  bpu_io_xcpt_ld;
  wire  bpu_io_xcpt_st;
  wire  bpu_io_debug_if;
  wire  bpu_io_debug_ld;
  wire  bpu_io_debug_st;
  wire  _T_1558;
  wire  _T_1559;
  wire  _T_1560;
  wire  _T_1561;
  wire  _T_1562;
  wire  _T_1563;
  wire  id_xcpt;
  wire [1:0] _T_1564;
  wire [3:0] _T_1565;
  wire [3:0] _T_1566;
  wire [3:0] _T_1567;
  wire [3:0] _T_1568;
  wire [3:0] _T_1569;
  wire [31:0] id_cause;
  wire [4:0] ex_waddr;
  wire [4:0] mem_waddr;
  wire [4:0] wb_waddr;
  wire  _T_1572;
  wire  _T_1573;
  wire  _T_1575;
  wire  _T_1576;
  wire  _T_1578;
  wire  _T_1579;
  wire  id_bypass_src_0_1;
  wire  _T_1580;
  wire  id_bypass_src_0_2;
  wire  id_bypass_src_0_3;
  wire  _T_1582;
  wire  _T_1583;
  wire  id_bypass_src_1_1;
  wire  _T_1584;
  wire  id_bypass_src_1_2;
  wire  id_bypass_src_1_3;
  reg  ex_reg_rs_bypass_0;
  reg [31:0] _RAND_79;
  reg  ex_reg_rs_bypass_1;
  reg [31:0] _RAND_80;
  reg [1:0] ex_reg_rs_lsb_0;
  reg [31:0] _RAND_81;
  reg [1:0] ex_reg_rs_lsb_1;
  reg [31:0] _RAND_82;
  reg [29:0] ex_reg_rs_msb_0;
  reg [31:0] _RAND_83;
  reg [29:0] ex_reg_rs_msb_1;
  reg [31:0] _RAND_84;
  wire  _T_1608;
  wire [31:0] _T_1609;
  wire  _T_1611;
  wire [31:0] _T_1612;
  wire  _T_1614;
  wire [31:0] _T_1615;
  wire [31:0] _T_1616;
  wire [31:0] ex_rs_0;
  wire  _T_1618;
  wire [31:0] _T_1619;
  wire  _T_1621;
  wire [31:0] _T_1622;
  wire  _T_1624;
  wire [31:0] _T_1625;
  wire [31:0] _T_1626;
  wire [31:0] ex_rs_1;
  wire  _T_1628;
  wire  _T_1630;
  wire  _T_1631;
  wire  _T_1632;
  wire  _T_1634;
  wire [10:0] _T_1635;
  wire [10:0] _T_1636;
  wire [10:0] _T_1637;
  wire  _T_1639;
  wire  _T_1641;
  wire  _T_1642;
  wire [7:0] _T_1643;
  wire [7:0] _T_1644;
  wire [7:0] _T_1645;
  wire  _T_1650;
  wire  _T_1653;
  wire  _T_1654;
  wire  _T_1655;
  wire  _T_1657;
  wire  _T_1658;
  wire  _T_1659;
  wire  _T_1660;
  wire  _T_1661;
  wire  _T_1662;
  wire [5:0] _T_1669;
  wire [5:0] _T_1670;
  wire  _T_1675;
  wire  _T_1678;
  wire [3:0] _T_1679;
  wire [3:0] _T_1682;
  wire [3:0] _T_1683;
  wire [3:0] _T_1684;
  wire [3:0] _T_1685;
  wire [3:0] _T_1686;
  wire  _T_1691;
  wire  _T_1695;
  wire  _T_1697;
  wire  _T_1698;
  wire  _T_1699;
  wire [9:0] _T_1700;
  wire [10:0] _T_1701;
  wire  _T_1702;
  wire [7:0] _T_1703;
  wire [8:0] _T_1704;
  wire [10:0] _T_1705;
  wire  _T_1706;
  wire [11:0] _T_1707;
  wire [20:0] _T_1708;
  wire [31:0] _T_1709;
  wire [31:0] ex_imm;
  wire [31:0] _T_1712;
  wire [31:0] _T_1714;
  wire  _T_1715;
  wire [31:0] _T_1716;
  wire  _T_1717;
  wire [31:0] ex_op1;
  wire [31:0] _T_1720;
  wire [3:0] _T_1725;
  wire  _T_1726;
  wire [3:0] _T_1727;
  wire  _T_1728;
  wire [31:0] _T_1729;
  wire  _T_1730;
  wire [31:0] ex_op2;
  wire [3:0] alu_io_fn;
  wire [31:0] alu_io_in2;
  wire [31:0] alu_io_in1;
  wire [31:0] alu_io_out;
  wire [31:0] alu_io_adder_out;
  wire  alu_io_cmp_out;
  wire [31:0] _T_1731;
  wire [31:0] _T_1732;
  wire  div_clock;
  wire  div_reset;
  wire  div_io_req_ready;
  wire  div_io_req_valid;
  wire [3:0] div_io_req_bits_fn;
  wire [31:0] div_io_req_bits_in1;
  wire [31:0] div_io_req_bits_in2;
  wire [4:0] div_io_req_bits_tag;
  wire  div_io_kill;
  wire  div_io_resp_ready;
  wire  div_io_resp_valid;
  wire [31:0] div_io_resp_bits_data;
  wire [4:0] div_io_resp_bits_tag;
  wire  _T_1733;
  wire  _T_1735;
  wire  _T_1737;
  wire  _T_1738;
  wire  _T_1739;
  wire  _T_1742;
  wire  _T_1746;
  wire  _GEN_1;
  wire [1:0] _T_1754;
  wire  _T_1756;
  wire [1:0] _GEN_2;
  wire [1:0] _GEN_3;
  wire  _GEN_4;
  wire [1:0] _T_1760;
  wire  _T_1762;
  wire  _T_1763;
  wire [1:0] _GEN_5;
  wire [1:0] _GEN_6;
  wire [3:0] _GEN_7;
  wire [1:0] _GEN_9;
  wire [1:0] _GEN_10;
  wire  _GEN_11;
  wire  _T_1766;
  wire  _T_1768;
  wire  _T_1770;
  wire [1:0] _T_1771;
  wire [2:0] _GEN_12;
  wire  _T_1772;
  wire  _T_1773;
  wire  _T_1774;
  wire [1:0] _T_1779;
  wire [1:0] _T_1780;
  wire [1:0] _T_1781;
  wire  _T_1783;
  wire  _T_1784;
  wire [1:0] _T_1785;
  wire [29:0] _T_1786;
  wire [1:0] _GEN_13;
  wire [29:0] _GEN_14;
  wire  _T_1787;
  wire  _T_1788;
  wire  _T_1789;
  wire [1:0] _T_1794;
  wire [1:0] _T_1795;
  wire [1:0] _T_1796;
  wire  _T_1798;
  wire  _T_1799;
  wire [1:0] _T_1800;
  wire [29:0] _T_1801;
  wire [1:0] _GEN_15;
  wire [29:0] _GEN_16;
  wire [15:0] _T_1802;
  wire [31:0] _T_1803;
  wire [1:0] _T_1805;
  wire [29:0] _T_1806;
  wire  _GEN_17;
  wire [1:0] _GEN_18;
  wire [29:0] _GEN_19;
  wire  _GEN_21;
  wire  _GEN_22;
  wire  _GEN_23;
  wire  _GEN_24;
  wire  _GEN_25;
  wire  _GEN_26;
  wire [1:0] _GEN_28;
  wire [1:0] _GEN_29;
  wire [2:0] _GEN_30;
  wire [3:0] _GEN_32;
  wire  _GEN_33;
  wire [4:0] _GEN_34;
  wire [2:0] _GEN_35;
  wire  _GEN_39;
  wire  _GEN_40;
  wire  _GEN_41;
  wire [2:0] _GEN_42;
  wire  _GEN_43;
  wire  _GEN_47;
  wire  _GEN_48;
  wire  _GEN_49;
  wire  _GEN_50;
  wire  _GEN_51;
  wire [1:0] _GEN_52;
  wire [29:0] _GEN_53;
  wire  _GEN_54;
  wire [1:0] _GEN_55;
  wire [29:0] _GEN_56;
  wire  _T_1809;
  wire  _T_1810;
  wire [31:0] _GEN_57;
  wire [31:0] _GEN_58;
  wire [31:0] _GEN_59;
  wire [31:0] _GEN_60;
  wire  _T_1811;
  wire  ex_pc_valid;
  wire  _T_1813;
  wire  wb_dcache_miss;
  wire  _T_1815;
  wire  _T_1816;
  wire  _T_1818;
  wire  _T_1819;
  wire  replay_ex_structural;
  wire  replay_ex_load_use;
  wire  _T_1820;
  wire  _T_1821;
  wire  replay_ex;
  wire  _T_1822;
  wire  _T_1824;
  wire  ctrl_killx;
  wire  _T_1826;
  wire  _T_1840;
  wire  _T_1841;
  wire  _T_1842;
  wire  _T_1843;
  wire  _T_1846;
  wire  _T_1847;
  wire  _T_1848;
  wire  ex_slow_bypass;
  wire  ex_xcpt;
  wire  _T_1853;
  wire  mem_pc_valid;
  wire  mem_br_taken;
  wire [31:0] _T_1854;
  wire  _T_1855;
  wire  _T_1860;
  wire  _T_1861;
  wire [10:0] _T_1867;
  wire [7:0] _T_1873;
  wire [7:0] _T_1874;
  wire [7:0] _T_1875;
  wire  _T_1884;
  wire  _T_1885;
  wire  _T_1888;
  wire  _T_1889;
  wire [5:0] _T_1899;
  wire [3:0] _T_1909;
  wire [3:0] _T_1913;
  wire [9:0] _T_1930;
  wire [10:0] _T_1931;
  wire  _T_1932;
  wire [7:0] _T_1933;
  wire [8:0] _T_1934;
  wire [10:0] _T_1935;
  wire  _T_1936;
  wire [11:0] _T_1937;
  wire [20:0] _T_1938;
  wire [31:0] _T_1939;
  wire [31:0] _T_1940;
  wire [9:0] _T_2015;
  wire [10:0] _T_2016;
  wire  _T_2017;
  wire [7:0] _T_2018;
  wire [8:0] _T_2019;
  wire [20:0] _T_2023;
  wire [31:0] _T_2024;
  wire [31:0] _T_2025;
  wire [3:0] _T_2028;
  wire [31:0] _T_2029;
  wire [31:0] _T_2030;
  wire [32:0] _T_2031;
  wire [31:0] _T_2032;
  wire [31:0] mem_br_target;
  wire  _T_2033;
  wire [31:0] _T_2034;
  wire [31:0] _T_2035;
  wire [31:0] _T_2037;
  wire [31:0] _T_2038;
  wire [31:0] mem_npc;
  wire  _T_2047;
  wire  _T_2048;
  wire  _T_2050;
  wire  mem_npc_misaligned;
  wire  _T_2052;
  wire  _T_2053;
  wire  _T_2054;
  wire [31:0] _T_2056;
  wire [31:0] mem_int_wdata;
  wire  _T_2059;
  wire  mem_cfi_taken;
  wire  _T_2064;
  wire  _T_2065;
  wire  _T_2067;
  wire  _T_2070;
  wire  _T_2073;
  wire  _T_2076;
  wire  _T_2077;
  wire  _GEN_70;
  wire  _T_2080;
  wire  _T_2081;
  wire  _T_2083;
  wire  _T_2085;
  wire  _T_2086;
  wire  _T_2089;
  wire  _T_2094;
  wire  _T_2095;
  wire  _T_2096;
  wire  _T_2097;
  wire  _T_2098;
  wire  _T_2099;
  wire  _T_2100;
  wire  _T_2106;
  wire  _T_2107;
  wire  _T_2108;
  wire  _T_2109;
  wire  _T_2110;
  wire  _T_2111;
  wire  _T_2112;
  wire  _T_2113;
  wire  _T_2114;
  wire  _T_2115;
  wire  _T_2116;
  wire  _T_2117;
  wire  _T_2119;
  wire  _T_2121;
  wire  _T_2122;
  wire  _T_2125;
  wire  _T_2152;
  wire  _T_2153;
  wire  _T_2154;
  wire  _T_2156;
  wire [2:0] _T_2158;
  wire [1:0] _T_2160;
  wire  _T_2162;
  wire [7:0] _T_2163;
  wire [15:0] _T_2164;
  wire [31:0] _T_2165;
  wire  _T_2167;
  wire [15:0] _T_2168;
  wire [31:0] _T_2169;
  wire [31:0] _T_2170;
  wire [31:0] _T_2171;
  wire [31:0] _GEN_71;
  wire  _T_2172;
  wire  _GEN_72;
  wire  _GEN_73;
  wire  _GEN_75;
  wire  _GEN_76;
  wire  _GEN_77;
  wire  _GEN_78;
  wire  _GEN_79;
  wire  _GEN_87;
  wire [2:0] _GEN_89;
  wire  _GEN_93;
  wire  _GEN_94;
  wire  _GEN_95;
  wire [2:0] _GEN_96;
  wire  _GEN_97;
  wire  _GEN_101;
  wire  _GEN_102;
  wire  _GEN_103;
  wire  _GEN_104;
  wire  _GEN_115;
  wire  _GEN_116;
  wire [31:0] _GEN_117;
  wire [31:0] _GEN_118;
  wire [31:0] _GEN_119;
  wire [31:0] _GEN_120;
  wire [31:0] _GEN_121;
  wire [31:0] _GEN_122;
  wire  _T_2175;
  wire  _T_2176;
  wire  mem_breakpoint;
  wire  _T_2177;
  wire  _T_2178;
  wire  mem_debug_breakpoint;
  wire  _T_2182;
  wire  mem_new_xcpt;
  wire [1:0] _T_2183;
  wire [3:0] mem_new_cause;
  wire  _T_2184;
  wire  _T_2185;
  wire  mem_xcpt;
  wire [31:0] mem_cause;
  wire  dcache_kill_mem;
  wire  _T_2187;
  wire  fpu_kill_mem;
  wire  _T_2188;
  wire  replay_mem;
  wire  _T_2189;
  wire  _T_2190;
  wire  _T_2192;
  wire  killm_common;
  wire  _T_2193;
  reg  _T_2195;
  reg [31:0] _RAND_85;
  wire  _T_2196;
  wire  _T_2197;
  wire  ctrl_killm;
  wire  _T_2199;
  wire  _T_2201;
  wire  _T_2202;
  wire  _T_2205;
  wire  _T_2208;
  wire  _T_2211;
  wire  _T_2212;
  wire [31:0] _T_2213;
  wire  _GEN_126;
  wire  _GEN_137;
  wire [2:0] _GEN_139;
  wire  _GEN_143;
  wire  _GEN_144;
  wire  _GEN_145;
  wire [2:0] _GEN_146;
  wire  _GEN_147;
  wire  _GEN_152;
  wire [31:0] _GEN_153;
  wire [31:0] _GEN_155;
  wire [31:0] _GEN_156;
  wire [31:0] _GEN_157;
  wire [31:0] _GEN_158;
  wire  _T_2215;
  wire  _T_2216;
  wire  _T_2219;
  wire  _T_2222;
  wire  _T_2225;
  wire  _T_2228;
  wire  _T_2231;
  wire  _T_2233;
  wire  _T_2234;
  wire  _T_2235;
  wire  _T_2236;
  wire  _T_2237;
  wire  wb_xcpt;
  wire [2:0] _T_2238;
  wire [3:0] _T_2239;
  wire [3:0] _T_2240;
  wire [3:0] _T_2241;
  wire [3:0] _T_2242;
  wire [31:0] wb_cause;
  wire  wb_wxd;
  wire  _T_2243;
  wire  wb_set_sboard;
  wire  replay_wb_common;
  wire  _T_2246;
  wire  replay_wb_rocc;
  wire  replay_wb;
  wire  _T_2247;
  wire  _T_2248;
  wire  _T_2249;
  wire  _T_2250;
  wire  dmem_resp_xpu;
  wire [4:0] dmem_resp_waddr;
  wire  dmem_resp_valid;
  wire  dmem_resp_replay;
  wire  _T_2255;
  wire [31:0] ll_wdata;
  wire  _T_2258;
  wire  _T_2260;
  wire  _GEN_159;
  wire [4:0] _GEN_160;
  wire  _GEN_161;
  wire  _T_2264;
  wire  _T_2265;
  wire  _T_2267;
  wire  wb_valid;
  wire  wb_wen;
  wire  rf_wen;
  wire [4:0] rf_waddr;
  wire  _T_2268;
  wire  _T_2270;
  wire [31:0] _T_2271;
  wire [31:0] _T_2272;
  wire [31:0] rf_wdata;
  wire  _T_2274;
  wire [4:0] _T_2276;
  wire  _T_2278;
  wire [31:0] _GEN_162;
  wire  _T_2279;
  wire [31:0] _GEN_163;
  wire [31:0] _GEN_168;
  wire [31:0] _GEN_169;
  wire  _GEN_172;
  wire [31:0] _GEN_174;
  wire [31:0] _GEN_175;
  wire [11:0] _T_2280;
  wire [11:0] _T_2281;
  wire [2:0] _T_2283;
  wire  _T_2286;
  wire  _T_2289;
  wire  _T_2291;
  wire  _T_2292;
  reg [31:0] _T_2295;
  reg [31:0] _RAND_86;
  wire [30:0] _T_2296;
  wire [31:0] _GEN_189;
  wire [31:0] _T_2297;
  wire [31:0] _T_2300;
  wire [31:0] _T_2302;
  wire [31:0] _T_2303;
  wire [31:0] _T_2304;
  wire [31:0] _GEN_176;
  wire [31:0] _T_2306;
  wire  _T_2307;
  wire  _T_2308;
  wire  _T_2309;
  wire  _T_2311;
  wire  _T_2312;
  wire  _T_2313;
  wire [31:0] _T_2314;
  wire  _T_2315;
  wire  _T_2316;
  wire  _T_2317;
  wire  _T_2319;
  wire  _T_2320;
  wire  _T_2321;
  wire [31:0] _T_2322;
  wire  _T_2323;
  wire  _T_2324;
  wire  _T_2325;
  wire  _T_2327;
  wire  _T_2328;
  wire  _T_2329;
  wire  _T_2330;
  wire  id_sboard_hazard;
  wire  _T_2331;
  wire [31:0] _T_2333;
  wire [31:0] _T_2335;
  wire [31:0] _T_2336;
  wire  _T_2337;
  wire [31:0] _GEN_177;
  wire  _T_2339;
  wire  _T_2340;
  wire  _T_2341;
  wire  _T_2342;
  wire  _T_2343;
  wire  ex_cannot_bypass;
  wire  _T_2344;
  wire  _T_2345;
  wire  _T_2346;
  wire  _T_2347;
  wire  _T_2348;
  wire  _T_2349;
  wire  _T_2350;
  wire  _T_2351;
  wire  data_hazard_ex;
  wire  _T_2353;
  wire  _T_2355;
  wire  _T_2356;
  wire  _T_2357;
  wire  _T_2359;
  wire  _T_2360;
  wire  _T_2361;
  wire  _T_2362;
  wire  fp_data_hazard_ex;
  wire  _T_2363;
  wire  _T_2364;
  wire  id_ex_hazard;
  wire  _T_2367;
  wire  _T_2368;
  wire  _T_2369;
  wire  _T_2370;
  wire  _T_2371;
  wire  mem_cannot_bypass;
  wire  _T_2372;
  wire  _T_2373;
  wire  _T_2374;
  wire  _T_2375;
  wire  _T_2376;
  wire  _T_2377;
  wire  _T_2378;
  wire  _T_2379;
  wire  data_hazard_mem;
  wire  _T_2381;
  wire  _T_2383;
  wire  _T_2384;
  wire  _T_2385;
  wire  _T_2387;
  wire  _T_2388;
  wire  _T_2389;
  wire  _T_2390;
  wire  fp_data_hazard_mem;
  wire  _T_2391;
  wire  _T_2392;
  wire  id_mem_hazard;
  wire  _T_2393;
  wire  _T_2394;
  wire  _T_2395;
  wire  _T_2396;
  wire  _T_2397;
  wire  _T_2398;
  wire  _T_2399;
  wire  _T_2400;
  wire  _T_2401;
  wire  _T_2402;
  wire  data_hazard_wb;
  wire  _T_2404;
  wire  _T_2406;
  wire  _T_2407;
  wire  _T_2408;
  wire  _T_2410;
  wire  _T_2411;
  wire  _T_2412;
  wire  _T_2413;
  wire  fp_data_hazard_wb;
  wire  _T_2414;
  wire  _T_2415;
  wire  id_wb_hazard;
  reg [31:0] _T_2418;
  reg [31:0] _RAND_87;
  wire  _T_2420;
  wire  _T_2421;
  wire  _T_2422;
  wire [31:0] _T_2426;
  wire [31:0] _T_2427;
  wire [31:0] _GEN_178;
  wire  _T_2429;
  wire [31:0] _T_2431;
  wire [31:0] _T_2433;
  wire [31:0] _T_2434;
  wire [31:0] _T_2435;
  wire  _T_2436;
  wire [31:0] _GEN_179;
  wire [31:0] _T_2438;
  wire [31:0] _T_2440;
  wire [31:0] _T_2441;
  wire [31:0] _T_2442;
  wire  _T_2443;
  wire [31:0] _GEN_180;
  wire  _T_2445;
  wire  _T_2446;
  wire [31:0] _T_2447;
  wire  _T_2448;
  wire  _T_2449;
  wire [31:0] _T_2450;
  wire  _T_2451;
  wire  _T_2452;
  wire [31:0] _T_2453;
  wire  _T_2454;
  wire  _T_2455;
  wire [31:0] _T_2456;
  wire  _T_2457;
  wire  _T_2458;
  wire  _T_2459;
  wire  _T_2460;
  wire  _T_2461;
  wire  id_stall_fpu;
  reg  dcache_blocked;
  reg [31:0] _RAND_88;
  wire  _T_2465;
  wire  _T_2466;
  wire  _T_2475;
  wire  _T_2476;
  wire  _T_2477;
  wire  _T_2478;
  wire  _T_2479;
  wire  _T_2480;
  wire  _T_2481;
  wire  _T_2482;
  wire  _T_2483;
  wire  _T_2484;
  wire  _T_2485;
  wire  _T_2490;
  wire  _T_2491;
  wire  _T_2493;
  wire  _T_2494;
  wire  _T_2495;
  wire  _T_2496;
  wire  _T_2497;
  wire  ctrl_stalld;
  wire  _T_2499;
  wire  _T_2500;
  wire  _T_2501;
  wire  _T_2502;
  wire  _T_2503;
  wire  _T_2506;
  wire [31:0] _T_2507;
  wire [31:0] _T_2508;
  wire  _T_2509;
  wire  _T_2511;
  wire  _T_2512;
  wire  _T_2513;
  wire  _T_2514;
  wire  _T_2517;
  wire  _T_2558;
  wire  _T_2559;
  wire  _T_2560;
  wire [5:0] ex_dcache_tag;
  wire [31:0] _T_2562;
  wire  _T_2563;
  wire [4:0] _T_2581;
  wire [4:0] _T_2582;
  wire [31:0] _T_2588;
  wire  _T_2591;
  wire  _T_2592;
  wire [4:0] _T_2594;
  reg [31:0] _T_2597;
  reg [31:0] _RAND_89;
  reg [31:0] _T_2599;
  reg [31:0] _RAND_90;
  reg [31:0] _T_2602;
  reg [31:0] _RAND_91;
  reg [31:0] _T_2604;
  reg [31:0] _RAND_92;
  wire  _T_2606;
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_I_BUF ibuf (
    .clock(ibuf_clock),
    .io_imem_ready(ibuf_io_imem_ready),
    .io_imem_valid(ibuf_io_imem_valid),
    .io_imem_bits_btb_valid(ibuf_io_imem_bits_btb_valid),
    .io_imem_bits_btb_bits_taken(ibuf_io_imem_bits_btb_bits_taken),
    .io_imem_bits_btb_bits_bridx(ibuf_io_imem_bits_btb_bits_bridx),
    .io_imem_bits_pc(ibuf_io_imem_bits_pc),
    .io_imem_bits_data(ibuf_io_imem_bits_data),
    .io_imem_bits_xcpt_pf_inst(ibuf_io_imem_bits_xcpt_pf_inst),
    .io_imem_bits_xcpt_ae_inst(ibuf_io_imem_bits_xcpt_ae_inst),
    .io_imem_bits_replay(ibuf_io_imem_bits_replay),
    .io_pc(ibuf_io_pc),
    .io_inst_0_ready(ibuf_io_inst_0_ready),
    .io_inst_0_valid(ibuf_io_inst_0_valid),
    .io_inst_0_bits_xcpt0_pf_inst(ibuf_io_inst_0_bits_xcpt0_pf_inst),
    .io_inst_0_bits_xcpt0_ae_inst(ibuf_io_inst_0_bits_xcpt0_ae_inst),
    .io_inst_0_bits_xcpt1_pf_inst(ibuf_io_inst_0_bits_xcpt1_pf_inst),
    .io_inst_0_bits_xcpt1_ae_inst(ibuf_io_inst_0_bits_xcpt1_ae_inst),
    .io_inst_0_bits_replay(ibuf_io_inst_0_bits_replay),
    .io_inst_0_bits_rvc(ibuf_io_inst_0_bits_rvc),
    .io_inst_0_bits_inst_bits(ibuf_io_inst_0_bits_inst_bits),
    .io_inst_0_bits_inst_rd(ibuf_io_inst_0_bits_inst_rd),
    .io_inst_0_bits_inst_rs1(ibuf_io_inst_0_bits_inst_rs1),
    .io_inst_0_bits_inst_rs2(ibuf_io_inst_0_bits_inst_rs2),
    .io_inst_0_bits_inst_rs3(ibuf_io_inst_0_bits_inst_rs3),
    .io_inst_0_bits_raw(ibuf_io_inst_0_bits_raw),
    .io_inst_0_bits_cinst(ibuf_io_inst_0_bits_cinst)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_CSR_FILE csr (
    .clock(csr_clock),
    .reset(csr_reset),
    .io_interrupts_debug(csr_io_interrupts_debug),
    .io_interrupts_mtip(csr_io_interrupts_mtip),
    .io_interrupts_msip(csr_io_interrupts_msip),
    .io_interrupts_meip(csr_io_interrupts_meip),
    .io_hartid(csr_io_hartid),
    .io_rw_addr(csr_io_rw_addr),
    .io_rw_cmd(csr_io_rw_cmd),
    .io_rw_rdata(csr_io_rw_rdata),
    .io_rw_wdata(csr_io_rw_wdata),
    .io_decode_csr(csr_io_decode_csr),
    .io_decode_fp_illegal(csr_io_decode_fp_illegal),
    .io_decode_read_illegal(csr_io_decode_read_illegal),
    .io_decode_write_illegal(csr_io_decode_write_illegal),
    .io_decode_write_flush(csr_io_decode_write_flush),
    .io_decode_system_illegal(csr_io_decode_system_illegal),
    .io_csr_stall(csr_io_csr_stall),
    .io_eret(csr_io_eret),
    .io_singleStep(csr_io_singleStep),
    .io_status_debug(csr_io_status_debug),
    .io_status_isa(csr_io_status_isa),
    .io_status_dprv(csr_io_status_dprv),
    .io_status_prv(csr_io_status_prv),
    .io_status_sd(csr_io_status_sd),
    .io_status_zero2(csr_io_status_zero2),
    .io_status_sxl(csr_io_status_sxl),
    .io_status_uxl(csr_io_status_uxl),
    .io_status_sd_rv32(csr_io_status_sd_rv32),
    .io_status_zero1(csr_io_status_zero1),
    .io_status_tsr(csr_io_status_tsr),
    .io_status_tw(csr_io_status_tw),
    .io_status_tvm(csr_io_status_tvm),
    .io_status_mxr(csr_io_status_mxr),
    .io_status_sum(csr_io_status_sum),
    .io_status_mprv(csr_io_status_mprv),
    .io_status_xs(csr_io_status_xs),
    .io_status_fs(csr_io_status_fs),
    .io_status_mpp(csr_io_status_mpp),
    .io_status_hpp(csr_io_status_hpp),
    .io_status_spp(csr_io_status_spp),
    .io_status_mpie(csr_io_status_mpie),
    .io_status_hpie(csr_io_status_hpie),
    .io_status_spie(csr_io_status_spie),
    .io_status_upie(csr_io_status_upie),
    .io_status_mie(csr_io_status_mie),
    .io_status_hie(csr_io_status_hie),
    .io_status_sie(csr_io_status_sie),
    .io_status_uie(csr_io_status_uie),
    .io_ptbr_ppn(csr_io_ptbr_ppn),
    .io_evec(csr_io_evec),
    .io_exception(csr_io_exception),
    .io_retire(csr_io_retire),
    .io_cause(csr_io_cause),
    .io_pc(csr_io_pc),
    .io_badaddr(csr_io_badaddr),
    .io_time(csr_io_time),
    .io_fcsr_rm(csr_io_fcsr_rm),
    .io_fcsr_flags_valid(csr_io_fcsr_flags_valid),
    .io_fcsr_flags_bits(csr_io_fcsr_flags_bits),
    .io_rocc_interrupt(csr_io_rocc_interrupt),
    .io_interrupt(csr_io_interrupt),
    .io_interrupt_cause(csr_io_interrupt_cause),
    .io_bp_0_control_action(csr_io_bp_0_control_action),
    .io_bp_0_control_chain(csr_io_bp_0_control_chain),
    .io_bp_0_control_tmatch(csr_io_bp_0_control_tmatch),
    .io_bp_0_control_m(csr_io_bp_0_control_m),
    .io_bp_0_control_h(csr_io_bp_0_control_h),
    .io_bp_0_control_s(csr_io_bp_0_control_s),
    .io_bp_0_control_u(csr_io_bp_0_control_u),
    .io_bp_0_control_x(csr_io_bp_0_control_x),
    .io_bp_0_control_w(csr_io_bp_0_control_w),
    .io_bp_0_control_r(csr_io_bp_0_control_r),
    .io_bp_0_address(csr_io_bp_0_address),
    .io_bp_1_control_action(csr_io_bp_1_control_action),
    .io_bp_1_control_chain(csr_io_bp_1_control_chain),
    .io_bp_1_control_tmatch(csr_io_bp_1_control_tmatch),
    .io_bp_1_control_m(csr_io_bp_1_control_m),
    .io_bp_1_control_h(csr_io_bp_1_control_h),
    .io_bp_1_control_s(csr_io_bp_1_control_s),
    .io_bp_1_control_u(csr_io_bp_1_control_u),
    .io_bp_1_control_x(csr_io_bp_1_control_x),
    .io_bp_1_control_w(csr_io_bp_1_control_w),
    .io_bp_1_control_r(csr_io_bp_1_control_r),
    .io_bp_1_address(csr_io_bp_1_address)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_BREAKPOINT_UNIT bpu (
    .io_status_debug(bpu_io_status_debug),
    .io_status_prv(bpu_io_status_prv),
    .io_bp_0_control_action(bpu_io_bp_0_control_action),
    .io_bp_0_control_chain(bpu_io_bp_0_control_chain),
    .io_bp_0_control_tmatch(bpu_io_bp_0_control_tmatch),
    .io_bp_0_control_m(bpu_io_bp_0_control_m),
    .io_bp_0_control_h(bpu_io_bp_0_control_h),
    .io_bp_0_control_s(bpu_io_bp_0_control_s),
    .io_bp_0_control_u(bpu_io_bp_0_control_u),
    .io_bp_0_control_x(bpu_io_bp_0_control_x),
    .io_bp_0_control_w(bpu_io_bp_0_control_w),
    .io_bp_0_control_r(bpu_io_bp_0_control_r),
    .io_bp_0_address(bpu_io_bp_0_address),
    .io_bp_1_control_action(bpu_io_bp_1_control_action),
    .io_bp_1_control_chain(bpu_io_bp_1_control_chain),
    .io_bp_1_control_tmatch(bpu_io_bp_1_control_tmatch),
    .io_bp_1_control_m(bpu_io_bp_1_control_m),
    .io_bp_1_control_h(bpu_io_bp_1_control_h),
    .io_bp_1_control_s(bpu_io_bp_1_control_s),
    .io_bp_1_control_u(bpu_io_bp_1_control_u),
    .io_bp_1_control_x(bpu_io_bp_1_control_x),
    .io_bp_1_control_w(bpu_io_bp_1_control_w),
    .io_bp_1_control_r(bpu_io_bp_1_control_r),
    .io_bp_1_address(bpu_io_bp_1_address),
    .io_pc(bpu_io_pc),
    .io_ea(bpu_io_ea),
    .io_xcpt_if(bpu_io_xcpt_if),
    .io_xcpt_ld(bpu_io_xcpt_ld),
    .io_xcpt_st(bpu_io_xcpt_st),
    .io_debug_if(bpu_io_debug_if),
    .io_debug_ld(bpu_io_debug_ld),
    .io_debug_st(bpu_io_debug_st)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ALU alu (
    .io_fn(alu_io_fn),
    .io_in2(alu_io_in2),
    .io_in1(alu_io_in1),
    .io_out(alu_io_out),
    .io_adder_out(alu_io_adder_out),
    .io_cmp_out(alu_io_cmp_out)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_MUL_DIV div (
    .clock(div_clock),
    .reset(div_reset),
    .io_req_ready(div_io_req_ready),
    .io_req_valid(div_io_req_valid),
    .io_req_bits_fn(div_io_req_bits_fn),
    .io_req_bits_in1(div_io_req_bits_in1),
    .io_req_bits_in2(div_io_req_bits_in2),
    .io_req_bits_tag(div_io_req_bits_tag),
    .io_kill(div_io_kill),
    .io_resp_ready(div_io_resp_ready),
    .io_resp_valid(div_io_resp_valid),
    .io_resp_bits_data(div_io_resp_bits_data),
    .io_resp_bits_tag(div_io_resp_bits_tag)
  );
  assign io_imem_req_valid = take_pc;
  assign io_imem_req_bits_pc = _T_2508;
  assign io_imem_req_bits_speculative = _T_2201;
  assign io_imem_sfence_valid = _T_2513;
  assign io_imem_sfence_bits_rs1 = _T_2514;
  assign io_imem_resp_ready = ibuf_io_imem_ready;
  assign io_imem_flush_icache = _T_2512;
  assign io_dmem_req_valid = _T_2560;
  assign io_dmem_req_bits_addr = alu_io_adder_out;
  assign io_dmem_req_bits_tag = ex_dcache_tag;
  assign io_dmem_req_bits_cmd = ex_ctrl_mem_cmd;
  assign io_dmem_req_bits_typ = ex_ctrl_mem_type;
  assign io_dmem_req_bits_phys = 1'h0;
  assign io_dmem_s1_kill = _T_2563;
  assign io_dmem_s1_data_data = _T_2562;
  assign io_dmem_s1_data_mask = 4'h0;
  assign io_dmem_invalidate_lr = wb_xcpt;
  assign io_ptw_ptbr_ppn = csr_io_ptbr_ppn;
  assign io_ptw_sfence_valid = io_imem_sfence_valid;
  assign io_ptw_sfence_bits_rs1 = io_imem_sfence_bits_rs1;
  assign io_ptw_status_dprv = csr_io_status_dprv;
  assign io_ptw_status_prv = csr_io_status_prv;
  assign io_ptw_status_mxr = csr_io_status_mxr;
  assign io_ptw_status_sum = csr_io_status_sum;
  assign io_fpu_inst = ibuf_io_inst_0_bits_inst_bits;
  assign io_fpu_fromint_data = ex_rs_0;
  assign io_fpu_fcsr_rm = csr_io_fcsr_rm;
  assign io_fpu_dmem_resp_val = _T_2559;
  assign io_fpu_dmem_resp_tag = dmem_resp_waddr;
  assign io_fpu_dmem_resp_data = io_dmem_resp_bits_data_word_bypass;
  assign io_fpu_valid = _T_2558;
  assign io_fpu_killx = ctrl_killx;
  assign io_fpu_killm = killm_common;
  assign take_pc = _T_2249 | _T_2065;
  assign ibuf_clock = clock;
  assign ibuf_io_imem_valid = io_imem_resp_valid;
  assign ibuf_io_imem_bits_btb_valid = io_imem_resp_bits_btb_valid;
  assign ibuf_io_imem_bits_btb_bits_taken = io_imem_resp_bits_btb_bits_taken;
  assign ibuf_io_imem_bits_btb_bits_bridx = io_imem_resp_bits_btb_bits_bridx;
  assign ibuf_io_imem_bits_pc = io_imem_resp_bits_pc;
  assign ibuf_io_imem_bits_data = io_imem_resp_bits_data;
  assign ibuf_io_imem_bits_xcpt_pf_inst = io_imem_resp_bits_xcpt_pf_inst;
  assign ibuf_io_imem_bits_xcpt_ae_inst = io_imem_resp_bits_xcpt_ae_inst;
  assign ibuf_io_imem_bits_replay = io_imem_resp_bits_replay;
  assign ibuf_io_inst_0_ready = _T_2517;
  assign _T_709 = ibuf_io_inst_0_bits_inst_bits & 32'h207f;
  assign _T_711 = _T_709 == 32'h3;
  assign _T_713 = ibuf_io_inst_0_bits_inst_bits & 32'h607f;
  assign _T_715 = _T_713 == 32'hf;
  assign _T_717 = ibuf_io_inst_0_bits_inst_bits & 32'h5f;
  assign _T_719 = _T_717 == 32'h17;
  assign _T_721 = ibuf_io_inst_0_bits_inst_bits & 32'hfc00007f;
  assign _T_723 = _T_721 == 32'h33;
  assign _T_725 = ibuf_io_inst_0_bits_inst_bits & 32'hbe00707f;
  assign _T_727 = _T_725 == 32'h33;
  assign _T_729 = ibuf_io_inst_0_bits_inst_bits & 32'h6000073;
  assign _T_731 = _T_729 == 32'h43;
  assign _T_733 = ibuf_io_inst_0_bits_inst_bits & 32'he600007f;
  assign _T_735 = _T_733 == 32'h53;
  assign _T_737 = ibuf_io_inst_0_bits_inst_bits & 32'h707b;
  assign _T_739 = _T_737 == 32'h63;
  assign _T_741 = ibuf_io_inst_0_bits_inst_bits & 32'h7f;
  assign _T_743 = _T_741 == 32'h6f;
  assign _T_745 = ibuf_io_inst_0_bits_inst_bits & 32'hffefffff;
  assign _T_747 = _T_745 == 32'h73;
  assign _T_749 = ibuf_io_inst_0_bits_inst_bits & 32'hfc00305f;
  assign _T_751 = _T_749 == 32'h1013;
  assign _T_753 = ibuf_io_inst_0_bits_inst_bits & 32'h705b;
  assign _T_755 = _T_753 == 32'h2003;
  assign _T_759 = _T_709 == 32'h2013;
  assign _T_761 = ibuf_io_inst_0_bits_inst_bits & 32'h1800707f;
  assign _T_763 = _T_761 == 32'h202f;
  assign _T_767 = _T_709 == 32'h2073;
  assign _T_769 = ibuf_io_inst_0_bits_inst_bits & 32'hbc00707f;
  assign _T_771 = _T_769 == 32'h5013;
  assign _T_775 = _T_725 == 32'h5033;
  assign _T_777 = ibuf_io_inst_0_bits_inst_bits & 32'he800707f;
  assign _T_779 = _T_777 == 32'h800202f;
  assign _T_781 = ibuf_io_inst_0_bits_inst_bits & 32'hf9f0707f;
  assign _T_783 = _T_781 == 32'h1000202f;
  assign _T_785 = ibuf_io_inst_0_bits_inst_bits == 32'h10500073;
  assign _T_787 = ibuf_io_inst_0_bits_inst_bits & 32'hf600607f;
  assign _T_789 = _T_787 == 32'h20000053;
  assign _T_791 = ibuf_io_inst_0_bits_inst_bits & 32'h7e00607f;
  assign _T_793 = _T_791 == 32'h20000053;
  assign _T_795 = ibuf_io_inst_0_bits_inst_bits & 32'h7e00507f;
  assign _T_797 = _T_795 == 32'h20000053;
  assign _T_799 = ibuf_io_inst_0_bits_inst_bits == 32'h30200073;
  assign _T_801 = ibuf_io_inst_0_bits_inst_bits & 32'hfff0007f;
  assign _T_803 = _T_801 == 32'h58000053;
  assign _T_805 = ibuf_io_inst_0_bits_inst_bits == 32'h7b200073;
  assign _T_807 = ibuf_io_inst_0_bits_inst_bits & 32'hefe0007f;
  assign _T_809 = _T_807 == 32'hc0000053;
  assign _T_811 = ibuf_io_inst_0_bits_inst_bits & 32'hfff0607f;
  assign _T_813 = _T_811 == 32'he0000053;
  assign _T_815 = ibuf_io_inst_0_bits_inst_bits & 32'heff0707f;
  assign _T_817 = _T_815 == 32'he0000053;
  assign _T_819 = ibuf_io_inst_0_bits_inst_bits & 32'h603f;
  assign _T_821 = _T_819 == 32'h23;
  assign _T_823 = ibuf_io_inst_0_bits_inst_bits & 32'h306f;
  assign _T_825 = _T_823 == 32'h1063;
  assign _T_827 = ibuf_io_inst_0_bits_inst_bits & 32'h407f;
  assign _T_829 = _T_827 == 32'h4063;
  assign _T_833 = _T_823 == 32'h3;
  assign _T_836 = _T_711 | _T_715;
  assign _T_837 = _T_836 | _T_719;
  assign _T_838 = _T_837 | _T_723;
  assign _T_839 = _T_838 | _T_727;
  assign _T_840 = _T_839 | _T_731;
  assign _T_841 = _T_840 | _T_735;
  assign _T_842 = _T_841 | _T_739;
  assign _T_843 = _T_842 | _T_743;
  assign _T_844 = _T_843 | _T_747;
  assign _T_845 = _T_844 | _T_751;
  assign _T_846 = _T_845 | _T_755;
  assign _T_847 = _T_846 | _T_759;
  assign _T_848 = _T_847 | _T_763;
  assign _T_849 = _T_848 | _T_767;
  assign _T_850 = _T_849 | _T_771;
  assign _T_851 = _T_850 | _T_775;
  assign _T_852 = _T_851 | _T_779;
  assign _T_853 = _T_852 | _T_783;
  assign _T_854 = _T_853 | _T_785;
  assign _T_855 = _T_854 | _T_789;
  assign _T_856 = _T_855 | _T_793;
  assign _T_857 = _T_856 | _T_797;
  assign _T_858 = _T_857 | _T_799;
  assign _T_859 = _T_858 | _T_803;
  assign _T_860 = _T_859 | _T_805;
  assign _T_861 = _T_860 | _T_809;
  assign _T_862 = _T_861 | _T_813;
  assign _T_863 = _T_862 | _T_817;
  assign _T_864 = _T_863 | _T_821;
  assign _T_865 = _T_864 | _T_825;
  assign _T_866 = _T_865 | _T_829;
  assign _T_867 = _T_866 | _T_833;
  assign _T_869 = ibuf_io_inst_0_bits_inst_bits & 32'h5c;
  assign _T_871 = _T_869 == 32'h4;
  assign _T_873 = ibuf_io_inst_0_bits_inst_bits & 32'h60;
  assign _T_875 = _T_873 == 32'h40;
  assign _T_878 = _T_871 | _T_875;
  assign _T_881 = ibuf_io_inst_0_bits_inst_bits & 32'h74;
  assign _T_883 = _T_881 == 32'h60;
  assign _T_887 = ibuf_io_inst_0_bits_inst_bits & 32'h68;
  assign _T_889 = _T_887 == 32'h68;
  assign _T_893 = ibuf_io_inst_0_bits_inst_bits & 32'h203c;
  assign _T_895 = _T_893 == 32'h24;
  assign _T_899 = ibuf_io_inst_0_bits_inst_bits & 32'h64;
  assign _T_901 = _T_899 == 32'h20;
  assign _T_903 = ibuf_io_inst_0_bits_inst_bits & 32'h34;
  assign _T_905 = _T_903 == 32'h20;
  assign _T_907 = ibuf_io_inst_0_bits_inst_bits & 32'h2048;
  assign _T_909 = _T_907 == 32'h2008;
  assign _T_912 = _T_901 | _T_905;
  assign _T_913 = _T_912 | _T_909;
  assign _T_915 = ibuf_io_inst_0_bits_inst_bits & 32'h44;
  assign _T_917 = _T_915 == 32'h0;
  assign _T_919 = ibuf_io_inst_0_bits_inst_bits & 32'h4024;
  assign _T_921 = _T_919 == 32'h20;
  assign _T_923 = ibuf_io_inst_0_bits_inst_bits & 32'h38;
  assign _T_925 = _T_923 == 32'h20;
  assign _T_927 = ibuf_io_inst_0_bits_inst_bits & 32'h2050;
  assign _T_929 = _T_927 == 32'h2000;
  assign _T_931 = ibuf_io_inst_0_bits_inst_bits & 32'h90000034;
  assign _T_933 = _T_931 == 32'h90000010;
  assign _T_936 = _T_917 | _T_921;
  assign _T_937 = _T_936 | _T_925;
  assign _T_938 = _T_937 | _T_929;
  assign _T_939 = _T_938 | _T_933;
  assign _T_941 = ibuf_io_inst_0_bits_inst_bits & 32'h58;
  assign _T_943 = _T_941 == 32'h0;
  assign _T_945 = ibuf_io_inst_0_bits_inst_bits & 32'h20;
  assign _T_947 = _T_945 == 32'h0;
  assign _T_949 = ibuf_io_inst_0_bits_inst_bits & 32'hc;
  assign _T_951 = _T_949 == 32'h4;
  assign _T_953 = ibuf_io_inst_0_bits_inst_bits & 32'h48;
  assign _T_955 = _T_953 == 32'h48;
  assign _T_957 = ibuf_io_inst_0_bits_inst_bits & 32'h4050;
  assign _T_959 = _T_957 == 32'h4050;
  assign _T_962 = _T_943 | _T_947;
  assign _T_963 = _T_962 | _T_951;
  assign _T_964 = _T_963 | _T_955;
  assign _T_965 = _T_964 | _T_959;
  assign _T_969 = _T_953 == 32'h0;
  assign _T_971 = ibuf_io_inst_0_bits_inst_bits & 32'h18;
  assign _T_973 = _T_971 == 32'h0;
  assign _T_975 = ibuf_io_inst_0_bits_inst_bits & 32'h4008;
  assign _T_977 = _T_975 == 32'h4000;
  assign _T_980 = _T_969 | _T_973;
  assign _T_981 = _T_980 | _T_977;
  assign _T_982 = {_T_981,_T_965};
  assign _T_984 = ibuf_io_inst_0_bits_inst_bits & 32'h4004;
  assign _T_986 = _T_984 == 32'h0;
  assign _T_988 = ibuf_io_inst_0_bits_inst_bits & 32'h50;
  assign _T_990 = _T_988 == 32'h0;
  assign _T_992 = ibuf_io_inst_0_bits_inst_bits & 32'h24;
  assign _T_994 = _T_992 == 32'h0;
  assign _T_997 = _T_986 | _T_990;
  assign _T_998 = _T_997 | _T_917;
  assign _T_999 = _T_998 | _T_994;
  assign _T_1000 = _T_999 | _T_973;
  assign _T_1004 = _T_903 == 32'h14;
  assign _T_1007 = _T_1004 | _T_955;
  assign _T_1008 = {_T_1007,_T_1000};
  assign _T_1010 = ibuf_io_inst_0_bits_inst_bits & 32'h8;
  assign _T_1012 = _T_1010 == 32'h8;
  assign _T_1016 = _T_915 == 32'h40;
  assign _T_1019 = _T_1012 | _T_1016;
  assign _T_1021 = ibuf_io_inst_0_bits_inst_bits & 32'h14;
  assign _T_1023 = _T_1021 == 32'h14;
  assign _T_1026 = _T_1012 | _T_1023;
  assign _T_1028 = ibuf_io_inst_0_bits_inst_bits & 32'h30;
  assign _T_1030 = _T_1028 == 32'h0;
  assign _T_1032 = ibuf_io_inst_0_bits_inst_bits & 32'h201c;
  assign _T_1034 = _T_1032 == 32'h4;
  assign _T_1038 = _T_1021 == 32'h10;
  assign _T_1041 = _T_1030 | _T_1034;
  assign _T_1042 = _T_1041 | _T_1038;
  assign _T_1043 = {_T_1042,_T_1026};
  assign _T_1044 = {_T_1043,_T_1019};
  assign _T_1052 = ibuf_io_inst_0_bits_inst_bits & 32'h3054;
  assign _T_1054 = _T_1052 == 32'h1010;
  assign _T_1056 = ibuf_io_inst_0_bits_inst_bits & 32'h1058;
  assign _T_1058 = _T_1056 == 32'h1040;
  assign _T_1060 = ibuf_io_inst_0_bits_inst_bits & 32'h7044;
  assign _T_1062 = _T_1060 == 32'h7000;
  assign _T_1065 = _T_1054 | _T_1058;
  assign _T_1066 = _T_1065 | _T_1062;
  assign _T_1068 = ibuf_io_inst_0_bits_inst_bits & 32'h4054;
  assign _T_1070 = _T_1068 == 32'h40;
  assign _T_1072 = ibuf_io_inst_0_bits_inst_bits & 32'h3044;
  assign _T_1074 = _T_1072 == 32'h3000;
  assign _T_1076 = ibuf_io_inst_0_bits_inst_bits & 32'h6044;
  assign _T_1078 = _T_1076 == 32'h6000;
  assign _T_1080 = ibuf_io_inst_0_bits_inst_bits & 32'h6018;
  assign _T_1082 = _T_1080 == 32'h6000;
  assign _T_1084 = ibuf_io_inst_0_bits_inst_bits & 32'h40003034;
  assign _T_1086 = _T_1084 == 32'h40000030;
  assign _T_1088 = ibuf_io_inst_0_bits_inst_bits & 32'h40001054;
  assign _T_1090 = _T_1088 == 32'h40001010;
  assign _T_1093 = _T_1070 | _T_1074;
  assign _T_1094 = _T_1093 | _T_1078;
  assign _T_1095 = _T_1094 | _T_1082;
  assign _T_1096 = _T_1095 | _T_1086;
  assign _T_1097 = _T_1096 | _T_1090;
  assign _T_1099 = ibuf_io_inst_0_bits_inst_bits & 32'h2054;
  assign _T_1101 = _T_1099 == 32'h2010;
  assign _T_1103 = ibuf_io_inst_0_bits_inst_bits & 32'h40004054;
  assign _T_1105 = _T_1103 == 32'h4010;
  assign _T_1107 = ibuf_io_inst_0_bits_inst_bits & 32'h5054;
  assign _T_1109 = _T_1107 == 32'h4010;
  assign _T_1111 = ibuf_io_inst_0_bits_inst_bits & 32'h4058;
  assign _T_1113 = _T_1111 == 32'h4040;
  assign _T_1116 = _T_1101 | _T_1105;
  assign _T_1117 = _T_1116 | _T_1109;
  assign _T_1118 = _T_1117 | _T_1113;
  assign _T_1120 = ibuf_io_inst_0_bits_inst_bits & 32'h6054;
  assign _T_1122 = _T_1120 == 32'h2010;
  assign _T_1124 = ibuf_io_inst_0_bits_inst_bits & 32'h40003054;
  assign _T_1126 = _T_1124 == 32'h40001010;
  assign _T_1129 = _T_1122 | _T_1113;
  assign _T_1130 = _T_1129 | _T_1086;
  assign _T_1131 = _T_1130 | _T_1126;
  assign _T_1132 = {_T_1097,_T_1066};
  assign _T_1133 = {_T_1131,_T_1118};
  assign _T_1134 = {_T_1133,_T_1132};
  assign _T_1136 = ibuf_io_inst_0_bits_inst_bits & 32'h605f;
  assign _T_1138 = _T_1136 == 32'h3;
  assign _T_1140 = ibuf_io_inst_0_bits_inst_bits & 32'h707f;
  assign _T_1142 = _T_1140 == 32'h100f;
  assign _T_1145 = _T_1138 | _T_711;
  assign _T_1146 = _T_1145 | _T_1142;
  assign _T_1147 = _T_1146 | _T_755;
  assign _T_1148 = _T_1147 | _T_763;
  assign _T_1149 = _T_1148 | _T_779;
  assign _T_1150 = _T_1149 | _T_783;
  assign _T_1152 = ibuf_io_inst_0_bits_inst_bits & 32'h2008;
  assign _T_1154 = _T_1152 == 32'h8;
  assign _T_1156 = ibuf_io_inst_0_bits_inst_bits & 32'h28;
  assign _T_1158 = _T_1156 == 32'h20;
  assign _T_1160 = ibuf_io_inst_0_bits_inst_bits & 32'h18000020;
  assign _T_1162 = _T_1160 == 32'h18000020;
  assign _T_1164 = ibuf_io_inst_0_bits_inst_bits & 32'h20000020;
  assign _T_1166 = _T_1164 == 32'h20000020;
  assign _T_1169 = _T_1154 | _T_1158;
  assign _T_1170 = _T_1169 | _T_1162;
  assign _T_1171 = _T_1170 | _T_1166;
  assign _T_1173 = ibuf_io_inst_0_bits_inst_bits & 32'h10001008;
  assign _T_1175 = _T_1173 == 32'h10000008;
  assign _T_1177 = ibuf_io_inst_0_bits_inst_bits & 32'h40001008;
  assign _T_1179 = _T_1177 == 32'h40000008;
  assign _T_1182 = _T_1175 | _T_1179;
  assign _T_1184 = ibuf_io_inst_0_bits_inst_bits & 32'h8000008;
  assign _T_1186 = _T_1184 == 32'h8000008;
  assign _T_1188 = ibuf_io_inst_0_bits_inst_bits & 32'h10000008;
  assign _T_1190 = _T_1188 == 32'h10000008;
  assign _T_1192 = ibuf_io_inst_0_bits_inst_bits & 32'h80000008;
  assign _T_1194 = _T_1192 == 32'h80000008;
  assign _T_1197 = _T_1154 | _T_1186;
  assign _T_1198 = _T_1197 | _T_1190;
  assign _T_1199 = _T_1198 | _T_1194;
  assign _T_1201 = ibuf_io_inst_0_bits_inst_bits & 32'h18001008;
  assign _T_1203 = _T_1201 == 32'h8;
  assign _T_1207 = {_T_1182,_T_1171};
  assign _T_1208 = {1'h0,_T_1203};
  assign _T_1209 = {_T_1208,_T_1199};
  assign _T_1210 = {_T_1209,_T_1207};
  assign _T_1212 = ibuf_io_inst_0_bits_inst_bits & 32'h1000;
  assign _T_1214 = _T_1212 == 32'h1000;
  assign _T_1218 = ibuf_io_inst_0_bits_inst_bits & 32'h2000;
  assign _T_1220 = _T_1218 == 32'h2000;
  assign _T_1224 = ibuf_io_inst_0_bits_inst_bits & 32'h4000;
  assign _T_1226 = _T_1224 == 32'h4000;
  assign _T_1229 = {_T_1226,_T_1220};
  assign _T_1230 = {_T_1229,_T_1214};
  assign _T_1232 = ibuf_io_inst_0_bits_inst_bits & 32'h80000060;
  assign _T_1234 = _T_1232 == 32'h40;
  assign _T_1236 = ibuf_io_inst_0_bits_inst_bits & 32'h10000060;
  assign _T_1240 = ibuf_io_inst_0_bits_inst_bits & 32'h70;
  assign _T_1242 = _T_1240 == 32'h40;
  assign _T_1263 = ibuf_io_inst_0_bits_inst_bits & 32'h3c;
  assign _T_1265 = _T_1263 == 32'h4;
  assign _T_1269 = _T_1236 == 32'h10000040;
  assign _T_1272 = _T_1265 | _T_1234;
  assign _T_1273 = _T_1272 | _T_1242;
  assign _T_1274 = _T_1273 | _T_1269;
  assign _T_1276 = ibuf_io_inst_0_bits_inst_bits & 32'h2000074;
  assign _T_1278 = _T_1276 == 32'h2000030;
  assign _T_1284 = _T_899 == 32'h0;
  assign _T_1288 = _T_988 == 32'h10;
  assign _T_1290 = ibuf_io_inst_0_bits_inst_bits & 32'h2024;
  assign _T_1292 = _T_1290 == 32'h24;
  assign _T_1296 = _T_1156 == 32'h28;
  assign _T_1298 = ibuf_io_inst_0_bits_inst_bits & 32'h1030;
  assign _T_1300 = _T_1298 == 32'h1030;
  assign _T_1302 = ibuf_io_inst_0_bits_inst_bits & 32'h2030;
  assign _T_1304 = _T_1302 == 32'h2030;
  assign _T_1306 = ibuf_io_inst_0_bits_inst_bits & 32'h90000010;
  assign _T_1308 = _T_1306 == 32'h80000010;
  assign _T_1311 = _T_1284 | _T_1288;
  assign _T_1312 = _T_1311 | _T_1292;
  assign _T_1313 = _T_1312 | _T_1296;
  assign _T_1314 = _T_1313 | _T_1300;
  assign _T_1315 = _T_1314 | _T_1304;
  assign _T_1316 = _T_1315 | _T_1308;
  assign _T_1318 = ibuf_io_inst_0_bits_inst_bits & 32'h1070;
  assign _T_1320 = _T_1318 == 32'h1070;
  assign _T_1324 = ibuf_io_inst_0_bits_inst_bits & 32'h2070;
  assign _T_1326 = _T_1324 == 32'h2070;
  assign _T_1330 = ibuf_io_inst_0_bits_inst_bits & 32'h3070;
  assign _T_1332 = _T_1330 == 32'h70;
  assign _T_1335 = {_T_1332,_T_1326};
  assign _T_1336 = {_T_1335,_T_1320};
  assign _T_1338 = ibuf_io_inst_0_bits_inst_bits & 32'h1048;
  assign _T_1340 = _T_1338 == 32'h1008;
  assign _T_1344 = ibuf_io_inst_0_bits_inst_bits & 32'h3048;
  assign _T_1346 = _T_1344 == 32'h8;
  assign _T_1357__T_1366_addr = _T_1365;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1357__T_1366_data = _T_1357[_T_1357__T_1366_addr];
  `else
  assign _T_1357__T_1366_data = _T_1357__T_1366_addr >= 5'h1f ? _RAND_77[31:0] : _T_1357[_T_1357__T_1366_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1357__T_1376_addr = _T_1375;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1357__T_1376_data = _T_1357[_T_1357__T_1376_addr];
  `else
  assign _T_1357__T_1376_data = _T_1357__T_1376_addr >= 5'h1f ? _RAND_78[31:0] : _T_1357[_T_1357__T_1376_addr];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_1357__T_2277_data = rf_wdata;
  assign _T_1357__T_2277_addr = _T_2276;
  assign _T_1357__T_2277_mask = _GEN_172;
  assign _T_1357__T_2277_en = _GEN_172;
  assign _T_1361 = ibuf_io_inst_0_bits_inst_rs1 == 5'h0;
  assign _T_1364 = ibuf_io_inst_0_bits_inst_rs1;
  assign _T_1365 = ~ _T_1364;
  assign _T_1367 = _T_1357__T_1366_data;
  assign _T_1374 = ibuf_io_inst_0_bits_inst_rs2;
  assign _T_1375 = ~ _T_1374;
  assign _T_1377 = _T_1357__T_1376_data;
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_interrupts_debug = io_interrupts_debug;
  assign csr_io_interrupts_mtip = io_interrupts_mtip;
  assign csr_io_interrupts_msip = io_interrupts_msip;
  assign csr_io_interrupts_meip = io_interrupts_meip;
  assign csr_io_hartid = io_hartid;
  assign csr_io_rw_addr = _T_2281;
  assign csr_io_rw_cmd = _T_2283;
  assign csr_io_rw_wdata = bypass_mux_2;
  assign csr_io_decode_csr = _T_2280;
  assign csr_io_exception = wb_xcpt;
  assign csr_io_retire = wb_valid;
  assign csr_io_cause = wb_cause;
  assign csr_io_pc = wb_reg_pc;
  assign csr_io_badaddr = bypass_mux_2;
  assign csr_io_fcsr_flags_valid = io_fpu_fcsr_flags_valid;
  assign csr_io_fcsr_flags_bits = io_fpu_fcsr_flags_bits;
  assign csr_io_rocc_interrupt = io_rocc_interrupt;
  assign _T_1471 = _T_1336 == 3'h2;
  assign _T_1472 = _T_1336 == 3'h3;
  assign _T_1473 = _T_1336 == 3'h1;
  assign _T_1474 = _T_1471 | _T_1472;
  assign id_csr_en = _T_1474 | _T_1473;
  assign id_system_insn = _T_1336 >= 3'h4;
  assign id_csr_ren = _T_1474 & _T_1361;
  assign id_csr = id_csr_ren ? 3'h5 : _T_1336;
  assign _T_1485 = _T_1210 == 5'h14;
  assign id_sfence = _T_1150 & _T_1485;
  assign _T_1486 = id_sfence | id_system_insn;
  assign _T_1488 = id_csr_ren == 1'h0;
  assign _T_1489 = id_csr_en & _T_1488;
  assign _T_1490 = _T_1489 & csr_io_decode_write_flush;
  assign id_csr_flush = _T_1486 | _T_1490;
  assign _T_1492 = _T_867 == 1'h0;
  assign _T_1493 = csr_io_status_isa[12];
  assign _T_1495 = _T_1493 == 1'h0;
  assign _T_1496 = _T_1278 & _T_1495;
  assign _T_1497 = _T_1492 | _T_1496;
  assign _T_1498 = csr_io_status_isa[0];
  assign _T_1500 = _T_1498 == 1'h0;
  assign _T_1501 = _T_909 & _T_1500;
  assign _T_1502 = _T_1497 | _T_1501;
  assign _T_1503 = csr_io_decode_fp_illegal | io_fpu_illegal_rm;
  assign _T_1504 = _T_878 & _T_1503;
  assign _T_1505 = _T_1502 | _T_1504;
  assign _T_1511 = csr_io_status_isa[2];
  assign _T_1513 = _T_1511 == 1'h0;
  assign _T_1514 = ibuf_io_inst_0_bits_rvc & _T_1513;
  assign _T_1515 = _T_1505 | _T_1514;
  assign _T_1520 = _T_1488 & csr_io_decode_write_illegal;
  assign _T_1521 = csr_io_decode_read_illegal | _T_1520;
  assign _T_1522 = id_csr_en & _T_1521;
  assign _T_1523 = _T_1515 | _T_1522;
  assign _T_1525 = ibuf_io_inst_0_bits_rvc == 1'h0;
  assign _T_1527 = _T_1486 & csr_io_decode_system_illegal;
  assign _T_1528 = _T_1525 & _T_1527;
  assign id_illegal_insn = _T_1523 | _T_1528;
  assign id_amo_aq = ibuf_io_inst_0_bits_inst_bits[26];
  assign id_amo_rl = ibuf_io_inst_0_bits_inst_bits[25];
  assign _T_1529 = _T_909 & id_amo_rl;
  assign id_fence_next = _T_1346 | _T_1529;
  assign _T_1531 = io_dmem_ordered == 1'h0;
  assign id_mem_busy = _T_1531 | io_dmem_req_valid;
  assign _T_1533 = id_mem_busy == 1'h0;
  assign _GEN_0 = _T_1533 ? 1'h0 : id_reg_fence;
  assign _T_1540 = wb_reg_valid & wb_ctrl_rocc;
  assign _T_1543 = _T_909 & id_amo_aq;
  assign _T_1544 = _T_1543 | _T_1340;
  assign _T_1546 = id_reg_fence & _T_1150;
  assign _T_1547 = _T_1544 | _T_1546;
  assign _T_1548 = id_mem_busy & _T_1547;
  assign bpu_io_status_debug = csr_io_status_debug;
  assign bpu_io_status_prv = csr_io_status_prv;
  assign bpu_io_bp_0_control_action = csr_io_bp_0_control_action;
  assign bpu_io_bp_0_control_chain = csr_io_bp_0_control_chain;
  assign bpu_io_bp_0_control_tmatch = csr_io_bp_0_control_tmatch;
  assign bpu_io_bp_0_control_m = csr_io_bp_0_control_m;
  assign bpu_io_bp_0_control_h = csr_io_bp_0_control_h;
  assign bpu_io_bp_0_control_s = csr_io_bp_0_control_s;
  assign bpu_io_bp_0_control_u = csr_io_bp_0_control_u;
  assign bpu_io_bp_0_control_x = csr_io_bp_0_control_x;
  assign bpu_io_bp_0_control_w = csr_io_bp_0_control_w;
  assign bpu_io_bp_0_control_r = csr_io_bp_0_control_r;
  assign bpu_io_bp_0_address = csr_io_bp_0_address;
  assign bpu_io_bp_1_control_action = csr_io_bp_1_control_action;
  assign bpu_io_bp_1_control_chain = csr_io_bp_1_control_chain;
  assign bpu_io_bp_1_control_tmatch = csr_io_bp_1_control_tmatch;
  assign bpu_io_bp_1_control_m = csr_io_bp_1_control_m;
  assign bpu_io_bp_1_control_h = csr_io_bp_1_control_h;
  assign bpu_io_bp_1_control_s = csr_io_bp_1_control_s;
  assign bpu_io_bp_1_control_u = csr_io_bp_1_control_u;
  assign bpu_io_bp_1_control_x = csr_io_bp_1_control_x;
  assign bpu_io_bp_1_control_w = csr_io_bp_1_control_w;
  assign bpu_io_bp_1_control_r = csr_io_bp_1_control_r;
  assign bpu_io_bp_1_address = csr_io_bp_1_address;
  assign bpu_io_pc = ibuf_io_pc;
  assign bpu_io_ea = bypass_mux_1;
  assign _T_1558 = csr_io_interrupt | bpu_io_debug_if;
  assign _T_1559 = _T_1558 | bpu_io_xcpt_if;
  assign _T_1560 = _T_1559 | ibuf_io_inst_0_bits_xcpt0_pf_inst;
  assign _T_1561 = _T_1560 | ibuf_io_inst_0_bits_xcpt0_ae_inst;
  assign _T_1562 = _T_1561 | ibuf_io_inst_0_bits_xcpt1_pf_inst;
  assign _T_1563 = _T_1562 | ibuf_io_inst_0_bits_xcpt1_ae_inst;
  assign id_xcpt = _T_1563 | id_illegal_insn;
  assign _T_1564 = ibuf_io_inst_0_bits_xcpt1_ae_inst ? 2'h1 : 2'h2;
  assign _T_1565 = ibuf_io_inst_0_bits_xcpt1_pf_inst ? 4'hc : {{2'd0}, _T_1564};
  assign _T_1566 = ibuf_io_inst_0_bits_xcpt0_ae_inst ? 4'h1 : _T_1565;
  assign _T_1567 = ibuf_io_inst_0_bits_xcpt0_pf_inst ? 4'hc : _T_1566;
  assign _T_1568 = bpu_io_xcpt_if ? 4'h3 : _T_1567;
  assign _T_1569 = bpu_io_debug_if ? 4'he : _T_1568;
  assign id_cause = csr_io_interrupt ? csr_io_interrupt_cause : {{28'd0}, _T_1569};
  assign ex_waddr = ex_reg_inst[11:7];
  assign mem_waddr = mem_reg_inst[11:7];
  assign wb_waddr = wb_reg_inst[11:7];
  assign _T_1572 = ex_reg_valid & ex_ctrl_wxd;
  assign _T_1573 = mem_reg_valid & mem_ctrl_wxd;
  assign _T_1575 = mem_ctrl_mem == 1'h0;
  assign _T_1576 = _T_1573 & _T_1575;
  assign _T_1578 = 5'h0 == ibuf_io_inst_0_bits_inst_rs1;
  assign _T_1579 = ex_waddr == ibuf_io_inst_0_bits_inst_rs1;
  assign id_bypass_src_0_1 = _T_1572 & _T_1579;
  assign _T_1580 = mem_waddr == ibuf_io_inst_0_bits_inst_rs1;
  assign id_bypass_src_0_2 = _T_1576 & _T_1580;
  assign id_bypass_src_0_3 = _T_1573 & _T_1580;
  assign _T_1582 = 5'h0 == ibuf_io_inst_0_bits_inst_rs2;
  assign _T_1583 = ex_waddr == ibuf_io_inst_0_bits_inst_rs2;
  assign id_bypass_src_1_1 = _T_1572 & _T_1583;
  assign _T_1584 = mem_waddr == ibuf_io_inst_0_bits_inst_rs2;
  assign id_bypass_src_1_2 = _T_1576 & _T_1584;
  assign id_bypass_src_1_3 = _T_1573 & _T_1584;
  assign _T_1608 = ex_reg_rs_lsb_0 == 2'h1;
  assign _T_1609 = _T_1608 ? bypass_mux_1 : 32'h0;
  assign _T_1611 = ex_reg_rs_lsb_0 == 2'h2;
  assign _T_1612 = _T_1611 ? bypass_mux_2 : _T_1609;
  assign _T_1614 = ex_reg_rs_lsb_0 == 2'h3;
  assign _T_1615 = _T_1614 ? io_dmem_resp_bits_data_word_bypass : _T_1612;
  assign _T_1616 = {ex_reg_rs_msb_0,ex_reg_rs_lsb_0};
  assign ex_rs_0 = ex_reg_rs_bypass_0 ? _T_1615 : _T_1616;
  assign _T_1618 = ex_reg_rs_lsb_1 == 2'h1;
  assign _T_1619 = _T_1618 ? bypass_mux_1 : 32'h0;
  assign _T_1621 = ex_reg_rs_lsb_1 == 2'h2;
  assign _T_1622 = _T_1621 ? bypass_mux_2 : _T_1619;
  assign _T_1624 = ex_reg_rs_lsb_1 == 2'h3;
  assign _T_1625 = _T_1624 ? io_dmem_resp_bits_data_word_bypass : _T_1622;
  assign _T_1626 = {ex_reg_rs_msb_1,ex_reg_rs_lsb_1};
  assign ex_rs_1 = ex_reg_rs_bypass_1 ? _T_1625 : _T_1626;
  assign _T_1628 = ex_ctrl_sel_imm == 3'h5;
  assign _T_1630 = ex_reg_inst[31];
  assign _T_1631 = $signed(_T_1630);
  assign _T_1632 = _T_1628 ? $signed(1'sh0) : $signed(_T_1631);
  assign _T_1634 = ex_ctrl_sel_imm == 3'h2;
  assign _T_1635 = ex_reg_inst[30:20];
  assign _T_1636 = $signed(_T_1635);
  assign _T_1637 = _T_1634 ? $signed(_T_1636) : $signed({11{_T_1632}});
  assign _T_1639 = ex_ctrl_sel_imm != 3'h2;
  assign _T_1641 = ex_ctrl_sel_imm != 3'h3;
  assign _T_1642 = _T_1639 & _T_1641;
  assign _T_1643 = ex_reg_inst[19:12];
  assign _T_1644 = $signed(_T_1643);
  assign _T_1645 = _T_1642 ? $signed({8{_T_1632}}) : $signed(_T_1644);
  assign _T_1650 = _T_1634 | _T_1628;
  assign _T_1653 = ex_ctrl_sel_imm == 3'h3;
  assign _T_1654 = ex_reg_inst[20];
  assign _T_1655 = $signed(_T_1654);
  assign _T_1657 = ex_ctrl_sel_imm == 3'h1;
  assign _T_1658 = ex_reg_inst[7];
  assign _T_1659 = $signed(_T_1658);
  assign _T_1660 = _T_1657 ? $signed(_T_1659) : $signed(_T_1632);
  assign _T_1661 = _T_1653 ? $signed(_T_1655) : $signed(_T_1660);
  assign _T_1662 = _T_1650 ? $signed(1'sh0) : $signed(_T_1661);
  assign _T_1669 = ex_reg_inst[30:25];
  assign _T_1670 = _T_1650 ? 6'h0 : _T_1669;
  assign _T_1675 = ex_ctrl_sel_imm == 3'h0;
  assign _T_1678 = _T_1675 | _T_1657;
  assign _T_1679 = ex_reg_inst[11:8];
  assign _T_1682 = ex_reg_inst[19:16];
  assign _T_1683 = ex_reg_inst[24:21];
  assign _T_1684 = _T_1628 ? _T_1682 : _T_1683;
  assign _T_1685 = _T_1678 ? _T_1679 : _T_1684;
  assign _T_1686 = _T_1634 ? 4'h0 : _T_1685;
  assign _T_1691 = ex_ctrl_sel_imm == 3'h4;
  assign _T_1695 = ex_reg_inst[15];
  assign _T_1697 = _T_1628 ? _T_1695 : 1'h0;
  assign _T_1698 = _T_1691 ? _T_1654 : _T_1697;
  assign _T_1699 = _T_1675 ? _T_1658 : _T_1698;
  assign _T_1700 = {_T_1670,_T_1686};
  assign _T_1701 = {_T_1700,_T_1699};
  assign _T_1702 = $unsigned(_T_1662);
  assign _T_1703 = $unsigned(_T_1645);
  assign _T_1704 = {_T_1703,_T_1702};
  assign _T_1705 = $unsigned(_T_1637);
  assign _T_1706 = $unsigned(_T_1632);
  assign _T_1707 = {_T_1706,_T_1705};
  assign _T_1708 = {_T_1707,_T_1704};
  assign _T_1709 = {_T_1708,_T_1701};
  assign ex_imm = $signed(_T_1709);
  assign _T_1712 = $signed(ex_rs_0);
  assign _T_1714 = $signed(ex_reg_pc);
  assign _T_1715 = 2'h2 == ex_ctrl_sel_alu1;
  assign _T_1716 = _T_1715 ? $signed(_T_1714) : $signed(32'sh0);
  assign _T_1717 = 2'h1 == ex_ctrl_sel_alu1;
  assign ex_op1 = _T_1717 ? $signed(_T_1712) : $signed(_T_1716);
  assign _T_1720 = $signed(ex_rs_1);
  assign _T_1725 = ex_reg_rvc ? $signed(4'sh2) : $signed(4'sh4);
  assign _T_1726 = 2'h1 == ex_ctrl_sel_alu2;
  assign _T_1727 = _T_1726 ? $signed(_T_1725) : $signed(4'sh0);
  assign _T_1728 = 2'h3 == ex_ctrl_sel_alu2;
  assign _T_1729 = _T_1728 ? $signed(ex_imm) : $signed({{28{_T_1727[3]}},_T_1727});
  assign _T_1730 = 2'h2 == ex_ctrl_sel_alu2;
  assign ex_op2 = _T_1730 ? $signed(_T_1720) : $signed(_T_1729);
  assign alu_io_fn = ex_ctrl_alu_fn;
  assign alu_io_in2 = _T_1731;
  assign alu_io_in1 = _T_1732;
  assign _T_1731 = $unsigned(ex_op2);
  assign _T_1732 = $unsigned(ex_op1);
  assign div_clock = clock;
  assign div_reset = reset;
  assign div_io_req_valid = _T_1733;
  assign div_io_req_bits_fn = ex_ctrl_alu_fn;
  assign div_io_req_bits_in1 = ex_rs_0;
  assign div_io_req_bits_in2 = ex_rs_1;
  assign div_io_req_bits_tag = ex_waddr;
  assign div_io_kill = _T_2196;
  assign div_io_resp_ready = _GEN_159;
  assign _T_1733 = ex_reg_valid & ex_ctrl_div;
  assign _T_1735 = _T_2503 == 1'h0;
  assign _T_1737 = take_pc == 1'h0;
  assign _T_1738 = _T_1737 & ibuf_io_inst_0_valid;
  assign _T_1739 = _T_1738 & ibuf_io_inst_0_bits_replay;
  assign _T_1742 = _T_1735 & id_xcpt;
  assign _T_1746 = _T_1738 & csr_io_interrupt;
  assign _GEN_1 = id_fence_next ? 1'h1 : _GEN_0;
  assign _T_1754 = {ibuf_io_inst_0_bits_xcpt1_pf_inst,ibuf_io_inst_0_bits_xcpt1_ae_inst};
  assign _T_1756 = _T_1754 != 2'h0;
  assign _GEN_2 = _T_1756 ? 2'h2 : 2'h1;
  assign _GEN_3 = _T_1756 ? 2'h1 : 2'h0;
  assign _GEN_4 = _T_1756 ? 1'h1 : ibuf_io_inst_0_bits_rvc;
  assign _T_1760 = {ibuf_io_inst_0_bits_xcpt0_pf_inst,ibuf_io_inst_0_bits_xcpt0_ae_inst};
  assign _T_1762 = _T_1760 != 2'h0;
  assign _T_1763 = bpu_io_xcpt_if | _T_1762;
  assign _GEN_5 = _T_1763 ? 2'h2 : _GEN_2;
  assign _GEN_6 = _T_1763 ? 2'h0 : _GEN_3;
  assign _GEN_7 = id_xcpt ? 4'h0 : _T_1134;
  assign _GEN_9 = id_xcpt ? _GEN_5 : _T_1008;
  assign _GEN_10 = id_xcpt ? _GEN_6 : _T_982;
  assign _GEN_11 = id_xcpt ? _GEN_4 : ibuf_io_inst_0_bits_rvc;
  assign _T_1766 = _T_1340 | id_csr_flush;
  assign _T_1768 = ibuf_io_inst_0_bits_inst_rs2 != 5'h0;
  assign _T_1770 = ibuf_io_inst_0_bits_inst_rs1 != 5'h0;
  assign _T_1771 = {_T_1768,_T_1770};
  assign _GEN_12 = id_sfence ? {{1'd0}, _T_1771} : _T_1230;
  assign _T_1772 = _T_1578 | id_bypass_src_0_1;
  assign _T_1773 = _T_1772 | id_bypass_src_0_2;
  assign _T_1774 = _T_1773 | id_bypass_src_0_3;
  assign _T_1779 = id_bypass_src_0_2 ? 2'h2 : 2'h3;
  assign _T_1780 = id_bypass_src_0_1 ? 2'h1 : _T_1779;
  assign _T_1781 = _T_1578 ? 2'h0 : _T_1780;
  assign _T_1783 = _T_1774 == 1'h0;
  assign _T_1784 = _T_939 & _T_1783;
  assign _T_1785 = _GEN_174[1:0];
  assign _T_1786 = _GEN_174[31:2];
  assign _GEN_13 = _T_1784 ? _T_1785 : _T_1781;
  assign _GEN_14 = _T_1784 ? _T_1786 : ex_reg_rs_msb_0;
  assign _T_1787 = _T_1582 | id_bypass_src_1_1;
  assign _T_1788 = _T_1787 | id_bypass_src_1_2;
  assign _T_1789 = _T_1788 | id_bypass_src_1_3;
  assign _T_1794 = id_bypass_src_1_2 ? 2'h2 : 2'h3;
  assign _T_1795 = id_bypass_src_1_1 ? 2'h1 : _T_1794;
  assign _T_1796 = _T_1582 ? 2'h0 : _T_1795;
  assign _T_1798 = _T_1789 == 1'h0;
  assign _T_1799 = _T_913 & _T_1798;
  assign _T_1800 = _GEN_175[1:0];
  assign _T_1801 = _GEN_175[31:2];
  assign _GEN_15 = _T_1799 ? _T_1800 : _T_1796;
  assign _GEN_16 = _T_1799 ? _T_1801 : ex_reg_rs_msb_1;
  assign _T_1802 = ibuf_io_inst_0_bits_raw[15:0];
  assign _T_1803 = ibuf_io_inst_0_bits_rvc ? {{16'd0}, _T_1802} : ibuf_io_inst_0_bits_raw;
  assign _T_1805 = _T_1803[1:0];
  assign _T_1806 = _T_1803[31:2];
  assign _GEN_17 = id_illegal_insn ? 1'h0 : _T_1774;
  assign _GEN_18 = id_illegal_insn ? _T_1805 : _GEN_13;
  assign _GEN_19 = id_illegal_insn ? _T_1806 : _GEN_14;
  assign _GEN_21 = _T_1735 ? _T_878 : ex_ctrl_fp;
  assign _GEN_22 = _T_1735 ? 1'h0 : ex_ctrl_rocc;
  assign _GEN_23 = _T_1735 ? _T_883 : ex_ctrl_branch;
  assign _GEN_24 = _T_1735 ? _T_889 : ex_ctrl_jal;
  assign _GEN_25 = _T_1735 ? _T_895 : ex_ctrl_jalr;
  assign _GEN_26 = _T_1735 ? _T_913 : ex_ctrl_rxs2;
  assign _GEN_28 = _T_1735 ? _GEN_10 : ex_ctrl_sel_alu2;
  assign _GEN_29 = _T_1735 ? _GEN_9 : ex_ctrl_sel_alu1;
  assign _GEN_30 = _T_1735 ? _T_1044 : ex_ctrl_sel_imm;
  assign _GEN_32 = _T_1735 ? _GEN_7 : ex_ctrl_alu_fn;
  assign _GEN_33 = _T_1735 ? _T_1150 : ex_ctrl_mem;
  assign _GEN_34 = _T_1735 ? _T_1210 : ex_ctrl_mem_cmd;
  assign _GEN_35 = _T_1735 ? _GEN_12 : ex_ctrl_mem_type;
  assign _GEN_39 = _T_1735 ? _T_1274 : ex_ctrl_wfd;
  assign _GEN_40 = _T_1735 ? _T_1278 : ex_ctrl_div;
  assign _GEN_41 = _T_1735 ? _T_1316 : ex_ctrl_wxd;
  assign _GEN_42 = _T_1735 ? id_csr : ex_ctrl_csr;
  assign _GEN_43 = _T_1735 ? _T_1340 : ex_ctrl_fence_i;
  assign _GEN_47 = _T_1735 ? _GEN_11 : ex_reg_rvc;
  assign _GEN_48 = _T_1735 ? _GEN_1 : _GEN_0;
  assign _GEN_49 = _T_1735 ? _T_1766 : ex_reg_flush_pipe;
  assign _GEN_50 = _T_1735 ? _T_2394 : ex_reg_load_use;
  assign _GEN_51 = _T_1735 ? _GEN_17 : ex_reg_rs_bypass_0;
  assign _GEN_52 = _T_1735 ? _GEN_18 : ex_reg_rs_lsb_0;
  assign _GEN_53 = _T_1735 ? _GEN_19 : ex_reg_rs_msb_0;
  assign _GEN_54 = _T_1735 ? _T_1789 : ex_reg_rs_bypass_1;
  assign _GEN_55 = _T_1735 ? _GEN_15 : ex_reg_rs_lsb_1;
  assign _GEN_56 = _T_1735 ? _GEN_16 : ex_reg_rs_msb_1;
  assign _T_1809 = _T_1735 | csr_io_interrupt;
  assign _T_1810 = _T_1809 | ibuf_io_inst_0_bits_replay;
  assign _GEN_57 = _T_1810 ? id_cause : ex_cause;
  assign _GEN_58 = _T_1810 ? ibuf_io_inst_0_bits_inst_bits : ex_reg_inst;
  assign _GEN_59 = _T_1810 ? ibuf_io_inst_0_bits_cinst : ex_reg_cinst;
  assign _GEN_60 = _T_1810 ? ibuf_io_pc : ex_reg_pc;
  assign _T_1811 = ex_reg_valid | ex_reg_replay;
  assign ex_pc_valid = _T_1811 | ex_reg_xcpt_interrupt;
  assign _T_1813 = io_dmem_resp_valid == 1'h0;
  assign wb_dcache_miss = wb_ctrl_mem & _T_1813;
  assign _T_1815 = io_dmem_req_ready == 1'h0;
  assign _T_1816 = ex_ctrl_mem & _T_1815;
  assign _T_1818 = div_io_req_ready == 1'h0;
  assign _T_1819 = ex_ctrl_div & _T_1818;
  assign replay_ex_structural = _T_1816 | _T_1819;
  assign replay_ex_load_use = wb_dcache_miss & ex_reg_load_use;
  assign _T_1820 = replay_ex_structural | replay_ex_load_use;
  assign _T_1821 = ex_reg_valid & _T_1820;
  assign replay_ex = ex_reg_replay | _T_1821;
  assign _T_1822 = take_pc | replay_ex;
  assign _T_1824 = ex_reg_valid == 1'h0;
  assign ctrl_killx = _T_1822 | _T_1824;
  assign _T_1826 = ex_ctrl_mem_cmd == 5'h7;
  assign _T_1840 = 3'h0 == ex_ctrl_mem_type;
  assign _T_1841 = 3'h4 == ex_ctrl_mem_type;
  assign _T_1842 = 3'h1 == ex_ctrl_mem_type;
  assign _T_1843 = 3'h5 == ex_ctrl_mem_type;
  assign _T_1846 = _T_1840 | _T_1841;
  assign _T_1847 = _T_1846 | _T_1842;
  assign _T_1848 = _T_1847 | _T_1843;
  assign ex_slow_bypass = _T_1826 | _T_1848;
  assign ex_xcpt = ex_reg_xcpt_interrupt | ex_reg_xcpt;
  assign _T_1853 = mem_reg_valid | mem_reg_replay;
  assign mem_pc_valid = _T_1853 | mem_reg_xcpt_interrupt;
  assign mem_br_taken = bypass_mux_1[0];
  assign _T_1854 = $signed(mem_reg_pc);
  assign _T_1855 = mem_ctrl_branch & mem_br_taken;
  assign _T_1860 = mem_reg_inst[31];
  assign _T_1861 = $signed(_T_1860);
  assign _T_1867 = {11{_T_1861}};
  assign _T_1873 = mem_reg_inst[19:12];
  assign _T_1874 = $signed(_T_1873);
  assign _T_1875 = {8{_T_1861}};
  assign _T_1884 = mem_reg_inst[20];
  assign _T_1885 = $signed(_T_1884);
  assign _T_1888 = mem_reg_inst[7];
  assign _T_1889 = $signed(_T_1888);
  assign _T_1899 = mem_reg_inst[30:25];
  assign _T_1909 = mem_reg_inst[11:8];
  assign _T_1913 = mem_reg_inst[24:21];
  assign _T_1930 = {_T_1899,_T_1909};
  assign _T_1931 = {_T_1930,1'h0};
  assign _T_1932 = $unsigned(_T_1889);
  assign _T_1933 = $unsigned(_T_1875);
  assign _T_1934 = {_T_1933,_T_1932};
  assign _T_1935 = $unsigned(_T_1867);
  assign _T_1936 = $unsigned(_T_1861);
  assign _T_1937 = {_T_1936,_T_1935};
  assign _T_1938 = {_T_1937,_T_1934};
  assign _T_1939 = {_T_1938,_T_1931};
  assign _T_1940 = $signed(_T_1939);
  assign _T_2015 = {_T_1899,_T_1913};
  assign _T_2016 = {_T_2015,1'h0};
  assign _T_2017 = $unsigned(_T_1885);
  assign _T_2018 = $unsigned(_T_1874);
  assign _T_2019 = {_T_2018,_T_2017};
  assign _T_2023 = {_T_1937,_T_2019};
  assign _T_2024 = {_T_2023,_T_2016};
  assign _T_2025 = $signed(_T_2024);
  assign _T_2028 = mem_reg_rvc ? $signed(4'sh2) : $signed(4'sh4);
  assign _T_2029 = mem_ctrl_jal ? $signed(_T_2025) : $signed({{28{_T_2028[3]}},_T_2028});
  assign _T_2030 = _T_1855 ? $signed(_T_1940) : $signed(_T_2029);
  assign _T_2031 = $signed(_T_1854) + $signed(_T_2030);
  assign _T_2032 = _T_2031[31:0];
  assign mem_br_target = $signed(_T_2032);
  assign _T_2033 = mem_ctrl_jalr | mem_reg_sfence;
  assign _T_2034 = $signed(bypass_mux_1);
  assign _T_2035 = _T_2033 ? $signed(_T_2034) : $signed(mem_br_target);
  assign _T_2037 = $signed(_T_2035) & $signed(-32'sh2);
  assign _T_2038 = $signed(_T_2037);
  assign mem_npc = $unsigned(_T_2038);
  assign _T_2047 = mem_npc[1];
  assign _T_2048 = _T_1513 & _T_2047;
  assign _T_2050 = mem_reg_sfence == 1'h0;
  assign mem_npc_misaligned = _T_2048 & _T_2050;
  assign _T_2052 = mem_reg_xcpt == 1'h0;
  assign _T_2053 = mem_ctrl_jalr ^ mem_npc_misaligned;
  assign _T_2054 = _T_2052 & _T_2053;
  assign _T_2056 = _T_2054 ? $signed(mem_br_target) : $signed(_T_2034);
  assign mem_int_wdata = $unsigned(_T_2056);
  assign _T_2059 = _T_1855 | mem_ctrl_jalr;
  assign mem_cfi_taken = _T_2059 | mem_ctrl_jal;
  assign _T_2064 = mem_cfi_taken | mem_reg_sfence;
  assign _T_2065 = mem_reg_valid & _T_2064;
  assign _T_2067 = ctrl_killx == 1'h0;
  assign _T_2070 = _T_1737 & replay_ex;
  assign _T_2073 = _T_2067 & ex_xcpt;
  assign _T_2076 = _T_1737 & ex_reg_xcpt_interrupt;
  assign _T_2077 = mem_reg_valid & mem_reg_flush_pipe;
  assign _GEN_70 = _T_2077 ? 1'h0 : mem_reg_sfence;
  assign _T_2080 = _T_2077 == 1'h0;
  assign _T_2081 = _T_2080 & ex_pc_valid;
  assign _T_2083 = ex_ctrl_mem_cmd == 5'h0;
  assign _T_2085 = ex_ctrl_mem_cmd == 5'h6;
  assign _T_2086 = _T_2083 | _T_2085;
  assign _T_2089 = _T_2086 | _T_1826;
  assign _T_2094 = ex_ctrl_mem_cmd == 5'h4;
  assign _T_2095 = ex_ctrl_mem_cmd == 5'h9;
  assign _T_2096 = ex_ctrl_mem_cmd == 5'ha;
  assign _T_2097 = ex_ctrl_mem_cmd == 5'hb;
  assign _T_2098 = _T_2094 | _T_2095;
  assign _T_2099 = _T_2098 | _T_2096;
  assign _T_2100 = _T_2099 | _T_2097;
  assign _T_2106 = ex_ctrl_mem_cmd == 5'h8;
  assign _T_2107 = ex_ctrl_mem_cmd == 5'hc;
  assign _T_2108 = ex_ctrl_mem_cmd == 5'hd;
  assign _T_2109 = ex_ctrl_mem_cmd == 5'he;
  assign _T_2110 = ex_ctrl_mem_cmd == 5'hf;
  assign _T_2111 = _T_2106 | _T_2107;
  assign _T_2112 = _T_2111 | _T_2108;
  assign _T_2113 = _T_2112 | _T_2109;
  assign _T_2114 = _T_2113 | _T_2110;
  assign _T_2115 = _T_2100 | _T_2114;
  assign _T_2116 = _T_2089 | _T_2115;
  assign _T_2117 = ex_ctrl_mem & _T_2116;
  assign _T_2119 = ex_ctrl_mem_cmd == 5'h1;
  assign _T_2121 = ex_ctrl_mem_cmd == 5'h11;
  assign _T_2122 = _T_2119 | _T_2121;
  assign _T_2125 = _T_2122 | _T_1826;
  assign _T_2152 = _T_2125 | _T_2115;
  assign _T_2153 = ex_ctrl_mem & _T_2152;
  assign _T_2154 = ex_ctrl_mem | ex_ctrl_rocc;
  assign _T_2156 = ex_ctrl_rxs2 & _T_2154;
  assign _T_2158 = ex_ctrl_rocc ? 3'h2 : ex_ctrl_mem_type;
  assign _T_2160 = _T_2158[1:0];
  assign _T_2162 = _T_2160 == 2'h0;
  assign _T_2163 = ex_rs_1[7:0];
  assign _T_2164 = {_T_2163,_T_2163};
  assign _T_2165 = {_T_2164,_T_2164};
  assign _T_2167 = _T_2160 == 2'h1;
  assign _T_2168 = ex_rs_1[15:0];
  assign _T_2169 = {_T_2168,_T_2168};
  assign _T_2170 = _T_2167 ? _T_2169 : ex_rs_1;
  assign _T_2171 = _T_2162 ? _T_2165 : _T_2170;
  assign _GEN_71 = _T_2156 ? _T_2171 : mem_reg_rs2;
  assign _T_2172 = ex_ctrl_jalr & csr_io_status_debug;
  assign _GEN_72 = _T_2172 ? 1'h1 : ex_ctrl_fence_i;
  assign _GEN_73 = _T_2172 ? 1'h1 : ex_reg_flush_pipe;
  assign _GEN_75 = _T_2081 ? ex_ctrl_fp : mem_ctrl_fp;
  assign _GEN_76 = _T_2081 ? ex_ctrl_rocc : mem_ctrl_rocc;
  assign _GEN_77 = _T_2081 ? ex_ctrl_branch : mem_ctrl_branch;
  assign _GEN_78 = _T_2081 ? ex_ctrl_jal : mem_ctrl_jal;
  assign _GEN_79 = _T_2081 ? ex_ctrl_jalr : mem_ctrl_jalr;
  assign _GEN_87 = _T_2081 ? ex_ctrl_mem : mem_ctrl_mem;
  assign _GEN_89 = _T_2081 ? ex_ctrl_mem_type : mem_ctrl_mem_type;
  assign _GEN_93 = _T_2081 ? ex_ctrl_wfd : mem_ctrl_wfd;
  assign _GEN_94 = _T_2081 ? ex_ctrl_div : mem_ctrl_div;
  assign _GEN_95 = _T_2081 ? ex_ctrl_wxd : mem_ctrl_wxd;
  assign _GEN_96 = _T_2081 ? ex_ctrl_csr : mem_ctrl_csr;
  assign _GEN_97 = _T_2081 ? _GEN_72 : mem_ctrl_fence_i;
  assign _GEN_101 = _T_2081 ? ex_reg_rvc : mem_reg_rvc;
  assign _GEN_102 = _T_2081 ? _T_2117 : mem_reg_load;
  assign _GEN_103 = _T_2081 ? _T_2153 : mem_reg_store;
  assign _GEN_104 = _T_2081 ? 1'h0 : _GEN_70;
  assign _GEN_115 = _T_2081 ? _GEN_73 : mem_reg_flush_pipe;
  assign _GEN_116 = _T_2081 ? ex_slow_bypass : mem_reg_slow_bypass;
  assign _GEN_117 = _T_2081 ? ex_cause : mem_reg_cause;
  assign _GEN_118 = _T_2081 ? ex_reg_inst : mem_reg_inst;
  assign _GEN_119 = _T_2081 ? ex_reg_cinst : mem_reg_cinst;
  assign _GEN_120 = _T_2081 ? ex_reg_pc : mem_reg_pc;
  assign _GEN_121 = _T_2081 ? alu_io_out : bypass_mux_1;
  assign _GEN_122 = _T_2081 ? _GEN_71 : mem_reg_rs2;
  assign _T_2175 = mem_reg_load & bpu_io_xcpt_ld;
  assign _T_2176 = mem_reg_store & bpu_io_xcpt_st;
  assign mem_breakpoint = _T_2175 | _T_2176;
  assign _T_2177 = mem_reg_load & bpu_io_debug_ld;
  assign _T_2178 = mem_reg_store & bpu_io_debug_st;
  assign mem_debug_breakpoint = _T_2177 | _T_2178;
  assign _T_2182 = mem_debug_breakpoint | mem_breakpoint;
  assign mem_new_xcpt = _T_2182 | mem_npc_misaligned;
  assign _T_2183 = mem_breakpoint ? 2'h3 : 2'h0;
  assign mem_new_cause = mem_debug_breakpoint ? 4'he : {{2'd0}, _T_2183};
  assign _T_2184 = mem_reg_xcpt_interrupt | mem_reg_xcpt;
  assign _T_2185 = mem_reg_valid & mem_new_xcpt;
  assign mem_xcpt = _T_2184 | _T_2185;
  assign mem_cause = _T_2184 ? mem_reg_cause : {{28'd0}, mem_new_cause};
  assign dcache_kill_mem = _T_1573 & io_dmem_replay_next;
  assign _T_2187 = mem_reg_valid & mem_ctrl_fp;
  assign fpu_kill_mem = _T_2187 & io_fpu_nack_mem;
  assign _T_2188 = dcache_kill_mem | mem_reg_replay;
  assign replay_mem = _T_2188 | fpu_kill_mem;
  assign _T_2189 = dcache_kill_mem | _T_2249;
  assign _T_2190 = _T_2189 | mem_reg_xcpt;
  assign _T_2192 = mem_reg_valid == 1'h0;
  assign killm_common = _T_2190 | _T_2192;
  assign _T_2193 = div_io_req_ready & div_io_req_valid;
  assign _T_2196 = killm_common & _T_2195;
  assign _T_2197 = killm_common | mem_xcpt;
  assign ctrl_killm = _T_2197 | fpu_kill_mem;
  assign _T_2199 = ctrl_killm == 1'h0;
  assign _T_2201 = _T_2249 == 1'h0;
  assign _T_2202 = replay_mem & _T_2201;
  assign _T_2205 = mem_xcpt & _T_2201;
  assign _T_2208 = _T_2199 & mem_reg_flush_pipe;
  assign _T_2211 = _T_2052 & mem_ctrl_fp;
  assign _T_2212 = _T_2211 & mem_ctrl_wxd;
  assign _T_2213 = _T_2212 ? io_fpu_toint_data : mem_int_wdata;
  assign _GEN_126 = mem_pc_valid ? mem_ctrl_rocc : wb_ctrl_rocc;
  assign _GEN_137 = mem_pc_valid ? mem_ctrl_mem : wb_ctrl_mem;
  assign _GEN_139 = mem_pc_valid ? mem_ctrl_mem_type : wb_ctrl_mem_type;
  assign _GEN_143 = mem_pc_valid ? mem_ctrl_wfd : wb_ctrl_wfd;
  assign _GEN_144 = mem_pc_valid ? mem_ctrl_div : wb_ctrl_div;
  assign _GEN_145 = mem_pc_valid ? mem_ctrl_wxd : wb_ctrl_wxd;
  assign _GEN_146 = mem_pc_valid ? mem_ctrl_csr : wb_ctrl_csr;
  assign _GEN_147 = mem_pc_valid ? mem_ctrl_fence_i : wb_ctrl_fence_i;
  assign _GEN_152 = mem_pc_valid ? mem_reg_sfence : wb_reg_sfence;
  assign _GEN_153 = mem_pc_valid ? _T_2213 : bypass_mux_2;
  assign _GEN_155 = mem_pc_valid ? mem_cause : wb_reg_cause;
  assign _GEN_156 = mem_pc_valid ? mem_reg_inst : wb_reg_inst;
  assign _GEN_157 = mem_pc_valid ? mem_reg_cinst : wb_reg_cinst;
  assign _GEN_158 = mem_pc_valid ? mem_reg_pc : wb_reg_pc;
  assign _T_2215 = wb_reg_valid & wb_ctrl_mem;
  assign _T_2216 = _T_2215 & io_dmem_s2_xcpt_ma_st;
  assign _T_2219 = _T_2215 & io_dmem_s2_xcpt_ma_ld;
  assign _T_2222 = _T_2215 & io_dmem_s2_xcpt_pf_st;
  assign _T_2225 = _T_2215 & io_dmem_s2_xcpt_pf_ld;
  assign _T_2228 = _T_2215 & io_dmem_s2_xcpt_ae_st;
  assign _T_2231 = _T_2215 & io_dmem_s2_xcpt_ae_ld;
  assign _T_2233 = wb_reg_xcpt | _T_2216;
  assign _T_2234 = _T_2233 | _T_2219;
  assign _T_2235 = _T_2234 | _T_2222;
  assign _T_2236 = _T_2235 | _T_2225;
  assign _T_2237 = _T_2236 | _T_2228;
  assign wb_xcpt = _T_2237 | _T_2231;
  assign _T_2238 = _T_2228 ? 3'h7 : 3'h5;
  assign _T_2239 = _T_2225 ? 4'hd : {{1'd0}, _T_2238};
  assign _T_2240 = _T_2222 ? 4'hf : _T_2239;
  assign _T_2241 = _T_2219 ? 4'h4 : _T_2240;
  assign _T_2242 = _T_2216 ? 4'h6 : _T_2241;
  assign wb_cause = wb_reg_xcpt ? wb_reg_cause : {{28'd0}, _T_2242};
  assign wb_wxd = wb_reg_valid & wb_ctrl_wxd;
  assign _T_2243 = wb_ctrl_div | wb_dcache_miss;
  assign wb_set_sboard = _T_2243 | wb_ctrl_rocc;
  assign replay_wb_common = io_dmem_s2_nack | wb_reg_replay;
  assign _T_2246 = io_rocc_cmd_ready == 1'h0;
  assign replay_wb_rocc = _T_1540 & _T_2246;
  assign replay_wb = replay_wb_common | replay_wb_rocc;
  assign _T_2247 = replay_wb | wb_xcpt;
  assign _T_2248 = _T_2247 | csr_io_eret;
  assign _T_2249 = _T_2248 | wb_reg_flush_pipe;
  assign _T_2250 = io_dmem_resp_bits_tag[0];
  assign dmem_resp_xpu = _T_2250 == 1'h0;
  assign dmem_resp_waddr = io_dmem_resp_bits_tag[5:1];
  assign dmem_resp_valid = io_dmem_resp_valid & io_dmem_resp_bits_has_data;
  assign dmem_resp_replay = dmem_resp_valid & io_dmem_resp_bits_replay;
  assign _T_2255 = wb_wxd == 1'h0;
  assign ll_wdata = div_io_resp_bits_data;
  assign _T_2258 = div_io_resp_ready & div_io_resp_valid;
  assign _T_2260 = dmem_resp_replay & dmem_resp_xpu;
  assign _GEN_159 = _T_2260 ? 1'h0 : _T_2255;
  assign _GEN_160 = _T_2260 ? dmem_resp_waddr : div_io_resp_bits_tag;
  assign _GEN_161 = _T_2260 ? 1'h1 : _T_2258;
  assign _T_2264 = replay_wb == 1'h0;
  assign _T_2265 = wb_reg_valid & _T_2264;
  assign _T_2267 = wb_xcpt == 1'h0;
  assign wb_valid = _T_2265 & _T_2267;
  assign wb_wen = wb_valid & wb_ctrl_wxd;
  assign rf_wen = wb_wen | _GEN_161;
  assign rf_waddr = _GEN_161 ? _GEN_160 : wb_waddr;
  assign _T_2268 = dmem_resp_valid & dmem_resp_xpu;
  assign _T_2270 = wb_ctrl_csr != 3'h0;
  assign _T_2271 = _T_2270 ? csr_io_rw_rdata : bypass_mux_2;
  assign _T_2272 = _GEN_161 ? ll_wdata : _T_2271;
  assign rf_wdata = _T_2268 ? io_dmem_resp_bits_data : _T_2272;
  assign _T_2274 = rf_waddr != 5'h0;
  assign _T_2276 = ~ rf_waddr;
  assign _T_2278 = rf_waddr == ibuf_io_inst_0_bits_inst_rs1;
  assign _GEN_162 = _T_2278 ? rf_wdata : _T_1367;
  assign _T_2279 = rf_waddr == ibuf_io_inst_0_bits_inst_rs2;
  assign _GEN_163 = _T_2279 ? rf_wdata : _T_1377;
  assign _GEN_168 = _T_2274 ? _GEN_162 : _T_1367;
  assign _GEN_169 = _T_2274 ? _GEN_163 : _T_1377;
  assign _GEN_172 = rf_wen ? _T_2274 : 1'h0;
  assign _GEN_174 = rf_wen ? _GEN_168 : _T_1367;
  assign _GEN_175 = rf_wen ? _GEN_169 : _T_1377;
  assign _T_2280 = ibuf_io_inst_0_bits_raw[31:20];
  assign _T_2281 = wb_reg_inst[31:20];
  assign _T_2283 = wb_reg_valid ? wb_ctrl_csr : 3'h0;
  assign _T_2286 = _T_939 & _T_1770;
  assign _T_2289 = _T_913 & _T_1768;
  assign _T_2291 = ibuf_io_inst_0_bits_inst_rd != 5'h0;
  assign _T_2292 = _T_1316 & _T_2291;
  assign _T_2296 = _T_2295[31:1];
  assign _GEN_189 = {{1'd0}, _T_2296};
  assign _T_2297 = _GEN_189 << 1;
  assign _T_2300 = 32'h1 << _GEN_160;
  assign _T_2302 = _GEN_161 ? _T_2300 : 32'h0;
  assign _T_2303 = ~ _T_2302;
  assign _T_2304 = _T_2297 & _T_2303;
  assign _GEN_176 = _GEN_161 ? _T_2304 : _T_2295;
  assign _T_2306 = _T_2297 >> ibuf_io_inst_0_bits_inst_rs1;
  assign _T_2307 = _T_2306[0];
  assign _T_2308 = _GEN_160 == ibuf_io_inst_0_bits_inst_rs1;
  assign _T_2309 = _GEN_161 & _T_2308;
  assign _T_2311 = _T_2309 == 1'h0;
  assign _T_2312 = _T_2307 & _T_2311;
  assign _T_2313 = _T_2286 & _T_2312;
  assign _T_2314 = _T_2297 >> ibuf_io_inst_0_bits_inst_rs2;
  assign _T_2315 = _T_2314[0];
  assign _T_2316 = _GEN_160 == ibuf_io_inst_0_bits_inst_rs2;
  assign _T_2317 = _GEN_161 & _T_2316;
  assign _T_2319 = _T_2317 == 1'h0;
  assign _T_2320 = _T_2315 & _T_2319;
  assign _T_2321 = _T_2289 & _T_2320;
  assign _T_2322 = _T_2297 >> ibuf_io_inst_0_bits_inst_rd;
  assign _T_2323 = _T_2322[0];
  assign _T_2324 = _GEN_160 == ibuf_io_inst_0_bits_inst_rd;
  assign _T_2325 = _GEN_161 & _T_2324;
  assign _T_2327 = _T_2325 == 1'h0;
  assign _T_2328 = _T_2323 & _T_2327;
  assign _T_2329 = _T_2292 & _T_2328;
  assign _T_2330 = _T_2313 | _T_2321;
  assign id_sboard_hazard = _T_2330 | _T_2329;
  assign _T_2331 = wb_set_sboard & wb_wen;
  assign _T_2333 = 32'h1 << wb_waddr;
  assign _T_2335 = _T_2331 ? _T_2333 : 32'h0;
  assign _T_2336 = _T_2304 | _T_2335;
  assign _T_2337 = _GEN_161 | _T_2331;
  assign _GEN_177 = _T_2337 ? _T_2336 : _GEN_176;
  assign _T_2339 = ex_ctrl_csr != 3'h0;
  assign _T_2340 = _T_2339 | ex_ctrl_jalr;
  assign _T_2341 = _T_2340 | ex_ctrl_mem;
  assign _T_2342 = _T_2341 | ex_ctrl_div;
  assign _T_2343 = _T_2342 | ex_ctrl_fp;
  assign ex_cannot_bypass = _T_2343 | ex_ctrl_rocc;
  assign _T_2344 = ibuf_io_inst_0_bits_inst_rs1 == ex_waddr;
  assign _T_2345 = _T_2286 & _T_2344;
  assign _T_2346 = ibuf_io_inst_0_bits_inst_rs2 == ex_waddr;
  assign _T_2347 = _T_2289 & _T_2346;
  assign _T_2348 = ibuf_io_inst_0_bits_inst_rd == ex_waddr;
  assign _T_2349 = _T_2292 & _T_2348;
  assign _T_2350 = _T_2345 | _T_2347;
  assign _T_2351 = _T_2350 | _T_2349;
  assign data_hazard_ex = ex_ctrl_wxd & _T_2351;
  assign _T_2353 = io_fpu_dec_ren1 & _T_2344;
  assign _T_2355 = io_fpu_dec_ren2 & _T_2346;
  assign _T_2356 = ibuf_io_inst_0_bits_inst_rs3 == ex_waddr;
  assign _T_2357 = io_fpu_dec_ren3 & _T_2356;
  assign _T_2359 = io_fpu_dec_wen & _T_2348;
  assign _T_2360 = _T_2353 | _T_2355;
  assign _T_2361 = _T_2360 | _T_2357;
  assign _T_2362 = _T_2361 | _T_2359;
  assign fp_data_hazard_ex = ex_ctrl_wfd & _T_2362;
  assign _T_2363 = data_hazard_ex & ex_cannot_bypass;
  assign _T_2364 = _T_2363 | fp_data_hazard_ex;
  assign id_ex_hazard = ex_reg_valid & _T_2364;
  assign _T_2367 = mem_ctrl_csr != 3'h0;
  assign _T_2368 = mem_ctrl_mem & mem_reg_slow_bypass;
  assign _T_2369 = _T_2367 | _T_2368;
  assign _T_2370 = _T_2369 | mem_ctrl_div;
  assign _T_2371 = _T_2370 | mem_ctrl_fp;
  assign mem_cannot_bypass = _T_2371 | mem_ctrl_rocc;
  assign _T_2372 = ibuf_io_inst_0_bits_inst_rs1 == mem_waddr;
  assign _T_2373 = _T_2286 & _T_2372;
  assign _T_2374 = ibuf_io_inst_0_bits_inst_rs2 == mem_waddr;
  assign _T_2375 = _T_2289 & _T_2374;
  assign _T_2376 = ibuf_io_inst_0_bits_inst_rd == mem_waddr;
  assign _T_2377 = _T_2292 & _T_2376;
  assign _T_2378 = _T_2373 | _T_2375;
  assign _T_2379 = _T_2378 | _T_2377;
  assign data_hazard_mem = mem_ctrl_wxd & _T_2379;
  assign _T_2381 = io_fpu_dec_ren1 & _T_2372;
  assign _T_2383 = io_fpu_dec_ren2 & _T_2374;
  assign _T_2384 = ibuf_io_inst_0_bits_inst_rs3 == mem_waddr;
  assign _T_2385 = io_fpu_dec_ren3 & _T_2384;
  assign _T_2387 = io_fpu_dec_wen & _T_2376;
  assign _T_2388 = _T_2381 | _T_2383;
  assign _T_2389 = _T_2388 | _T_2385;
  assign _T_2390 = _T_2389 | _T_2387;
  assign fp_data_hazard_mem = mem_ctrl_wfd & _T_2390;
  assign _T_2391 = data_hazard_mem & mem_cannot_bypass;
  assign _T_2392 = _T_2391 | fp_data_hazard_mem;
  assign id_mem_hazard = mem_reg_valid & _T_2392;
  assign _T_2393 = mem_reg_valid & data_hazard_mem;
  assign _T_2394 = _T_2393 & mem_ctrl_mem;
  assign _T_2395 = ibuf_io_inst_0_bits_inst_rs1 == wb_waddr;
  assign _T_2396 = _T_2286 & _T_2395;
  assign _T_2397 = ibuf_io_inst_0_bits_inst_rs2 == wb_waddr;
  assign _T_2398 = _T_2289 & _T_2397;
  assign _T_2399 = ibuf_io_inst_0_bits_inst_rd == wb_waddr;
  assign _T_2400 = _T_2292 & _T_2399;
  assign _T_2401 = _T_2396 | _T_2398;
  assign _T_2402 = _T_2401 | _T_2400;
  assign data_hazard_wb = wb_ctrl_wxd & _T_2402;
  assign _T_2404 = io_fpu_dec_ren1 & _T_2395;
  assign _T_2406 = io_fpu_dec_ren2 & _T_2397;
  assign _T_2407 = ibuf_io_inst_0_bits_inst_rs3 == wb_waddr;
  assign _T_2408 = io_fpu_dec_ren3 & _T_2407;
  assign _T_2410 = io_fpu_dec_wen & _T_2399;
  assign _T_2411 = _T_2404 | _T_2406;
  assign _T_2412 = _T_2411 | _T_2408;
  assign _T_2413 = _T_2412 | _T_2410;
  assign fp_data_hazard_wb = wb_ctrl_wfd & _T_2413;
  assign _T_2414 = data_hazard_wb & wb_set_sboard;
  assign _T_2415 = _T_2414 | fp_data_hazard_wb;
  assign id_wb_hazard = wb_reg_valid & _T_2415;
  assign _T_2420 = wb_dcache_miss & wb_ctrl_wfd;
  assign _T_2421 = _T_2420 | io_fpu_sboard_set;
  assign _T_2422 = _T_2421 & wb_valid;
  assign _T_2426 = _T_2422 ? _T_2333 : 32'h0;
  assign _T_2427 = _T_2418 | _T_2426;
  assign _GEN_178 = _T_2422 ? _T_2427 : _T_2418;
  assign _T_2429 = dmem_resp_replay & _T_2250;
  assign _T_2431 = 32'h1 << dmem_resp_waddr;
  assign _T_2433 = _T_2429 ? _T_2431 : 32'h0;
  assign _T_2434 = ~ _T_2433;
  assign _T_2435 = _T_2427 & _T_2434;
  assign _T_2436 = _T_2422 | _T_2429;
  assign _GEN_179 = _T_2436 ? _T_2435 : _GEN_178;
  assign _T_2438 = 32'h1 << io_fpu_sboard_clra;
  assign _T_2440 = io_fpu_sboard_clr ? _T_2438 : 32'h0;
  assign _T_2441 = ~ _T_2440;
  assign _T_2442 = _T_2435 & _T_2441;
  assign _T_2443 = _T_2436 | io_fpu_sboard_clr;
  assign _GEN_180 = _T_2443 ? _T_2442 : _GEN_179;
  assign _T_2445 = io_fpu_fcsr_rdy == 1'h0;
  assign _T_2446 = id_csr_en & _T_2445;
  assign _T_2447 = _T_2418 >> ibuf_io_inst_0_bits_inst_rs1;
  assign _T_2448 = _T_2447[0];
  assign _T_2449 = io_fpu_dec_ren1 & _T_2448;
  assign _T_2450 = _T_2418 >> ibuf_io_inst_0_bits_inst_rs2;
  assign _T_2451 = _T_2450[0];
  assign _T_2452 = io_fpu_dec_ren2 & _T_2451;
  assign _T_2453 = _T_2418 >> ibuf_io_inst_0_bits_inst_rs3;
  assign _T_2454 = _T_2453[0];
  assign _T_2455 = io_fpu_dec_ren3 & _T_2454;
  assign _T_2456 = _T_2418 >> ibuf_io_inst_0_bits_inst_rd;
  assign _T_2457 = _T_2456[0];
  assign _T_2458 = io_fpu_dec_wen & _T_2457;
  assign _T_2459 = _T_2449 | _T_2452;
  assign _T_2460 = _T_2459 | _T_2455;
  assign _T_2461 = _T_2460 | _T_2458;
  assign id_stall_fpu = _T_2446 | _T_2461;
  assign _T_2465 = io_dmem_req_valid | dcache_blocked;
  assign _T_2466 = _T_1815 & _T_2465;
  assign _T_2475 = id_ex_hazard | id_mem_hazard;
  assign _T_2476 = _T_2475 | id_wb_hazard;
  assign _T_2477 = _T_2476 | id_sboard_hazard;
  assign _T_2478 = ex_reg_valid | mem_reg_valid;
  assign _T_2479 = _T_2478 | wb_reg_valid;
  assign _T_2480 = csr_io_singleStep & _T_2479;
  assign _T_2481 = _T_2477 | _T_2480;
  assign _T_2482 = _T_878 & id_stall_fpu;
  assign _T_2483 = _T_2481 | _T_2482;
  assign _T_2484 = _T_1150 & dcache_blocked;
  assign _T_2485 = _T_2483 | _T_2484;
  assign _T_2490 = div_io_resp_valid & _T_2255;
  assign _T_2491 = div_io_req_ready | _T_2490;
  assign _T_2493 = _T_2491 == 1'h0;
  assign _T_2494 = _T_2493 | div_io_req_valid;
  assign _T_2495 = _T_1278 & _T_2494;
  assign _T_2496 = _T_2485 | _T_2495;
  assign _T_2497 = _T_2496 | _T_1548;
  assign ctrl_stalld = _T_2497 | csr_io_csr_stall;
  assign _T_2499 = ibuf_io_inst_0_valid == 1'h0;
  assign _T_2500 = _T_2499 | ibuf_io_inst_0_bits_replay;
  assign _T_2501 = _T_2500 | take_pc;
  assign _T_2502 = _T_2501 | ctrl_stalld;
  assign _T_2503 = _T_2502 | csr_io_interrupt;
  assign _T_2506 = wb_xcpt | csr_io_eret;
  assign _T_2507 = replay_wb ? wb_reg_pc : mem_npc;
  assign _T_2508 = _T_2506 ? csr_io_evec : _T_2507;
  assign _T_2509 = wb_reg_valid & wb_ctrl_fence_i;
  assign _T_2511 = io_dmem_s2_nack == 1'h0;
  assign _T_2512 = _T_2509 & _T_2511;
  assign _T_2513 = wb_reg_valid & wb_reg_sfence;
  assign _T_2514 = wb_ctrl_mem_type[0];
  assign _T_2517 = ctrl_stalld == 1'h0;
  assign _T_2558 = _T_1735 & _T_878;
  assign _T_2559 = dmem_resp_valid & _T_2250;
  assign _T_2560 = ex_reg_valid & ex_ctrl_mem;
  assign ex_dcache_tag = {ex_waddr,ex_ctrl_fp};
  assign _T_2562 = mem_ctrl_fp ? io_fpu_store_data : mem_reg_rs2;
  assign _T_2563 = killm_common | mem_breakpoint;
  assign _T_2581 = wb_reg_inst[19:15];
  assign _T_2582 = wb_reg_inst[24:20];
  assign _T_2588 = csr_io_time;
  assign _T_2591 = _T_2331 == 1'h0;
  assign _T_2592 = rf_wen & _T_2591;
  assign _T_2594 = _T_2592 ? rf_waddr : 5'h0;
  assign _T_2606 = reset == 1'h0;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  ex_ctrl_fp = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  ex_ctrl_rocc = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  ex_ctrl_branch = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  ex_ctrl_jal = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  ex_ctrl_jalr = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  ex_ctrl_rxs2 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  ex_ctrl_sel_alu2 = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  ex_ctrl_sel_alu1 = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  ex_ctrl_sel_imm = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  ex_ctrl_alu_fn = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  ex_ctrl_mem = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  ex_ctrl_mem_cmd = _RAND_11[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  ex_ctrl_mem_type = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{$random}};
  ex_ctrl_wfd = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{$random}};
  ex_ctrl_div = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{$random}};
  ex_ctrl_wxd = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{$random}};
  ex_ctrl_csr = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{$random}};
  ex_ctrl_fence_i = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{$random}};
  mem_ctrl_fp = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{$random}};
  mem_ctrl_rocc = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{$random}};
  mem_ctrl_branch = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{$random}};
  mem_ctrl_jal = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{$random}};
  mem_ctrl_jalr = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{$random}};
  mem_ctrl_mem = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{$random}};
  mem_ctrl_mem_type = _RAND_24[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{$random}};
  mem_ctrl_wfd = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{$random}};
  mem_ctrl_div = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{$random}};
  mem_ctrl_wxd = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{$random}};
  mem_ctrl_csr = _RAND_28[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{$random}};
  mem_ctrl_fence_i = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{$random}};
  wb_ctrl_rocc = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{$random}};
  wb_ctrl_mem = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{$random}};
  wb_ctrl_mem_type = _RAND_32[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{$random}};
  wb_ctrl_wfd = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{$random}};
  wb_ctrl_div = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{$random}};
  wb_ctrl_wxd = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{$random}};
  wb_ctrl_csr = _RAND_36[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{$random}};
  wb_ctrl_fence_i = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{$random}};
  ex_reg_xcpt_interrupt = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{$random}};
  ex_reg_valid = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{$random}};
  ex_reg_rvc = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{$random}};
  ex_reg_xcpt = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{$random}};
  ex_reg_flush_pipe = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{$random}};
  ex_reg_load_use = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{$random}};
  ex_cause = _RAND_44[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{$random}};
  ex_reg_replay = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{$random}};
  ex_reg_pc = _RAND_46[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{$random}};
  ex_reg_inst = _RAND_47[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{$random}};
  ex_reg_cinst = _RAND_48[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{$random}};
  mem_reg_xcpt_interrupt = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{$random}};
  mem_reg_valid = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{$random}};
  mem_reg_rvc = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{$random}};
  mem_reg_xcpt = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{$random}};
  mem_reg_replay = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{$random}};
  mem_reg_flush_pipe = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{$random}};
  mem_reg_cause = _RAND_55[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{$random}};
  mem_reg_slow_bypass = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{$random}};
  mem_reg_load = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{$random}};
  mem_reg_store = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{$random}};
  mem_reg_sfence = _RAND_59[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{$random}};
  mem_reg_pc = _RAND_60[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{$random}};
  mem_reg_inst = _RAND_61[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{$random}};
  mem_reg_cinst = _RAND_62[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{$random}};
  bypass_mux_1 = _RAND_63[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{$random}};
  mem_reg_rs2 = _RAND_64[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{$random}};
  wb_reg_valid = _RAND_65[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{$random}};
  wb_reg_xcpt = _RAND_66[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{$random}};
  wb_reg_replay = _RAND_67[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{$random}};
  wb_reg_flush_pipe = _RAND_68[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{$random}};
  wb_reg_cause = _RAND_69[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{$random}};
  wb_reg_sfence = _RAND_70[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{$random}};
  wb_reg_pc = _RAND_71[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{$random}};
  wb_reg_inst = _RAND_72[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{$random}};
  wb_reg_cinst = _RAND_73[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{$random}};
  bypass_mux_2 = _RAND_74[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{$random}};
  id_reg_fence = _RAND_75[0:0];
  `endif // RANDOMIZE_REG_INIT
  _RAND_76 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 31; initvar = initvar+1)
    _T_1357[initvar] = _RAND_76[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_77 = {1{$random}};
  _RAND_78 = {1{$random}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{$random}};
  ex_reg_rs_bypass_0 = _RAND_79[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{$random}};
  ex_reg_rs_bypass_1 = _RAND_80[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{$random}};
  ex_reg_rs_lsb_0 = _RAND_81[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{$random}};
  ex_reg_rs_lsb_1 = _RAND_82[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{$random}};
  ex_reg_rs_msb_0 = _RAND_83[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{$random}};
  ex_reg_rs_msb_1 = _RAND_84[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{$random}};
  _T_2195 = _RAND_85[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{$random}};
  _T_2295 = _RAND_86[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{$random}};
  _T_2418 = _RAND_87[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{$random}};
  dcache_blocked = _RAND_88[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{$random}};
  _T_2597 = _RAND_89[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{$random}};
  _T_2599 = _RAND_90[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{$random}};
  _T_2602 = _RAND_91[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{$random}};
  _T_2604 = _RAND_92[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_1735) begin
      ex_ctrl_fp <= _T_878;
    end
    if (_T_1735) begin
      ex_ctrl_rocc <= 1'h0;
    end
    if (_T_1735) begin
      ex_ctrl_branch <= _T_883;
    end
    if (_T_1735) begin
      ex_ctrl_jal <= _T_889;
    end
    if (_T_1735) begin
      ex_ctrl_jalr <= _T_895;
    end
    if (_T_1735) begin
      ex_ctrl_rxs2 <= _T_913;
    end
    if (_T_1735) begin
      if (id_xcpt) begin
        if (_T_1763) begin
          ex_ctrl_sel_alu2 <= 2'h0;
        end else begin
          if (_T_1756) begin
            ex_ctrl_sel_alu2 <= 2'h1;
          end else begin
            ex_ctrl_sel_alu2 <= 2'h0;
          end
        end
      end else begin
        ex_ctrl_sel_alu2 <= _T_982;
      end
    end
    if (_T_1735) begin
      if (id_xcpt) begin
        if (_T_1763) begin
          ex_ctrl_sel_alu1 <= 2'h2;
        end else begin
          if (_T_1756) begin
            ex_ctrl_sel_alu1 <= 2'h2;
          end else begin
            ex_ctrl_sel_alu1 <= 2'h1;
          end
        end
      end else begin
        ex_ctrl_sel_alu1 <= _T_1008;
      end
    end
    if (_T_1735) begin
      ex_ctrl_sel_imm <= _T_1044;
    end
    if (_T_1735) begin
      if (id_xcpt) begin
        ex_ctrl_alu_fn <= 4'h0;
      end else begin
        ex_ctrl_alu_fn <= _T_1134;
      end
    end
    if (_T_1735) begin
      ex_ctrl_mem <= _T_1150;
    end
    if (_T_1735) begin
      ex_ctrl_mem_cmd <= _T_1210;
    end
    if (_T_1735) begin
      if (id_sfence) begin
        ex_ctrl_mem_type <= {{1'd0}, _T_1771};
      end else begin
        ex_ctrl_mem_type <= _T_1230;
      end
    end
    if (_T_1735) begin
      ex_ctrl_wfd <= _T_1274;
    end
    if (_T_1735) begin
      ex_ctrl_div <= _T_1278;
    end
    if (_T_1735) begin
      ex_ctrl_wxd <= _T_1316;
    end
    if (_T_1735) begin
      if (id_csr_ren) begin
        ex_ctrl_csr <= 3'h5;
      end else begin
        ex_ctrl_csr <= _T_1336;
      end
    end
    if (_T_1735) begin
      ex_ctrl_fence_i <= _T_1340;
    end
    if (_T_2081) begin
      mem_ctrl_fp <= ex_ctrl_fp;
    end
    if (_T_2081) begin
      mem_ctrl_rocc <= ex_ctrl_rocc;
    end
    if (_T_2081) begin
      mem_ctrl_branch <= ex_ctrl_branch;
    end
    if (_T_2081) begin
      mem_ctrl_jal <= ex_ctrl_jal;
    end
    if (_T_2081) begin
      mem_ctrl_jalr <= ex_ctrl_jalr;
    end
    if (_T_2081) begin
      mem_ctrl_mem <= ex_ctrl_mem;
    end
    if (_T_2081) begin
      mem_ctrl_mem_type <= ex_ctrl_mem_type;
    end
    if (_T_2081) begin
      mem_ctrl_wfd <= ex_ctrl_wfd;
    end
    if (_T_2081) begin
      mem_ctrl_div <= ex_ctrl_div;
    end
    if (_T_2081) begin
      mem_ctrl_wxd <= ex_ctrl_wxd;
    end
    if (_T_2081) begin
      mem_ctrl_csr <= ex_ctrl_csr;
    end
    if (_T_2081) begin
      if (_T_2172) begin
        mem_ctrl_fence_i <= 1'h1;
      end else begin
        mem_ctrl_fence_i <= ex_ctrl_fence_i;
      end
    end
    if (mem_pc_valid) begin
      wb_ctrl_rocc <= mem_ctrl_rocc;
    end
    if (mem_pc_valid) begin
      wb_ctrl_mem <= mem_ctrl_mem;
    end
    if (mem_pc_valid) begin
      wb_ctrl_mem_type <= mem_ctrl_mem_type;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wfd <= mem_ctrl_wfd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_div <= mem_ctrl_div;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wxd <= mem_ctrl_wxd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_csr <= mem_ctrl_csr;
    end
    if (mem_pc_valid) begin
      wb_ctrl_fence_i <= mem_ctrl_fence_i;
    end
    ex_reg_xcpt_interrupt <= _T_1746;
    ex_reg_valid <= _T_1735;
    if (_T_1735) begin
      if (id_xcpt) begin
        if (_T_1756) begin
          ex_reg_rvc <= 1'h1;
        end else begin
          ex_reg_rvc <= ibuf_io_inst_0_bits_rvc;
        end
      end else begin
        ex_reg_rvc <= ibuf_io_inst_0_bits_rvc;
      end
    end
    ex_reg_xcpt <= _T_1742;
    if (_T_1735) begin
      ex_reg_flush_pipe <= _T_1766;
    end
    if (_T_1735) begin
      ex_reg_load_use <= _T_2394;
    end
    if (_T_1810) begin
      if (csr_io_interrupt) begin
        ex_cause <= csr_io_interrupt_cause;
      end else begin
        ex_cause <= {{28'd0}, _T_1569};
      end
    end
    ex_reg_replay <= _T_1739;
    if (_T_1810) begin
      ex_reg_pc <= ibuf_io_pc;
    end
    if (_T_1810) begin
      ex_reg_inst <= ibuf_io_inst_0_bits_inst_bits;
    end
    if (_T_1810) begin
      ex_reg_cinst <= ibuf_io_inst_0_bits_cinst;
    end
    mem_reg_xcpt_interrupt <= _T_2076;
    mem_reg_valid <= _T_2067;
    if (_T_2081) begin
      mem_reg_rvc <= ex_reg_rvc;
    end
    mem_reg_xcpt <= _T_2073;
    mem_reg_replay <= _T_2070;
    if (_T_2081) begin
      if (_T_2172) begin
        mem_reg_flush_pipe <= 1'h1;
      end else begin
        mem_reg_flush_pipe <= ex_reg_flush_pipe;
      end
    end
    if (_T_2081) begin
      mem_reg_cause <= ex_cause;
    end
    if (_T_2081) begin
      mem_reg_slow_bypass <= ex_slow_bypass;
    end
    if (_T_2081) begin
      mem_reg_load <= _T_2117;
    end
    if (_T_2081) begin
      mem_reg_store <= _T_2153;
    end
    if (_T_2081) begin
      mem_reg_sfence <= 1'h0;
    end else begin
      if (_T_2077) begin
        mem_reg_sfence <= 1'h0;
      end
    end
    if (_T_2081) begin
      mem_reg_pc <= ex_reg_pc;
    end
    if (_T_2081) begin
      mem_reg_inst <= ex_reg_inst;
    end
    if (_T_2081) begin
      mem_reg_cinst <= ex_reg_cinst;
    end
    if (_T_2081) begin
      bypass_mux_1 <= alu_io_out;
    end
    if (_T_2081) begin
      if (_T_2156) begin
        if (_T_2162) begin
          mem_reg_rs2 <= _T_2165;
        end else begin
          if (_T_2167) begin
            mem_reg_rs2 <= _T_2169;
          end else begin
            if (ex_reg_rs_bypass_1) begin
              if (_T_1624) begin
                mem_reg_rs2 <= io_dmem_resp_bits_data_word_bypass;
              end else begin
                if (_T_1621) begin
                  mem_reg_rs2 <= bypass_mux_2;
                end else begin
                  if (_T_1618) begin
                    mem_reg_rs2 <= bypass_mux_1;
                  end else begin
                    mem_reg_rs2 <= 32'h0;
                  end
                end
              end
            end else begin
              mem_reg_rs2 <= _T_1626;
            end
          end
        end
      end
    end
    wb_reg_valid <= _T_2199;
    wb_reg_xcpt <= _T_2205;
    wb_reg_replay <= _T_2202;
    wb_reg_flush_pipe <= _T_2208;
    if (mem_pc_valid) begin
      if (_T_2184) begin
        wb_reg_cause <= mem_reg_cause;
      end else begin
        wb_reg_cause <= {{28'd0}, mem_new_cause};
      end
    end
    if (mem_pc_valid) begin
      wb_reg_sfence <= mem_reg_sfence;
    end
    if (mem_pc_valid) begin
      wb_reg_pc <= mem_reg_pc;
    end
    if (mem_pc_valid) begin
      wb_reg_inst <= mem_reg_inst;
    end
    if (mem_pc_valid) begin
      wb_reg_cinst <= mem_reg_cinst;
    end
    if (mem_pc_valid) begin
      if (_T_2212) begin
        bypass_mux_2 <= io_fpu_toint_data;
      end else begin
        bypass_mux_2 <= mem_int_wdata;
      end
    end
    if (reset) begin
      id_reg_fence <= 1'h0;
    end else begin
      if (_T_1735) begin
        if (id_fence_next) begin
          id_reg_fence <= 1'h1;
        end else begin
          if (_T_1533) begin
            id_reg_fence <= 1'h0;
          end
        end
      end else begin
        if (_T_1533) begin
          id_reg_fence <= 1'h0;
        end
      end
    end
    if(_T_1357__T_2277_en & _T_1357__T_2277_mask) begin
      _T_1357[_T_1357__T_2277_addr] <= _T_1357__T_2277_data;
    end
    if (_T_1735) begin
      if (id_illegal_insn) begin
        ex_reg_rs_bypass_0 <= 1'h0;
      end else begin
        ex_reg_rs_bypass_0 <= _T_1774;
      end
    end
    if (_T_1735) begin
      ex_reg_rs_bypass_1 <= _T_1789;
    end
    if (_T_1735) begin
      if (id_illegal_insn) begin
        ex_reg_rs_lsb_0 <= _T_1805;
      end else begin
        if (_T_1784) begin
          ex_reg_rs_lsb_0 <= _T_1785;
        end else begin
          if (_T_1578) begin
            ex_reg_rs_lsb_0 <= 2'h0;
          end else begin
            if (id_bypass_src_0_1) begin
              ex_reg_rs_lsb_0 <= 2'h1;
            end else begin
              if (id_bypass_src_0_2) begin
                ex_reg_rs_lsb_0 <= 2'h2;
              end else begin
                ex_reg_rs_lsb_0 <= 2'h3;
              end
            end
          end
        end
      end
    end
    if (_T_1735) begin
      if (_T_1799) begin
        ex_reg_rs_lsb_1 <= _T_1800;
      end else begin
        if (_T_1582) begin
          ex_reg_rs_lsb_1 <= 2'h0;
        end else begin
          if (id_bypass_src_1_1) begin
            ex_reg_rs_lsb_1 <= 2'h1;
          end else begin
            if (id_bypass_src_1_2) begin
              ex_reg_rs_lsb_1 <= 2'h2;
            end else begin
              ex_reg_rs_lsb_1 <= 2'h3;
            end
          end
        end
      end
    end
    if (_T_1735) begin
      if (id_illegal_insn) begin
        ex_reg_rs_msb_0 <= _T_1806;
      end else begin
        if (_T_1784) begin
          ex_reg_rs_msb_0 <= _T_1786;
        end
      end
    end
    if (_T_1735) begin
      if (_T_1799) begin
        ex_reg_rs_msb_1 <= _T_1801;
      end
    end
    _T_2195 <= _T_2193;
    if (reset) begin
      _T_2295 <= 32'h0;
    end else begin
      if (_T_2337) begin
        _T_2295 <= _T_2336;
      end else begin
        if (_GEN_161) begin
          _T_2295 <= _T_2304;
        end
      end
    end
    if (reset) begin
      _T_2418 <= 32'h0;
    end else begin
      if (_T_2443) begin
        _T_2418 <= _T_2442;
      end else begin
        if (_T_2436) begin
          _T_2418 <= _T_2435;
        end else begin
          if (_T_2422) begin
            _T_2418 <= _T_2427;
          end
        end
      end
    end
    dcache_blocked <= _T_2466;
    if (ex_reg_rs_bypass_0) begin
      if (_T_1614) begin
        _T_2597 <= io_dmem_resp_bits_data_word_bypass;
      end else begin
        if (_T_1611) begin
          _T_2597 <= bypass_mux_2;
        end else begin
          if (_T_1608) begin
            _T_2597 <= bypass_mux_1;
          end else begin
            _T_2597 <= 32'h0;
          end
        end
      end
    end else begin
      _T_2597 <= _T_1616;
    end
    _T_2599 <= _T_2597;
    if (ex_reg_rs_bypass_1) begin
      if (_T_1624) begin
        _T_2602 <= io_dmem_resp_bits_data_word_bypass;
      end else begin
        if (_T_1621) begin
          _T_2602 <= bypass_mux_2;
        end else begin
          if (_T_1618) begin
            _T_2602 <= bypass_mux_1;
          end else begin
            _T_2602 <= 32'h0;
          end
        end
      end
    end else begin
      _T_2602 <= _T_1626;
    end
    _T_2604 <= _T_2602;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2606) begin
          $fwrite(32'h80000002,"C%d: %d [%d] pc=[%h] W[r%d=%h][%d] R[r%d=%h] R[r%d=%h] inst=[%h] DASM(%h)\n",io_hartid,_T_2588,wb_valid,wb_reg_pc,_T_2594,rf_wdata,rf_wen,_T_2581,_T_2599,_T_2582,_T_2604,wb_reg_cinst,wb_reg_cinst);
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
