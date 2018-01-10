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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ROUND_RAW_FN_TO_REC_FN(
  input         io_invalidExc,
  input         io_infiniteExc,
  input         io_in_isNaN,
  input         io_in_isInf,
  input         io_in_isZero,
  input         io_in_sign,
  input  [9:0]  io_in_sExp,
  input  [26:0] io_in_sig,
  input  [2:0]  io_roundingMode,
  input         io_detectTininess,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundAnyRawFNToRecFN_io_invalidExc;
  wire  roundAnyRawFNToRecFN_io_infiniteExc;
  wire  roundAnyRawFNToRecFN_io_in_isNaN;
  wire  roundAnyRawFNToRecFN_io_in_isInf;
  wire  roundAnyRawFNToRecFN_io_in_isZero;
  wire  roundAnyRawFNToRecFN_io_in_sign;
  wire [9:0] roundAnyRawFNToRecFN_io_in_sExp;
  wire [26:0] roundAnyRawFNToRecFN_io_in_sig;
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode;
  wire  roundAnyRawFNToRecFN_io_detectTininess;
  wire [32:0] roundAnyRawFNToRecFN_io_out;
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags;
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ROUND_ANY_RAW_FN_TO_REC_FN roundAnyRawFNToRecFN (
    .io_invalidExc(roundAnyRawFNToRecFN_io_invalidExc),
    .io_infiniteExc(roundAnyRawFNToRecFN_io_infiniteExc),
    .io_in_isNaN(roundAnyRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundAnyRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_detectTininess(roundAnyRawFNToRecFN_io_detectTininess),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign io_out = roundAnyRawFNToRecFN_io_out;
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags;
  assign roundAnyRawFNToRecFN_io_invalidExc = io_invalidExc;
  assign roundAnyRawFNToRecFN_io_infiniteExc = io_infiniteExc;
  assign roundAnyRawFNToRecFN_io_in_isNaN = io_in_isNaN;
  assign roundAnyRawFNToRecFN_io_in_isInf = io_in_isInf;
  assign roundAnyRawFNToRecFN_io_in_isZero = io_in_isZero;
  assign roundAnyRawFNToRecFN_io_in_sign = io_in_sign;
  assign roundAnyRawFNToRecFN_io_in_sExp = io_in_sExp;
  assign roundAnyRawFNToRecFN_io_in_sig = io_in_sig;
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode;
  assign roundAnyRawFNToRecFN_io_detectTininess = io_detectTininess;
endmodule
