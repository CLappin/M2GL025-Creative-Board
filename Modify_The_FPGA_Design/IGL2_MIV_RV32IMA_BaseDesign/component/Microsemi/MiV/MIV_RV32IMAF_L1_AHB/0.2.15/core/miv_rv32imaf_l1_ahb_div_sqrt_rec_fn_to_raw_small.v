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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_DIV_SQRT_REC_FN_TO_RAW_SMALL(
  input         clock,
  input         reset,
  output        io_inReady,
  input         io_inValid,
  input         io_sqrtOp,
  input  [32:0] io_a,
  input  [32:0] io_b,
  input  [2:0]  io_roundingMode,
  output        io_rawOutValid_div,
  output        io_rawOutValid_sqrt,
  output [2:0]  io_roundingModeOut,
  output        io_invalidExc,
  output        io_infiniteExc,
  output        io_rawOut_isNaN,
  output        io_rawOut_isInf,
  output        io_rawOut_isZero,
  output        io_rawOut_sign,
  output [9:0]  io_rawOut_sExp,
  output [26:0] io_rawOut_sig
);
  reg [4:0] cycleNum;
  reg [31:0] _RAND_0;
  reg  sqrtOp_Z;
  reg [31:0] _RAND_1;
  reg  majorExc_Z;
  reg [31:0] _RAND_2;
  reg  isNaN_Z;
  reg [31:0] _RAND_3;
  reg  isInf_Z;
  reg [31:0] _RAND_4;
  reg  isZero_Z;
  reg [31:0] _RAND_5;
  reg  sign_Z;
  reg [31:0] _RAND_6;
  reg [9:0] sExp_Z;
  reg [31:0] _RAND_7;
  reg [22:0] fractB_Z;
  reg [31:0] _RAND_8;
  reg [2:0] roundingMode_Z;
  reg [31:0] _RAND_9;
  reg [25:0] rem_Z;
  reg [31:0] _RAND_10;
  reg  notZeroRem_Z;
  reg [31:0] _RAND_11;
  reg [25:0] sigX_Z;
  reg [31:0] _RAND_12;
  wire [8:0] _T_28;
  wire [2:0] _T_29;
  wire  _T_31;
  wire [1:0] _T_32;
  wire  _T_34;
  wire  _T_36;
  wire  _T_37;
  wire  _T_40;
  wire  _T_41;
  wire  _T_42;
  wire [9:0] _T_43;
  wire  _T_46;
  wire [22:0] _T_47;
  wire [1:0] _T_48;
  wire [24:0] _T_49;
  wire [8:0] _T_50;
  wire [2:0] _T_51;
  wire  _T_53;
  wire [1:0] _T_54;
  wire  _T_56;
  wire  _T_58;
  wire  _T_59;
  wire  _T_62;
  wire  _T_63;
  wire  _T_64;
  wire [9:0] _T_65;
  wire  _T_68;
  wire [22:0] _T_69;
  wire [1:0] _T_70;
  wire [24:0] _T_71;
  wire  _T_72;
  wire  _T_73;
  wire  notSigNaNIn_invalidExc_S_div;
  wire  _T_75;
  wire  _T_78;
  wire  notSigNaNIn_invalidExc_S_sqrt;
  wire  _T_79;
  wire  _T_81;
  wire  _T_82;
  wire  _T_83;
  wire  _T_88;
  wire  _T_90;
  wire  _T_91;
  wire  _T_92;
  wire  _T_93;
  wire  _T_97;
  wire  _T_98;
  wire  _T_99;
  wire  _T_100;
  wire  majorExc_S;
  wire  _T_101;
  wire  _T_102;
  wire  _T_103;
  wire  isNaN_S;
  wire  _T_104;
  wire  isInf_S;
  wire  _T_105;
  wire  isZero_S;
  wire  _T_107;
  wire  _T_108;
  wire  sign_S;
  wire  _T_109;
  wire  specialCaseA_S;
  wire  _T_110;
  wire  specialCaseB_S;
  wire  _T_112;
  wire  _T_114;
  wire  normalCase_S_div;
  wire  _T_118;
  wire  normalCase_S_sqrt;
  wire  normalCase_S;
  wire  _T_119;
  wire [7:0] _T_120;
  wire [7:0] _T_121;
  wire [8:0] _T_122;
  wire [8:0] _T_123;
  wire [9:0] _GEN_13;
  wire [10:0] sExpQuot_S_div;
  wire  _T_125;
  wire [3:0] _T_127;
  wire [3:0] _T_128;
  wire [5:0] _T_129;
  wire [9:0] _T_130;
  wire [9:0] sSatExpQuot_S_div;
  wire  _T_131;
  wire  _T_133;
  wire  evenSqrt_S;
  wire  oddSqrt_S;
  wire  idle;
  wire  inReady;
  wire  entering;
  wire  entering_normalCase;
  wire  _T_138;
  wire  _T_139;
  wire  skipCycle2;
  wire  _T_141;
  wire  _T_142;
  wire  _T_144;
  wire  _T_145;
  wire [4:0] _T_152;
  wire [4:0] _T_154;
  wire [4:0] _T_156;
  wire [4:0] _GEN_14;
  wire [4:0] _T_157;
  wire  _T_161;
  wire  _T_162;
  wire [5:0] _T_164;
  wire [5:0] _T_165;
  wire [4:0] _T_166;
  wire [4:0] _T_168;
  wire [4:0] _T_169;
  wire  _T_172;
  wire [4:0] _GEN_15;
  wire [4:0] _T_176;
  wire [4:0] _GEN_0;
  wire  _GEN_1;
  wire  _GEN_2;
  wire  _GEN_3;
  wire  _GEN_4;
  wire  _GEN_5;
  wire  _GEN_6;
  wire [8:0] _T_177;
  wire [9:0] _T_179;
  wire [9:0] _T_180;
  wire [9:0] _GEN_7;
  wire [2:0] _GEN_8;
  wire  _T_183;
  wire [22:0] _T_184;
  wire [22:0] _GEN_9;
  wire  _T_186;
  wire  _T_187;
  wire [25:0] _GEN_16;
  wire [25:0] _T_188;
  wire [25:0] _T_190;
  wire  _T_191;
  wire [1:0] _T_192;
  wire [2:0] _T_194;
  wire [2:0] _T_195;
  wire [1:0] _T_196;
  wire [21:0] _T_197;
  wire [24:0] _GEN_17;
  wire [24:0] _T_198;
  wire [26:0] _T_199;
  wire [26:0] _T_201;
  wire [26:0] _GEN_18;
  wire [26:0] _T_202;
  wire  _T_204;
  wire [26:0] _GEN_19;
  wire [26:0] _T_205;
  wire [26:0] _T_207;
  wire [26:0] rem;
  wire [31:0] _T_209;
  wire [29:0] bitMask;
  wire  _T_212;
  wire [25:0] _GEN_20;
  wire [25:0] _T_213;
  wire [25:0] _T_215;
  wire  _T_216;
  wire [24:0] _T_219;
  wire [25:0] _GEN_21;
  wire [25:0] _T_220;
  wire [25:0] _T_224;
  wire [25:0] _T_225;
  wire  _T_229;
  wire  _T_230;
  wire [23:0] _T_232;
  wire [24:0] _GEN_22;
  wire [24:0] _T_233;
  wire [24:0] _T_235;
  wire [25:0] _GEN_23;
  wire [25:0] _T_236;
  wire  _T_239;
  wire [26:0] _GEN_24;
  wire [26:0] _T_240;
  wire [29:0] _GEN_25;
  wire [29:0] _T_241;
  wire [29:0] _T_243;
  wire [29:0] _GEN_26;
  wire [29:0] trialTerm;
  wire [27:0] _T_244;
  wire [30:0] _T_245;
  wire [30:0] _GEN_27;
  wire [31:0] _T_246;
  wire [30:0] _T_247;
  wire [30:0] trialRem;
  wire  newBit;
  wire  _T_250;
  wire  _T_251;
  wire [30:0] _T_252;
  wire [30:0] _T_253;
  wire [30:0] _GEN_10;
  wire  _T_256;
  wire  _T_257;
  wire  _T_259;
  wire [25:0] _GEN_28;
  wire [25:0] _T_263;
  wire [25:0] _T_265;
  wire  _T_266;
  wire [24:0] _T_269;
  wire [25:0] _GEN_29;
  wire [25:0] _T_270;
  wire [23:0] _GEN_30;
  wire [23:0] _T_272;
  wire [23:0] _T_274;
  wire [25:0] _GEN_31;
  wire [25:0] _T_275;
  wire [29:0] _GEN_32;
  wire [29:0] _T_278;
  wire [29:0] _T_280;
  wire [29:0] _GEN_33;
  wire [29:0] _T_281;
  wire  _GEN_11;
  wire [29:0] _GEN_12;
  wire  rawOutValid;
  wire  _T_285;
  wire  _T_286;
  wire  _T_287;
  wire  _T_289;
  wire  _T_290;
  wire [26:0] _GEN_35;
  wire [26:0] _T_292;
  assign io_inReady = inReady;
  assign io_rawOutValid_div = _T_285;
  assign io_rawOutValid_sqrt = _T_286;
  assign io_roundingModeOut = roundingMode_Z;
  assign io_invalidExc = _T_287;
  assign io_infiniteExc = _T_290;
  assign io_rawOut_isNaN = isNaN_Z;
  assign io_rawOut_isInf = isInf_Z;
  assign io_rawOut_isZero = isZero_Z;
  assign io_rawOut_sign = sign_Z;
  assign io_rawOut_sExp = sExp_Z;
  assign io_rawOut_sig = _T_292;
  assign _T_28 = io_a[31:23];
  assign _T_29 = _T_28[8:6];
  assign _T_31 = _T_29 == 3'h0;
  assign _T_32 = _T_28[8:7];
  assign _T_34 = _T_32 == 2'h3;
  assign _T_36 = _T_28[6];
  assign _T_37 = _T_34 & _T_36;
  assign _T_40 = _T_36 == 1'h0;
  assign _T_41 = _T_34 & _T_40;
  assign _T_42 = io_a[32];
  assign _T_43 = {1'b0,$signed(_T_28)};
  assign _T_46 = _T_31 == 1'h0;
  assign _T_47 = io_a[22:0];
  assign _T_48 = {1'h0,_T_46};
  assign _T_49 = {_T_48,_T_47};
  assign _T_50 = io_b[31:23];
  assign _T_51 = _T_50[8:6];
  assign _T_53 = _T_51 == 3'h0;
  assign _T_54 = _T_50[8:7];
  assign _T_56 = _T_54 == 2'h3;
  assign _T_58 = _T_50[6];
  assign _T_59 = _T_56 & _T_58;
  assign _T_62 = _T_58 == 1'h0;
  assign _T_63 = _T_56 & _T_62;
  assign _T_64 = io_b[32];
  assign _T_65 = {1'b0,$signed(_T_50)};
  assign _T_68 = _T_53 == 1'h0;
  assign _T_69 = io_b[22:0];
  assign _T_70 = {1'h0,_T_68};
  assign _T_71 = {_T_70,_T_69};
  assign _T_72 = _T_31 & _T_53;
  assign _T_73 = _T_41 & _T_63;
  assign notSigNaNIn_invalidExc_S_div = _T_72 | _T_73;
  assign _T_75 = _T_37 == 1'h0;
  assign _T_78 = _T_75 & _T_46;
  assign notSigNaNIn_invalidExc_S_sqrt = _T_78 & _T_42;
  assign _T_79 = _T_49[22];
  assign _T_81 = _T_79 == 1'h0;
  assign _T_82 = _T_37 & _T_81;
  assign _T_83 = _T_82 | notSigNaNIn_invalidExc_S_sqrt;
  assign _T_88 = _T_71[22];
  assign _T_90 = _T_88 == 1'h0;
  assign _T_91 = _T_59 & _T_90;
  assign _T_92 = _T_82 | _T_91;
  assign _T_93 = _T_92 | notSigNaNIn_invalidExc_S_div;
  assign _T_97 = _T_41 == 1'h0;
  assign _T_98 = _T_75 & _T_97;
  assign _T_99 = _T_98 & _T_53;
  assign _T_100 = _T_93 | _T_99;
  assign majorExc_S = io_sqrtOp ? _T_83 : _T_100;
  assign _T_101 = _T_37 | notSigNaNIn_invalidExc_S_sqrt;
  assign _T_102 = _T_37 | _T_59;
  assign _T_103 = _T_102 | notSigNaNIn_invalidExc_S_div;
  assign isNaN_S = io_sqrtOp ? _T_101 : _T_103;
  assign _T_104 = _T_41 | _T_53;
  assign isInf_S = io_sqrtOp ? _T_41 : _T_104;
  assign _T_105 = _T_31 | _T_63;
  assign isZero_S = io_sqrtOp ? _T_31 : _T_105;
  assign _T_107 = io_sqrtOp == 1'h0;
  assign _T_108 = _T_107 & _T_64;
  assign sign_S = _T_42 ^ _T_108;
  assign _T_109 = _T_37 | _T_41;
  assign specialCaseA_S = _T_109 | _T_31;
  assign _T_110 = _T_59 | _T_63;
  assign specialCaseB_S = _T_110 | _T_53;
  assign _T_112 = specialCaseA_S == 1'h0;
  assign _T_114 = specialCaseB_S == 1'h0;
  assign normalCase_S_div = _T_112 & _T_114;
  assign _T_118 = _T_42 == 1'h0;
  assign normalCase_S_sqrt = _T_112 & _T_118;
  assign normalCase_S = io_sqrtOp ? normalCase_S_sqrt : normalCase_S_div;
  assign _T_119 = _T_65[8];
  assign _T_120 = _T_65[7:0];
  assign _T_121 = ~ _T_120;
  assign _T_122 = {_T_119,_T_121};
  assign _T_123 = $signed(_T_122);
  assign _GEN_13 = {{1{_T_123[8]}},_T_123};
  assign sExpQuot_S_div = $signed(_T_43) + $signed(_GEN_13);
  assign _T_125 = $signed(11'sh1c0) <= $signed(sExpQuot_S_div);
  assign _T_127 = sExpQuot_S_div[9:6];
  assign _T_128 = _T_125 ? 4'h6 : _T_127;
  assign _T_129 = sExpQuot_S_div[5:0];
  assign _T_130 = {_T_128,_T_129};
  assign sSatExpQuot_S_div = $signed(_T_130);
  assign _T_131 = _T_43[0];
  assign _T_133 = _T_131 == 1'h0;
  assign evenSqrt_S = io_sqrtOp & _T_133;
  assign oddSqrt_S = io_sqrtOp & _T_131;
  assign idle = cycleNum == 5'h0;
  assign inReady = cycleNum <= 5'h1;
  assign entering = inReady & io_inValid;
  assign entering_normalCase = entering & normalCase_S;
  assign _T_138 = cycleNum == 5'h3;
  assign _T_139 = sigX_Z[25];
  assign skipCycle2 = _T_138 & _T_139;
  assign _T_141 = idle == 1'h0;
  assign _T_142 = _T_141 | io_inValid;
  assign _T_144 = normalCase_S == 1'h0;
  assign _T_145 = entering & _T_144;
  assign _T_152 = _T_131 ? 5'h18 : 5'h19;
  assign _T_154 = io_sqrtOp ? _T_152 : 5'h1a;
  assign _T_156 = entering_normalCase ? _T_154 : 5'h0;
  assign _GEN_14 = {{4'd0}, _T_145};
  assign _T_157 = _GEN_14 | _T_156;
  assign _T_161 = skipCycle2 == 1'h0;
  assign _T_162 = _T_141 & _T_161;
  assign _T_164 = cycleNum - 5'h1;
  assign _T_165 = $unsigned(_T_164);
  assign _T_166 = _T_165[4:0];
  assign _T_168 = _T_162 ? _T_166 : 5'h0;
  assign _T_169 = _T_157 | _T_168;
  assign _T_172 = _T_141 & skipCycle2;
  assign _GEN_15 = {{4'd0}, _T_172};
  assign _T_176 = _T_169 | _GEN_15;
  assign _GEN_0 = _T_142 ? _T_176 : cycleNum;
  assign _GEN_1 = entering ? io_sqrtOp : sqrtOp_Z;
  assign _GEN_2 = entering ? majorExc_S : majorExc_Z;
  assign _GEN_3 = entering ? isNaN_S : isNaN_Z;
  assign _GEN_4 = entering ? isInf_S : isInf_Z;
  assign _GEN_5 = entering ? isZero_S : isZero_Z;
  assign _GEN_6 = entering ? sign_S : sign_Z;
  assign _T_177 = _T_43[9:1];
  assign _T_179 = $signed(_T_177) + $signed(9'sh80);
  assign _T_180 = io_sqrtOp ? $signed(_T_179) : $signed(sSatExpQuot_S_div);
  assign _GEN_7 = entering_normalCase ? $signed(_T_180) : $signed(sExp_Z);
  assign _GEN_8 = entering_normalCase ? io_roundingMode : roundingMode_Z;
  assign _T_183 = entering_normalCase & _T_107;
  assign _T_184 = _T_71[22:0];
  assign _GEN_9 = _T_183 ? _T_184 : fractB_Z;
  assign _T_186 = oddSqrt_S == 1'h0;
  assign _T_187 = inReady & _T_186;
  assign _GEN_16 = {{1'd0}, _T_49};
  assign _T_188 = _GEN_16 << 1;
  assign _T_190 = _T_187 ? _T_188 : 26'h0;
  assign _T_191 = inReady & oddSqrt_S;
  assign _T_192 = _T_49[23:22];
  assign _T_194 = _T_192 - 2'h1;
  assign _T_195 = $unsigned(_T_194);
  assign _T_196 = _T_195[1:0];
  assign _T_197 = _T_49[21:0];
  assign _GEN_17 = {{3'd0}, _T_197};
  assign _T_198 = _GEN_17 << 3;
  assign _T_199 = {_T_196,_T_198};
  assign _T_201 = _T_191 ? _T_199 : 27'h0;
  assign _GEN_18 = {{1'd0}, _T_190};
  assign _T_202 = _GEN_18 | _T_201;
  assign _T_204 = inReady == 1'h0;
  assign _GEN_19 = {{1'd0}, rem_Z};
  assign _T_205 = _GEN_19 << 1;
  assign _T_207 = _T_204 ? _T_205 : 27'h0;
  assign rem = _T_202 | _T_207;
  assign _T_209 = 32'h1 << cycleNum;
  assign bitMask = _T_209[31:2];
  assign _T_212 = inReady & _T_107;
  assign _GEN_20 = {{1'd0}, _T_71};
  assign _T_213 = _GEN_20 << 1;
  assign _T_215 = _T_212 ? _T_213 : 26'h0;
  assign _T_216 = inReady & evenSqrt_S;
  assign _T_219 = _T_216 ? 25'h1000000 : 25'h0;
  assign _GEN_21 = {{1'd0}, _T_219};
  assign _T_220 = _T_215 | _GEN_21;
  assign _T_224 = _T_191 ? 26'h2800000 : 26'h0;
  assign _T_225 = _T_220 | _T_224;
  assign _T_229 = sqrtOp_Z == 1'h0;
  assign _T_230 = _T_204 & _T_229;
  assign _T_232 = {1'h1,fractB_Z};
  assign _GEN_22 = {{1'd0}, _T_232};
  assign _T_233 = _GEN_22 << 1;
  assign _T_235 = _T_230 ? _T_233 : 25'h0;
  assign _GEN_23 = {{1'd0}, _T_235};
  assign _T_236 = _T_225 | _GEN_23;
  assign _T_239 = _T_204 & sqrtOp_Z;
  assign _GEN_24 = {{1'd0}, sigX_Z};
  assign _T_240 = _GEN_24 << 1;
  assign _GEN_25 = {{3'd0}, _T_240};
  assign _T_241 = _GEN_25 | bitMask;
  assign _T_243 = _T_239 ? _T_241 : 30'h0;
  assign _GEN_26 = {{4'd0}, _T_236};
  assign trialTerm = _GEN_26 | _T_243;
  assign _T_244 = {1'b0,$signed(rem)};
  assign _T_245 = {1'b0,$signed(trialTerm)};
  assign _GEN_27 = {{3{_T_244[27]}},_T_244};
  assign _T_246 = $signed(_GEN_27) - $signed(_T_245);
  assign _T_247 = _T_246[30:0];
  assign trialRem = $signed(_T_247);
  assign newBit = $signed(31'sh0) <= $signed(trialRem);
  assign _T_250 = cycleNum > 5'h2;
  assign _T_251 = entering_normalCase | _T_250;
  assign _T_252 = $unsigned(trialRem);
  assign _T_253 = newBit ? _T_252 : {{4'd0}, rem};
  assign _GEN_10 = _T_251 ? _T_253 : {{5'd0}, rem_Z};
  assign _T_256 = _T_204 & newBit;
  assign _T_257 = entering_normalCase | _T_256;
  assign _T_259 = $signed(trialRem) != $signed(31'sh0);
  assign _GEN_28 = {{25'd0}, newBit};
  assign _T_263 = _GEN_28 << 25;
  assign _T_265 = _T_212 ? _T_263 : 26'h0;
  assign _T_266 = inReady & io_sqrtOp;
  assign _T_269 = _T_266 ? 25'h1000000 : 25'h0;
  assign _GEN_29 = {{1'd0}, _T_269};
  assign _T_270 = _T_265 | _GEN_29;
  assign _GEN_30 = {{23'd0}, newBit};
  assign _T_272 = _GEN_30 << 23;
  assign _T_274 = _T_191 ? _T_272 : 24'h0;
  assign _GEN_31 = {{2'd0}, _T_274};
  assign _T_275 = _T_270 | _GEN_31;
  assign _GEN_32 = {{4'd0}, sigX_Z};
  assign _T_278 = _GEN_32 | bitMask;
  assign _T_280 = _T_204 ? _T_278 : 30'h0;
  assign _GEN_33 = {{4'd0}, _T_275};
  assign _T_281 = _GEN_33 | _T_280;
  assign _GEN_11 = _T_257 ? _T_259 : notZeroRem_Z;
  assign _GEN_12 = _T_257 ? _T_281 : {{4'd0}, sigX_Z};
  assign rawOutValid = cycleNum == 5'h1;
  assign _T_285 = rawOutValid & _T_229;
  assign _T_286 = rawOutValid & sqrtOp_Z;
  assign _T_287 = majorExc_Z & isNaN_Z;
  assign _T_289 = isNaN_Z == 1'h0;
  assign _T_290 = majorExc_Z & _T_289;
  assign _GEN_35 = {{26'd0}, notZeroRem_Z};
  assign _T_292 = _T_240 | _GEN_35;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  cycleNum = _RAND_0[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  sqrtOp_Z = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  majorExc_Z = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  isNaN_Z = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{$random}};
  isInf_Z = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{$random}};
  isZero_Z = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  sign_Z = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{$random}};
  sExp_Z = _RAND_7[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  fractB_Z = _RAND_8[22:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{$random}};
  roundingMode_Z = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  rem_Z = _RAND_10[25:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{$random}};
  notZeroRem_Z = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{$random}};
  sigX_Z = _RAND_12[25:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      cycleNum <= 5'h0;
    end else begin
      if (_T_142) begin
        cycleNum <= _T_176;
      end
    end
    if (entering) begin
      sqrtOp_Z <= io_sqrtOp;
    end
    if (entering) begin
      if (io_sqrtOp) begin
        majorExc_Z <= _T_83;
      end else begin
        majorExc_Z <= _T_100;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isNaN_Z <= _T_101;
      end else begin
        isNaN_Z <= _T_103;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isInf_Z <= _T_41;
      end else begin
        isInf_Z <= _T_104;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isZero_Z <= _T_31;
      end else begin
        isZero_Z <= _T_105;
      end
    end
    if (entering) begin
      sign_Z <= sign_S;
    end
    if (entering_normalCase) begin
      if (io_sqrtOp) begin
        sExp_Z <= _T_179;
      end else begin
        sExp_Z <= sSatExpQuot_S_div;
      end
    end
    if (_T_183) begin
      fractB_Z <= _T_184;
    end
    if (entering_normalCase) begin
      roundingMode_Z <= io_roundingMode;
    end
    rem_Z <= _GEN_10[25:0];
    if (_T_257) begin
      notZeroRem_Z <= _T_259;
    end
    sigX_Z <= _GEN_12[25:0];
  end
endmodule
