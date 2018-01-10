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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_COMPARE_REC_FN(
  input  [32:0] io_a,
  input  [32:0] io_b,
  input         io_signaling,
  output        io_lt,
  output        io_eq,
  output [4:0]  io_exceptionFlags
);
  wire [8:0] _T_9;
  wire [2:0] _T_10;
  wire  _T_12;
  wire [1:0] _T_13;
  wire  _T_15;
  wire  _T_17;
  wire  _T_18;
  wire  _T_21;
  wire  _T_22;
  wire  _T_23;
  wire [9:0] _T_24;
  wire  _T_27;
  wire [22:0] _T_28;
  wire [1:0] _T_29;
  wire [24:0] _T_30;
  wire [8:0] _T_31;
  wire [2:0] _T_32;
  wire  _T_34;
  wire [1:0] _T_35;
  wire  _T_37;
  wire  _T_39;
  wire  _T_40;
  wire  _T_43;
  wire  _T_44;
  wire  _T_45;
  wire [9:0] _T_46;
  wire  _T_49;
  wire [22:0] _T_50;
  wire [1:0] _T_51;
  wire [24:0] _T_52;
  wire  _T_54;
  wire  _T_56;
  wire  ordered;
  wire  bothInfs;
  wire  bothZeros;
  wire  eqExps;
  wire  _T_57;
  wire  _T_58;
  wire  _T_59;
  wire  common_ltMags;
  wire  _T_60;
  wire  common_eqMags;
  wire  _T_62;
  wire  _T_64;
  wire  _T_65;
  wire  _T_67;
  wire  _T_69;
  wire  _T_70;
  wire  _T_72;
  wire  _T_73;
  wire  _T_76;
  wire  _T_77;
  wire  _T_78;
  wire  _T_79;
  wire  ordered_lt;
  wire  _T_80;
  wire  _T_81;
  wire  _T_82;
  wire  ordered_eq;
  wire  _T_83;
  wire  _T_85;
  wire  _T_86;
  wire  _T_87;
  wire  _T_89;
  wire  _T_90;
  wire  _T_91;
  wire  _T_93;
  wire  _T_94;
  wire  invalid;
  wire  _T_95;
  wire  _T_96;
  wire [4:0] _T_104;
  assign io_lt = _T_95;
  assign io_eq = _T_96;
  assign io_exceptionFlags = _T_104;
  assign _T_9 = io_a[31:23];
  assign _T_10 = _T_9[8:6];
  assign _T_12 = _T_10 == 3'h0;
  assign _T_13 = _T_9[8:7];
  assign _T_15 = _T_13 == 2'h3;
  assign _T_17 = _T_9[6];
  assign _T_18 = _T_15 & _T_17;
  assign _T_21 = _T_17 == 1'h0;
  assign _T_22 = _T_15 & _T_21;
  assign _T_23 = io_a[32];
  assign _T_24 = {1'b0,$signed(_T_9)};
  assign _T_27 = _T_12 == 1'h0;
  assign _T_28 = io_a[22:0];
  assign _T_29 = {1'h0,_T_27};
  assign _T_30 = {_T_29,_T_28};
  assign _T_31 = io_b[31:23];
  assign _T_32 = _T_31[8:6];
  assign _T_34 = _T_32 == 3'h0;
  assign _T_35 = _T_31[8:7];
  assign _T_37 = _T_35 == 2'h3;
  assign _T_39 = _T_31[6];
  assign _T_40 = _T_37 & _T_39;
  assign _T_43 = _T_39 == 1'h0;
  assign _T_44 = _T_37 & _T_43;
  assign _T_45 = io_b[32];
  assign _T_46 = {1'b0,$signed(_T_31)};
  assign _T_49 = _T_34 == 1'h0;
  assign _T_50 = io_b[22:0];
  assign _T_51 = {1'h0,_T_49};
  assign _T_52 = {_T_51,_T_50};
  assign _T_54 = _T_18 == 1'h0;
  assign _T_56 = _T_40 == 1'h0;
  assign ordered = _T_54 & _T_56;
  assign bothInfs = _T_22 & _T_44;
  assign bothZeros = _T_12 & _T_34;
  assign eqExps = $signed(_T_24) == $signed(_T_46);
  assign _T_57 = $signed(_T_24) < $signed(_T_46);
  assign _T_58 = _T_30 < _T_52;
  assign _T_59 = eqExps & _T_58;
  assign common_ltMags = _T_57 | _T_59;
  assign _T_60 = _T_30 == _T_52;
  assign common_eqMags = eqExps & _T_60;
  assign _T_62 = bothZeros == 1'h0;
  assign _T_64 = _T_45 == 1'h0;
  assign _T_65 = _T_23 & _T_64;
  assign _T_67 = bothInfs == 1'h0;
  assign _T_69 = common_ltMags == 1'h0;
  assign _T_70 = _T_23 & _T_69;
  assign _T_72 = common_eqMags == 1'h0;
  assign _T_73 = _T_70 & _T_72;
  assign _T_76 = _T_64 & common_ltMags;
  assign _T_77 = _T_73 | _T_76;
  assign _T_78 = _T_67 & _T_77;
  assign _T_79 = _T_65 | _T_78;
  assign ordered_lt = _T_62 & _T_79;
  assign _T_80 = _T_23 == _T_45;
  assign _T_81 = bothInfs | common_eqMags;
  assign _T_82 = _T_80 & _T_81;
  assign ordered_eq = bothZeros | _T_82;
  assign _T_83 = _T_30[22];
  assign _T_85 = _T_83 == 1'h0;
  assign _T_86 = _T_18 & _T_85;
  assign _T_87 = _T_52[22];
  assign _T_89 = _T_87 == 1'h0;
  assign _T_90 = _T_40 & _T_89;
  assign _T_91 = _T_86 | _T_90;
  assign _T_93 = ordered == 1'h0;
  assign _T_94 = io_signaling & _T_93;
  assign invalid = _T_91 | _T_94;
  assign _T_95 = ordered & ordered_lt;
  assign _T_96 = ordered & ordered_eq;
  assign _T_104 = {invalid,4'h0};
endmodule
