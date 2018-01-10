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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_FP_TO_FP(
  input         clock,
  input         reset,
  input         io_in_valid,
  input         io_in_bits_wflags,
  input  [2:0]  io_in_bits_rm,
  input  [32:0] io_in_bits_in1,
  input  [32:0] io_in_bits_in2,
  output [32:0] io_out_bits_data,
  output [4:0]  io_out_bits_exc,
  input         io_lt
);
  reg  _T_14;
  reg [31:0] _RAND_0;
  reg  _T_16_wflags;
  reg [31:0] _RAND_1;
  reg [2:0] _T_16_rm;
  reg [31:0] _RAND_2;
  reg [32:0] _T_16_in1;
  reg [63:0] _RAND_3;
  reg [32:0] _T_16_in2;
  reg [63:0] _RAND_4;
  wire  _GEN_15;
  wire [2:0] _GEN_16;
  wire [32:0] _GEN_19;
  wire [32:0] _GEN_20;
  wire  _T_22;
  wire [32:0] _T_23;
  wire  _T_24;
  wire [32:0] _T_25;
  wire [32:0] _T_26;
  wire [32:0] signNum;
  wire  _T_27;
  wire [31:0] _T_28;
  wire [32:0] fsgnj;
  wire [2:0] _T_31;
  wire [2:0] _T_32;
  wire  _T_34;
  wire [2:0] _T_35;
  wire [2:0] _T_36;
  wire  _T_38;
  wire  _T_43;
  wire  _T_45;
  wire  _T_46;
  wire  _T_51;
  wire  _T_53;
  wire  _T_54;
  wire  _T_55;
  wire  _T_56;
  wire  _T_58;
  wire  _T_60;
  wire  _T_61;
  wire  _T_62;
  wire [4:0] _GEN_26;
  wire [4:0] _T_63;
  wire [32:0] _T_65;
  wire [32:0] _T_66;
  wire [4:0] _GEN_22;
  wire [32:0] _GEN_23;
  reg [32:0] _T_77_data;
  reg [63:0] _RAND_5;
  reg [4:0] _T_77_exc;
  reg [31:0] _RAND_6;
  wire [32:0] _GEN_24;
  wire [4:0] _GEN_25;
  assign io_out_bits_data = _T_77_data;
  assign io_out_bits_exc = _T_77_exc;
  assign _GEN_15 = io_in_valid ? io_in_bits_wflags : _T_16_wflags;
  assign _GEN_16 = io_in_valid ? io_in_bits_rm : _T_16_rm;
  assign _GEN_19 = io_in_valid ? io_in_bits_in1 : _T_16_in1;
  assign _GEN_20 = io_in_valid ? io_in_bits_in2 : _T_16_in2;
  assign _T_22 = _T_16_rm[1];
  assign _T_23 = _T_16_in1 ^ _T_16_in2;
  assign _T_24 = _T_16_rm[0];
  assign _T_25 = ~ _T_16_in2;
  assign _T_26 = _T_24 ? _T_25 : _T_16_in2;
  assign signNum = _T_22 ? _T_23 : _T_26;
  assign _T_27 = signNum[32];
  assign _T_28 = _T_16_in1[31:0];
  assign fsgnj = {_T_27,_T_28};
  assign _T_31 = _T_16_in1[31:29];
  assign _T_32 = ~ _T_31;
  assign _T_34 = _T_32 == 3'h0;
  assign _T_35 = _T_16_in2[31:29];
  assign _T_36 = ~ _T_35;
  assign _T_38 = _T_36 == 3'h0;
  assign _T_43 = _T_16_in1[22];
  assign _T_45 = _T_43 == 1'h0;
  assign _T_46 = _T_34 & _T_45;
  assign _T_51 = _T_16_in2[22];
  assign _T_53 = _T_51 == 1'h0;
  assign _T_54 = _T_38 & _T_53;
  assign _T_55 = _T_46 | _T_54;
  assign _T_56 = _T_34 & _T_38;
  assign _T_58 = _T_24 != io_lt;
  assign _T_60 = _T_34 == 1'h0;
  assign _T_61 = _T_58 & _T_60;
  assign _T_62 = _T_38 | _T_61;
  assign _GEN_26 = {{4'd0}, _T_55};
  assign _T_63 = _GEN_26 << 4;
  assign _T_65 = _T_62 ? _T_16_in1 : _T_16_in2;
  assign _T_66 = _T_56 ? 33'he0400000 : _T_65;
  assign _GEN_22 = _T_16_wflags ? _T_63 : 5'h0;
  assign _GEN_23 = _T_16_wflags ? _T_66 : fsgnj;
  assign _GEN_24 = _T_14 ? _GEN_23 : _T_77_data;
  assign _GEN_25 = _T_14 ? _GEN_22 : _T_77_exc;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  _T_14 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  _T_16_wflags = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  _T_16_rm = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{$random}};
  _T_16_in1 = _RAND_3[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{$random}};
  _T_16_in2 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{$random}};
  _T_77_data = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_77_exc = _RAND_6[4:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_14 <= 1'h0;
    end else begin
      _T_14 <= io_in_valid;
    end
    if (io_in_valid) begin
      _T_16_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      _T_16_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      _T_16_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      _T_16_in2 <= io_in_bits_in2;
    end
    if (_T_14) begin
      if (_T_16_wflags) begin
        if (_T_56) begin
          _T_77_data <= 33'he0400000;
        end else begin
          if (_T_62) begin
            _T_77_data <= _T_16_in1;
          end else begin
            _T_77_data <= _T_16_in2;
          end
        end
      end else begin
        _T_77_data <= fsgnj;
      end
    end
    if (_T_14) begin
      if (_T_16_wflags) begin
        _T_77_exc <= _T_63;
      end else begin
        _T_77_exc <= 5'h0;
      end
    end
  end
endmodule
