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
module ACT_UNIQUE_MIV_RV32IMA_L1_AHB_QUEUE_8(
  input   clock,
  input   reset,
  output  io_enq_ready,
  input   io_enq_valid,
  input   io_deq_ready,
  output  io_deq_valid
);
  reg  maybe_full;
  reg [31:0] _RAND_0;
  wire  _T_18;
  wire  _T_21;
  wire  _T_23;
  wire  _T_29;
  wire  _GEN_4;
  wire  _T_31;
  wire  _GEN_5;
  wire  _GEN_6;
  wire  _GEN_8;
  wire  _GEN_9;
  assign io_enq_ready = _T_18;
  assign io_deq_valid = _GEN_5;
  assign _T_18 = maybe_full == 1'h0;
  assign _T_21 = io_enq_ready & io_enq_valid;
  assign _T_23 = io_deq_ready & io_deq_valid;
  assign _T_29 = _GEN_9 != _GEN_8;
  assign _GEN_4 = _T_29 ? _GEN_9 : maybe_full;
  assign _T_31 = _T_18 == 1'h0;
  assign _GEN_5 = io_enq_valid ? 1'h1 : _T_31;
  assign _GEN_6 = io_deq_ready ? 1'h0 : _T_21;
  assign _GEN_8 = _T_18 ? 1'h0 : _T_23;
  assign _GEN_9 = _T_18 ? _GEN_6 : _T_21;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{$random}};
  maybe_full = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      maybe_full <= 1'h0;
    end else begin
      if (_T_29) begin
        if (_T_18) begin
          if (io_deq_ready) begin
            maybe_full <= 1'h0;
          end else begin
            maybe_full <= _T_21;
          end
        end else begin
          maybe_full <= _T_21;
        end
      end
    end
  end
endmodule
