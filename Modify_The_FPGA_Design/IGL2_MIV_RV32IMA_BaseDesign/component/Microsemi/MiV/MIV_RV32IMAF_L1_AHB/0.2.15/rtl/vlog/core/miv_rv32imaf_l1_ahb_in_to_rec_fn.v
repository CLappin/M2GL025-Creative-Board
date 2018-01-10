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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_IN_TO_REC_FN(
  input         io_signedIn,
  input  [31:0] io_in,
  input  [2:0]  io_roundingMode,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  _T_8;
  wire  _T_9;
  wire [32:0] _T_11;
  wire [32:0] _T_12;
  wire [31:0] _T_13;
  wire [31:0] _T_14;
  wire [63:0] _T_16;
  wire [31:0] _T_17;
  wire [15:0] _T_22;
  wire [31:0] _T_23;
  wire [15:0] _T_24;
  wire [31:0] _GEN_0;
  wire [31:0] _T_25;
  wire [31:0] _T_27;
  wire [31:0] _T_28;
  wire [23:0] _T_32;
  wire [31:0] _GEN_1;
  wire [31:0] _T_33;
  wire [23:0] _T_34;
  wire [31:0] _GEN_2;
  wire [31:0] _T_35;
  wire [31:0] _T_37;
  wire [31:0] _T_38;
  wire [27:0] _T_42;
  wire [31:0] _GEN_3;
  wire [31:0] _T_43;
  wire [27:0] _T_44;
  wire [31:0] _GEN_4;
  wire [31:0] _T_45;
  wire [31:0] _T_47;
  wire [31:0] _T_48;
  wire [29:0] _T_52;
  wire [31:0] _GEN_5;
  wire [31:0] _T_53;
  wire [29:0] _T_54;
  wire [31:0] _GEN_6;
  wire [31:0] _T_55;
  wire [31:0] _T_57;
  wire [31:0] _T_58;
  wire [30:0] _T_62;
  wire [31:0] _GEN_7;
  wire [31:0] _T_63;
  wire [30:0] _T_64;
  wire [31:0] _GEN_8;
  wire [31:0] _T_65;
  wire [31:0] _T_67;
  wire [31:0] _T_68;
  wire  _T_69;
  wire  _T_70;
  wire  _T_71;
  wire  _T_72;
  wire  _T_73;
  wire  _T_74;
  wire  _T_75;
  wire  _T_76;
  wire  _T_77;
  wire  _T_78;
  wire  _T_79;
  wire  _T_80;
  wire  _T_81;
  wire  _T_82;
  wire  _T_83;
  wire  _T_84;
  wire  _T_85;
  wire  _T_86;
  wire  _T_87;
  wire  _T_88;
  wire  _T_89;
  wire  _T_90;
  wire  _T_91;
  wire  _T_92;
  wire  _T_93;
  wire  _T_94;
  wire  _T_95;
  wire  _T_96;
  wire  _T_97;
  wire  _T_98;
  wire  _T_99;
  wire [4:0] _T_133;
  wire [4:0] _T_134;
  wire [4:0] _T_135;
  wire [4:0] _T_136;
  wire [4:0] _T_137;
  wire [4:0] _T_138;
  wire [4:0] _T_139;
  wire [4:0] _T_140;
  wire [4:0] _T_141;
  wire [4:0] _T_142;
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
  wire [62:0] _GEN_9;
  wire [62:0] _T_164;
  wire [31:0] _T_165;
  wire [32:0] intAsRawFloat_sig;
  wire  _T_169;
  wire  _T_171;
  wire [4:0] _T_174;
  wire [5:0] _T_175;
  wire [6:0] _T_176;
  wire  roundAnyRawFNToRecFN_io_invalidExc;
  wire  roundAnyRawFNToRecFN_io_infiniteExc;
  wire  roundAnyRawFNToRecFN_io_in_isNaN;
  wire  roundAnyRawFNToRecFN_io_in_isInf;
  wire  roundAnyRawFNToRecFN_io_in_isZero;
  wire  roundAnyRawFNToRecFN_io_in_sign;
  wire [6:0] roundAnyRawFNToRecFN_io_in_sExp;
  wire [32:0] roundAnyRawFNToRecFN_io_in_sig;
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode;
  wire [32:0] roundAnyRawFNToRecFN_io_out;
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags;
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ROUND_ANY_RAW_FN_TO_REC_FN_1 roundAnyRawFNToRecFN (
    .io_invalidExc(roundAnyRawFNToRecFN_io_invalidExc),
    .io_infiniteExc(roundAnyRawFNToRecFN_io_infiniteExc),
    .io_in_isNaN(roundAnyRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundAnyRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign io_out = roundAnyRawFNToRecFN_io_out;
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags;
  assign _T_8 = io_in[31];
  assign _T_9 = io_signedIn & _T_8;
  assign _T_11 = 32'h0 - io_in;
  assign _T_12 = $unsigned(_T_11);
  assign _T_13 = _T_12[31:0];
  assign _T_14 = _T_9 ? _T_13 : io_in;
  assign _T_16 = {32'h0,_T_14};
  assign _T_17 = _T_16[31:0];
  assign _T_22 = _T_17[31:16];
  assign _T_23 = {{16'd0}, _T_22};
  assign _T_24 = _T_17[15:0];
  assign _GEN_0 = {{16'd0}, _T_24};
  assign _T_25 = _GEN_0 << 16;
  assign _T_27 = _T_25 & 32'hffff0000;
  assign _T_28 = _T_23 | _T_27;
  assign _T_32 = _T_28[31:8];
  assign _GEN_1 = {{8'd0}, _T_32};
  assign _T_33 = _GEN_1 & 32'hff00ff;
  assign _T_34 = _T_28[23:0];
  assign _GEN_2 = {{8'd0}, _T_34};
  assign _T_35 = _GEN_2 << 8;
  assign _T_37 = _T_35 & 32'hff00ff00;
  assign _T_38 = _T_33 | _T_37;
  assign _T_42 = _T_38[31:4];
  assign _GEN_3 = {{4'd0}, _T_42};
  assign _T_43 = _GEN_3 & 32'hf0f0f0f;
  assign _T_44 = _T_38[27:0];
  assign _GEN_4 = {{4'd0}, _T_44};
  assign _T_45 = _GEN_4 << 4;
  assign _T_47 = _T_45 & 32'hf0f0f0f0;
  assign _T_48 = _T_43 | _T_47;
  assign _T_52 = _T_48[31:2];
  assign _GEN_5 = {{2'd0}, _T_52};
  assign _T_53 = _GEN_5 & 32'h33333333;
  assign _T_54 = _T_48[29:0];
  assign _GEN_6 = {{2'd0}, _T_54};
  assign _T_55 = _GEN_6 << 2;
  assign _T_57 = _T_55 & 32'hcccccccc;
  assign _T_58 = _T_53 | _T_57;
  assign _T_62 = _T_58[31:1];
  assign _GEN_7 = {{1'd0}, _T_62};
  assign _T_63 = _GEN_7 & 32'h55555555;
  assign _T_64 = _T_58[30:0];
  assign _GEN_8 = {{1'd0}, _T_64};
  assign _T_65 = _GEN_8 << 1;
  assign _T_67 = _T_65 & 32'haaaaaaaa;
  assign _T_68 = _T_63 | _T_67;
  assign _T_69 = _T_68[0];
  assign _T_70 = _T_68[1];
  assign _T_71 = _T_68[2];
  assign _T_72 = _T_68[3];
  assign _T_73 = _T_68[4];
  assign _T_74 = _T_68[5];
  assign _T_75 = _T_68[6];
  assign _T_76 = _T_68[7];
  assign _T_77 = _T_68[8];
  assign _T_78 = _T_68[9];
  assign _T_79 = _T_68[10];
  assign _T_80 = _T_68[11];
  assign _T_81 = _T_68[12];
  assign _T_82 = _T_68[13];
  assign _T_83 = _T_68[14];
  assign _T_84 = _T_68[15];
  assign _T_85 = _T_68[16];
  assign _T_86 = _T_68[17];
  assign _T_87 = _T_68[18];
  assign _T_88 = _T_68[19];
  assign _T_89 = _T_68[20];
  assign _T_90 = _T_68[21];
  assign _T_91 = _T_68[22];
  assign _T_92 = _T_68[23];
  assign _T_93 = _T_68[24];
  assign _T_94 = _T_68[25];
  assign _T_95 = _T_68[26];
  assign _T_96 = _T_68[27];
  assign _T_97 = _T_68[28];
  assign _T_98 = _T_68[29];
  assign _T_99 = _T_68[30];
  assign _T_133 = _T_99 ? 5'h1e : 5'h1f;
  assign _T_134 = _T_98 ? 5'h1d : _T_133;
  assign _T_135 = _T_97 ? 5'h1c : _T_134;
  assign _T_136 = _T_96 ? 5'h1b : _T_135;
  assign _T_137 = _T_95 ? 5'h1a : _T_136;
  assign _T_138 = _T_94 ? 5'h19 : _T_137;
  assign _T_139 = _T_93 ? 5'h18 : _T_138;
  assign _T_140 = _T_92 ? 5'h17 : _T_139;
  assign _T_141 = _T_91 ? 5'h16 : _T_140;
  assign _T_142 = _T_90 ? 5'h15 : _T_141;
  assign _T_143 = _T_89 ? 5'h14 : _T_142;
  assign _T_144 = _T_88 ? 5'h13 : _T_143;
  assign _T_145 = _T_87 ? 5'h12 : _T_144;
  assign _T_146 = _T_86 ? 5'h11 : _T_145;
  assign _T_147 = _T_85 ? 5'h10 : _T_146;
  assign _T_148 = _T_84 ? 5'hf : _T_147;
  assign _T_149 = _T_83 ? 5'he : _T_148;
  assign _T_150 = _T_82 ? 5'hd : _T_149;
  assign _T_151 = _T_81 ? 5'hc : _T_150;
  assign _T_152 = _T_80 ? 5'hb : _T_151;
  assign _T_153 = _T_79 ? 5'ha : _T_152;
  assign _T_154 = _T_78 ? 5'h9 : _T_153;
  assign _T_155 = _T_77 ? 5'h8 : _T_154;
  assign _T_156 = _T_76 ? 5'h7 : _T_155;
  assign _T_157 = _T_75 ? 5'h6 : _T_156;
  assign _T_158 = _T_74 ? 5'h5 : _T_157;
  assign _T_159 = _T_73 ? 5'h4 : _T_158;
  assign _T_160 = _T_72 ? 5'h3 : _T_159;
  assign _T_161 = _T_71 ? 5'h2 : _T_160;
  assign _T_162 = _T_70 ? 5'h1 : _T_161;
  assign _T_163 = _T_69 ? 5'h0 : _T_162;
  assign _GEN_9 = {{31'd0}, _T_17};
  assign _T_164 = _GEN_9 << _T_163;
  assign _T_165 = _T_164[31:0];
  assign intAsRawFloat_sig = {{1'd0}, _T_165};
  assign _T_169 = _T_165[31];
  assign _T_171 = _T_169 == 1'h0;
  assign _T_174 = ~ _T_163;
  assign _T_175 = {1'h1,_T_174};
  assign _T_176 = {1'b0,$signed(_T_175)};
  assign roundAnyRawFNToRecFN_io_invalidExc = 1'h0;
  assign roundAnyRawFNToRecFN_io_infiniteExc = 1'h0;
  assign roundAnyRawFNToRecFN_io_in_isNaN = 1'h0;
  assign roundAnyRawFNToRecFN_io_in_isInf = 1'h0;
  assign roundAnyRawFNToRecFN_io_in_isZero = _T_171;
  assign roundAnyRawFNToRecFN_io_in_sign = _T_9;
  assign roundAnyRawFNToRecFN_io_in_sExp = _T_176;
  assign roundAnyRawFNToRecFN_io_in_sig = intAsRawFloat_sig;
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode;
endmodule
