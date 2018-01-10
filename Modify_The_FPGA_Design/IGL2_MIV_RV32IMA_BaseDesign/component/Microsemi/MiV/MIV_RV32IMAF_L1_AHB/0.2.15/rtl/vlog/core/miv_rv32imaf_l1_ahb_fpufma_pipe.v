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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_FPUFMA_PIPE(
  input         clock,
  input         reset,
  input         io_in_valid,
  input         io_in_bits_ren3,
  input         io_in_bits_swap23,
  input  [2:0]  io_in_bits_rm,
  input  [1:0]  io_in_bits_fmaCmd,
  input  [32:0] io_in_bits_in1,
  input  [32:0] io_in_bits_in2,
  input  [32:0] io_in_bits_in3,
  output [32:0] io_out_bits_data,
  output [4:0]  io_out_bits_exc
);
  reg  valid;
  reg [31:0] _RAND_0;
  reg [2:0] in_rm;
  reg [31:0] _RAND_1;
  reg [1:0] in_fmaCmd;
  reg [31:0] _RAND_2;
  reg [32:0] in_in1;
  reg [63:0] _RAND_3;
  reg [32:0] in_in2;
  reg [63:0] _RAND_4;
  reg [32:0] in_in3;
  reg [63:0] _RAND_5;
  wire [32:0] _T_15;
  wire [32:0] _T_18;
  wire [32:0] _GEN_0;
  wire  _T_19;
  wire  _T_21;
  wire [32:0] _GEN_1;
  wire [2:0] _GEN_18;
  wire [1:0] _GEN_19;
  wire [32:0] _GEN_21;
  wire [32:0] _GEN_22;
  wire [32:0] _GEN_23;
  wire [1:0] fma_io_op;
  wire [32:0] fma_io_a;
  wire [32:0] fma_io_b;
  wire [32:0] fma_io_c;
  wire [2:0] fma_io_roundingMode;
  wire  fma_io_detectTininess;
  wire [32:0] fma_io_out;
  wire [4:0] fma_io_exceptionFlags;
  wire [32:0] res_data;
  wire [4:0] res_exc;
  reg  _T_26;
  reg [31:0] _RAND_6;
  reg [32:0] _T_28_data;
  reg [63:0] _RAND_7;
  reg [4:0] _T_28_exc;
  reg [31:0] _RAND_8;
  wire [32:0] _GEN_24;
  wire [4:0] _GEN_25;
  reg [32:0] _T_33_data;
  reg [63:0] _RAND_9;
  reg [4:0] _T_33_exc;
  reg [31:0] _RAND_10;
  wire [32:0] _GEN_26;
  wire [4:0] _GEN_27;
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_MUL_ADD_REC_FN fma (
    .io_op(fma_io_op),
    .io_a(fma_io_a),
    .io_b(fma_io_b),
    .io_c(fma_io_c),
    .io_roundingMode(fma_io_roundingMode),
    .io_detectTininess(fma_io_detectTininess),
    .io_out(fma_io_out),
    .io_exceptionFlags(fma_io_exceptionFlags)
  );
  assign io_out_bits_data = _T_33_data;
  assign io_out_bits_exc = _T_33_exc;
  assign _T_15 = io_in_bits_in1 ^ io_in_bits_in2;
  assign _T_18 = _T_15 & 33'h100000000;
  assign _GEN_0 = io_in_bits_swap23 ? 33'h80000000 : io_in_bits_in2;
  assign _T_19 = io_in_bits_ren3 | io_in_bits_swap23;
  assign _T_21 = _T_19 == 1'h0;
  assign _GEN_1 = _T_21 ? _T_18 : io_in_bits_in3;
  assign _GEN_18 = io_in_valid ? io_in_bits_rm : in_rm;
  assign _GEN_19 = io_in_valid ? io_in_bits_fmaCmd : in_fmaCmd;
  assign _GEN_21 = io_in_valid ? io_in_bits_in1 : in_in1;
  assign _GEN_22 = io_in_valid ? _GEN_0 : in_in2;
  assign _GEN_23 = io_in_valid ? _GEN_1 : in_in3;
  assign fma_io_op = in_fmaCmd;
  assign fma_io_a = in_in1;
  assign fma_io_b = in_in2;
  assign fma_io_c = in_in3;
  assign fma_io_roundingMode = in_rm;
  assign fma_io_detectTininess = 1'h1;
  assign res_data = fma_io_out;
  assign res_exc = fma_io_exceptionFlags;
  assign _GEN_24 = valid ? res_data : _T_28_data;
  assign _GEN_25 = valid ? res_exc : _T_28_exc;
  assign _GEN_26 = _T_26 ? _T_28_data : _T_33_data;
  assign _GEN_27 = _T_26 ? _T_28_exc : _T_33_exc;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{$random}};
  in_rm = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{$random}};
  in_fmaCmd = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{$random}};
  in_in1 = _RAND_3[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{$random}};
  in_in2 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{$random}};
  in_in3 = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{$random}};
  _T_26 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {2{$random}};
  _T_28_data = _RAND_7[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{$random}};
  _T_28_exc = _RAND_8[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {2{$random}};
  _T_33_data = _RAND_9[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{$random}};
  _T_33_exc = _RAND_10[4:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    valid <= io_in_valid;
    if (io_in_valid) begin
      in_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      in_fmaCmd <= io_in_bits_fmaCmd;
    end
    if (io_in_valid) begin
      in_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      if (io_in_bits_swap23) begin
        in_in2 <= 33'h80000000;
      end else begin
        in_in2 <= io_in_bits_in2;
      end
    end
    if (io_in_valid) begin
      if (_T_21) begin
        in_in3 <= _T_18;
      end else begin
        in_in3 <= io_in_bits_in3;
      end
    end
    if (reset) begin
      _T_26 <= 1'h0;
    end else begin
      _T_26 <= valid;
    end
    if (valid) begin
      _T_28_data <= res_data;
    end
    if (valid) begin
      _T_28_exc <= res_exc;
    end
    if (_T_26) begin
      _T_33_data <= _T_28_data;
    end
    if (_T_26) begin
      _T_33_exc <= _T_28_exc;
    end
  end
endmodule
