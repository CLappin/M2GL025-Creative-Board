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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_FPU_DECODER(
  input  [31:0] io_inst,
  output        io_sigs_wen,
  output        io_sigs_ren1,
  output        io_sigs_ren2,
  output        io_sigs_ren3,
  output        io_sigs_swap12,
  output        io_sigs_swap23,
  output        io_sigs_singleOut,
  output        io_sigs_fromint,
  output        io_sigs_toint,
  output        io_sigs_fastpipe,
  output        io_sigs_fma,
  output        io_sigs_div,
  output        io_sigs_sqrt,
  output        io_sigs_wflags
);
  wire [31:0] _T_5;
  wire  _T_7;
  wire [31:0] _T_10;
  wire  _T_12;
  wire [31:0] _T_14;
  wire  _T_16;
  wire [31:0] _T_18;
  wire  _T_20;
  wire  _T_23;
  wire  decoder_1;
  wire [31:0] _T_25;
  wire  _T_27;
  wire [31:0] _T_29;
  wire  _T_31;
  wire [31:0] _T_33;
  wire  _T_35;
  wire  _T_38;
  wire  decoder_2;
  wire [31:0] _T_40;
  wire  _T_42;
  wire [31:0] _T_44;
  wire  _T_46;
  wire  _T_49;
  wire  decoder_3;
  wire [31:0] _T_53;
  wire  _T_55;
  wire [31:0] _T_79;
  wire  _T_81;
  wire [31:0] _T_83;
  wire  _T_85;
  wire [31:0] _T_87;
  wire  _T_89;
  wire  _T_92;
  wire  decoder_8;
  wire [31:0] _T_94;
  wire  _T_96;
  wire  _T_101;
  wire  decoder_10;
  wire [31:0] _T_105;
  wire  _T_107;
  wire [31:0] _T_110;
  wire  _T_112;
  wire [31:0] _T_114;
  wire  _T_116;
  wire  _T_119;
  wire  decoder_12;
  wire [31:0] _T_121;
  wire  _T_123;
  wire [31:0] _T_126;
  wire  _T_128;
  wire [31:0] _T_131;
  wire  _T_133;
  wire [31:0] _T_135;
  wire  _T_137;
  wire [31:0] _T_139;
  wire  _T_141;
  wire  _T_144;
  wire  _T_145;
  wire  decoder_15;
  assign io_sigs_wen = decoder_1;
  assign io_sigs_ren1 = decoder_2;
  assign io_sigs_ren2 = decoder_3;
  assign io_sigs_ren3 = _T_35;
  assign io_sigs_swap12 = _T_7;
  assign io_sigs_swap23 = _T_55;
  assign io_sigs_singleOut = decoder_8;
  assign io_sigs_fromint = _T_96;
  assign io_sigs_toint = decoder_10;
  assign io_sigs_fastpipe = _T_107;
  assign io_sigs_fma = decoder_12;
  assign io_sigs_div = _T_123;
  assign io_sigs_sqrt = _T_128;
  assign io_sigs_wflags = decoder_15;
  assign _T_5 = io_inst & 32'h40;
  assign _T_7 = _T_5 == 32'h0;
  assign _T_10 = io_inst & 32'h80000020;
  assign _T_12 = _T_10 == 32'h0;
  assign _T_14 = io_inst & 32'h30;
  assign _T_16 = _T_14 == 32'h0;
  assign _T_18 = io_inst & 32'h10000020;
  assign _T_20 = _T_18 == 32'h10000000;
  assign _T_23 = _T_12 | _T_16;
  assign decoder_1 = _T_23 | _T_20;
  assign _T_25 = io_inst & 32'h80000004;
  assign _T_27 = _T_25 == 32'h0;
  assign _T_29 = io_inst & 32'h10000004;
  assign _T_31 = _T_29 == 32'h0;
  assign _T_33 = io_inst & 32'h50;
  assign _T_35 = _T_33 == 32'h40;
  assign _T_38 = _T_27 | _T_31;
  assign decoder_2 = _T_38 | _T_35;
  assign _T_40 = io_inst & 32'h40000004;
  assign _T_42 = _T_40 == 32'h0;
  assign _T_44 = io_inst & 32'h20;
  assign _T_46 = _T_44 == 32'h20;
  assign _T_49 = _T_42 | _T_46;
  assign decoder_3 = _T_49 | _T_35;
  assign _T_53 = io_inst & 32'h30000010;
  assign _T_55 = _T_53 == 32'h10;
  assign _T_79 = io_inst & 32'h20000000;
  assign _T_81 = _T_79 == 32'h0;
  assign _T_83 = io_inst & 32'h10000000;
  assign _T_85 = _T_83 == 32'h0;
  assign _T_87 = io_inst & 32'h10;
  assign _T_89 = _T_87 == 32'h0;
  assign _T_92 = _T_81 | _T_85;
  assign decoder_8 = _T_92 | _T_89;
  assign _T_94 = io_inst & 32'h90000010;
  assign _T_96 = _T_94 == 32'h90000010;
  assign _T_101 = _T_94 == 32'h80000010;
  assign decoder_10 = _T_46 | _T_101;
  assign _T_105 = io_inst & 32'ha0000010;
  assign _T_107 = _T_105 == 32'h20000010;
  assign _T_110 = io_inst & 32'hb0000004;
  assign _T_112 = _T_110 == 32'h0;
  assign _T_114 = io_inst & 32'ha8000004;
  assign _T_116 = _T_114 == 32'h0;
  assign _T_119 = _T_112 | _T_116;
  assign decoder_12 = _T_119 | _T_35;
  assign _T_121 = io_inst & 32'h58000010;
  assign _T_123 = _T_121 == 32'h18000010;
  assign _T_126 = io_inst & 32'hc0000010;
  assign _T_128 = _T_126 == 32'h40000010;
  assign _T_131 = io_inst & 32'h20000004;
  assign _T_133 = _T_131 == 32'h0;
  assign _T_135 = io_inst & 32'h8002000;
  assign _T_137 = _T_135 == 32'h8000000;
  assign _T_139 = io_inst & 32'hc0000004;
  assign _T_141 = _T_139 == 32'h80000000;
  assign _T_144 = _T_133 | _T_35;
  assign _T_145 = _T_144 | _T_137;
  assign decoder_15 = _T_145 | _T_141;
endmodule
