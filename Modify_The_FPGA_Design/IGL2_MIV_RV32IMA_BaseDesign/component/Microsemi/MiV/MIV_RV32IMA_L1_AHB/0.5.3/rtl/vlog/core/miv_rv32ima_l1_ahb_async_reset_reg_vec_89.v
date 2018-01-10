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
module ACT_UNIQUE_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_89(
  input        clock,
  input        reset,
  input  [2:0] io_d,
  output [2:0] io_q,
  input        io_en
);
  wire  reg_0_rst;
  wire  reg_0_clk;
  wire  reg_0_en;
  wire  reg_0_q;
  wire  reg_0_d;
  wire  reg_1_rst;
  wire  reg_1_clk;
  wire  reg_1_en;
  wire  reg_1_q;
  wire  reg_1_d;
  wire  reg_2_rst;
  wire  reg_2_clk;
  wire  reg_2_en;
  wire  reg_2_q;
  wire  reg_2_d;
  wire  _T_5;
  wire  _T_6;
  wire  _T_7;
  wire [1:0] _T_8;
  wire [2:0] _T_9;
  ACT_UNIQUE_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG reg_0 (
    .rst(reg_0_rst),
    .clk(reg_0_clk),
    .en(reg_0_en),
    .q(reg_0_q),
    .d(reg_0_d)
  );
  ACT_UNIQUE_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG reg_1 (
    .rst(reg_1_rst),
    .clk(reg_1_clk),
    .en(reg_1_en),
    .q(reg_1_q),
    .d(reg_1_d)
  );
  ACT_UNIQUE_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG reg_2 (
    .rst(reg_2_rst),
    .clk(reg_2_clk),
    .en(reg_2_en),
    .q(reg_2_q),
    .d(reg_2_d)
  );
  assign io_q = _T_9;
  assign reg_0_rst = reset;
  assign reg_0_clk = clock;
  assign reg_0_en = io_en;
  assign reg_0_d = _T_5;
  assign reg_1_rst = reset;
  assign reg_1_clk = clock;
  assign reg_1_en = io_en;
  assign reg_1_d = _T_6;
  assign reg_2_rst = reset;
  assign reg_2_clk = clock;
  assign reg_2_en = io_en;
  assign reg_2_d = _T_7;
  assign _T_5 = io_d[0];
  assign _T_6 = io_d[1];
  assign _T_7 = io_d[2];
  assign _T_8 = {reg_2_q,reg_1_q};
  assign _T_9 = {_T_8,reg_0_q};
endmodule
