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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_INT_TO_FP(
  input         clock,
  input         reset,
  input         io_in_valid,
  input         io_in_bits_wflags,
  input  [2:0]  io_in_bits_rm,
  input  [1:0]  io_in_bits_typ,
  input  [32:0] io_in_bits_in1,
  output [32:0] io_out_bits_data,
  output [4:0]  io_out_bits_exc
);
  reg  _T_13;
  reg [31:0] _RAND_0;
  reg  _T_15_wflags;
  reg [31:0] _RAND_1;
  reg [2:0] _T_15_rm;
  reg [31:0] _RAND_2;
  reg [1:0] _T_15_typ;
  reg [31:0] _RAND_3;
  reg [32:0] _T_15_in1;
  reg [63:0] _RAND_4;
  wire  _GEN_15;
  wire [2:0] _GEN_16;
  wire [1:0] _GEN_18;
  wire [32:0] _GEN_19;
  wire  _T_28;
  wire [7:0] _T_29;
  wire [22:0] _T_30;
  wire  _T_32;
  wire  _T_34;
  wire [15:0] _T_35;
  wire [7:0] _T_40;
  wire [15:0] _T_41;
  wire [7:0] _T_42;
  wire [15:0] _GEN_26;
  wire [15:0] _T_43;
  wire [15:0] _T_45;
  wire [15:0] _T_46;
  wire [11:0] _T_50;
  wire [15:0] _GEN_27;
  wire [15:0] _T_51;
  wire [11:0] _T_52;
  wire [15:0] _GEN_28;
  wire [15:0] _T_53;
  wire [15:0] _T_55;
  wire [15:0] _T_56;
  wire [13:0] _T_60;
  wire [15:0] _GEN_29;
  wire [15:0] _T_61;
  wire [13:0] _T_62;
  wire [15:0] _GEN_30;
  wire [15:0] _T_63;
  wire [15:0] _T_65;
  wire [15:0] _T_66;
  wire [14:0] _T_70;
  wire [15:0] _GEN_31;
  wire [15:0] _T_71;
  wire [14:0] _T_72;
  wire [15:0] _GEN_32;
  wire [15:0] _T_73;
  wire [15:0] _T_75;
  wire [15:0] _T_76;
  wire [6:0] _T_77;
  wire [3:0] _T_78;
  wire [1:0] _T_79;
  wire  _T_80;
  wire  _T_81;
  wire [1:0] _T_82;
  wire [1:0] _T_83;
  wire  _T_84;
  wire  _T_85;
  wire [1:0] _T_86;
  wire [3:0] _T_87;
  wire [2:0] _T_88;
  wire [1:0] _T_89;
  wire  _T_90;
  wire  _T_91;
  wire [1:0] _T_92;
  wire  _T_93;
  wire [2:0] _T_94;
  wire [6:0] _T_95;
  wire [22:0] _T_96;
  wire  _T_97;
  wire  _T_98;
  wire  _T_99;
  wire  _T_100;
  wire  _T_101;
  wire  _T_102;
  wire  _T_103;
  wire  _T_104;
  wire  _T_105;
  wire  _T_106;
  wire  _T_107;
  wire  _T_108;
  wire  _T_109;
  wire  _T_110;
  wire  _T_111;
  wire  _T_112;
  wire  _T_113;
  wire  _T_114;
  wire  _T_115;
  wire  _T_116;
  wire  _T_117;
  wire  _T_118;
  wire [4:0] _T_143;
  wire [4:0] _T_144;
  wire [4:0] _T_145;
  wire [4:0] _T_146;
  wire [4:0] _T_147;
  wire [4:0] _T_148;
  wire [4:0] _T_149;
  wire [4:0] _T_150;
  wire [4:0] _T_151;
  wire [4:0] _T_152;
  wire [4:0] _T_153;
  wire [4:0] _T_154;
  wire [4:0] _T_155;
  wire [4:0] _T_156;
  wire [4:0] _T_157;
  wire [4:0] _T_158;
  wire [4:0] _T_159;
  wire [4:0] _T_160;
  wire [4:0] _T_161;
  wire [4:0] _T_162;
  wire [4:0] _T_163;
  wire [4:0] _T_164;
  wire [53:0] _GEN_33;
  wire [53:0] _T_165;
  wire [21:0] _T_166;
  wire [22:0] _GEN_34;
  wire [22:0] _T_167;
  wire [8:0] _GEN_35;
  wire [8:0] _T_169;
  wire [8:0] _T_170;
  wire [1:0] _T_174;
  wire [7:0] _GEN_36;
  wire [7:0] _T_175;
  wire [8:0] _GEN_37;
  wire [9:0] _T_176;
  wire [8:0] _T_177;
  wire  _T_178;
  wire [1:0] _T_179;
  wire  _T_181;
  wire  _T_185;
  wire  _T_186;
  wire [9:0] _T_189;
  wire  _T_192;
  wire [22:0] _T_193;
  wire [1:0] _T_194;
  wire [24:0] _T_195;
  wire [2:0] _T_197;
  wire [2:0] _T_198;
  wire [2:0] _GEN_38;
  wire [2:0] _T_202;
  wire [5:0] _T_203;
  wire [22:0] _T_204;
  wire [28:0] _T_205;
  wire [3:0] _T_206;
  wire [32:0] _T_207;
  wire [32:0] _T_208;
  wire [32:0] intValue;
  wire  INToRecFN_io_signedIn;
  wire [31:0] INToRecFN_io_in;
  wire [2:0] INToRecFN_io_roundingMode;
  wire [32:0] INToRecFN_io_out;
  wire [4:0] INToRecFN_io_exceptionFlags;
  wire  _T_211;
  wire  _T_212;
  wire [32:0] _GEN_22;
  wire [4:0] _GEN_23;
  reg [32:0] _T_218_data;
  reg [63:0] _RAND_5;
  reg [4:0] _T_218_exc;
  reg [31:0] _RAND_6;
  wire [32:0] _GEN_24;
  wire [4:0] _GEN_25;
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_IN_TO_REC_FN ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_IN_TO_REC_FN (
    .io_signedIn(INToRecFN_io_signedIn),
    .io_in(INToRecFN_io_in),
    .io_roundingMode(INToRecFN_io_roundingMode),
    .io_out(INToRecFN_io_out),
    .io_exceptionFlags(INToRecFN_io_exceptionFlags)
  );
  assign io_out_bits_data = _T_218_data;
  assign io_out_bits_exc = _T_218_exc;
  assign _GEN_15 = io_in_valid ? io_in_bits_wflags : _T_15_wflags;
  assign _GEN_16 = io_in_valid ? io_in_bits_rm : _T_15_rm;
  assign _GEN_18 = io_in_valid ? io_in_bits_typ : _T_15_typ;
  assign _GEN_19 = io_in_valid ? io_in_bits_in1 : _T_15_in1;
  assign _T_28 = _T_15_in1[31];
  assign _T_29 = _T_15_in1[30:23];
  assign _T_30 = _T_15_in1[22:0];
  assign _T_32 = _T_29 == 8'h0;
  assign _T_34 = _T_30 == 23'h0;
  assign _T_35 = _T_30[15:0];
  assign _T_40 = _T_35[15:8];
  assign _T_41 = {{8'd0}, _T_40};
  assign _T_42 = _T_35[7:0];
  assign _GEN_26 = {{8'd0}, _T_42};
  assign _T_43 = _GEN_26 << 8;
  assign _T_45 = _T_43 & 16'hff00;
  assign _T_46 = _T_41 | _T_45;
  assign _T_50 = _T_46[15:4];
  assign _GEN_27 = {{4'd0}, _T_50};
  assign _T_51 = _GEN_27 & 16'hf0f;
  assign _T_52 = _T_46[11:0];
  assign _GEN_28 = {{4'd0}, _T_52};
  assign _T_53 = _GEN_28 << 4;
  assign _T_55 = _T_53 & 16'hf0f0;
  assign _T_56 = _T_51 | _T_55;
  assign _T_60 = _T_56[15:2];
  assign _GEN_29 = {{2'd0}, _T_60};
  assign _T_61 = _GEN_29 & 16'h3333;
  assign _T_62 = _T_56[13:0];
  assign _GEN_30 = {{2'd0}, _T_62};
  assign _T_63 = _GEN_30 << 2;
  assign _T_65 = _T_63 & 16'hcccc;
  assign _T_66 = _T_61 | _T_65;
  assign _T_70 = _T_66[15:1];
  assign _GEN_31 = {{1'd0}, _T_70};
  assign _T_71 = _GEN_31 & 16'h5555;
  assign _T_72 = _T_66[14:0];
  assign _GEN_32 = {{1'd0}, _T_72};
  assign _T_73 = _GEN_32 << 1;
  assign _T_75 = _T_73 & 16'haaaa;
  assign _T_76 = _T_71 | _T_75;
  assign _T_77 = _T_30[22:16];
  assign _T_78 = _T_77[3:0];
  assign _T_79 = _T_78[1:0];
  assign _T_80 = _T_79[0];
  assign _T_81 = _T_79[1];
  assign _T_82 = {_T_80,_T_81};
  assign _T_83 = _T_78[3:2];
  assign _T_84 = _T_83[0];
  assign _T_85 = _T_83[1];
  assign _T_86 = {_T_84,_T_85};
  assign _T_87 = {_T_82,_T_86};
  assign _T_88 = _T_77[6:4];
  assign _T_89 = _T_88[1:0];
  assign _T_90 = _T_89[0];
  assign _T_91 = _T_89[1];
  assign _T_92 = {_T_90,_T_91};
  assign _T_93 = _T_88[2];
  assign _T_94 = {_T_92,_T_93};
  assign _T_95 = {_T_87,_T_94};
  assign _T_96 = {_T_76,_T_95};
  assign _T_97 = _T_96[0];
  assign _T_98 = _T_96[1];
  assign _T_99 = _T_96[2];
  assign _T_100 = _T_96[3];
  assign _T_101 = _T_96[4];
  assign _T_102 = _T_96[5];
  assign _T_103 = _T_96[6];
  assign _T_104 = _T_96[7];
  assign _T_105 = _T_96[8];
  assign _T_106 = _T_96[9];
  assign _T_107 = _T_96[10];
  assign _T_108 = _T_96[11];
  assign _T_109 = _T_96[12];
  assign _T_110 = _T_96[13];
  assign _T_111 = _T_96[14];
  assign _T_112 = _T_96[15];
  assign _T_113 = _T_96[16];
  assign _T_114 = _T_96[17];
  assign _T_115 = _T_96[18];
  assign _T_116 = _T_96[19];
  assign _T_117 = _T_96[20];
  assign _T_118 = _T_96[21];
  assign _T_143 = _T_118 ? 5'h15 : 5'h16;
  assign _T_144 = _T_117 ? 5'h14 : _T_143;
  assign _T_145 = _T_116 ? 5'h13 : _T_144;
  assign _T_146 = _T_115 ? 5'h12 : _T_145;
  assign _T_147 = _T_114 ? 5'h11 : _T_146;
  assign _T_148 = _T_113 ? 5'h10 : _T_147;
  assign _T_149 = _T_112 ? 5'hf : _T_148;
  assign _T_150 = _T_111 ? 5'he : _T_149;
  assign _T_151 = _T_110 ? 5'hd : _T_150;
  assign _T_152 = _T_109 ? 5'hc : _T_151;
  assign _T_153 = _T_108 ? 5'hb : _T_152;
  assign _T_154 = _T_107 ? 5'ha : _T_153;
  assign _T_155 = _T_106 ? 5'h9 : _T_154;
  assign _T_156 = _T_105 ? 5'h8 : _T_155;
  assign _T_157 = _T_104 ? 5'h7 : _T_156;
  assign _T_158 = _T_103 ? 5'h6 : _T_157;
  assign _T_159 = _T_102 ? 5'h5 : _T_158;
  assign _T_160 = _T_101 ? 5'h4 : _T_159;
  assign _T_161 = _T_100 ? 5'h3 : _T_160;
  assign _T_162 = _T_99 ? 5'h2 : _T_161;
  assign _T_163 = _T_98 ? 5'h1 : _T_162;
  assign _T_164 = _T_97 ? 5'h0 : _T_163;
  assign _GEN_33 = {{31'd0}, _T_30};
  assign _T_165 = _GEN_33 << _T_164;
  assign _T_166 = _T_165[21:0];
  assign _GEN_34 = {{1'd0}, _T_166};
  assign _T_167 = _GEN_34 << 1;
  assign _GEN_35 = {{4'd0}, _T_164};
  assign _T_169 = _GEN_35 ^ 9'h1ff;
  assign _T_170 = _T_32 ? _T_169 : {{1'd0}, _T_29};
  assign _T_174 = _T_32 ? 2'h2 : 2'h1;
  assign _GEN_36 = {{6'd0}, _T_174};
  assign _T_175 = 8'h80 | _GEN_36;
  assign _GEN_37 = {{1'd0}, _T_175};
  assign _T_176 = _T_170 + _GEN_37;
  assign _T_177 = _T_176[8:0];
  assign _T_178 = _T_32 & _T_34;
  assign _T_179 = _T_177[8:7];
  assign _T_181 = _T_179 == 2'h3;
  assign _T_185 = _T_34 == 1'h0;
  assign _T_186 = _T_181 & _T_185;
  assign _T_189 = {1'b0,$signed(_T_177)};
  assign _T_192 = _T_178 == 1'h0;
  assign _T_193 = _T_32 ? _T_167 : _T_30;
  assign _T_194 = {1'h0,_T_192};
  assign _T_195 = {_T_194,_T_193};
  assign _T_197 = _T_189[8:6];
  assign _T_198 = _T_178 ? 3'h0 : _T_197;
  assign _GEN_38 = {{2'd0}, _T_186};
  assign _T_202 = _T_198 | _GEN_38;
  assign _T_203 = _T_189[5:0];
  assign _T_204 = _T_195[22:0];
  assign _T_205 = {_T_203,_T_204};
  assign _T_206 = {_T_28,_T_202};
  assign _T_207 = {_T_206,_T_205};
  assign _T_208 = $signed(_T_15_in1);
  assign intValue = $unsigned(_T_208);
  assign INToRecFN_io_signedIn = _T_212;
  assign INToRecFN_io_in = intValue[31:0];
  assign INToRecFN_io_roundingMode = _T_15_rm;
  assign _T_211 = _T_15_typ[0];
  assign _T_212 = ~ _T_211;
  assign _GEN_22 = _T_15_wflags ? INToRecFN_io_out : _T_207;
  assign _GEN_23 = _T_15_wflags ? INToRecFN_io_exceptionFlags : 5'h0;
  assign _GEN_24 = _T_13 ? _GEN_22 : _T_218_data;
  assign _GEN_25 = _T_13 ? _GEN_23 : _T_218_exc;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_13 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_15_wflags = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_15_rm = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  _T_15_typ = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{$random}};
  _T_15_in1 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{$random}};
  _T_218_data = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_218_exc = _RAND_6[4:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_13 <= 1'h0;
    end else begin
      _T_13 <= io_in_valid;
    end
    if (io_in_valid) begin
      _T_15_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      _T_15_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      _T_15_typ <= io_in_bits_typ;
    end
    if (io_in_valid) begin
      _T_15_in1 <= io_in_bits_in1;
    end
    if (_T_13) begin
      if (_T_15_wflags) begin
        _T_218_data <= INToRecFN_io_out;
      end else begin
        _T_218_data <= _T_207;
      end
    end
    if (_T_13) begin
      if (_T_15_wflags) begin
        _T_218_exc <= INToRecFN_io_exceptionFlags;
      end else begin
        _T_218_exc <= 5'h0;
      end
    end
  end
endmodule
