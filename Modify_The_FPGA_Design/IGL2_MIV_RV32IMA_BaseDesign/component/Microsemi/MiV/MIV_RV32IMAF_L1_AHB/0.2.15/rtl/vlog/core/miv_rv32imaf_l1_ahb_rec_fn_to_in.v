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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_REC_FN_TO_IN(
  input  [32:0] io_in,
  input  [2:0]  io_roundingMode,
  input         io_signedOut,
  output [31:0] io_out,
  output [2:0]  io_intExceptionFlags
);
  wire [8:0] _T_7;
  wire [2:0] _T_8;
  wire  _T_10;
  wire [1:0] _T_11;
  wire  _T_13;
  wire  _T_15;
  wire  _T_16;
  wire  _T_19;
  wire  _T_20;
  wire  _T_21;
  wire [9:0] _T_22;
  wire  _T_25;
  wire [22:0] _T_26;
  wire [1:0] _T_27;
  wire [24:0] _T_28;
  wire  magGeOne;
  wire [7:0] posExp;
  wire  _T_30;
  wire [7:0] _T_31;
  wire  _T_33;
  wire  magJustBelowOne;
  wire  roundingMode_near_even;
  wire  roundingMode_min;
  wire  roundingMode_max;
  wire  roundingMode_near_maxMag;
  wire [22:0] _T_42;
  wire [23:0] _T_43;
  wire [4:0] _T_44;
  wire [4:0] _T_46;
  wire [54:0] _GEN_0;
  wire [54:0] shiftedSig;
  wire [32:0] _T_47;
  wire [21:0] _T_48;
  wire  _T_50;
  wire [33:0] alignedSig;
  wire [31:0] _T_52;
  wire [1:0] _T_53;
  wire  _T_55;
  wire  common_inexact;
  wire [1:0] _T_58;
  wire [1:0] _T_59;
  wire  _T_61;
  wire [1:0] _T_63;
  wire  _T_65;
  wire  _T_66;
  wire  _T_67;
  wire  _T_71;
  wire  roundIncr_near_even;
  wire  _T_72;
  wire  _T_73;
  wire  roundIncr_near_maxMag;
  wire  _T_74;
  wire  _T_75;
  wire  _T_76;
  wire  _T_77;
  wire  _T_78;
  wire  _T_79;
  wire  _T_81;
  wire  _T_82;
  wire  _T_83;
  wire  roundIncr;
  wire [31:0] _T_84;
  wire [31:0] complUnroundedInt;
  wire  _T_85;
  wire [32:0] _T_87;
  wire [31:0] _T_88;
  wire [31:0] roundedInt;
  wire  magGeOne_atOverflowEdge;
  wire [29:0] _T_90;
  wire [29:0] _T_91;
  wire  _T_93;
  wire  roundCarryBut2;
  wire  _T_95;
  wire [30:0] _T_96;
  wire  _T_98;
  wire  _T_99;
  wire  _T_100;
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
  wire  _T_113;
  wire  _T_114;
  wire  _T_115;
  wire  common_overflow;
  wire  invalidExc;
  wire  _T_117;
  wire  overflow;
  wire  _T_121;
  wire  _T_122;
  wire  inexact;
  wire  _T_124;
  wire  excSign;
  wire  _T_125;
  wire [31:0] _T_128;
  wire  _T_130;
  wire [30:0] _T_133;
  wire [31:0] _GEN_1;
  wire [31:0] excOut;
  wire  _T_134;
  wire [31:0] _T_135;
  wire [1:0] _T_136;
  wire [2:0] _T_137;
  assign io_out = _T_135;
  assign io_intExceptionFlags = _T_137;
  assign _T_7 = io_in[31:23];
  assign _T_8 = _T_7[8:6];
  assign _T_10 = _T_8 == 3'h0;
  assign _T_11 = _T_7[8:7];
  assign _T_13 = _T_11 == 2'h3;
  assign _T_15 = _T_7[6];
  assign _T_16 = _T_13 & _T_15;
  assign _T_19 = _T_15 == 1'h0;
  assign _T_20 = _T_13 & _T_19;
  assign _T_21 = io_in[32];
  assign _T_22 = {1'b0,$signed(_T_7)};
  assign _T_25 = _T_10 == 1'h0;
  assign _T_26 = io_in[22:0];
  assign _T_27 = {1'h0,_T_25};
  assign _T_28 = {_T_27,_T_26};
  assign magGeOne = _T_22[8];
  assign posExp = _T_22[7:0];
  assign _T_30 = magGeOne == 1'h0;
  assign _T_31 = ~ posExp;
  assign _T_33 = _T_31 == 8'h0;
  assign magJustBelowOne = _T_30 & _T_33;
  assign roundingMode_near_even = io_roundingMode == 3'h0;
  assign roundingMode_min = io_roundingMode == 3'h2;
  assign roundingMode_max = io_roundingMode == 3'h3;
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4;
  assign _T_42 = _T_28[22:0];
  assign _T_43 = {magGeOne,_T_42};
  assign _T_44 = _T_22[4:0];
  assign _T_46 = magGeOne ? _T_44 : 5'h0;
  assign _GEN_0 = {{31'd0}, _T_43};
  assign shiftedSig = _GEN_0 << _T_46;
  assign _T_47 = shiftedSig[54:22];
  assign _T_48 = shiftedSig[21:0];
  assign _T_50 = _T_48 != 22'h0;
  assign alignedSig = {_T_47,_T_50};
  assign _T_52 = alignedSig[33:2];
  assign _T_53 = alignedSig[1:0];
  assign _T_55 = _T_53 != 2'h0;
  assign common_inexact = magGeOne ? _T_55 : _T_25;
  assign _T_58 = alignedSig[2:1];
  assign _T_59 = ~ _T_58;
  assign _T_61 = _T_59 == 2'h0;
  assign _T_63 = ~ _T_53;
  assign _T_65 = _T_63 == 2'h0;
  assign _T_66 = _T_61 | _T_65;
  assign _T_67 = magGeOne & _T_66;
  assign _T_71 = magJustBelowOne & _T_55;
  assign roundIncr_near_even = _T_67 | _T_71;
  assign _T_72 = alignedSig[1];
  assign _T_73 = magGeOne & _T_72;
  assign roundIncr_near_maxMag = _T_73 | magJustBelowOne;
  assign _T_74 = roundingMode_near_even & roundIncr_near_even;
  assign _T_75 = roundingMode_near_maxMag & roundIncr_near_maxMag;
  assign _T_76 = _T_74 | _T_75;
  assign _T_77 = _T_21 & common_inexact;
  assign _T_78 = roundingMode_min & _T_77;
  assign _T_79 = _T_76 | _T_78;
  assign _T_81 = _T_21 == 1'h0;
  assign _T_82 = _T_81 & common_inexact;
  assign _T_83 = roundingMode_max & _T_82;
  assign roundIncr = _T_79 | _T_83;
  assign _T_84 = ~ _T_52;
  assign complUnroundedInt = _T_21 ? _T_84 : _T_52;
  assign _T_85 = roundIncr ^ _T_21;
  assign _T_87 = complUnroundedInt + 32'h1;
  assign _T_88 = _T_87[31:0];
  assign roundedInt = _T_85 ? _T_88 : complUnroundedInt;
  assign magGeOne_atOverflowEdge = posExp == 8'h1f;
  assign _T_90 = _T_52[29:0];
  assign _T_91 = ~ _T_90;
  assign _T_93 = _T_91 == 30'h0;
  assign roundCarryBut2 = _T_93 & roundIncr;
  assign _T_95 = posExp >= 8'h20;
  assign _T_96 = _T_52[30:0];
  assign _T_98 = _T_96 != 31'h0;
  assign _T_99 = _T_98 | roundIncr;
  assign _T_100 = magGeOne_atOverflowEdge & _T_99;
  assign _T_102 = posExp == 8'h1e;
  assign _T_103 = _T_102 & roundCarryBut2;
  assign _T_104 = magGeOne_atOverflowEdge | _T_103;
  assign _T_105 = _T_21 ? _T_100 : _T_104;
  assign _T_106 = _T_52[30];
  assign _T_107 = magGeOne_atOverflowEdge & _T_106;
  assign _T_108 = _T_107 & roundCarryBut2;
  assign _T_109 = _T_21 | _T_108;
  assign _T_110 = io_signedOut ? _T_105 : _T_109;
  assign _T_111 = _T_95 | _T_110;
  assign _T_113 = io_signedOut == 1'h0;
  assign _T_114 = _T_113 & _T_21;
  assign _T_115 = _T_114 & roundIncr;
  assign common_overflow = magGeOne ? _T_111 : _T_115;
  assign invalidExc = _T_16 | _T_20;
  assign _T_117 = invalidExc == 1'h0;
  assign overflow = _T_117 & common_overflow;
  assign _T_121 = common_overflow == 1'h0;
  assign _T_122 = _T_117 & _T_121;
  assign inexact = _T_122 & common_inexact;
  assign _T_124 = _T_16 == 1'h0;
  assign excSign = _T_124 & _T_21;
  assign _T_125 = io_signedOut == excSign;
  assign _T_128 = _T_125 ? 32'h80000000 : 32'h0;
  assign _T_130 = excSign == 1'h0;
  assign _T_133 = _T_130 ? 31'h7fffffff : 31'h0;
  assign _GEN_1 = {{1'd0}, _T_133};
  assign excOut = _T_128 | _GEN_1;
  assign _T_134 = invalidExc | common_overflow;
  assign _T_135 = _T_134 ? excOut : roundedInt;
  assign _T_136 = {invalidExc,overflow};
  assign _T_137 = {_T_136,inexact};
endmodule
