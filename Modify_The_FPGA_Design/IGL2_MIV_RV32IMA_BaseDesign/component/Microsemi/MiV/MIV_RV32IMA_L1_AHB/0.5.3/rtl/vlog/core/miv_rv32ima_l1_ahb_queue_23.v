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
//`include "miv_rv32ima_l1_ahb_defines.v"
`define RANDOMIZE
`timescale 1ns/10ps
module ACT_UNIQUE_MIV_RV32IMA_L1_AHB_QUEUE_23(
  input        clock,
  input        reset,
  output       io_enq_ready,
  input        io_enq_valid,
  input  [2:0] io_enq_bits_opcode,
  input  [3:0] io_enq_bits_size,
  input  [1:0] io_enq_bits_source,
  input        io_deq_ready,
  output       io_deq_valid,
  output [2:0] io_deq_bits_opcode,
  output [3:0] io_deq_bits_size,
  output [1:0] io_deq_bits_source
);
  `ifdef USE_REGISTERS
    reg [2:0] ram_opcode [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [2:0] ram_opcode [0:0];
  `endif
  reg [31:0] _RAND_0;
  wire [2:0] ram_opcode__T_35_data;
  wire  ram_opcode__T_35_addr;
  wire [2:0] ram_opcode__T_26_data;
  wire  ram_opcode__T_26_addr;
  wire  ram_opcode__T_26_mask;
  wire  ram_opcode__T_26_en;
  `ifdef USE_REGISTERS
    reg [3:0] ram_size [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [3:0] ram_size [0:0];
  `endif
  reg [31:0] _RAND_1;
  wire [3:0] ram_size__T_35_data;
  wire  ram_size__T_35_addr;
  wire [3:0] ram_size__T_26_data;
  wire  ram_size__T_26_addr;
  wire  ram_size__T_26_mask;
  wire  ram_size__T_26_en;
  `ifdef USE_REGISTERS
    reg [1:0] ram_source [0:0] /* synthesis syn_ramstyle = "registers" */;
  `else
    reg [1:0] ram_source [0:0];
  `endif
  reg [31:0] _RAND_2;
  wire [1:0] ram_source__T_35_data;
  wire  ram_source__T_35_addr;
  wire [1:0] ram_source__T_26_data;
  wire  ram_source__T_26_addr;
  wire  ram_source__T_26_mask;
  wire  ram_source__T_26_en;
  reg  maybe_full;
  reg [31:0] _RAND_3;
  wire  _T_18;
  wire  _T_21;
  wire  _T_23;
  wire  _T_29;
  wire  _GEN_10;
  wire  _T_31;
  wire  _GEN_11;
  assign io_enq_ready = _GEN_11;
  assign io_deq_valid = _T_31;
  assign io_deq_bits_opcode = ram_opcode__T_35_data;
  assign io_deq_bits_size = ram_size__T_35_data;
  assign io_deq_bits_source = ram_source__T_35_data;
  assign ram_opcode__T_35_addr = 1'h0;
  assign ram_opcode__T_35_data = ram_opcode[ram_opcode__T_35_addr];
  assign ram_opcode__T_26_data = io_enq_bits_opcode;
  assign ram_opcode__T_26_addr = 1'h0;
  assign ram_opcode__T_26_mask = _T_21;
  assign ram_opcode__T_26_en = _T_21;
  assign ram_size__T_35_addr = 1'h0;
  assign ram_size__T_35_data = ram_size[ram_size__T_35_addr];
  assign ram_size__T_26_data = io_enq_bits_size;
  assign ram_size__T_26_addr = 1'h0;
  assign ram_size__T_26_mask = _T_21;
  assign ram_size__T_26_en = _T_21;
  assign ram_source__T_35_addr = 1'h0;
  assign ram_source__T_35_data = ram_source[ram_source__T_35_addr];
  assign ram_source__T_26_data = io_enq_bits_source;
  assign ram_source__T_26_addr = 1'h0;
  assign ram_source__T_26_mask = _T_21;
  assign ram_source__T_26_en = _T_21;
  assign _T_18 = maybe_full == 1'h0;
  assign _T_21 = io_enq_ready & io_enq_valid;
  assign _T_23 = io_deq_ready & io_deq_valid;
  assign _T_29 = _T_21 != _T_23;
  assign _GEN_10 = _T_29 ? _T_21 : maybe_full;
  assign _T_31 = _T_18 == 1'h0;
  assign _GEN_11 = io_deq_ready ? 1'h1 : _T_18;
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifndef verilator
      #0.002 begin end
    `endif
  _RAND_0 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_opcode[initvar] = _RAND_0[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_size[initvar] = _RAND_1[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{$random}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 1; initvar = initvar+1)
    ram_source[initvar] = _RAND_2[1:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{$random}};
  maybe_full = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(ram_opcode__T_26_en & ram_opcode__T_26_mask) begin
      ram_opcode[ram_opcode__T_26_addr] <= ram_opcode__T_26_data;
    end
    if(ram_size__T_26_en & ram_size__T_26_mask) begin
      ram_size[ram_size__T_26_addr] <= ram_size__T_26_data;
    end
    if(ram_source__T_26_en & ram_source__T_26_mask) begin
      ram_source[ram_source__T_26_addr] <= ram_source__T_26_data;
    end
    if (reset) begin
      maybe_full <= 1'h0;
    end else begin
      if (_T_29) begin
        maybe_full <= _T_21;
      end
    end
  end
endmodule
