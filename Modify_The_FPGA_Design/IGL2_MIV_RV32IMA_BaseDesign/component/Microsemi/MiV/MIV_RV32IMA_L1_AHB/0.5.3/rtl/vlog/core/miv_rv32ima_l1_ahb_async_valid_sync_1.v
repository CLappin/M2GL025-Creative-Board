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
module ACT_UNIQUE_MIV_RV32IMA_L1_AHB_ASYNC_VALID_SYNC_1(
  input   clock,
  input   reset,
  input   io_in,
  output  io_out
);
  wire  sink_extend_sync_0_clock;
  wire  sink_extend_sync_0_reset;
  wire  sink_extend_sync_0_io_d;
  wire  sink_extend_sync_0_io_q;
  wire  sink_extend_sync_0_io_en;
  wire  _T_5;
  ACT_UNIQUE_MIV_RV32IMA_L1_AHB_ASYNC_RESET_REG_VEC_1 sink_extend_sync_0 (
    .clock(sink_extend_sync_0_clock),
    .reset(sink_extend_sync_0_reset),
    .io_d(sink_extend_sync_0_io_d),
    .io_q(sink_extend_sync_0_io_q),
    .io_en(sink_extend_sync_0_io_en)
  );
  assign io_out = _T_5;
  assign sink_extend_sync_0_clock = clock;
  assign sink_extend_sync_0_reset = reset;
  assign sink_extend_sync_0_io_d = io_in;
  assign sink_extend_sync_0_io_en = 1'h1;
  assign _T_5 = sink_extend_sync_0_io_q;
endmodule
