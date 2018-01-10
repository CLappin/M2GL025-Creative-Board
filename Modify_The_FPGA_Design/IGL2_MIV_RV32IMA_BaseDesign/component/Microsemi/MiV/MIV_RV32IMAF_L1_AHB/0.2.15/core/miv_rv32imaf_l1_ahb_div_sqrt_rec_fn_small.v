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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_DIV_SQRT_REC_FN_SMALL(
  input         clock,
  input         reset,
  output        io_inReady,
  input         io_inValid,
  input         io_sqrtOp,
  input  [32:0] io_a,
  input  [32:0] io_b,
  input  [2:0]  io_roundingMode,
  input         io_detectTininess,
  output        io_outValid_div,
  output        io_outValid_sqrt,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  divSqrtRecFNToRaw_clock;
  wire  divSqrtRecFNToRaw_reset;
  wire  divSqrtRecFNToRaw_io_inReady;
  wire  divSqrtRecFNToRaw_io_inValid;
  wire  divSqrtRecFNToRaw_io_sqrtOp;
  wire [32:0] divSqrtRecFNToRaw_io_a;
  wire [32:0] divSqrtRecFNToRaw_io_b;
  wire [2:0] divSqrtRecFNToRaw_io_roundingMode;
  wire  divSqrtRecFNToRaw_io_rawOutValid_div;
  wire  divSqrtRecFNToRaw_io_rawOutValid_sqrt;
  wire [2:0] divSqrtRecFNToRaw_io_roundingModeOut;
  wire  divSqrtRecFNToRaw_io_invalidExc;
  wire  divSqrtRecFNToRaw_io_infiniteExc;
  wire  divSqrtRecFNToRaw_io_rawOut_isNaN;
  wire  divSqrtRecFNToRaw_io_rawOut_isInf;
  wire  divSqrtRecFNToRaw_io_rawOut_isZero;
  wire  divSqrtRecFNToRaw_io_rawOut_sign;
  wire [9:0] divSqrtRecFNToRaw_io_rawOut_sExp;
  wire [26:0] divSqrtRecFNToRaw_io_rawOut_sig;
  wire  roundRawFNToRecFN_io_invalidExc;
  wire  roundRawFNToRecFN_io_infiniteExc;
  wire  roundRawFNToRecFN_io_in_isNaN;
  wire  roundRawFNToRecFN_io_in_isInf;
  wire  roundRawFNToRecFN_io_in_isZero;
  wire  roundRawFNToRecFN_io_in_sign;
  wire [9:0] roundRawFNToRecFN_io_in_sExp;
  wire [26:0] roundRawFNToRecFN_io_in_sig;
  wire [2:0] roundRawFNToRecFN_io_roundingMode;
  wire  roundRawFNToRecFN_io_detectTininess;
  wire [32:0] roundRawFNToRecFN_io_out;
  wire [4:0] roundRawFNToRecFN_io_exceptionFlags;
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_DIV_SQRT_REC_FN_TO_RAW_SMALL divSqrtRecFNToRaw (
    .clock(divSqrtRecFNToRaw_clock),
    .reset(divSqrtRecFNToRaw_reset),
    .io_inReady(divSqrtRecFNToRaw_io_inReady),
    .io_inValid(divSqrtRecFNToRaw_io_inValid),
    .io_sqrtOp(divSqrtRecFNToRaw_io_sqrtOp),
    .io_a(divSqrtRecFNToRaw_io_a),
    .io_b(divSqrtRecFNToRaw_io_b),
    .io_roundingMode(divSqrtRecFNToRaw_io_roundingMode),
    .io_rawOutValid_div(divSqrtRecFNToRaw_io_rawOutValid_div),
    .io_rawOutValid_sqrt(divSqrtRecFNToRaw_io_rawOutValid_sqrt),
    .io_roundingModeOut(divSqrtRecFNToRaw_io_roundingModeOut),
    .io_invalidExc(divSqrtRecFNToRaw_io_invalidExc),
    .io_infiniteExc(divSqrtRecFNToRaw_io_infiniteExc),
    .io_rawOut_isNaN(divSqrtRecFNToRaw_io_rawOut_isNaN),
    .io_rawOut_isInf(divSqrtRecFNToRaw_io_rawOut_isInf),
    .io_rawOut_isZero(divSqrtRecFNToRaw_io_rawOut_isZero),
    .io_rawOut_sign(divSqrtRecFNToRaw_io_rawOut_sign),
    .io_rawOut_sExp(divSqrtRecFNToRaw_io_rawOut_sExp),
    .io_rawOut_sig(divSqrtRecFNToRaw_io_rawOut_sig)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ROUND_RAW_FN_TO_REC_FN roundRawFNToRecFN (
    .io_invalidExc(roundRawFNToRecFN_io_invalidExc),
    .io_infiniteExc(roundRawFNToRecFN_io_infiniteExc),
    .io_in_isNaN(roundRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundRawFNToRecFN_io_roundingMode),
    .io_detectTininess(roundRawFNToRecFN_io_detectTininess),
    .io_out(roundRawFNToRecFN_io_out),
    .io_exceptionFlags(roundRawFNToRecFN_io_exceptionFlags)
  );
  assign io_inReady = divSqrtRecFNToRaw_io_inReady;
  assign io_outValid_div = divSqrtRecFNToRaw_io_rawOutValid_div;
  assign io_outValid_sqrt = divSqrtRecFNToRaw_io_rawOutValid_sqrt;
  assign io_out = roundRawFNToRecFN_io_out;
  assign io_exceptionFlags = roundRawFNToRecFN_io_exceptionFlags;
  assign divSqrtRecFNToRaw_clock = clock;
  assign divSqrtRecFNToRaw_reset = reset;
  assign divSqrtRecFNToRaw_io_inValid = io_inValid;
  assign divSqrtRecFNToRaw_io_sqrtOp = io_sqrtOp;
  assign divSqrtRecFNToRaw_io_a = io_a;
  assign divSqrtRecFNToRaw_io_b = io_b;
  assign divSqrtRecFNToRaw_io_roundingMode = io_roundingMode;
  assign roundRawFNToRecFN_io_invalidExc = divSqrtRecFNToRaw_io_invalidExc;
  assign roundRawFNToRecFN_io_infiniteExc = divSqrtRecFNToRaw_io_infiniteExc;
  assign roundRawFNToRecFN_io_in_isNaN = divSqrtRecFNToRaw_io_rawOut_isNaN;
  assign roundRawFNToRecFN_io_in_isInf = divSqrtRecFNToRaw_io_rawOut_isInf;
  assign roundRawFNToRecFN_io_in_isZero = divSqrtRecFNToRaw_io_rawOut_isZero;
  assign roundRawFNToRecFN_io_in_sign = divSqrtRecFNToRaw_io_rawOut_sign;
  assign roundRawFNToRecFN_io_in_sExp = divSqrtRecFNToRaw_io_rawOut_sExp;
  assign roundRawFNToRecFN_io_in_sig = divSqrtRecFNToRaw_io_rawOut_sig;
  assign roundRawFNToRecFN_io_roundingMode = divSqrtRecFNToRaw_io_roundingModeOut;
  assign roundRawFNToRecFN_io_detectTininess = io_detectTininess;
endmodule
