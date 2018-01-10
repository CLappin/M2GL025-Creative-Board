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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ROUND_ANY_RAW_FN_TO_REC_FN_1(
  input         io_invalidExc,
  input         io_infiniteExc,
  input         io_in_isNaN,
  input         io_in_isInf,
  input         io_in_isZero,
  input         io_in_sign,
  input  [6:0]  io_in_sExp,
  input  [32:0] io_in_sig,
  input  [2:0]  io_roundingMode,
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
  wire [8:0] _GEN_0;
  wire [9:0] _T_20;
  wire [8:0] _T_21;
  wire [9:0] sAdjustedExp;
  wire [25:0] _T_22;
  wire [6:0] _T_23;
  wire  _T_25;
  wire [26:0] adjustedSig;
  wire [26:0] _T_41;
  wire  _T_43;
  wire [26:0] _T_44;
  wire  _T_46;
  wire  _T_47;
  wire  _T_48;
  wire  _T_49;
  wire  _T_50;
  wire  _T_51;
  wire [26:0] _T_52;
  wire [24:0] _T_53;
  wire [25:0] _T_55;
  wire  _T_56;
  wire  _T_58;
  wire  _T_59;
  wire [25:0] _T_62;
  wire [25:0] _T_63;
  wire [25:0] _T_64;
  wire [26:0] _T_66;
  wire [24:0] _T_67;
  wire  _T_68;
  wire [25:0] _T_71;
  wire [25:0] _GEN_1;
  wire [25:0] _T_72;
  wire [25:0] _T_73;
  wire [1:0] _T_74;
  wire [2:0] _T_75;
  wire [9:0] _GEN_2;
  wire [10:0] _T_76;
  wire [8:0] _T_77;
  wire [22:0] _T_79;
  wire  isNaNOut;
  wire  notNaN_isSpecialInfOut;
  wire  _T_102;
  wire  _T_104;
  wire  _T_105;
  wire  _T_107;
  wire  commonCase;
  wire  _T_108;
  wire  signOut;
  wire [8:0] _T_119;
  wire [8:0] _T_120;
  wire [8:0] _T_121;
  wire [8:0] _T_135;
  wire [8:0] _T_136;
  wire [8:0] _T_137;
  wire [8:0] _T_148;
  wire [8:0] _T_149;
  wire [8:0] _T_152;
  wire [8:0] expOut;
  wire  _T_153;
  wire [22:0] _T_157;
  wire [22:0] _T_158;
  wire [9:0] _T_163;
  wire [32:0] _T_164;
  wire [1:0] _T_165;
  wire [1:0] _T_166;
  wire [2:0] _T_167;
  wire [4:0] _T_168;
  assign io_out = _T_164;
  assign io_exceptionFlags = _T_168;
  assign roundingMode_near_even = io_roundingMode == 3'h0;
  assign roundingMode_min = io_roundingMode == 3'h2;
  assign roundingMode_max = io_roundingMode == 3'h3;
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4;
  assign roundingMode_odd = io_roundingMode == 3'h5;
  assign _T_15 = roundingMode_min & io_in_sign;
  assign _T_17 = io_in_sign == 1'h0;
  assign _T_18 = roundingMode_max & _T_17;
  assign roundMagUp = _T_15 | _T_18;
  assign _GEN_0 = {{2{io_in_sExp[6]}},io_in_sExp};
  assign _T_20 = $signed(_GEN_0) + $signed(9'she0);
  assign _T_21 = _T_20[8:0];
  assign sAdjustedExp = {1'b0,$signed(_T_21)};
  assign _T_22 = io_in_sig[32:7];
  assign _T_23 = io_in_sig[6:0];
  assign _T_25 = _T_23 != 7'h0;
  assign adjustedSig = {_T_22,_T_25};
  assign _T_41 = adjustedSig & 27'h2;
  assign _T_43 = _T_41 != 27'h0;
  assign _T_44 = adjustedSig & 27'h1;
  assign _T_46 = _T_44 != 27'h0;
  assign _T_47 = _T_43 | _T_46;
  assign _T_48 = roundingMode_near_even | roundingMode_near_maxMag;
  assign _T_49 = _T_48 & _T_43;
  assign _T_50 = roundMagUp & _T_47;
  assign _T_51 = _T_49 | _T_50;
  assign _T_52 = adjustedSig | 27'h3;
  assign _T_53 = _T_52[26:2];
  assign _T_55 = _T_53 + 25'h1;
  assign _T_56 = roundingMode_near_even & _T_43;
  assign _T_58 = _T_46 == 1'h0;
  assign _T_59 = _T_56 & _T_58;
  assign _T_62 = _T_59 ? 26'h1 : 26'h0;
  assign _T_63 = ~ _T_62;
  assign _T_64 = _T_55 & _T_63;
  assign _T_66 = adjustedSig & 27'h7fffffc;
  assign _T_67 = _T_66[26:2];
  assign _T_68 = roundingMode_odd & _T_47;
  assign _T_71 = _T_68 ? 26'h1 : 26'h0;
  assign _GEN_1 = {{1'd0}, _T_67};
  assign _T_72 = _GEN_1 | _T_71;
  assign _T_73 = _T_51 ? _T_64 : _T_72;
  assign _T_74 = _T_73[25:24];
  assign _T_75 = {1'b0,$signed(_T_74)};
  assign _GEN_2 = {{7{_T_75[2]}},_T_75};
  assign _T_76 = $signed(sAdjustedExp) + $signed(_GEN_2);
  assign _T_77 = _T_76[8:0];
  assign _T_79 = _T_73[22:0];
  assign isNaNOut = io_invalidExc | io_in_isNaN;
  assign notNaN_isSpecialInfOut = io_infiniteExc | io_in_isInf;
  assign _T_102 = isNaNOut == 1'h0;
  assign _T_104 = notNaN_isSpecialInfOut == 1'h0;
  assign _T_105 = _T_102 & _T_104;
  assign _T_107 = io_in_isZero == 1'h0;
  assign commonCase = _T_105 & _T_107;
  assign _T_108 = commonCase & _T_47;
  assign signOut = isNaNOut ? 1'h0 : io_in_sign;
  assign _T_119 = io_in_isZero ? 9'h1c0 : 9'h0;
  assign _T_120 = ~ _T_119;
  assign _T_121 = _T_77 & _T_120;
  assign _T_135 = notNaN_isSpecialInfOut ? 9'h40 : 9'h0;
  assign _T_136 = ~ _T_135;
  assign _T_137 = _T_121 & _T_136;
  assign _T_148 = notNaN_isSpecialInfOut ? 9'h180 : 9'h0;
  assign _T_149 = _T_137 | _T_148;
  assign _T_152 = isNaNOut ? 9'h1c0 : 9'h0;
  assign expOut = _T_149 | _T_152;
  assign _T_153 = isNaNOut | io_in_isZero;
  assign _T_157 = isNaNOut ? 23'h400000 : 23'h0;
  assign _T_158 = _T_153 ? _T_157 : _T_79;
  assign _T_163 = {signOut,expOut};
  assign _T_164 = {_T_163,_T_158};
  assign _T_165 = {1'h0,_T_108};
  assign _T_166 = {io_invalidExc,io_infiniteExc};
  assign _T_167 = {_T_166,1'h0};
  assign _T_168 = {_T_167,_T_165};
endmodule
