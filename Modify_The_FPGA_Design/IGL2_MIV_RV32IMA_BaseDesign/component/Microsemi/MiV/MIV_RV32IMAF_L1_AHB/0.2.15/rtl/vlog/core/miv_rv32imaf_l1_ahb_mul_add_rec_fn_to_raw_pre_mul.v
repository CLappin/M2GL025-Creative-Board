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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_MUL_ADD_REC_FN_TO_RAW_PRE_MUL(
  input  [1:0]  io_op,
  input  [32:0] io_a,
  input  [32:0] io_b,
  input  [32:0] io_c,
  output [23:0] io_mulAddA,
  output [23:0] io_mulAddB,
  output [47:0] io_mulAddC,
  output        io_toPostMul_isSigNaNAny,
  output        io_toPostMul_isNaNAOrB,
  output        io_toPostMul_isInfA,
  output        io_toPostMul_isZeroA,
  output        io_toPostMul_isInfB,
  output        io_toPostMul_isZeroB,
  output        io_toPostMul_signProd,
  output        io_toPostMul_isNaNC,
  output        io_toPostMul_isInfC,
  output        io_toPostMul_isZeroC,
  output [9:0]  io_toPostMul_sExpSum,
  output        io_toPostMul_doSubMags,
  output        io_toPostMul_CIsDominant,
  output [4:0]  io_toPostMul_CDom_CAlignDist,
  output [25:0] io_toPostMul_highAlignedSigC,
  output        io_toPostMul_bit0AlignedSigC
);
  wire [8:0] _T_10;
  wire [2:0] _T_11;
  wire  _T_13;
  wire [1:0] _T_14;
  wire  _T_16;
  wire  _T_18;
  wire  _T_19;
  wire  _T_22;
  wire  _T_23;
  wire  _T_24;
  wire [9:0] _T_25;
  wire  _T_28;
  wire [22:0] _T_29;
  wire [1:0] _T_30;
  wire [24:0] _T_31;
  wire [8:0] _T_32;
  wire [2:0] _T_33;
  wire  _T_35;
  wire [1:0] _T_36;
  wire  _T_38;
  wire  _T_40;
  wire  _T_41;
  wire  _T_44;
  wire  _T_45;
  wire  _T_46;
  wire [9:0] _T_47;
  wire  _T_50;
  wire [22:0] _T_51;
  wire [1:0] _T_52;
  wire [24:0] _T_53;
  wire [8:0] _T_54;
  wire [2:0] _T_55;
  wire  _T_57;
  wire [1:0] _T_58;
  wire  _T_60;
  wire  _T_62;
  wire  _T_63;
  wire  _T_66;
  wire  _T_67;
  wire  _T_68;
  wire [9:0] _T_69;
  wire  _T_72;
  wire [22:0] _T_73;
  wire [1:0] _T_74;
  wire [24:0] _T_75;
  wire  _T_76;
  wire  _T_77;
  wire  signProd;
  wire [10:0] _T_78;
  wire [11:0] _T_80;
  wire [10:0] _T_81;
  wire [10:0] sExpAlignedProd;
  wire  _T_82;
  wire  _T_83;
  wire  doSubMags;
  wire [10:0] _GEN_0;
  wire [11:0] _T_84;
  wire [10:0] _T_85;
  wire [10:0] sNatCAlignDist;
  wire [9:0] posNatCAlignDist;
  wire  _T_86;
  wire  _T_88;
  wire  isMinCAlign;
  wire  _T_92;
  wire  _T_93;
  wire  CIsDominant;
  wire  _T_96;
  wire [6:0] _T_97;
  wire [6:0] _T_99;
  wire [6:0] CAlignDist;
  wire [24:0] _T_100;
  wire [24:0] _T_101;
  wire [52:0] _T_105;
  wire [77:0] _T_106;
  wire [77:0] _T_107;
  wire [77:0] mainAlignedSigC;
  wire [26:0] _GEN_1;
  wire [26:0] _T_108;
  wire [3:0] _T_122;
  wire  _T_124;
  wire [3:0] _T_125;
  wire  _T_127;
  wire [3:0] _T_128;
  wire  _T_130;
  wire [3:0] _T_131;
  wire  _T_133;
  wire [3:0] _T_134;
  wire  _T_136;
  wire [3:0] _T_137;
  wire  _T_139;
  wire [2:0] _T_140;
  wire  _T_142;
  wire [1:0] _T_143;
  wire [2:0] _T_144;
  wire [1:0] _T_145;
  wire [1:0] _T_146;
  wire [3:0] _T_147;
  wire [6:0] _T_148;
  wire [4:0] _T_149;
  wire [32:0] _T_151;
  wire [5:0] _T_152;
  wire [3:0] _T_153;
  wire [1:0] _T_154;
  wire  _T_155;
  wire  _T_156;
  wire [1:0] _T_157;
  wire [1:0] _T_158;
  wire  _T_159;
  wire  _T_160;
  wire [1:0] _T_161;
  wire [3:0] _T_162;
  wire [1:0] _T_163;
  wire  _T_164;
  wire  _T_165;
  wire [1:0] _T_166;
  wire [5:0] _T_167;
  wire [6:0] _GEN_2;
  wire [6:0] _T_168;
  wire  reduced4CExtra;
  wire [74:0] _T_170;
  wire [2:0] _T_171;
  wire [2:0] _T_172;
  wire  _T_174;
  wire  _T_176;
  wire  _T_177;
  wire  _T_180;
  wire  _T_181;
  wire  _T_182;
  wire [74:0] _T_183;
  wire [75:0] alignedSigC;
  wire [47:0] _T_184;
  wire  _T_185;
  wire  _T_187;
  wire  _T_188;
  wire  _T_189;
  wire  _T_191;
  wire  _T_192;
  wire  _T_193;
  wire  _T_194;
  wire  _T_196;
  wire  _T_197;
  wire  _T_198;
  wire  _T_199;
  wire [11:0] _T_201;
  wire [10:0] _T_202;
  wire [10:0] _T_203;
  wire [10:0] _T_204;
  wire [4:0] _T_205;
  wire [25:0] _T_206;
  wire  _T_207;
  wire [9:0] _GEN_3;
  assign io_mulAddA = _T_31[23:0];
  assign io_mulAddB = _T_53[23:0];
  assign io_mulAddC = _T_184;
  assign io_toPostMul_isSigNaNAny = _T_198;
  assign io_toPostMul_isNaNAOrB = _T_199;
  assign io_toPostMul_isInfA = _T_23;
  assign io_toPostMul_isZeroA = _T_13;
  assign io_toPostMul_isInfB = _T_45;
  assign io_toPostMul_isZeroB = _T_35;
  assign io_toPostMul_signProd = signProd;
  assign io_toPostMul_isNaNC = _T_63;
  assign io_toPostMul_isInfC = _T_67;
  assign io_toPostMul_isZeroC = _T_57;
  assign io_toPostMul_sExpSum = $signed(_GEN_3);
  assign io_toPostMul_doSubMags = doSubMags;
  assign io_toPostMul_CIsDominant = CIsDominant;
  assign io_toPostMul_CDom_CAlignDist = _T_205;
  assign io_toPostMul_highAlignedSigC = _T_206;
  assign io_toPostMul_bit0AlignedSigC = _T_207;
  assign _T_10 = io_a[31:23];
  assign _T_11 = _T_10[8:6];
  assign _T_13 = _T_11 == 3'h0;
  assign _T_14 = _T_10[8:7];
  assign _T_16 = _T_14 == 2'h3;
  assign _T_18 = _T_10[6];
  assign _T_19 = _T_16 & _T_18;
  assign _T_22 = _T_18 == 1'h0;
  assign _T_23 = _T_16 & _T_22;
  assign _T_24 = io_a[32];
  assign _T_25 = {1'b0,$signed(_T_10)};
  assign _T_28 = _T_13 == 1'h0;
  assign _T_29 = io_a[22:0];
  assign _T_30 = {1'h0,_T_28};
  assign _T_31 = {_T_30,_T_29};
  assign _T_32 = io_b[31:23];
  assign _T_33 = _T_32[8:6];
  assign _T_35 = _T_33 == 3'h0;
  assign _T_36 = _T_32[8:7];
  assign _T_38 = _T_36 == 2'h3;
  assign _T_40 = _T_32[6];
  assign _T_41 = _T_38 & _T_40;
  assign _T_44 = _T_40 == 1'h0;
  assign _T_45 = _T_38 & _T_44;
  assign _T_46 = io_b[32];
  assign _T_47 = {1'b0,$signed(_T_32)};
  assign _T_50 = _T_35 == 1'h0;
  assign _T_51 = io_b[22:0];
  assign _T_52 = {1'h0,_T_50};
  assign _T_53 = {_T_52,_T_51};
  assign _T_54 = io_c[31:23];
  assign _T_55 = _T_54[8:6];
  assign _T_57 = _T_55 == 3'h0;
  assign _T_58 = _T_54[8:7];
  assign _T_60 = _T_58 == 2'h3;
  assign _T_62 = _T_54[6];
  assign _T_63 = _T_60 & _T_62;
  assign _T_66 = _T_62 == 1'h0;
  assign _T_67 = _T_60 & _T_66;
  assign _T_68 = io_c[32];
  assign _T_69 = {1'b0,$signed(_T_54)};
  assign _T_72 = _T_57 == 1'h0;
  assign _T_73 = io_c[22:0];
  assign _T_74 = {1'h0,_T_72};
  assign _T_75 = {_T_74,_T_73};
  assign _T_76 = _T_24 ^ _T_46;
  assign _T_77 = io_op[1];
  assign signProd = _T_76 ^ _T_77;
  assign _T_78 = $signed(_T_25) + $signed(_T_47);
  assign _T_80 = $signed(_T_78) + $signed(-11'she5);
  assign _T_81 = _T_80[10:0];
  assign sExpAlignedProd = $signed(_T_81);
  assign _T_82 = signProd ^ _T_68;
  assign _T_83 = io_op[0];
  assign doSubMags = _T_82 ^ _T_83;
  assign _GEN_0 = {{1{_T_69[9]}},_T_69};
  assign _T_84 = $signed(sExpAlignedProd) - $signed(_GEN_0);
  assign _T_85 = _T_84[10:0];
  assign sNatCAlignDist = $signed(_T_85);
  assign posNatCAlignDist = sNatCAlignDist[9:0];
  assign _T_86 = _T_13 | _T_35;
  assign _T_88 = $signed(sNatCAlignDist) < $signed(11'sh0);
  assign isMinCAlign = _T_86 | _T_88;
  assign _T_92 = posNatCAlignDist <= 10'h18;
  assign _T_93 = isMinCAlign | _T_92;
  assign CIsDominant = _T_72 & _T_93;
  assign _T_96 = posNatCAlignDist < 10'h4a;
  assign _T_97 = posNatCAlignDist[6:0];
  assign _T_99 = _T_96 ? _T_97 : 7'h4a;
  assign CAlignDist = isMinCAlign ? 7'h0 : _T_99;
  assign _T_100 = ~ _T_75;
  assign _T_101 = doSubMags ? _T_100 : _T_75;
  assign _T_105 = doSubMags ? 53'h1fffffffffffff : 53'h0;
  assign _T_106 = {_T_101,_T_105};
  assign _T_107 = $signed(_T_106);
  assign mainAlignedSigC = $signed(_T_107) >>> CAlignDist;
  assign _GEN_1 = {{2'd0}, _T_75};
  assign _T_108 = _GEN_1 << 2;
  assign _T_122 = _T_108[3:0];
  assign _T_124 = _T_122 != 4'h0;
  assign _T_125 = _T_108[7:4];
  assign _T_127 = _T_125 != 4'h0;
  assign _T_128 = _T_108[11:8];
  assign _T_130 = _T_128 != 4'h0;
  assign _T_131 = _T_108[15:12];
  assign _T_133 = _T_131 != 4'h0;
  assign _T_134 = _T_108[19:16];
  assign _T_136 = _T_134 != 4'h0;
  assign _T_137 = _T_108[23:20];
  assign _T_139 = _T_137 != 4'h0;
  assign _T_140 = _T_108[26:24];
  assign _T_142 = _T_140 != 3'h0;
  assign _T_143 = {_T_130,_T_127};
  assign _T_144 = {_T_143,_T_124};
  assign _T_145 = {_T_136,_T_133};
  assign _T_146 = {_T_142,_T_139};
  assign _T_147 = {_T_146,_T_145};
  assign _T_148 = {_T_147,_T_144};
  assign _T_149 = CAlignDist[6:2];
  assign _T_151 = $signed(-33'sh100000000) >>> _T_149;
  assign _T_152 = _T_151[19:14];
  assign _T_153 = _T_152[3:0];
  assign _T_154 = _T_153[1:0];
  assign _T_155 = _T_154[0];
  assign _T_156 = _T_154[1];
  assign _T_157 = {_T_155,_T_156};
  assign _T_158 = _T_153[3:2];
  assign _T_159 = _T_158[0];
  assign _T_160 = _T_158[1];
  assign _T_161 = {_T_159,_T_160};
  assign _T_162 = {_T_157,_T_161};
  assign _T_163 = _T_152[5:4];
  assign _T_164 = _T_163[0];
  assign _T_165 = _T_163[1];
  assign _T_166 = {_T_164,_T_165};
  assign _T_167 = {_T_162,_T_166};
  assign _GEN_2 = {{1'd0}, _T_167};
  assign _T_168 = _T_148 & _GEN_2;
  assign reduced4CExtra = _T_168 != 7'h0;
  assign _T_170 = mainAlignedSigC[77:3];
  assign _T_171 = mainAlignedSigC[2:0];
  assign _T_172 = ~ _T_171;
  assign _T_174 = _T_172 == 3'h0;
  assign _T_176 = reduced4CExtra == 1'h0;
  assign _T_177 = _T_174 & _T_176;
  assign _T_180 = _T_171 != 3'h0;
  assign _T_181 = _T_180 | reduced4CExtra;
  assign _T_182 = doSubMags ? _T_177 : _T_181;
  assign _T_183 = $unsigned(_T_170);
  assign alignedSigC = {_T_183,_T_182};
  assign _T_184 = alignedSigC[48:1];
  assign _T_185 = _T_31[22];
  assign _T_187 = _T_185 == 1'h0;
  assign _T_188 = _T_19 & _T_187;
  assign _T_189 = _T_53[22];
  assign _T_191 = _T_189 == 1'h0;
  assign _T_192 = _T_41 & _T_191;
  assign _T_193 = _T_188 | _T_192;
  assign _T_194 = _T_75[22];
  assign _T_196 = _T_194 == 1'h0;
  assign _T_197 = _T_63 & _T_196;
  assign _T_198 = _T_193 | _T_197;
  assign _T_199 = _T_19 | _T_41;
  assign _T_201 = $signed(sExpAlignedProd) - $signed(11'sh18);
  assign _T_202 = _T_201[10:0];
  assign _T_203 = $signed(_T_202);
  assign _T_204 = CIsDominant ? $signed({{1{_T_69[9]}},_T_69}) : $signed(_T_203);
  assign _T_205 = CAlignDist[4:0];
  assign _T_206 = alignedSigC[74:49];
  assign _T_207 = alignedSigC[0];
  assign _GEN_3 = _T_204[9:0];
endmodule
