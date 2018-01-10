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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ROUND_ANY_RAW_FN_TO_REC_FN(
  input         io_invalidExc,
  input         io_infiniteExc,
  input         io_in_isNaN,
  input         io_in_isInf,
  input         io_in_isZero,
  input         io_in_sign,
  input  [9:0]  io_in_sExp,
  input  [26:0] io_in_sig,
  input  [2:0]  io_roundingMode,
  input         io_detectTininess,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundingMode_near_even;
  wire  roundingMode_min;
  wire  roundingMode_max;
  wire  roundingMode_near_maxMag;
  wire  roundingMode_odd;
  wire  _T_15;
  wire  _T_17;
  wire  _T_18;
  wire  roundMagUp;
  wire  doShiftSigDown1;
  wire [8:0] _T_25;
  wire [8:0] _T_26;
  wire  _T_27;
  wire [7:0] _T_28;
  wire  _T_29;
  wire [6:0] _T_30;
  wire  _T_31;
  wire [5:0] _T_32;
  wire [64:0] _T_35;
  wire [21:0] _T_36;
  wire [15:0] _T_37;
  wire [7:0] _T_42;
  wire [15:0] _T_43;
  wire [7:0] _T_44;
  wire [15:0] _GEN_0;
  wire [15:0] _T_45;
  wire [15:0] _T_47;
  wire [15:0] _T_48;
  wire [11:0] _T_52;
  wire [15:0] _GEN_1;
  wire [15:0] _T_53;
  wire [11:0] _T_54;
  wire [15:0] _GEN_2;
  wire [15:0] _T_55;
  wire [15:0] _T_57;
  wire [15:0] _T_58;
  wire [13:0] _T_62;
  wire [15:0] _GEN_3;
  wire [15:0] _T_63;
  wire [13:0] _T_64;
  wire [15:0] _GEN_4;
  wire [15:0] _T_65;
  wire [15:0] _T_67;
  wire [15:0] _T_68;
  wire [14:0] _T_72;
  wire [15:0] _GEN_5;
  wire [15:0] _T_73;
  wire [14:0] _T_74;
  wire [15:0] _GEN_6;
  wire [15:0] _T_75;
  wire [15:0] _T_77;
  wire [15:0] _T_78;
  wire [5:0] _T_79;
  wire [3:0] _T_80;
  wire [1:0] _T_81;
  wire  _T_82;
  wire  _T_83;
  wire [1:0] _T_84;
  wire [1:0] _T_85;
  wire  _T_86;
  wire  _T_87;
  wire [1:0] _T_88;
  wire [3:0] _T_89;
  wire [1:0] _T_90;
  wire  _T_91;
  wire  _T_92;
  wire [1:0] _T_93;
  wire [5:0] _T_94;
  wire [21:0] _T_95;
  wire [21:0] _T_96;
  wire [21:0] _T_97;
  wire [21:0] _T_98;
  wire [24:0] _T_100;
  wire [2:0] _T_105;
  wire [1:0] _T_106;
  wire  _T_107;
  wire  _T_108;
  wire [1:0] _T_109;
  wire  _T_110;
  wire [2:0] _T_111;
  wire [2:0] _T_113;
  wire [24:0] _T_114;
  wire [24:0] _T_116;
  wire [24:0] _GEN_7;
  wire [24:0] _T_117;
  wire [26:0] _T_119;
  wire [25:0] _T_121;
  wire [26:0] _T_122;
  wire [26:0] _T_123;
  wire [26:0] _T_124;
  wire [26:0] _T_125;
  wire  _T_127;
  wire [26:0] _T_128;
  wire  _T_130;
  wire  _T_131;
  wire  _T_132;
  wire  _T_133;
  wire  _T_134;
  wire  _T_135;
  wire [26:0] _T_136;
  wire [24:0] _T_137;
  wire [25:0] _T_139;
  wire  _T_140;
  wire  _T_142;
  wire  _T_143;
  wire [25:0] _T_146;
  wire [25:0] _T_147;
  wire [25:0] _T_148;
  wire [26:0] _T_149;
  wire [26:0] _T_150;
  wire [24:0] _T_151;
  wire  _T_152;
  wire [25:0] _T_153;
  wire [25:0] _T_155;
  wire [25:0] _GEN_8;
  wire [25:0] _T_156;
  wire [25:0] _T_157;
  wire [1:0] _T_158;
  wire [2:0] _T_159;
  wire [9:0] _GEN_9;
  wire [10:0] _T_160;
  wire [8:0] _T_161;
  wire [22:0] _T_162;
  wire [22:0] _T_163;
  wire [22:0] _T_164;
  wire [3:0] _T_165;
  wire  _T_167;
  wire  _T_169;
  wire  _T_170;
  wire  _T_171;
  wire  _T_172;
  wire  _T_174;
  wire [1:0] _T_175;
  wire  _T_177;
  wire  _T_178;
  wire  _T_180;
  wire  _T_181;
  wire  _T_182;
  wire  _T_183;
  wire  _T_184;
  wire  _T_185;
  wire [1:0] _T_186;
  wire  _T_188;
  wire  _T_189;
  wire  _T_190;
  wire  _T_191;
  wire  _T_192;
  wire  _T_193;
  wire  _T_196;
  wire  _T_198;
  wire  _T_200;
  wire  _T_201;
  wire  _T_202;
  wire  _T_203;
  wire  _T_204;
  wire  _T_206;
  wire  _T_207;
  wire  _T_208;
  wire  _T_209;
  wire  isNaNOut;
  wire  notNaN_isSpecialInfOut;
  wire  _T_211;
  wire  _T_213;
  wire  _T_214;
  wire  _T_216;
  wire  commonCase;
  wire  overflow;
  wire  underflow;
  wire  _T_217;
  wire  inexact;
  wire  overflow_roundMagUp;
  wire  _T_219;
  wire  _T_220;
  wire  pegMinNonzeroMagOut;
  wire  _T_222;
  wire  pegMaxFiniteMagOut;
  wire  _T_223;
  wire  notNaN_isInfOut;
  wire  signOut;
  wire  _T_225;
  wire [8:0] _T_228;
  wire [8:0] _T_229;
  wire [8:0] _T_230;
  wire [8:0] _T_234;
  wire [8:0] _T_235;
  wire [8:0] _T_236;
  wire [8:0] _T_239;
  wire [8:0] _T_240;
  wire [8:0] _T_241;
  wire [8:0] _T_244;
  wire [8:0] _T_245;
  wire [8:0] _T_246;
  wire [8:0] _T_249;
  wire [8:0] _T_250;
  wire [8:0] _T_253;
  wire [8:0] _T_254;
  wire [8:0] _T_257;
  wire [8:0] _T_258;
  wire [8:0] _T_261;
  wire [8:0] expOut;
  wire  _T_262;
  wire  _T_263;
  wire [22:0] _T_266;
  wire [22:0] _T_267;
  wire [22:0] _T_271;
  wire [22:0] fractOut;
  wire [9:0] _T_272;
  wire [32:0] _T_273;
  wire [1:0] _T_274;
  wire [1:0] _T_275;
  wire [2:0] _T_276;
  wire [4:0] _T_277;
  assign io_out = _T_273;
  assign io_exceptionFlags = _T_277;
  assign roundingMode_near_even = io_roundingMode == 3'h0;
  assign roundingMode_min = io_roundingMode == 3'h2;
  assign roundingMode_max = io_roundingMode == 3'h3;
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4;
  assign roundingMode_odd = io_roundingMode == 3'h5;
  assign _T_15 = roundingMode_min & io_in_sign;
  assign _T_17 = io_in_sign == 1'h0;
  assign _T_18 = roundingMode_max & _T_17;
  assign roundMagUp = _T_15 | _T_18;
  assign doShiftSigDown1 = io_in_sig[26];
  assign _T_25 = io_in_sExp[8:0];
  assign _T_26 = ~ _T_25;
  assign _T_27 = _T_26[8];
  assign _T_28 = _T_26[7:0];
  assign _T_29 = _T_28[7];
  assign _T_30 = _T_28[6:0];
  assign _T_31 = _T_30[6];
  assign _T_32 = _T_30[5:0];
  assign _T_35 = $signed(-65'sh10000000000000000) >>> _T_32;
  assign _T_36 = _T_35[63:42];
  assign _T_37 = _T_36[15:0];
  assign _T_42 = _T_37[15:8];
  assign _T_43 = {{8'd0}, _T_42};
  assign _T_44 = _T_37[7:0];
  assign _GEN_0 = {{8'd0}, _T_44};
  assign _T_45 = _GEN_0 << 8;
  assign _T_47 = _T_45 & 16'hff00;
  assign _T_48 = _T_43 | _T_47;
  assign _T_52 = _T_48[15:4];
  assign _GEN_1 = {{4'd0}, _T_52};
  assign _T_53 = _GEN_1 & 16'hf0f;
  assign _T_54 = _T_48[11:0];
  assign _GEN_2 = {{4'd0}, _T_54};
  assign _T_55 = _GEN_2 << 4;
  assign _T_57 = _T_55 & 16'hf0f0;
  assign _T_58 = _T_53 | _T_57;
  assign _T_62 = _T_58[15:2];
  assign _GEN_3 = {{2'd0}, _T_62};
  assign _T_63 = _GEN_3 & 16'h3333;
  assign _T_64 = _T_58[13:0];
  assign _GEN_4 = {{2'd0}, _T_64};
  assign _T_65 = _GEN_4 << 2;
  assign _T_67 = _T_65 & 16'hcccc;
  assign _T_68 = _T_63 | _T_67;
  assign _T_72 = _T_68[15:1];
  assign _GEN_5 = {{1'd0}, _T_72};
  assign _T_73 = _GEN_5 & 16'h5555;
  assign _T_74 = _T_68[14:0];
  assign _GEN_6 = {{1'd0}, _T_74};
  assign _T_75 = _GEN_6 << 1;
  assign _T_77 = _T_75 & 16'haaaa;
  assign _T_78 = _T_73 | _T_77;
  assign _T_79 = _T_36[21:16];
  assign _T_80 = _T_79[3:0];
  assign _T_81 = _T_80[1:0];
  assign _T_82 = _T_81[0];
  assign _T_83 = _T_81[1];
  assign _T_84 = {_T_82,_T_83};
  assign _T_85 = _T_80[3:2];
  assign _T_86 = _T_85[0];
  assign _T_87 = _T_85[1];
  assign _T_88 = {_T_86,_T_87};
  assign _T_89 = {_T_84,_T_88};
  assign _T_90 = _T_79[5:4];
  assign _T_91 = _T_90[0];
  assign _T_92 = _T_90[1];
  assign _T_93 = {_T_91,_T_92};
  assign _T_94 = {_T_89,_T_93};
  assign _T_95 = {_T_78,_T_94};
  assign _T_96 = ~ _T_95;
  assign _T_97 = _T_31 ? 22'h0 : _T_96;
  assign _T_98 = ~ _T_97;
  assign _T_100 = {_T_98,3'h7};
  assign _T_105 = _T_35[2:0];
  assign _T_106 = _T_105[1:0];
  assign _T_107 = _T_106[0];
  assign _T_108 = _T_106[1];
  assign _T_109 = {_T_107,_T_108};
  assign _T_110 = _T_105[2];
  assign _T_111 = {_T_109,_T_110};
  assign _T_113 = _T_31 ? _T_111 : 3'h0;
  assign _T_114 = _T_29 ? _T_100 : {{22'd0}, _T_113};
  assign _T_116 = _T_27 ? _T_114 : 25'h0;
  assign _GEN_7 = {{24'd0}, doShiftSigDown1};
  assign _T_117 = _T_116 | _GEN_7;
  assign _T_119 = {_T_117,2'h3};
  assign _T_121 = _T_119[26:1];
  assign _T_122 = {1'h0,_T_121};
  assign _T_123 = ~ _T_122;
  assign _T_124 = _T_123 & _T_119;
  assign _T_125 = io_in_sig & _T_124;
  assign _T_127 = _T_125 != 27'h0;
  assign _T_128 = io_in_sig & _T_122;
  assign _T_130 = _T_128 != 27'h0;
  assign _T_131 = _T_127 | _T_130;
  assign _T_132 = roundingMode_near_even | roundingMode_near_maxMag;
  assign _T_133 = _T_132 & _T_127;
  assign _T_134 = roundMagUp & _T_131;
  assign _T_135 = _T_133 | _T_134;
  assign _T_136 = io_in_sig | _T_119;
  assign _T_137 = _T_136[26:2];
  assign _T_139 = _T_137 + 25'h1;
  assign _T_140 = roundingMode_near_even & _T_127;
  assign _T_142 = _T_130 == 1'h0;
  assign _T_143 = _T_140 & _T_142;
  assign _T_146 = _T_143 ? _T_121 : 26'h0;
  assign _T_147 = ~ _T_146;
  assign _T_148 = _T_139 & _T_147;
  assign _T_149 = ~ _T_119;
  assign _T_150 = io_in_sig & _T_149;
  assign _T_151 = _T_150[26:2];
  assign _T_152 = roundingMode_odd & _T_131;
  assign _T_153 = _T_124[26:1];
  assign _T_155 = _T_152 ? _T_153 : 26'h0;
  assign _GEN_8 = {{1'd0}, _T_151};
  assign _T_156 = _GEN_8 | _T_155;
  assign _T_157 = _T_135 ? _T_148 : _T_156;
  assign _T_158 = _T_157[25:24];
  assign _T_159 = {1'b0,$signed(_T_158)};
  assign _GEN_9 = {{7{_T_159[2]}},_T_159};
  assign _T_160 = $signed(io_in_sExp) + $signed(_GEN_9);
  assign _T_161 = _T_160[8:0];
  assign _T_162 = _T_157[23:1];
  assign _T_163 = _T_157[22:0];
  assign _T_164 = doShiftSigDown1 ? _T_162 : _T_163;
  assign _T_165 = _T_160[10:7];
  assign _T_167 = $signed(_T_165) >= $signed(4'sh3);
  assign _T_169 = $signed(_T_160) < $signed(11'sh6b);
  assign _T_170 = io_in_sig[2];
  assign _T_171 = io_in_sig[1];
  assign _T_172 = doShiftSigDown1 ? _T_170 : _T_171;
  assign _T_174 = doShiftSigDown1 & _T_170;
  assign _T_175 = io_in_sig[1:0];
  assign _T_177 = _T_175 != 2'h0;
  assign _T_178 = _T_174 | _T_177;
  assign _T_180 = _T_132 & _T_172;
  assign _T_181 = roundMagUp & _T_178;
  assign _T_182 = _T_180 | _T_181;
  assign _T_183 = _T_157[25];
  assign _T_184 = _T_157[24];
  assign _T_185 = doShiftSigDown1 ? _T_183 : _T_184;
  assign _T_186 = io_in_sExp[9:8];
  assign _T_188 = $signed(_T_186) <= $signed(2'sh0);
  assign _T_189 = _T_131 & _T_188;
  assign _T_190 = _T_119[3];
  assign _T_191 = _T_119[2];
  assign _T_192 = doShiftSigDown1 ? _T_190 : _T_191;
  assign _T_193 = _T_189 & _T_192;
  assign _T_196 = _T_119[4];
  assign _T_198 = doShiftSigDown1 ? _T_196 : _T_190;
  assign _T_200 = _T_198 == 1'h0;
  assign _T_201 = io_detectTininess & _T_200;
  assign _T_202 = _T_201 & _T_185;
  assign _T_203 = _T_202 & _T_127;
  assign _T_204 = _T_203 & _T_182;
  assign _T_206 = _T_204 == 1'h0;
  assign _T_207 = _T_193 & _T_206;
  assign _T_208 = _T_169 | _T_207;
  assign _T_209 = _T_169 | _T_131;
  assign isNaNOut = io_invalidExc | io_in_isNaN;
  assign notNaN_isSpecialInfOut = io_infiniteExc | io_in_isInf;
  assign _T_211 = isNaNOut == 1'h0;
  assign _T_213 = notNaN_isSpecialInfOut == 1'h0;
  assign _T_214 = _T_211 & _T_213;
  assign _T_216 = io_in_isZero == 1'h0;
  assign commonCase = _T_214 & _T_216;
  assign overflow = commonCase & _T_167;
  assign underflow = commonCase & _T_208;
  assign _T_217 = commonCase & _T_209;
  assign inexact = overflow | _T_217;
  assign overflow_roundMagUp = _T_132 | roundMagUp;
  assign _T_219 = commonCase & _T_169;
  assign _T_220 = roundMagUp | roundingMode_odd;
  assign pegMinNonzeroMagOut = _T_219 & _T_220;
  assign _T_222 = overflow_roundMagUp == 1'h0;
  assign pegMaxFiniteMagOut = overflow & _T_222;
  assign _T_223 = overflow & overflow_roundMagUp;
  assign notNaN_isInfOut = notNaN_isSpecialInfOut | _T_223;
  assign signOut = isNaNOut ? 1'h0 : io_in_sign;
  assign _T_225 = io_in_isZero | _T_169;
  assign _T_228 = _T_225 ? 9'h1c0 : 9'h0;
  assign _T_229 = ~ _T_228;
  assign _T_230 = _T_161 & _T_229;
  assign _T_234 = pegMinNonzeroMagOut ? 9'h194 : 9'h0;
  assign _T_235 = ~ _T_234;
  assign _T_236 = _T_230 & _T_235;
  assign _T_239 = pegMaxFiniteMagOut ? 9'h80 : 9'h0;
  assign _T_240 = ~ _T_239;
  assign _T_241 = _T_236 & _T_240;
  assign _T_244 = notNaN_isInfOut ? 9'h40 : 9'h0;
  assign _T_245 = ~ _T_244;
  assign _T_246 = _T_241 & _T_245;
  assign _T_249 = pegMinNonzeroMagOut ? 9'h6b : 9'h0;
  assign _T_250 = _T_246 | _T_249;
  assign _T_253 = pegMaxFiniteMagOut ? 9'h17f : 9'h0;
  assign _T_254 = _T_250 | _T_253;
  assign _T_257 = notNaN_isInfOut ? 9'h180 : 9'h0;
  assign _T_258 = _T_254 | _T_257;
  assign _T_261 = isNaNOut ? 9'h1c0 : 9'h0;
  assign expOut = _T_258 | _T_261;
  assign _T_262 = isNaNOut | io_in_isZero;
  assign _T_263 = _T_262 | _T_169;
  assign _T_266 = isNaNOut ? 23'h400000 : 23'h0;
  assign _T_267 = _T_263 ? _T_266 : _T_164;
  assign _T_271 = pegMaxFiniteMagOut ? 23'h7fffff : 23'h0;
  assign fractOut = _T_267 | _T_271;
  assign _T_272 = {signOut,expOut};
  assign _T_273 = {_T_272,fractOut};
  assign _T_274 = {underflow,inexact};
  assign _T_275 = {io_invalidExc,io_infiniteExc};
  assign _T_276 = {_T_275,overflow};
  assign _T_277 = {_T_276,_T_274};
endmodule
