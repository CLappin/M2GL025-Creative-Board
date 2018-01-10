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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_MUL_ADD_REC_FN(
  input  [1:0]  io_op,
  input  [32:0] io_a,
  input  [32:0] io_b,
  input  [32:0] io_c,
  input  [2:0]  io_roundingMode,
  input         io_detectTininess,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire [1:0] mulAddRecFNToRaw_preMul_io_op;
  wire [32:0] mulAddRecFNToRaw_preMul_io_a;
  wire [32:0] mulAddRecFNToRaw_preMul_io_b;
  wire [32:0] mulAddRecFNToRaw_preMul_io_c;
  wire [23:0] mulAddRecFNToRaw_preMul_io_mulAddA;
  wire [23:0] mulAddRecFNToRaw_preMul_io_mulAddB;
  wire [47:0] mulAddRecFNToRaw_preMul_io_mulAddC;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfA;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfB;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_signProd;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfC;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC;
  wire [9:0] mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant;
  wire [4:0] mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist;
  wire [25:0] mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_signProd;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC;
  wire [9:0] mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant;
  wire [4:0] mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist;
  wire [25:0] mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC;
  wire [48:0] mulAddRecFNToRaw_postMul_io_mulAddResult;
  wire [2:0] mulAddRecFNToRaw_postMul_io_roundingMode;
  wire  mulAddRecFNToRaw_postMul_io_invalidExc;
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isNaN;
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isInf;
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isZero;
  wire  mulAddRecFNToRaw_postMul_io_rawOut_sign;
  wire [9:0] mulAddRecFNToRaw_postMul_io_rawOut_sExp;
  wire [26:0] mulAddRecFNToRaw_postMul_io_rawOut_sig;
  wire [47:0] _T_10;
  wire [48:0] mulAddResult;
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
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_MUL_ADD_REC_FN_TO_RAW_PRE_MUL mulAddRecFNToRaw_preMul (
    .io_op(mulAddRecFNToRaw_preMul_io_op),
    .io_a(mulAddRecFNToRaw_preMul_io_a),
    .io_b(mulAddRecFNToRaw_preMul_io_b),
    .io_c(mulAddRecFNToRaw_preMul_io_c),
    .io_mulAddA(mulAddRecFNToRaw_preMul_io_mulAddA),
    .io_mulAddB(mulAddRecFNToRaw_preMul_io_mulAddB),
    .io_mulAddC(mulAddRecFNToRaw_preMul_io_mulAddC),
    .io_toPostMul_isSigNaNAny(mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny),
    .io_toPostMul_isNaNAOrB(mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB),
    .io_toPostMul_isInfA(mulAddRecFNToRaw_preMul_io_toPostMul_isInfA),
    .io_toPostMul_isZeroA(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA),
    .io_toPostMul_isInfB(mulAddRecFNToRaw_preMul_io_toPostMul_isInfB),
    .io_toPostMul_isZeroB(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB),
    .io_toPostMul_signProd(mulAddRecFNToRaw_preMul_io_toPostMul_signProd),
    .io_toPostMul_isNaNC(mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC),
    .io_toPostMul_isInfC(mulAddRecFNToRaw_preMul_io_toPostMul_isInfC),
    .io_toPostMul_isZeroC(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC),
    .io_toPostMul_sExpSum(mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum),
    .io_toPostMul_doSubMags(mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags),
    .io_toPostMul_CIsDominant(mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant),
    .io_toPostMul_CDom_CAlignDist(mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist),
    .io_toPostMul_highAlignedSigC(mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC),
    .io_toPostMul_bit0AlignedSigC(mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_MUL_ADD_REC_FN_TO_RAW_POST_MUL mulAddRecFNToRaw_postMul (
    .io_fromPreMul_isSigNaNAny(mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny),
    .io_fromPreMul_isNaNAOrB(mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB),
    .io_fromPreMul_isInfA(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA),
    .io_fromPreMul_isZeroA(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA),
    .io_fromPreMul_isInfB(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB),
    .io_fromPreMul_isZeroB(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB),
    .io_fromPreMul_signProd(mulAddRecFNToRaw_postMul_io_fromPreMul_signProd),
    .io_fromPreMul_isNaNC(mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC),
    .io_fromPreMul_isInfC(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC),
    .io_fromPreMul_isZeroC(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC),
    .io_fromPreMul_sExpSum(mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum),
    .io_fromPreMul_doSubMags(mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags),
    .io_fromPreMul_CIsDominant(mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant),
    .io_fromPreMul_CDom_CAlignDist(mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist),
    .io_fromPreMul_highAlignedSigC(mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC),
    .io_fromPreMul_bit0AlignedSigC(mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC),
    .io_mulAddResult(mulAddRecFNToRaw_postMul_io_mulAddResult),
    .io_roundingMode(mulAddRecFNToRaw_postMul_io_roundingMode),
    .io_invalidExc(mulAddRecFNToRaw_postMul_io_invalidExc),
    .io_rawOut_isNaN(mulAddRecFNToRaw_postMul_io_rawOut_isNaN),
    .io_rawOut_isInf(mulAddRecFNToRaw_postMul_io_rawOut_isInf),
    .io_rawOut_isZero(mulAddRecFNToRaw_postMul_io_rawOut_isZero),
    .io_rawOut_sign(mulAddRecFNToRaw_postMul_io_rawOut_sign),
    .io_rawOut_sExp(mulAddRecFNToRaw_postMul_io_rawOut_sExp),
    .io_rawOut_sig(mulAddRecFNToRaw_postMul_io_rawOut_sig)
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
  assign io_out = roundRawFNToRecFN_io_out;
  assign io_exceptionFlags = roundRawFNToRecFN_io_exceptionFlags;
  assign mulAddRecFNToRaw_preMul_io_op = io_op;
  assign mulAddRecFNToRaw_preMul_io_a = io_a;
  assign mulAddRecFNToRaw_preMul_io_b = io_b;
  assign mulAddRecFNToRaw_preMul_io_c = io_c;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny = mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB = mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA = mulAddRecFNToRaw_preMul_io_toPostMul_isInfA;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA = mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB = mulAddRecFNToRaw_preMul_io_toPostMul_isInfB;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB = mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_signProd = mulAddRecFNToRaw_preMul_io_toPostMul_signProd;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC = mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC = mulAddRecFNToRaw_preMul_io_toPostMul_isInfC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC = mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum = mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags = mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant = mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist = mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC = mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC = mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC;
  assign mulAddRecFNToRaw_postMul_io_mulAddResult = mulAddResult;
  assign mulAddRecFNToRaw_postMul_io_roundingMode = io_roundingMode;
  assign _T_10 = mulAddRecFNToRaw_preMul_io_mulAddA * mulAddRecFNToRaw_preMul_io_mulAddB;
  assign mulAddResult = _T_10 + mulAddRecFNToRaw_preMul_io_mulAddC;
  assign roundRawFNToRecFN_io_invalidExc = mulAddRecFNToRaw_postMul_io_invalidExc;
  assign roundRawFNToRecFN_io_infiniteExc = 1'h0;
  assign roundRawFNToRecFN_io_in_isNaN = mulAddRecFNToRaw_postMul_io_rawOut_isNaN;
  assign roundRawFNToRecFN_io_in_isInf = mulAddRecFNToRaw_postMul_io_rawOut_isInf;
  assign roundRawFNToRecFN_io_in_isZero = mulAddRecFNToRaw_postMul_io_rawOut_isZero;
  assign roundRawFNToRecFN_io_in_sign = mulAddRecFNToRaw_postMul_io_rawOut_sign;
  assign roundRawFNToRecFN_io_in_sExp = mulAddRecFNToRaw_postMul_io_rawOut_sExp;
  assign roundRawFNToRecFN_io_in_sig = mulAddRecFNToRaw_postMul_io_rawOut_sig;
  assign roundRawFNToRecFN_io_roundingMode = io_roundingMode;
  assign roundRawFNToRecFN_io_detectTininess = io_detectTininess;
endmodule
