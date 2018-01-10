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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_FP_TO_INT(
  input         clock,
  input         io_in_valid,
  input         io_in_bits_ren2,
  input         io_in_bits_wflags,
  input  [2:0]  io_in_bits_rm,
  input  [1:0]  io_in_bits_typ,
  input  [32:0] io_in_bits_in1,
  input  [32:0] io_in_bits_in2,
  output [2:0]  io_out_bits_in_rm,
  output [32:0] io_out_bits_in_in1,
  output [32:0] io_out_bits_in_in2,
  output        io_out_bits_lt,
  output [31:0] io_out_bits_store,
  output [31:0] io_out_bits_toint,
  output [4:0]  io_out_bits_exc
);
  reg  in_ren2;
  reg [31:0] _RAND_0;
  reg  in_wflags;
  reg [31:0] _RAND_1;
  reg [2:0] in_rm;
  reg [31:0] _RAND_2;
  reg [1:0] in_typ;
  reg [31:0] _RAND_3;
  reg [32:0] in_in1;
  reg [63:0] _RAND_4;
  reg [32:0] in_in2;
  reg [63:0] _RAND_5;
  wire  _GEN_3;
  wire  _GEN_15;
  wire [2:0] _GEN_16;
  wire [1:0] _GEN_18;
  wire [32:0] _GEN_19;
  wire [32:0] _GEN_20;
  wire [32:0] dcmp_io_a;
  wire [32:0] dcmp_io_b;
  wire  dcmp_io_signaling;
  wire  dcmp_io_lt;
  wire  dcmp_io_eq;
  wire [4:0] dcmp_io_exceptionFlags;
  wire  _T_13;
  wire  _T_15;
  wire [8:0] _T_17;
  wire [2:0] _T_18;
  wire  _T_20;
  wire [1:0] _T_21;
  wire  _T_23;
  wire  _T_26;
  wire  _T_27;
  wire  _T_30;
  wire  _T_31;
  wire  _T_32;
  wire [9:0] _T_33;
  wire  _T_36;
  wire [22:0] _T_37;
  wire [1:0] _T_38;
  wire [24:0] _T_39;
  wire  _T_41;
  wire [4:0] _T_43;
  wire [5:0] _T_44;
  wire [5:0] _T_45;
  wire [4:0] _T_46;
  wire [23:0] _T_47;
  wire [23:0] _T_48;
  wire [22:0] _T_49;
  wire [7:0] _T_51;
  wire [8:0] _T_53;
  wire [8:0] _T_54;
  wire [7:0] _T_55;
  wire [7:0] _T_56;
  wire  _T_57;
  wire [7:0] _T_61;
  wire [7:0] _T_62;
  wire [22:0] _T_64;
  wire [22:0] _T_65;
  wire [22:0] _T_66;
  wire [8:0] _T_67;
  wire [31:0] store;
  wire [31:0] _T_71;
  wire  _T_73;
  wire [2:0] _T_75;
  wire [1:0] _T_76;
  wire  _T_78;
  wire [6:0] _T_79;
  wire  _T_81;
  wire  _T_83;
  wire  _T_85;
  wire  _T_86;
  wire  _T_87;
  wire  _T_91;
  wire  _T_92;
  wire  _T_94;
  wire  _T_95;
  wire  _T_97;
  wire  _T_98;
  wire  _T_100;
  wire  _T_101;
  wire [2:0] _T_102;
  wire  _T_104;
  wire  _T_105;
  wire  _T_107;
  wire  _T_108;
  wire  _T_110;
  wire  _T_112;
  wire  _T_113;
  wire  _T_116;
  wire  _T_119;
  wire  _T_122;
  wire  _T_123;
  wire  _T_124;
  wire  _T_125;
  wire  _T_126;
  wire [1:0] _T_127;
  wire [1:0] _T_128;
  wire [2:0] _T_129;
  wire [4:0] _T_130;
  wire [1:0] _T_131;
  wire [1:0] _T_132;
  wire [2:0] _T_133;
  wire [4:0] _T_134;
  wire [9:0] _T_135;
  wire [32:0] _T_138;
  wire [32:0] _GEN_22;
  wire [2:0] _T_140;
  wire [1:0] _T_141;
  wire [2:0] _GEN_30;
  wire [2:0] _T_142;
  wire  _T_144;
  wire [32:0] _T_147;
  wire  _T_150;
  wire [32:0] RecFNToIN_io_in;
  wire [2:0] RecFNToIN_io_roundingMode;
  wire  RecFNToIN_io_signedOut;
  wire [31:0] RecFNToIN_io_out;
  wire [2:0] RecFNToIN_io_intExceptionFlags;
  wire  _T_152;
  wire  _T_153;
  wire [1:0] _T_154;
  wire  _T_156;
  wire  _T_158;
  wire [3:0] _T_159;
  wire [4:0] _T_160;
  wire [32:0] _GEN_25;
  wire [4:0] _GEN_26;
  wire [32:0] _GEN_27;
  wire [4:0] _GEN_28;
  wire [32:0] _T_161;
  wire  _T_163;
  wire [32:0] _T_164;
  wire  _T_166;
  wire  _T_167;
  wire  _T_168;
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_COMPARE_REC_FN dcmp (
    .io_a(dcmp_io_a),
    .io_b(dcmp_io_b),
    .io_signaling(dcmp_io_signaling),
    .io_lt(dcmp_io_lt),
    .io_eq(dcmp_io_eq),
    .io_exceptionFlags(dcmp_io_exceptionFlags)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_REC_FN_TO_IN ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_REC_FN_TO_IN (
    .io_in(RecFNToIN_io_in),
    .io_roundingMode(RecFNToIN_io_roundingMode),
    .io_signedOut(RecFNToIN_io_signedOut),
    .io_out(RecFNToIN_io_out),
    .io_intExceptionFlags(RecFNToIN_io_intExceptionFlags)
  );
  assign io_out_bits_in_rm = in_rm;
  assign io_out_bits_in_in1 = in_in1;
  assign io_out_bits_in_in2 = in_in2;
  assign io_out_bits_lt = _T_168;
  assign io_out_bits_store = store;
  assign io_out_bits_toint = _T_71;
  assign io_out_bits_exc = _GEN_28;
  assign _GEN_3 = io_in_valid ? io_in_bits_ren2 : in_ren2;
  assign _GEN_15 = io_in_valid ? io_in_bits_wflags : in_wflags;
  assign _GEN_16 = io_in_valid ? io_in_bits_rm : in_rm;
  assign _GEN_18 = io_in_valid ? io_in_bits_typ : in_typ;
  assign _GEN_19 = io_in_valid ? io_in_bits_in1 : in_in1;
  assign _GEN_20 = io_in_valid ? io_in_bits_in2 : in_in2;
  assign dcmp_io_a = in_in1;
  assign dcmp_io_b = in_in2;
  assign dcmp_io_signaling = _T_15;
  assign _T_13 = in_rm[1];
  assign _T_15 = _T_13 == 1'h0;
  assign _T_17 = in_in1[31:23];
  assign _T_18 = _T_17[8:6];
  assign _T_20 = _T_18 == 3'h0;
  assign _T_21 = _T_17[8:7];
  assign _T_23 = _T_21 == 2'h3;
  assign _T_26 = _T_17[6];
  assign _T_27 = _T_23 & _T_26;
  assign _T_30 = _T_26 == 1'h0;
  assign _T_31 = _T_23 & _T_30;
  assign _T_32 = in_in1[32];
  assign _T_33 = {1'b0,$signed(_T_17)};
  assign _T_36 = _T_20 == 1'h0;
  assign _T_37 = in_in1[22:0];
  assign _T_38 = {1'h0,_T_36};
  assign _T_39 = {_T_38,_T_37};
  assign _T_41 = $signed(_T_33) < $signed(10'sh82);
  assign _T_43 = _T_33[4:0];
  assign _T_44 = 5'h1 - _T_43;
  assign _T_45 = $unsigned(_T_44);
  assign _T_46 = _T_45[4:0];
  assign _T_47 = _T_39[24:1];
  assign _T_48 = _T_47 >> _T_46;
  assign _T_49 = _T_48[22:0];
  assign _T_51 = _T_33[7:0];
  assign _T_53 = _T_51 - 8'h81;
  assign _T_54 = $unsigned(_T_53);
  assign _T_55 = _T_54[7:0];
  assign _T_56 = _T_41 ? 8'h0 : _T_55;
  assign _T_57 = _T_27 | _T_31;
  assign _T_61 = _T_57 ? 8'hff : 8'h0;
  assign _T_62 = _T_56 | _T_61;
  assign _T_64 = _T_39[22:0];
  assign _T_65 = _T_31 ? 23'h0 : _T_64;
  assign _T_66 = _T_41 ? _T_49 : _T_65;
  assign _T_67 = {_T_32,_T_62};
  assign store = {_T_67,_T_66};
  assign _T_71 = _GEN_27[31:0];
  assign _T_73 = in_rm[0];
  assign _T_75 = in_in1[31:29];
  assign _T_76 = _T_75[2:1];
  assign _T_78 = _T_76 == 2'h3;
  assign _T_79 = in_in1[29:23];
  assign _T_81 = _T_79 < 7'h2;
  assign _T_83 = _T_75 == 3'h1;
  assign _T_85 = _T_76 == 2'h1;
  assign _T_86 = _T_85 & _T_81;
  assign _T_87 = _T_83 | _T_86;
  assign _T_91 = _T_81 == 1'h0;
  assign _T_92 = _T_85 & _T_91;
  assign _T_94 = _T_76 == 2'h2;
  assign _T_95 = _T_92 | _T_94;
  assign _T_97 = _T_75 == 3'h0;
  assign _T_98 = _T_75[0];
  assign _T_100 = _T_98 == 1'h0;
  assign _T_101 = _T_78 & _T_100;
  assign _T_102 = ~ _T_75;
  assign _T_104 = _T_102 == 3'h0;
  assign _T_105 = in_in1[22];
  assign _T_107 = _T_105 == 1'h0;
  assign _T_108 = _T_104 & _T_107;
  assign _T_110 = _T_104 & _T_105;
  assign _T_112 = _T_32 == 1'h0;
  assign _T_113 = _T_101 & _T_112;
  assign _T_116 = _T_95 & _T_112;
  assign _T_119 = _T_87 & _T_112;
  assign _T_122 = _T_97 & _T_112;
  assign _T_123 = _T_97 & _T_32;
  assign _T_124 = _T_87 & _T_32;
  assign _T_125 = _T_95 & _T_32;
  assign _T_126 = _T_101 & _T_32;
  assign _T_127 = {_T_125,_T_126};
  assign _T_128 = {_T_122,_T_123};
  assign _T_129 = {_T_128,_T_124};
  assign _T_130 = {_T_129,_T_127};
  assign _T_131 = {_T_116,_T_119};
  assign _T_132 = {_T_110,_T_108};
  assign _T_133 = {_T_132,_T_113};
  assign _T_134 = {_T_133,_T_131};
  assign _T_135 = {_T_134,_T_130};
  assign _T_138 = {{23'd0}, _T_135};
  assign _GEN_22 = _T_73 ? _T_138 : {{1'd0}, store};
  assign _T_140 = ~ in_rm;
  assign _T_141 = {dcmp_io_lt,dcmp_io_eq};
  assign _GEN_30 = {{1'd0}, _T_141};
  assign _T_142 = _T_140 & _GEN_30;
  assign _T_144 = _T_142 != 3'h0;
  assign _T_147 = {{32'd0}, _T_144};
  assign _T_150 = in_ren2 == 1'h0;
  assign RecFNToIN_io_in = in_in1;
  assign RecFNToIN_io_roundingMode = in_rm;
  assign RecFNToIN_io_signedOut = _T_153;
  assign _T_152 = in_typ[0];
  assign _T_153 = ~ _T_152;
  assign _T_154 = RecFNToIN_io_intExceptionFlags[2:1];
  assign _T_156 = _T_154 != 2'h0;
  assign _T_158 = RecFNToIN_io_intExceptionFlags[0];
  assign _T_159 = {_T_156,3'h0};
  assign _T_160 = {_T_159,_T_158};
  assign _GEN_25 = _T_150 ? {{1'd0}, RecFNToIN_io_out} : _T_147;
  assign _GEN_26 = _T_150 ? _T_160 : dcmp_io_exceptionFlags;
  assign _GEN_27 = in_wflags ? _GEN_25 : _GEN_22;
  assign _GEN_28 = in_wflags ? _GEN_26 : 5'h0;
  assign _T_161 = $signed(dcmp_io_a);
  assign _T_163 = $signed(_T_161) < $signed(33'sh0);
  assign _T_164 = $signed(dcmp_io_b);
  assign _T_166 = $signed(_T_164) >= $signed(33'sh0);
  assign _T_167 = _T_163 & _T_166;
  assign _T_168 = dcmp_io_lt | _T_167;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  in_ren2 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  in_wflags = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  in_rm = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  in_typ = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{$random}};
  in_in1 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{$random}};
  in_in2 = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (io_in_valid) begin
      in_ren2 <= io_in_bits_ren2;
    end
    if (io_in_valid) begin
      in_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      in_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      in_typ <= io_in_bits_typ;
    end
    if (io_in_valid) begin
      in_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      in_in2 <= io_in_bits_in2;
    end
  end
endmodule
