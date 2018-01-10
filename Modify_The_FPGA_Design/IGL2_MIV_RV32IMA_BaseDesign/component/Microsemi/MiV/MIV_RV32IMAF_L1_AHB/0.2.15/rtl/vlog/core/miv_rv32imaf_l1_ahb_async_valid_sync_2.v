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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ASYNC_VALID_SYNC_2(
  input   clock,
  input   reset,
  input   io_in,
  output  io_out
);
  wire  sink_valid_sync_0_clock;
  wire  sink_valid_sync_0_reset;
  wire  sink_valid_sync_0_io_d;
  wire  sink_valid_sync_0_io_q;
  wire  sink_valid_sync_0_io_en;
  wire  sink_valid_sync_1_clock;
  wire  sink_valid_sync_1_reset;
  wire  sink_valid_sync_1_io_d;
  wire  sink_valid_sync_1_io_q;
  wire  sink_valid_sync_1_io_en;
  wire  sink_valid_sync_2_clock;
  wire  sink_valid_sync_2_reset;
  wire  sink_valid_sync_2_io_d;
  wire  sink_valid_sync_2_io_q;
  wire  sink_valid_sync_2_io_en;
  wire  _T_7;
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ASYNC_RESET_REG_VEC_1 sink_valid_sync_0 (
    .clock(sink_valid_sync_0_clock),
    .reset(sink_valid_sync_0_reset),
    .io_d(sink_valid_sync_0_io_d),
    .io_q(sink_valid_sync_0_io_q),
    .io_en(sink_valid_sync_0_io_en)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ASYNC_RESET_REG_VEC_1 sink_valid_sync_1 (
    .clock(sink_valid_sync_1_clock),
    .reset(sink_valid_sync_1_reset),
    .io_d(sink_valid_sync_1_io_d),
    .io_q(sink_valid_sync_1_io_q),
    .io_en(sink_valid_sync_1_io_en)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ASYNC_RESET_REG_VEC_1 sink_valid_sync_2 (
    .clock(sink_valid_sync_2_clock),
    .reset(sink_valid_sync_2_reset),
    .io_d(sink_valid_sync_2_io_d),
    .io_q(sink_valid_sync_2_io_q),
    .io_en(sink_valid_sync_2_io_en)
  );
  assign io_out = _T_7;
  assign sink_valid_sync_0_clock = clock;
  assign sink_valid_sync_0_reset = reset;
  assign sink_valid_sync_0_io_d = sink_valid_sync_1_io_q;
  assign sink_valid_sync_0_io_en = 1'h1;
  assign sink_valid_sync_1_clock = clock;
  assign sink_valid_sync_1_reset = reset;
  assign sink_valid_sync_1_io_d = sink_valid_sync_2_io_q;
  assign sink_valid_sync_1_io_en = 1'h1;
  assign sink_valid_sync_2_clock = clock;
  assign sink_valid_sync_2_reset = reset;
  assign sink_valid_sync_2_io_d = io_in;
  assign sink_valid_sync_2_io_en = 1'h1;
  assign _T_7 = sink_valid_sync_0_io_q;
endmodule