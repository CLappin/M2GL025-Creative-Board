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
module ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ROCKET_TILE_ROCKET(
  input         clock,
  input         reset,
  input         io_master_0_a_ready,
  output        io_master_0_a_valid,
  output [2:0]  io_master_0_a_bits_opcode,
  output [2:0]  io_master_0_a_bits_param,
  output [3:0]  io_master_0_a_bits_size,
  output [1:0]  io_master_0_a_bits_source,
  output [31:0] io_master_0_a_bits_address,
  output [3:0]  io_master_0_a_bits_mask,
  output [31:0] io_master_0_a_bits_data,
  output        io_master_0_b_ready,
  input         io_master_0_b_valid,
  input  [1:0]  io_master_0_b_bits_param,
  input  [3:0]  io_master_0_b_bits_size,
  input  [1:0]  io_master_0_b_bits_source,
  input  [31:0] io_master_0_b_bits_address,
  input         io_master_0_c_ready,
  output        io_master_0_c_valid,
  output [2:0]  io_master_0_c_bits_opcode,
  output [2:0]  io_master_0_c_bits_param,
  output [3:0]  io_master_0_c_bits_size,
  output [1:0]  io_master_0_c_bits_source,
  output [31:0] io_master_0_c_bits_address,
  output [31:0] io_master_0_c_bits_data,
  output        io_master_0_d_ready,
  input         io_master_0_d_valid,
  input  [2:0]  io_master_0_d_bits_opcode,
  input  [1:0]  io_master_0_d_bits_param,
  input  [3:0]  io_master_0_d_bits_size,
  input  [1:0]  io_master_0_d_bits_source,
  input  [1:0]  io_master_0_d_bits_sink,
  input  [31:0] io_master_0_d_bits_data,
  input         io_master_0_d_bits_error,
  input         io_master_0_e_ready,
  output        io_master_0_e_valid,
  output [1:0]  io_master_0_e_bits_sink,
  input         io_hartid,
  input  [31:0] io_resetVector,
  input         io_interrupts_0_0,
  input         io_interrupts_0_1,
  input         io_interrupts_0_2,
  input         io_interrupts_0_3
);
  wire  tileBus_clock;
  wire  tileBus_reset;
  wire  tileBus_io_in_1_a_ready;
  wire  tileBus_io_in_1_a_valid;
  wire [2:0] tileBus_io_in_1_a_bits_opcode;
  wire [2:0] tileBus_io_in_1_a_bits_param;
  wire [3:0] tileBus_io_in_1_a_bits_size;
  wire  tileBus_io_in_1_a_bits_source;
  wire [31:0] tileBus_io_in_1_a_bits_address;
  wire [3:0] tileBus_io_in_1_a_bits_mask;
  wire [31:0] tileBus_io_in_1_a_bits_data;
  wire  tileBus_io_in_1_d_ready;
  wire  tileBus_io_in_1_d_valid;
  wire [2:0] tileBus_io_in_1_d_bits_opcode;
  wire [3:0] tileBus_io_in_1_d_bits_size;
  wire [31:0] tileBus_io_in_1_d_bits_data;
  wire  tileBus_io_in_1_d_bits_error;
  wire  tileBus_io_in_0_a_ready;
  wire  tileBus_io_in_0_a_valid;
  wire [2:0] tileBus_io_in_0_a_bits_opcode;
  wire [2:0] tileBus_io_in_0_a_bits_param;
  wire [3:0] tileBus_io_in_0_a_bits_size;
  wire  tileBus_io_in_0_a_bits_source;
  wire [31:0] tileBus_io_in_0_a_bits_address;
  wire [3:0] tileBus_io_in_0_a_bits_mask;
  wire [31:0] tileBus_io_in_0_a_bits_data;
  wire  tileBus_io_in_0_b_ready;
  wire  tileBus_io_in_0_b_valid;
  wire [1:0] tileBus_io_in_0_b_bits_param;
  wire [3:0] tileBus_io_in_0_b_bits_size;
  wire  tileBus_io_in_0_b_bits_source;
  wire [31:0] tileBus_io_in_0_b_bits_address;
  wire  tileBus_io_in_0_c_ready;
  wire  tileBus_io_in_0_c_valid;
  wire [2:0] tileBus_io_in_0_c_bits_opcode;
  wire [2:0] tileBus_io_in_0_c_bits_param;
  wire [3:0] tileBus_io_in_0_c_bits_size;
  wire  tileBus_io_in_0_c_bits_source;
  wire [31:0] tileBus_io_in_0_c_bits_address;
  wire [31:0] tileBus_io_in_0_c_bits_data;
  wire  tileBus_io_in_0_d_ready;
  wire  tileBus_io_in_0_d_valid;
  wire [2:0] tileBus_io_in_0_d_bits_opcode;
  wire [1:0] tileBus_io_in_0_d_bits_param;
  wire [3:0] tileBus_io_in_0_d_bits_size;
  wire  tileBus_io_in_0_d_bits_source;
  wire [1:0] tileBus_io_in_0_d_bits_sink;
  wire [31:0] tileBus_io_in_0_d_bits_data;
  wire  tileBus_io_in_0_e_ready;
  wire  tileBus_io_in_0_e_valid;
  wire [1:0] tileBus_io_in_0_e_bits_sink;
  wire  tileBus_io_out_0_a_ready;
  wire  tileBus_io_out_0_a_valid;
  wire [2:0] tileBus_io_out_0_a_bits_opcode;
  wire [2:0] tileBus_io_out_0_a_bits_param;
  wire [3:0] tileBus_io_out_0_a_bits_size;
  wire [1:0] tileBus_io_out_0_a_bits_source;
  wire [31:0] tileBus_io_out_0_a_bits_address;
  wire [3:0] tileBus_io_out_0_a_bits_mask;
  wire [31:0] tileBus_io_out_0_a_bits_data;
  wire  tileBus_io_out_0_b_ready;
  wire  tileBus_io_out_0_b_valid;
  wire [1:0] tileBus_io_out_0_b_bits_param;
  wire [3:0] tileBus_io_out_0_b_bits_size;
  wire [1:0] tileBus_io_out_0_b_bits_source;
  wire [31:0] tileBus_io_out_0_b_bits_address;
  wire  tileBus_io_out_0_c_ready;
  wire  tileBus_io_out_0_c_valid;
  wire [2:0] tileBus_io_out_0_c_bits_opcode;
  wire [2:0] tileBus_io_out_0_c_bits_param;
  wire [3:0] tileBus_io_out_0_c_bits_size;
  wire [1:0] tileBus_io_out_0_c_bits_source;
  wire [31:0] tileBus_io_out_0_c_bits_address;
  wire [31:0] tileBus_io_out_0_c_bits_data;
  wire  tileBus_io_out_0_d_ready;
  wire  tileBus_io_out_0_d_valid;
  wire [2:0] tileBus_io_out_0_d_bits_opcode;
  wire [1:0] tileBus_io_out_0_d_bits_param;
  wire [3:0] tileBus_io_out_0_d_bits_size;
  wire [1:0] tileBus_io_out_0_d_bits_source;
  wire [1:0] tileBus_io_out_0_d_bits_sink;
  wire [31:0] tileBus_io_out_0_d_bits_data;
  wire  tileBus_io_out_0_d_bits_error;
  wire  tileBus_io_out_0_e_ready;
  wire  tileBus_io_out_0_e_valid;
  wire [1:0] tileBus_io_out_0_e_bits_sink;
  wire  dcache_clock;
  wire  dcache_reset;
  wire  dcache_io_cpu_req_ready;
  wire  dcache_io_cpu_req_valid;
  wire [31:0] dcache_io_cpu_req_bits_addr;
  wire [5:0] dcache_io_cpu_req_bits_tag;
  wire [4:0] dcache_io_cpu_req_bits_cmd;
  wire [2:0] dcache_io_cpu_req_bits_typ;
  wire  dcache_io_cpu_req_bits_phys;
  wire  dcache_io_cpu_s1_kill;
  wire [31:0] dcache_io_cpu_s1_data_data;
  wire [3:0] dcache_io_cpu_s1_data_mask;
  wire  dcache_io_cpu_s2_nack;
  wire  dcache_io_cpu_resp_valid;
  wire [5:0] dcache_io_cpu_resp_bits_tag;
  wire [31:0] dcache_io_cpu_resp_bits_data;
  wire  dcache_io_cpu_resp_bits_replay;
  wire  dcache_io_cpu_resp_bits_has_data;
  wire [31:0] dcache_io_cpu_resp_bits_data_word_bypass;
  wire  dcache_io_cpu_replay_next;
  wire  dcache_io_cpu_s2_xcpt_ma_ld;
  wire  dcache_io_cpu_s2_xcpt_ma_st;
  wire  dcache_io_cpu_s2_xcpt_pf_ld;
  wire  dcache_io_cpu_s2_xcpt_pf_st;
  wire  dcache_io_cpu_s2_xcpt_ae_ld;
  wire  dcache_io_cpu_s2_xcpt_ae_st;
  wire  dcache_io_cpu_invalidate_lr;
  wire  dcache_io_cpu_ordered;
  wire  dcache_io_ptw_req_valid;
  wire [19:0] dcache_io_ptw_req_bits_addr;
  wire  dcache_io_ptw_resp_valid;
  wire [1:0] dcache_io_ptw_status_dprv;
  wire  dcache_io_ptw_status_mxr;
  wire  dcache_io_ptw_status_sum;
  wire  dcache_io_mem_0_a_ready;
  wire  dcache_io_mem_0_a_valid;
  wire [2:0] dcache_io_mem_0_a_bits_opcode;
  wire [2:0] dcache_io_mem_0_a_bits_param;
  wire [3:0] dcache_io_mem_0_a_bits_size;
  wire  dcache_io_mem_0_a_bits_source;
  wire [31:0] dcache_io_mem_0_a_bits_address;
  wire [3:0] dcache_io_mem_0_a_bits_mask;
  wire [31:0] dcache_io_mem_0_a_bits_data;
  wire  dcache_io_mem_0_b_ready;
  wire  dcache_io_mem_0_b_valid;
  wire [1:0] dcache_io_mem_0_b_bits_param;
  wire [3:0] dcache_io_mem_0_b_bits_size;
  wire  dcache_io_mem_0_b_bits_source;
  wire [31:0] dcache_io_mem_0_b_bits_address;
  wire  dcache_io_mem_0_c_ready;
  wire  dcache_io_mem_0_c_valid;
  wire [2:0] dcache_io_mem_0_c_bits_opcode;
  wire [2:0] dcache_io_mem_0_c_bits_param;
  wire [3:0] dcache_io_mem_0_c_bits_size;
  wire  dcache_io_mem_0_c_bits_source;
  wire [31:0] dcache_io_mem_0_c_bits_address;
  wire [31:0] dcache_io_mem_0_c_bits_data;
  wire  dcache_io_mem_0_d_ready;
  wire  dcache_io_mem_0_d_valid;
  wire [2:0] dcache_io_mem_0_d_bits_opcode;
  wire [1:0] dcache_io_mem_0_d_bits_param;
  wire [3:0] dcache_io_mem_0_d_bits_size;
  wire  dcache_io_mem_0_d_bits_source;
  wire [1:0] dcache_io_mem_0_d_bits_sink;
  wire [31:0] dcache_io_mem_0_d_bits_data;
  wire  dcache_io_mem_0_e_ready;
  wire  dcache_io_mem_0_e_valid;
  wire [1:0] dcache_io_mem_0_e_bits_sink;
  wire  frontend_clock;
  wire  frontend_reset;
  wire  frontend_io_tl_out_0_a_ready;
  wire  frontend_io_tl_out_0_a_valid;
  wire [2:0] frontend_io_tl_out_0_a_bits_opcode;
  wire [2:0] frontend_io_tl_out_0_a_bits_param;
  wire [3:0] frontend_io_tl_out_0_a_bits_size;
  wire  frontend_io_tl_out_0_a_bits_source;
  wire [31:0] frontend_io_tl_out_0_a_bits_address;
  wire [3:0] frontend_io_tl_out_0_a_bits_mask;
  wire [31:0] frontend_io_tl_out_0_a_bits_data;
  wire  frontend_io_tl_out_0_d_ready;
  wire  frontend_io_tl_out_0_d_valid;
  wire [2:0] frontend_io_tl_out_0_d_bits_opcode;
  wire [3:0] frontend_io_tl_out_0_d_bits_size;
  wire [31:0] frontend_io_tl_out_0_d_bits_data;
  wire  frontend_io_tl_out_0_d_bits_error;
  wire  frontend_io_cpu_req_valid;
  wire [31:0] frontend_io_cpu_req_bits_pc;
  wire  frontend_io_cpu_req_bits_speculative;
  wire  frontend_io_cpu_resp_ready;
  wire  frontend_io_cpu_resp_valid;
  wire  frontend_io_cpu_resp_bits_btb_valid;
  wire  frontend_io_cpu_resp_bits_btb_bits_taken;
  wire  frontend_io_cpu_resp_bits_btb_bits_bridx;
  wire [31:0] frontend_io_cpu_resp_bits_pc;
  wire [31:0] frontend_io_cpu_resp_bits_data;
  wire  frontend_io_cpu_resp_bits_xcpt_pf_inst;
  wire  frontend_io_cpu_resp_bits_xcpt_ae_inst;
  wire  frontend_io_cpu_resp_bits_replay;
  wire  frontend_io_cpu_flush_icache;
  wire [31:0] frontend_io_cpu_npc;
  wire  frontend_io_ptw_req_valid;
  wire [19:0] frontend_io_ptw_req_bits_addr;
  wire [1:0] frontend_io_ptw_status_prv;
  wire [31:0] frontend_io_resetVector;
  wire  fpuOpt_clock;
  wire  fpuOpt_reset;
  wire [31:0] fpuOpt_io_inst;
  wire [31:0] fpuOpt_io_fromint_data;
  wire [2:0] fpuOpt_io_fcsr_rm;
  wire  fpuOpt_io_fcsr_flags_valid;
  wire [4:0] fpuOpt_io_fcsr_flags_bits;
  wire [31:0] fpuOpt_io_store_data;
  wire [31:0] fpuOpt_io_toint_data;
  wire  fpuOpt_io_dmem_resp_val;
  wire [4:0] fpuOpt_io_dmem_resp_tag;
  wire [31:0] fpuOpt_io_dmem_resp_data;
  wire  fpuOpt_io_valid;
  wire  fpuOpt_io_fcsr_rdy;
  wire  fpuOpt_io_nack_mem;
  wire  fpuOpt_io_illegal_rm;
  wire  fpuOpt_io_killx;
  wire  fpuOpt_io_killm;
  wire  fpuOpt_io_dec_wen;
  wire  fpuOpt_io_dec_ren1;
  wire  fpuOpt_io_dec_ren2;
  wire  fpuOpt_io_dec_ren3;
  wire  fpuOpt_io_sboard_set;
  wire  fpuOpt_io_sboard_clr;
  wire [4:0] fpuOpt_io_sboard_clra;
  wire  fpuOpt_io_cp_req_ready;
  wire  fpuOpt_io_cp_req_valid;
  wire  fpuOpt_io_cp_req_bits_ren2;
  wire  fpuOpt_io_cp_req_bits_ren3;
  wire  fpuOpt_io_cp_req_bits_swap23;
  wire  fpuOpt_io_cp_req_bits_singleOut;
  wire  fpuOpt_io_cp_req_bits_fromint;
  wire  fpuOpt_io_cp_req_bits_toint;
  wire  fpuOpt_io_cp_req_bits_fastpipe;
  wire  fpuOpt_io_cp_req_bits_fma;
  wire  fpuOpt_io_cp_req_bits_div;
  wire  fpuOpt_io_cp_req_bits_sqrt;
  wire  fpuOpt_io_cp_req_bits_wflags;
  wire [2:0] fpuOpt_io_cp_req_bits_rm;
  wire [1:0] fpuOpt_io_cp_req_bits_fmaCmd;
  wire [1:0] fpuOpt_io_cp_req_bits_typ;
  wire [32:0] fpuOpt_io_cp_req_bits_in1;
  wire [32:0] fpuOpt_io_cp_req_bits_in2;
  wire [32:0] fpuOpt_io_cp_req_bits_in3;
  wire  dcacheArb_io_requestor_0_req_ready;
  wire  dcacheArb_io_requestor_0_req_valid;
  wire [31:0] dcacheArb_io_requestor_0_req_bits_addr;
  wire [5:0] dcacheArb_io_requestor_0_req_bits_tag;
  wire [4:0] dcacheArb_io_requestor_0_req_bits_cmd;
  wire [2:0] dcacheArb_io_requestor_0_req_bits_typ;
  wire  dcacheArb_io_requestor_0_req_bits_phys;
  wire  dcacheArb_io_requestor_0_s1_kill;
  wire [31:0] dcacheArb_io_requestor_0_s1_data_data;
  wire [3:0] dcacheArb_io_requestor_0_s1_data_mask;
  wire  dcacheArb_io_requestor_0_s2_nack;
  wire  dcacheArb_io_requestor_0_resp_valid;
  wire [5:0] dcacheArb_io_requestor_0_resp_bits_tag;
  wire [31:0] dcacheArb_io_requestor_0_resp_bits_data;
  wire  dcacheArb_io_requestor_0_resp_bits_replay;
  wire  dcacheArb_io_requestor_0_resp_bits_has_data;
  wire [31:0] dcacheArb_io_requestor_0_resp_bits_data_word_bypass;
  wire  dcacheArb_io_requestor_0_replay_next;
  wire  dcacheArb_io_requestor_0_s2_xcpt_ma_ld;
  wire  dcacheArb_io_requestor_0_s2_xcpt_ma_st;
  wire  dcacheArb_io_requestor_0_s2_xcpt_pf_ld;
  wire  dcacheArb_io_requestor_0_s2_xcpt_pf_st;
  wire  dcacheArb_io_requestor_0_s2_xcpt_ae_ld;
  wire  dcacheArb_io_requestor_0_s2_xcpt_ae_st;
  wire  dcacheArb_io_requestor_0_invalidate_lr;
  wire  dcacheArb_io_requestor_0_ordered;
  wire  dcacheArb_io_mem_req_ready;
  wire  dcacheArb_io_mem_req_valid;
  wire [31:0] dcacheArb_io_mem_req_bits_addr;
  wire [5:0] dcacheArb_io_mem_req_bits_tag;
  wire [4:0] dcacheArb_io_mem_req_bits_cmd;
  wire [2:0] dcacheArb_io_mem_req_bits_typ;
  wire  dcacheArb_io_mem_req_bits_phys;
  wire  dcacheArb_io_mem_s1_kill;
  wire [31:0] dcacheArb_io_mem_s1_data_data;
  wire [3:0] dcacheArb_io_mem_s1_data_mask;
  wire  dcacheArb_io_mem_s2_nack;
  wire  dcacheArb_io_mem_resp_valid;
  wire [5:0] dcacheArb_io_mem_resp_bits_tag;
  wire [31:0] dcacheArb_io_mem_resp_bits_data;
  wire  dcacheArb_io_mem_resp_bits_replay;
  wire  dcacheArb_io_mem_resp_bits_has_data;
  wire [31:0] dcacheArb_io_mem_resp_bits_data_word_bypass;
  wire  dcacheArb_io_mem_replay_next;
  wire  dcacheArb_io_mem_s2_xcpt_ma_ld;
  wire  dcacheArb_io_mem_s2_xcpt_ma_st;
  wire  dcacheArb_io_mem_s2_xcpt_pf_ld;
  wire  dcacheArb_io_mem_s2_xcpt_pf_st;
  wire  dcacheArb_io_mem_s2_xcpt_ae_ld;
  wire  dcacheArb_io_mem_s2_xcpt_ae_st;
  wire  dcacheArb_io_mem_invalidate_lr;
  wire  dcacheArb_io_mem_ordered;
  wire  ptw_clock;
  wire  ptw_reset;
  wire  ptw_io_requestor_0_req_valid;
  wire [19:0] ptw_io_requestor_0_req_bits_addr;
  wire  ptw_io_requestor_0_resp_valid;
  wire [1:0] ptw_io_requestor_0_status_dprv;
  wire  ptw_io_requestor_0_status_mxr;
  wire  ptw_io_requestor_0_status_sum;
  wire  ptw_io_requestor_1_req_valid;
  wire [19:0] ptw_io_requestor_1_req_bits_addr;
  wire [1:0] ptw_io_requestor_1_status_prv;
  wire  ptw_io_mem_req_ready;
  wire  ptw_io_mem_req_valid;
  wire  ptw_io_mem_s2_nack;
  wire  ptw_io_mem_resp_valid;
  wire [31:0] ptw_io_mem_resp_bits_data;
  wire  ptw_io_mem_s2_xcpt_ae_ld;
  wire [21:0] ptw_io_dpath_ptbr_ppn;
  wire  ptw_io_dpath_sfence_valid;
  wire  ptw_io_dpath_sfence_bits_rs1;
  wire [1:0] ptw_io_dpath_status_dprv;
  wire [1:0] ptw_io_dpath_status_prv;
  wire  ptw_io_dpath_status_mxr;
  wire  ptw_io_dpath_status_sum;
  wire  core_clock;
  wire  core_reset;
  wire  core_io_hartid;
  wire  core_io_interrupts_debug;
  wire  core_io_interrupts_mtip;
  wire  core_io_interrupts_msip;
  wire  core_io_interrupts_meip;
  wire  core_io_imem_req_valid;
  wire [31:0] core_io_imem_req_bits_pc;
  wire  core_io_imem_req_bits_speculative;
  wire  core_io_imem_sfence_valid;
  wire  core_io_imem_sfence_bits_rs1;
  wire  core_io_imem_resp_ready;
  wire  core_io_imem_resp_valid;
  wire  core_io_imem_resp_bits_btb_valid;
  wire  core_io_imem_resp_bits_btb_bits_taken;
  wire  core_io_imem_resp_bits_btb_bits_bridx;
  wire [31:0] core_io_imem_resp_bits_pc;
  wire [31:0] core_io_imem_resp_bits_data;
  wire  core_io_imem_resp_bits_xcpt_pf_inst;
  wire  core_io_imem_resp_bits_xcpt_ae_inst;
  wire  core_io_imem_resp_bits_replay;
  wire  core_io_imem_flush_icache;
  wire  core_io_dmem_req_ready;
  wire  core_io_dmem_req_valid;
  wire [31:0] core_io_dmem_req_bits_addr;
  wire [5:0] core_io_dmem_req_bits_tag;
  wire [4:0] core_io_dmem_req_bits_cmd;
  wire [2:0] core_io_dmem_req_bits_typ;
  wire  core_io_dmem_req_bits_phys;
  wire  core_io_dmem_s1_kill;
  wire [31:0] core_io_dmem_s1_data_data;
  wire [3:0] core_io_dmem_s1_data_mask;
  wire  core_io_dmem_s2_nack;
  wire  core_io_dmem_resp_valid;
  wire [5:0] core_io_dmem_resp_bits_tag;
  wire [31:0] core_io_dmem_resp_bits_data;
  wire  core_io_dmem_resp_bits_replay;
  wire  core_io_dmem_resp_bits_has_data;
  wire [31:0] core_io_dmem_resp_bits_data_word_bypass;
  wire  core_io_dmem_replay_next;
  wire  core_io_dmem_s2_xcpt_ma_ld;
  wire  core_io_dmem_s2_xcpt_ma_st;
  wire  core_io_dmem_s2_xcpt_pf_ld;
  wire  core_io_dmem_s2_xcpt_pf_st;
  wire  core_io_dmem_s2_xcpt_ae_ld;
  wire  core_io_dmem_s2_xcpt_ae_st;
  wire  core_io_dmem_invalidate_lr;
  wire  core_io_dmem_ordered;
  wire [21:0] core_io_ptw_ptbr_ppn;
  wire  core_io_ptw_sfence_valid;
  wire  core_io_ptw_sfence_bits_rs1;
  wire [1:0] core_io_ptw_status_dprv;
  wire [1:0] core_io_ptw_status_prv;
  wire  core_io_ptw_status_mxr;
  wire  core_io_ptw_status_sum;
  wire [31:0] core_io_fpu_inst;
  wire [31:0] core_io_fpu_fromint_data;
  wire [2:0] core_io_fpu_fcsr_rm;
  wire  core_io_fpu_fcsr_flags_valid;
  wire [4:0] core_io_fpu_fcsr_flags_bits;
  wire [31:0] core_io_fpu_store_data;
  wire [31:0] core_io_fpu_toint_data;
  wire  core_io_fpu_dmem_resp_val;
  wire [4:0] core_io_fpu_dmem_resp_tag;
  wire [31:0] core_io_fpu_dmem_resp_data;
  wire  core_io_fpu_valid;
  wire  core_io_fpu_fcsr_rdy;
  wire  core_io_fpu_nack_mem;
  wire  core_io_fpu_illegal_rm;
  wire  core_io_fpu_killx;
  wire  core_io_fpu_killm;
  wire  core_io_fpu_dec_wen;
  wire  core_io_fpu_dec_ren1;
  wire  core_io_fpu_dec_ren2;
  wire  core_io_fpu_dec_ren3;
  wire  core_io_fpu_sboard_set;
  wire  core_io_fpu_sboard_clr;
  wire [4:0] core_io_fpu_sboard_clra;
  wire  core_io_rocc_cmd_ready;
  wire  core_io_rocc_interrupt;
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_TL_XBAR_TILE_BUS tileBus (
    .clock(tileBus_clock),
    .reset(tileBus_reset),
    .io_in_1_a_ready(tileBus_io_in_1_a_ready),
    .io_in_1_a_valid(tileBus_io_in_1_a_valid),
    .io_in_1_a_bits_opcode(tileBus_io_in_1_a_bits_opcode),
    .io_in_1_a_bits_param(tileBus_io_in_1_a_bits_param),
    .io_in_1_a_bits_size(tileBus_io_in_1_a_bits_size),
    .io_in_1_a_bits_source(tileBus_io_in_1_a_bits_source),
    .io_in_1_a_bits_address(tileBus_io_in_1_a_bits_address),
    .io_in_1_a_bits_mask(tileBus_io_in_1_a_bits_mask),
    .io_in_1_a_bits_data(tileBus_io_in_1_a_bits_data),
    .io_in_1_d_ready(tileBus_io_in_1_d_ready),
    .io_in_1_d_valid(tileBus_io_in_1_d_valid),
    .io_in_1_d_bits_opcode(tileBus_io_in_1_d_bits_opcode),
    .io_in_1_d_bits_size(tileBus_io_in_1_d_bits_size),
    .io_in_1_d_bits_data(tileBus_io_in_1_d_bits_data),
    .io_in_1_d_bits_error(tileBus_io_in_1_d_bits_error),
    .io_in_0_a_ready(tileBus_io_in_0_a_ready),
    .io_in_0_a_valid(tileBus_io_in_0_a_valid),
    .io_in_0_a_bits_opcode(tileBus_io_in_0_a_bits_opcode),
    .io_in_0_a_bits_param(tileBus_io_in_0_a_bits_param),
    .io_in_0_a_bits_size(tileBus_io_in_0_a_bits_size),
    .io_in_0_a_bits_source(tileBus_io_in_0_a_bits_source),
    .io_in_0_a_bits_address(tileBus_io_in_0_a_bits_address),
    .io_in_0_a_bits_mask(tileBus_io_in_0_a_bits_mask),
    .io_in_0_a_bits_data(tileBus_io_in_0_a_bits_data),
    .io_in_0_b_ready(tileBus_io_in_0_b_ready),
    .io_in_0_b_valid(tileBus_io_in_0_b_valid),
    .io_in_0_b_bits_param(tileBus_io_in_0_b_bits_param),
    .io_in_0_b_bits_size(tileBus_io_in_0_b_bits_size),
    .io_in_0_b_bits_source(tileBus_io_in_0_b_bits_source),
    .io_in_0_b_bits_address(tileBus_io_in_0_b_bits_address),
    .io_in_0_c_ready(tileBus_io_in_0_c_ready),
    .io_in_0_c_valid(tileBus_io_in_0_c_valid),
    .io_in_0_c_bits_opcode(tileBus_io_in_0_c_bits_opcode),
    .io_in_0_c_bits_param(tileBus_io_in_0_c_bits_param),
    .io_in_0_c_bits_size(tileBus_io_in_0_c_bits_size),
    .io_in_0_c_bits_source(tileBus_io_in_0_c_bits_source),
    .io_in_0_c_bits_address(tileBus_io_in_0_c_bits_address),
    .io_in_0_c_bits_data(tileBus_io_in_0_c_bits_data),
    .io_in_0_d_ready(tileBus_io_in_0_d_ready),
    .io_in_0_d_valid(tileBus_io_in_0_d_valid),
    .io_in_0_d_bits_opcode(tileBus_io_in_0_d_bits_opcode),
    .io_in_0_d_bits_param(tileBus_io_in_0_d_bits_param),
    .io_in_0_d_bits_size(tileBus_io_in_0_d_bits_size),
    .io_in_0_d_bits_source(tileBus_io_in_0_d_bits_source),
    .io_in_0_d_bits_sink(tileBus_io_in_0_d_bits_sink),
    .io_in_0_d_bits_data(tileBus_io_in_0_d_bits_data),
    .io_in_0_e_ready(tileBus_io_in_0_e_ready),
    .io_in_0_e_valid(tileBus_io_in_0_e_valid),
    .io_in_0_e_bits_sink(tileBus_io_in_0_e_bits_sink),
    .io_out_0_a_ready(tileBus_io_out_0_a_ready),
    .io_out_0_a_valid(tileBus_io_out_0_a_valid),
    .io_out_0_a_bits_opcode(tileBus_io_out_0_a_bits_opcode),
    .io_out_0_a_bits_param(tileBus_io_out_0_a_bits_param),
    .io_out_0_a_bits_size(tileBus_io_out_0_a_bits_size),
    .io_out_0_a_bits_source(tileBus_io_out_0_a_bits_source),
    .io_out_0_a_bits_address(tileBus_io_out_0_a_bits_address),
    .io_out_0_a_bits_mask(tileBus_io_out_0_a_bits_mask),
    .io_out_0_a_bits_data(tileBus_io_out_0_a_bits_data),
    .io_out_0_b_ready(tileBus_io_out_0_b_ready),
    .io_out_0_b_valid(tileBus_io_out_0_b_valid),
    .io_out_0_b_bits_param(tileBus_io_out_0_b_bits_param),
    .io_out_0_b_bits_size(tileBus_io_out_0_b_bits_size),
    .io_out_0_b_bits_source(tileBus_io_out_0_b_bits_source),
    .io_out_0_b_bits_address(tileBus_io_out_0_b_bits_address),
    .io_out_0_c_ready(tileBus_io_out_0_c_ready),
    .io_out_0_c_valid(tileBus_io_out_0_c_valid),
    .io_out_0_c_bits_opcode(tileBus_io_out_0_c_bits_opcode),
    .io_out_0_c_bits_param(tileBus_io_out_0_c_bits_param),
    .io_out_0_c_bits_size(tileBus_io_out_0_c_bits_size),
    .io_out_0_c_bits_source(tileBus_io_out_0_c_bits_source),
    .io_out_0_c_bits_address(tileBus_io_out_0_c_bits_address),
    .io_out_0_c_bits_data(tileBus_io_out_0_c_bits_data),
    .io_out_0_d_ready(tileBus_io_out_0_d_ready),
    .io_out_0_d_valid(tileBus_io_out_0_d_valid),
    .io_out_0_d_bits_opcode(tileBus_io_out_0_d_bits_opcode),
    .io_out_0_d_bits_param(tileBus_io_out_0_d_bits_param),
    .io_out_0_d_bits_size(tileBus_io_out_0_d_bits_size),
    .io_out_0_d_bits_source(tileBus_io_out_0_d_bits_source),
    .io_out_0_d_bits_sink(tileBus_io_out_0_d_bits_sink),
    .io_out_0_d_bits_data(tileBus_io_out_0_d_bits_data),
    .io_out_0_d_bits_error(tileBus_io_out_0_d_bits_error),
    .io_out_0_e_ready(tileBus_io_out_0_e_ready),
    .io_out_0_e_valid(tileBus_io_out_0_e_valid),
    .io_out_0_e_bits_sink(tileBus_io_out_0_e_bits_sink)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_D_CACHE_DCACHE dcache (
    .clock(dcache_clock),
    .reset(dcache_reset),
    .io_cpu_req_ready(dcache_io_cpu_req_ready),
    .io_cpu_req_valid(dcache_io_cpu_req_valid),
    .io_cpu_req_bits_addr(dcache_io_cpu_req_bits_addr),
    .io_cpu_req_bits_tag(dcache_io_cpu_req_bits_tag),
    .io_cpu_req_bits_cmd(dcache_io_cpu_req_bits_cmd),
    .io_cpu_req_bits_typ(dcache_io_cpu_req_bits_typ),
    .io_cpu_req_bits_phys(dcache_io_cpu_req_bits_phys),
    .io_cpu_s1_kill(dcache_io_cpu_s1_kill),
    .io_cpu_s1_data_data(dcache_io_cpu_s1_data_data),
    .io_cpu_s1_data_mask(dcache_io_cpu_s1_data_mask),
    .io_cpu_s2_nack(dcache_io_cpu_s2_nack),
    .io_cpu_resp_valid(dcache_io_cpu_resp_valid),
    .io_cpu_resp_bits_tag(dcache_io_cpu_resp_bits_tag),
    .io_cpu_resp_bits_data(dcache_io_cpu_resp_bits_data),
    .io_cpu_resp_bits_replay(dcache_io_cpu_resp_bits_replay),
    .io_cpu_resp_bits_has_data(dcache_io_cpu_resp_bits_has_data),
    .io_cpu_resp_bits_data_word_bypass(dcache_io_cpu_resp_bits_data_word_bypass),
    .io_cpu_replay_next(dcache_io_cpu_replay_next),
    .io_cpu_s2_xcpt_ma_ld(dcache_io_cpu_s2_xcpt_ma_ld),
    .io_cpu_s2_xcpt_ma_st(dcache_io_cpu_s2_xcpt_ma_st),
    .io_cpu_s2_xcpt_pf_ld(dcache_io_cpu_s2_xcpt_pf_ld),
    .io_cpu_s2_xcpt_pf_st(dcache_io_cpu_s2_xcpt_pf_st),
    .io_cpu_s2_xcpt_ae_ld(dcache_io_cpu_s2_xcpt_ae_ld),
    .io_cpu_s2_xcpt_ae_st(dcache_io_cpu_s2_xcpt_ae_st),
    .io_cpu_invalidate_lr(dcache_io_cpu_invalidate_lr),
    .io_cpu_ordered(dcache_io_cpu_ordered),
    .io_ptw_req_valid(dcache_io_ptw_req_valid),
    .io_ptw_req_bits_addr(dcache_io_ptw_req_bits_addr),
    .io_ptw_resp_valid(dcache_io_ptw_resp_valid),
    .io_ptw_status_dprv(dcache_io_ptw_status_dprv),
    .io_ptw_status_mxr(dcache_io_ptw_status_mxr),
    .io_ptw_status_sum(dcache_io_ptw_status_sum),
    .io_mem_0_a_ready(dcache_io_mem_0_a_ready),
    .io_mem_0_a_valid(dcache_io_mem_0_a_valid),
    .io_mem_0_a_bits_opcode(dcache_io_mem_0_a_bits_opcode),
    .io_mem_0_a_bits_param(dcache_io_mem_0_a_bits_param),
    .io_mem_0_a_bits_size(dcache_io_mem_0_a_bits_size),
    .io_mem_0_a_bits_source(dcache_io_mem_0_a_bits_source),
    .io_mem_0_a_bits_address(dcache_io_mem_0_a_bits_address),
    .io_mem_0_a_bits_mask(dcache_io_mem_0_a_bits_mask),
    .io_mem_0_a_bits_data(dcache_io_mem_0_a_bits_data),
    .io_mem_0_b_ready(dcache_io_mem_0_b_ready),
    .io_mem_0_b_valid(dcache_io_mem_0_b_valid),
    .io_mem_0_b_bits_param(dcache_io_mem_0_b_bits_param),
    .io_mem_0_b_bits_size(dcache_io_mem_0_b_bits_size),
    .io_mem_0_b_bits_source(dcache_io_mem_0_b_bits_source),
    .io_mem_0_b_bits_address(dcache_io_mem_0_b_bits_address),
    .io_mem_0_c_ready(dcache_io_mem_0_c_ready),
    .io_mem_0_c_valid(dcache_io_mem_0_c_valid),
    .io_mem_0_c_bits_opcode(dcache_io_mem_0_c_bits_opcode),
    .io_mem_0_c_bits_param(dcache_io_mem_0_c_bits_param),
    .io_mem_0_c_bits_size(dcache_io_mem_0_c_bits_size),
    .io_mem_0_c_bits_source(dcache_io_mem_0_c_bits_source),
    .io_mem_0_c_bits_address(dcache_io_mem_0_c_bits_address),
    .io_mem_0_c_bits_data(dcache_io_mem_0_c_bits_data),
    .io_mem_0_d_ready(dcache_io_mem_0_d_ready),
    .io_mem_0_d_valid(dcache_io_mem_0_d_valid),
    .io_mem_0_d_bits_opcode(dcache_io_mem_0_d_bits_opcode),
    .io_mem_0_d_bits_param(dcache_io_mem_0_d_bits_param),
    .io_mem_0_d_bits_size(dcache_io_mem_0_d_bits_size),
    .io_mem_0_d_bits_source(dcache_io_mem_0_d_bits_source),
    .io_mem_0_d_bits_sink(dcache_io_mem_0_d_bits_sink),
    .io_mem_0_d_bits_data(dcache_io_mem_0_d_bits_data),
    .io_mem_0_e_ready(dcache_io_mem_0_e_ready),
    .io_mem_0_e_valid(dcache_io_mem_0_e_valid),
    .io_mem_0_e_bits_sink(dcache_io_mem_0_e_bits_sink)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_FRONTEND_FRONTEND frontend (
    .clock(frontend_clock),
    .reset(frontend_reset),
    .io_tl_out_0_a_ready(frontend_io_tl_out_0_a_ready),
    .io_tl_out_0_a_valid(frontend_io_tl_out_0_a_valid),
    .io_tl_out_0_a_bits_opcode(frontend_io_tl_out_0_a_bits_opcode),
    .io_tl_out_0_a_bits_param(frontend_io_tl_out_0_a_bits_param),
    .io_tl_out_0_a_bits_size(frontend_io_tl_out_0_a_bits_size),
    .io_tl_out_0_a_bits_source(frontend_io_tl_out_0_a_bits_source),
    .io_tl_out_0_a_bits_address(frontend_io_tl_out_0_a_bits_address),
    .io_tl_out_0_a_bits_mask(frontend_io_tl_out_0_a_bits_mask),
    .io_tl_out_0_a_bits_data(frontend_io_tl_out_0_a_bits_data),
    .io_tl_out_0_d_ready(frontend_io_tl_out_0_d_ready),
    .io_tl_out_0_d_valid(frontend_io_tl_out_0_d_valid),
    .io_tl_out_0_d_bits_opcode(frontend_io_tl_out_0_d_bits_opcode),
    .io_tl_out_0_d_bits_size(frontend_io_tl_out_0_d_bits_size),
    .io_tl_out_0_d_bits_data(frontend_io_tl_out_0_d_bits_data),
    .io_tl_out_0_d_bits_error(frontend_io_tl_out_0_d_bits_error),
    .io_cpu_req_valid(frontend_io_cpu_req_valid),
    .io_cpu_req_bits_pc(frontend_io_cpu_req_bits_pc),
    .io_cpu_req_bits_speculative(frontend_io_cpu_req_bits_speculative),
    .io_cpu_resp_ready(frontend_io_cpu_resp_ready),
    .io_cpu_resp_valid(frontend_io_cpu_resp_valid),
    .io_cpu_resp_bits_btb_valid(frontend_io_cpu_resp_bits_btb_valid),
    .io_cpu_resp_bits_btb_bits_taken(frontend_io_cpu_resp_bits_btb_bits_taken),
    .io_cpu_resp_bits_btb_bits_bridx(frontend_io_cpu_resp_bits_btb_bits_bridx),
    .io_cpu_resp_bits_pc(frontend_io_cpu_resp_bits_pc),
    .io_cpu_resp_bits_data(frontend_io_cpu_resp_bits_data),
    .io_cpu_resp_bits_xcpt_pf_inst(frontend_io_cpu_resp_bits_xcpt_pf_inst),
    .io_cpu_resp_bits_xcpt_ae_inst(frontend_io_cpu_resp_bits_xcpt_ae_inst),
    .io_cpu_resp_bits_replay(frontend_io_cpu_resp_bits_replay),
    .io_cpu_flush_icache(frontend_io_cpu_flush_icache),
    .io_cpu_npc(frontend_io_cpu_npc),
    .io_ptw_req_valid(frontend_io_ptw_req_valid),
    .io_ptw_req_bits_addr(frontend_io_ptw_req_bits_addr),
    .io_ptw_status_prv(frontend_io_ptw_status_prv),
    .io_resetVector(frontend_io_resetVector)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_FPU fpuOpt (
    .clock(fpuOpt_clock),
    .reset(fpuOpt_reset),
    .io_inst(fpuOpt_io_inst),
    .io_fromint_data(fpuOpt_io_fromint_data),
    .io_fcsr_rm(fpuOpt_io_fcsr_rm),
    .io_fcsr_flags_valid(fpuOpt_io_fcsr_flags_valid),
    .io_fcsr_flags_bits(fpuOpt_io_fcsr_flags_bits),
    .io_store_data(fpuOpt_io_store_data),
    .io_toint_data(fpuOpt_io_toint_data),
    .io_dmem_resp_val(fpuOpt_io_dmem_resp_val),
    .io_dmem_resp_tag(fpuOpt_io_dmem_resp_tag),
    .io_dmem_resp_data(fpuOpt_io_dmem_resp_data),
    .io_valid(fpuOpt_io_valid),
    .io_fcsr_rdy(fpuOpt_io_fcsr_rdy),
    .io_nack_mem(fpuOpt_io_nack_mem),
    .io_illegal_rm(fpuOpt_io_illegal_rm),
    .io_killx(fpuOpt_io_killx),
    .io_killm(fpuOpt_io_killm),
    .io_dec_wen(fpuOpt_io_dec_wen),
    .io_dec_ren1(fpuOpt_io_dec_ren1),
    .io_dec_ren2(fpuOpt_io_dec_ren2),
    .io_dec_ren3(fpuOpt_io_dec_ren3),
    .io_sboard_set(fpuOpt_io_sboard_set),
    .io_sboard_clr(fpuOpt_io_sboard_clr),
    .io_sboard_clra(fpuOpt_io_sboard_clra),
    .io_cp_req_ready(fpuOpt_io_cp_req_ready),
    .io_cp_req_valid(fpuOpt_io_cp_req_valid),
    .io_cp_req_bits_ren2(fpuOpt_io_cp_req_bits_ren2),
    .io_cp_req_bits_ren3(fpuOpt_io_cp_req_bits_ren3),
    .io_cp_req_bits_swap23(fpuOpt_io_cp_req_bits_swap23),
    .io_cp_req_bits_singleOut(fpuOpt_io_cp_req_bits_singleOut),
    .io_cp_req_bits_fromint(fpuOpt_io_cp_req_bits_fromint),
    .io_cp_req_bits_toint(fpuOpt_io_cp_req_bits_toint),
    .io_cp_req_bits_fastpipe(fpuOpt_io_cp_req_bits_fastpipe),
    .io_cp_req_bits_fma(fpuOpt_io_cp_req_bits_fma),
    .io_cp_req_bits_div(fpuOpt_io_cp_req_bits_div),
    .io_cp_req_bits_sqrt(fpuOpt_io_cp_req_bits_sqrt),
    .io_cp_req_bits_wflags(fpuOpt_io_cp_req_bits_wflags),
    .io_cp_req_bits_rm(fpuOpt_io_cp_req_bits_rm),
    .io_cp_req_bits_fmaCmd(fpuOpt_io_cp_req_bits_fmaCmd),
    .io_cp_req_bits_typ(fpuOpt_io_cp_req_bits_typ),
    .io_cp_req_bits_in1(fpuOpt_io_cp_req_bits_in1),
    .io_cp_req_bits_in2(fpuOpt_io_cp_req_bits_in2),
    .io_cp_req_bits_in3(fpuOpt_io_cp_req_bits_in3)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_HELLA_CACHE_ARBITER dcacheArb (
    .io_requestor_0_req_ready(dcacheArb_io_requestor_0_req_ready),
    .io_requestor_0_req_valid(dcacheArb_io_requestor_0_req_valid),
    .io_requestor_0_req_bits_addr(dcacheArb_io_requestor_0_req_bits_addr),
    .io_requestor_0_req_bits_tag(dcacheArb_io_requestor_0_req_bits_tag),
    .io_requestor_0_req_bits_cmd(dcacheArb_io_requestor_0_req_bits_cmd),
    .io_requestor_0_req_bits_typ(dcacheArb_io_requestor_0_req_bits_typ),
    .io_requestor_0_req_bits_phys(dcacheArb_io_requestor_0_req_bits_phys),
    .io_requestor_0_s1_kill(dcacheArb_io_requestor_0_s1_kill),
    .io_requestor_0_s1_data_data(dcacheArb_io_requestor_0_s1_data_data),
    .io_requestor_0_s1_data_mask(dcacheArb_io_requestor_0_s1_data_mask),
    .io_requestor_0_s2_nack(dcacheArb_io_requestor_0_s2_nack),
    .io_requestor_0_resp_valid(dcacheArb_io_requestor_0_resp_valid),
    .io_requestor_0_resp_bits_tag(dcacheArb_io_requestor_0_resp_bits_tag),
    .io_requestor_0_resp_bits_data(dcacheArb_io_requestor_0_resp_bits_data),
    .io_requestor_0_resp_bits_replay(dcacheArb_io_requestor_0_resp_bits_replay),
    .io_requestor_0_resp_bits_has_data(dcacheArb_io_requestor_0_resp_bits_has_data),
    .io_requestor_0_resp_bits_data_word_bypass(dcacheArb_io_requestor_0_resp_bits_data_word_bypass),
    .io_requestor_0_replay_next(dcacheArb_io_requestor_0_replay_next),
    .io_requestor_0_s2_xcpt_ma_ld(dcacheArb_io_requestor_0_s2_xcpt_ma_ld),
    .io_requestor_0_s2_xcpt_ma_st(dcacheArb_io_requestor_0_s2_xcpt_ma_st),
    .io_requestor_0_s2_xcpt_pf_ld(dcacheArb_io_requestor_0_s2_xcpt_pf_ld),
    .io_requestor_0_s2_xcpt_pf_st(dcacheArb_io_requestor_0_s2_xcpt_pf_st),
    .io_requestor_0_s2_xcpt_ae_ld(dcacheArb_io_requestor_0_s2_xcpt_ae_ld),
    .io_requestor_0_s2_xcpt_ae_st(dcacheArb_io_requestor_0_s2_xcpt_ae_st),
    .io_requestor_0_invalidate_lr(dcacheArb_io_requestor_0_invalidate_lr),
    .io_requestor_0_ordered(dcacheArb_io_requestor_0_ordered),
    .io_mem_req_ready(dcacheArb_io_mem_req_ready),
    .io_mem_req_valid(dcacheArb_io_mem_req_valid),
    .io_mem_req_bits_addr(dcacheArb_io_mem_req_bits_addr),
    .io_mem_req_bits_tag(dcacheArb_io_mem_req_bits_tag),
    .io_mem_req_bits_cmd(dcacheArb_io_mem_req_bits_cmd),
    .io_mem_req_bits_typ(dcacheArb_io_mem_req_bits_typ),
    .io_mem_req_bits_phys(dcacheArb_io_mem_req_bits_phys),
    .io_mem_s1_kill(dcacheArb_io_mem_s1_kill),
    .io_mem_s1_data_data(dcacheArb_io_mem_s1_data_data),
    .io_mem_s1_data_mask(dcacheArb_io_mem_s1_data_mask),
    .io_mem_s2_nack(dcacheArb_io_mem_s2_nack),
    .io_mem_resp_valid(dcacheArb_io_mem_resp_valid),
    .io_mem_resp_bits_tag(dcacheArb_io_mem_resp_bits_tag),
    .io_mem_resp_bits_data(dcacheArb_io_mem_resp_bits_data),
    .io_mem_resp_bits_replay(dcacheArb_io_mem_resp_bits_replay),
    .io_mem_resp_bits_has_data(dcacheArb_io_mem_resp_bits_has_data),
    .io_mem_resp_bits_data_word_bypass(dcacheArb_io_mem_resp_bits_data_word_bypass),
    .io_mem_replay_next(dcacheArb_io_mem_replay_next),
    .io_mem_s2_xcpt_ma_ld(dcacheArb_io_mem_s2_xcpt_ma_ld),
    .io_mem_s2_xcpt_ma_st(dcacheArb_io_mem_s2_xcpt_ma_st),
    .io_mem_s2_xcpt_pf_ld(dcacheArb_io_mem_s2_xcpt_pf_ld),
    .io_mem_s2_xcpt_pf_st(dcacheArb_io_mem_s2_xcpt_pf_st),
    .io_mem_s2_xcpt_ae_ld(dcacheArb_io_mem_s2_xcpt_ae_ld),
    .io_mem_s2_xcpt_ae_st(dcacheArb_io_mem_s2_xcpt_ae_st),
    .io_mem_invalidate_lr(dcacheArb_io_mem_invalidate_lr),
    .io_mem_ordered(dcacheArb_io_mem_ordered)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_PTW ptw (
    .clock(ptw_clock),
    .reset(ptw_reset),
    .io_requestor_0_req_valid(ptw_io_requestor_0_req_valid),
    .io_requestor_0_req_bits_addr(ptw_io_requestor_0_req_bits_addr),
    .io_requestor_0_resp_valid(ptw_io_requestor_0_resp_valid),
    .io_requestor_0_status_dprv(ptw_io_requestor_0_status_dprv),
    .io_requestor_0_status_mxr(ptw_io_requestor_0_status_mxr),
    .io_requestor_0_status_sum(ptw_io_requestor_0_status_sum),
    .io_requestor_1_req_valid(ptw_io_requestor_1_req_valid),
    .io_requestor_1_req_bits_addr(ptw_io_requestor_1_req_bits_addr),
    .io_requestor_1_status_prv(ptw_io_requestor_1_status_prv),
    .io_mem_req_ready(ptw_io_mem_req_ready),
    .io_mem_req_valid(ptw_io_mem_req_valid),
    .io_mem_s2_nack(ptw_io_mem_s2_nack),
    .io_mem_resp_valid(ptw_io_mem_resp_valid),
    .io_mem_resp_bits_data(ptw_io_mem_resp_bits_data),
    .io_mem_s2_xcpt_ae_ld(ptw_io_mem_s2_xcpt_ae_ld),
    .io_dpath_ptbr_ppn(ptw_io_dpath_ptbr_ppn),
    .io_dpath_sfence_valid(ptw_io_dpath_sfence_valid),
    .io_dpath_sfence_bits_rs1(ptw_io_dpath_sfence_bits_rs1),
    .io_dpath_status_dprv(ptw_io_dpath_status_dprv),
    .io_dpath_status_prv(ptw_io_dpath_status_prv),
    .io_dpath_status_mxr(ptw_io_dpath_status_mxr),
    .io_dpath_status_sum(ptw_io_dpath_status_sum)
  );
  ACT_UNIQUE_MIV_RV32IMAF_L1_AHB_ROCKET core (
    .clock(core_clock),
    .reset(core_reset),
    .io_hartid(core_io_hartid),
    .io_interrupts_debug(core_io_interrupts_debug),
    .io_interrupts_mtip(core_io_interrupts_mtip),
    .io_interrupts_msip(core_io_interrupts_msip),
    .io_interrupts_meip(core_io_interrupts_meip),
    .io_imem_req_valid(core_io_imem_req_valid),
    .io_imem_req_bits_pc(core_io_imem_req_bits_pc),
    .io_imem_req_bits_speculative(core_io_imem_req_bits_speculative),
    .io_imem_sfence_valid(core_io_imem_sfence_valid),
    .io_imem_sfence_bits_rs1(core_io_imem_sfence_bits_rs1),
    .io_imem_resp_ready(core_io_imem_resp_ready),
    .io_imem_resp_valid(core_io_imem_resp_valid),
    .io_imem_resp_bits_btb_valid(core_io_imem_resp_bits_btb_valid),
    .io_imem_resp_bits_btb_bits_taken(core_io_imem_resp_bits_btb_bits_taken),
    .io_imem_resp_bits_btb_bits_bridx(core_io_imem_resp_bits_btb_bits_bridx),
    .io_imem_resp_bits_pc(core_io_imem_resp_bits_pc),
    .io_imem_resp_bits_data(core_io_imem_resp_bits_data),
    .io_imem_resp_bits_xcpt_pf_inst(core_io_imem_resp_bits_xcpt_pf_inst),
    .io_imem_resp_bits_xcpt_ae_inst(core_io_imem_resp_bits_xcpt_ae_inst),
    .io_imem_resp_bits_replay(core_io_imem_resp_bits_replay),
    .io_imem_flush_icache(core_io_imem_flush_icache),
    .io_dmem_req_ready(core_io_dmem_req_ready),
    .io_dmem_req_valid(core_io_dmem_req_valid),
    .io_dmem_req_bits_addr(core_io_dmem_req_bits_addr),
    .io_dmem_req_bits_tag(core_io_dmem_req_bits_tag),
    .io_dmem_req_bits_cmd(core_io_dmem_req_bits_cmd),
    .io_dmem_req_bits_typ(core_io_dmem_req_bits_typ),
    .io_dmem_req_bits_phys(core_io_dmem_req_bits_phys),
    .io_dmem_s1_kill(core_io_dmem_s1_kill),
    .io_dmem_s1_data_data(core_io_dmem_s1_data_data),
    .io_dmem_s1_data_mask(core_io_dmem_s1_data_mask),
    .io_dmem_s2_nack(core_io_dmem_s2_nack),
    .io_dmem_resp_valid(core_io_dmem_resp_valid),
    .io_dmem_resp_bits_tag(core_io_dmem_resp_bits_tag),
    .io_dmem_resp_bits_data(core_io_dmem_resp_bits_data),
    .io_dmem_resp_bits_replay(core_io_dmem_resp_bits_replay),
    .io_dmem_resp_bits_has_data(core_io_dmem_resp_bits_has_data),
    .io_dmem_resp_bits_data_word_bypass(core_io_dmem_resp_bits_data_word_bypass),
    .io_dmem_replay_next(core_io_dmem_replay_next),
    .io_dmem_s2_xcpt_ma_ld(core_io_dmem_s2_xcpt_ma_ld),
    .io_dmem_s2_xcpt_ma_st(core_io_dmem_s2_xcpt_ma_st),
    .io_dmem_s2_xcpt_pf_ld(core_io_dmem_s2_xcpt_pf_ld),
    .io_dmem_s2_xcpt_pf_st(core_io_dmem_s2_xcpt_pf_st),
    .io_dmem_s2_xcpt_ae_ld(core_io_dmem_s2_xcpt_ae_ld),
    .io_dmem_s2_xcpt_ae_st(core_io_dmem_s2_xcpt_ae_st),
    .io_dmem_invalidate_lr(core_io_dmem_invalidate_lr),
    .io_dmem_ordered(core_io_dmem_ordered),
    .io_ptw_ptbr_ppn(core_io_ptw_ptbr_ppn),
    .io_ptw_sfence_valid(core_io_ptw_sfence_valid),
    .io_ptw_sfence_bits_rs1(core_io_ptw_sfence_bits_rs1),
    .io_ptw_status_dprv(core_io_ptw_status_dprv),
    .io_ptw_status_prv(core_io_ptw_status_prv),
    .io_ptw_status_mxr(core_io_ptw_status_mxr),
    .io_ptw_status_sum(core_io_ptw_status_sum),
    .io_fpu_inst(core_io_fpu_inst),
    .io_fpu_fromint_data(core_io_fpu_fromint_data),
    .io_fpu_fcsr_rm(core_io_fpu_fcsr_rm),
    .io_fpu_fcsr_flags_valid(core_io_fpu_fcsr_flags_valid),
    .io_fpu_fcsr_flags_bits(core_io_fpu_fcsr_flags_bits),
    .io_fpu_store_data(core_io_fpu_store_data),
    .io_fpu_toint_data(core_io_fpu_toint_data),
    .io_fpu_dmem_resp_val(core_io_fpu_dmem_resp_val),
    .io_fpu_dmem_resp_tag(core_io_fpu_dmem_resp_tag),
    .io_fpu_dmem_resp_data(core_io_fpu_dmem_resp_data),
    .io_fpu_valid(core_io_fpu_valid),
    .io_fpu_fcsr_rdy(core_io_fpu_fcsr_rdy),
    .io_fpu_nack_mem(core_io_fpu_nack_mem),
    .io_fpu_illegal_rm(core_io_fpu_illegal_rm),
    .io_fpu_killx(core_io_fpu_killx),
    .io_fpu_killm(core_io_fpu_killm),
    .io_fpu_dec_wen(core_io_fpu_dec_wen),
    .io_fpu_dec_ren1(core_io_fpu_dec_ren1),
    .io_fpu_dec_ren2(core_io_fpu_dec_ren2),
    .io_fpu_dec_ren3(core_io_fpu_dec_ren3),
    .io_fpu_sboard_set(core_io_fpu_sboard_set),
    .io_fpu_sboard_clr(core_io_fpu_sboard_clr),
    .io_fpu_sboard_clra(core_io_fpu_sboard_clra),
    .io_rocc_cmd_ready(core_io_rocc_cmd_ready),
    .io_rocc_interrupt(core_io_rocc_interrupt)
  );
  assign io_master_0_a_valid = tileBus_io_out_0_a_valid;
  assign io_master_0_a_bits_opcode = tileBus_io_out_0_a_bits_opcode;
  assign io_master_0_a_bits_param = tileBus_io_out_0_a_bits_param;
  assign io_master_0_a_bits_size = tileBus_io_out_0_a_bits_size;
  assign io_master_0_a_bits_source = tileBus_io_out_0_a_bits_source;
  assign io_master_0_a_bits_address = tileBus_io_out_0_a_bits_address;
  assign io_master_0_a_bits_mask = tileBus_io_out_0_a_bits_mask;
  assign io_master_0_a_bits_data = tileBus_io_out_0_a_bits_data;
  assign io_master_0_b_ready = tileBus_io_out_0_b_ready;
  assign io_master_0_c_valid = tileBus_io_out_0_c_valid;
  assign io_master_0_c_bits_opcode = tileBus_io_out_0_c_bits_opcode;
  assign io_master_0_c_bits_param = tileBus_io_out_0_c_bits_param;
  assign io_master_0_c_bits_size = tileBus_io_out_0_c_bits_size;
  assign io_master_0_c_bits_source = tileBus_io_out_0_c_bits_source;
  assign io_master_0_c_bits_address = tileBus_io_out_0_c_bits_address;
  assign io_master_0_c_bits_data = tileBus_io_out_0_c_bits_data;
  assign io_master_0_d_ready = tileBus_io_out_0_d_ready;
  assign io_master_0_e_valid = tileBus_io_out_0_e_valid;
  assign io_master_0_e_bits_sink = tileBus_io_out_0_e_bits_sink;
  assign tileBus_clock = clock;
  assign tileBus_reset = reset;
  assign tileBus_io_in_1_a_valid = frontend_io_tl_out_0_a_valid;
  assign tileBus_io_in_1_a_bits_opcode = frontend_io_tl_out_0_a_bits_opcode;
  assign tileBus_io_in_1_a_bits_param = frontend_io_tl_out_0_a_bits_param;
  assign tileBus_io_in_1_a_bits_size = frontend_io_tl_out_0_a_bits_size;
  assign tileBus_io_in_1_a_bits_source = frontend_io_tl_out_0_a_bits_source;
  assign tileBus_io_in_1_a_bits_address = frontend_io_tl_out_0_a_bits_address;
  assign tileBus_io_in_1_a_bits_mask = frontend_io_tl_out_0_a_bits_mask;
  assign tileBus_io_in_1_a_bits_data = frontend_io_tl_out_0_a_bits_data;
  assign tileBus_io_in_1_d_ready = frontend_io_tl_out_0_d_ready;
  assign tileBus_io_in_0_a_valid = dcache_io_mem_0_a_valid;
  assign tileBus_io_in_0_a_bits_opcode = dcache_io_mem_0_a_bits_opcode;
  assign tileBus_io_in_0_a_bits_param = dcache_io_mem_0_a_bits_param;
  assign tileBus_io_in_0_a_bits_size = dcache_io_mem_0_a_bits_size;
  assign tileBus_io_in_0_a_bits_source = dcache_io_mem_0_a_bits_source;
  assign tileBus_io_in_0_a_bits_address = dcache_io_mem_0_a_bits_address;
  assign tileBus_io_in_0_a_bits_mask = dcache_io_mem_0_a_bits_mask;
  assign tileBus_io_in_0_a_bits_data = dcache_io_mem_0_a_bits_data;
  assign tileBus_io_in_0_b_ready = dcache_io_mem_0_b_ready;
  assign tileBus_io_in_0_c_valid = dcache_io_mem_0_c_valid;
  assign tileBus_io_in_0_c_bits_opcode = dcache_io_mem_0_c_bits_opcode;
  assign tileBus_io_in_0_c_bits_param = dcache_io_mem_0_c_bits_param;
  assign tileBus_io_in_0_c_bits_size = dcache_io_mem_0_c_bits_size;
  assign tileBus_io_in_0_c_bits_source = dcache_io_mem_0_c_bits_source;
  assign tileBus_io_in_0_c_bits_address = dcache_io_mem_0_c_bits_address;
  assign tileBus_io_in_0_c_bits_data = dcache_io_mem_0_c_bits_data;
  assign tileBus_io_in_0_d_ready = dcache_io_mem_0_d_ready;
  assign tileBus_io_in_0_e_valid = dcache_io_mem_0_e_valid;
  assign tileBus_io_in_0_e_bits_sink = dcache_io_mem_0_e_bits_sink;
  assign tileBus_io_out_0_a_ready = io_master_0_a_ready;
  assign tileBus_io_out_0_b_valid = io_master_0_b_valid;
  assign tileBus_io_out_0_b_bits_param = io_master_0_b_bits_param;
  assign tileBus_io_out_0_b_bits_size = io_master_0_b_bits_size;
  assign tileBus_io_out_0_b_bits_source = io_master_0_b_bits_source;
  assign tileBus_io_out_0_b_bits_address = io_master_0_b_bits_address;
  assign tileBus_io_out_0_c_ready = io_master_0_c_ready;
  assign tileBus_io_out_0_d_valid = io_master_0_d_valid;
  assign tileBus_io_out_0_d_bits_opcode = io_master_0_d_bits_opcode;
  assign tileBus_io_out_0_d_bits_param = io_master_0_d_bits_param;
  assign tileBus_io_out_0_d_bits_size = io_master_0_d_bits_size;
  assign tileBus_io_out_0_d_bits_source = io_master_0_d_bits_source;
  assign tileBus_io_out_0_d_bits_sink = io_master_0_d_bits_sink;
  assign tileBus_io_out_0_d_bits_data = io_master_0_d_bits_data;
  assign tileBus_io_out_0_d_bits_error = io_master_0_d_bits_error;
  assign tileBus_io_out_0_e_ready = io_master_0_e_ready;
  assign dcache_clock = clock;
  assign dcache_reset = reset;
  assign dcache_io_cpu_req_valid = dcacheArb_io_mem_req_valid;
  assign dcache_io_cpu_req_bits_addr = dcacheArb_io_mem_req_bits_addr;
  assign dcache_io_cpu_req_bits_tag = dcacheArb_io_mem_req_bits_tag;
  assign dcache_io_cpu_req_bits_cmd = dcacheArb_io_mem_req_bits_cmd;
  assign dcache_io_cpu_req_bits_typ = dcacheArb_io_mem_req_bits_typ;
  assign dcache_io_cpu_req_bits_phys = dcacheArb_io_mem_req_bits_phys;
  assign dcache_io_cpu_s1_kill = dcacheArb_io_mem_s1_kill;
  assign dcache_io_cpu_s1_data_data = dcacheArb_io_mem_s1_data_data;
  assign dcache_io_cpu_s1_data_mask = dcacheArb_io_mem_s1_data_mask;
  assign dcache_io_cpu_invalidate_lr = dcacheArb_io_mem_invalidate_lr;
  assign dcache_io_ptw_resp_valid = ptw_io_requestor_0_resp_valid;
  assign dcache_io_ptw_status_dprv = ptw_io_requestor_0_status_dprv;
  assign dcache_io_ptw_status_mxr = ptw_io_requestor_0_status_mxr;
  assign dcache_io_ptw_status_sum = ptw_io_requestor_0_status_sum;
  assign dcache_io_mem_0_a_ready = tileBus_io_in_0_a_ready;
  assign dcache_io_mem_0_b_valid = tileBus_io_in_0_b_valid;
  assign dcache_io_mem_0_b_bits_param = tileBus_io_in_0_b_bits_param;
  assign dcache_io_mem_0_b_bits_size = tileBus_io_in_0_b_bits_size;
  assign dcache_io_mem_0_b_bits_source = tileBus_io_in_0_b_bits_source;
  assign dcache_io_mem_0_b_bits_address = tileBus_io_in_0_b_bits_address;
  assign dcache_io_mem_0_c_ready = tileBus_io_in_0_c_ready;
  assign dcache_io_mem_0_d_valid = tileBus_io_in_0_d_valid;
  assign dcache_io_mem_0_d_bits_opcode = tileBus_io_in_0_d_bits_opcode;
  assign dcache_io_mem_0_d_bits_param = tileBus_io_in_0_d_bits_param;
  assign dcache_io_mem_0_d_bits_size = tileBus_io_in_0_d_bits_size;
  assign dcache_io_mem_0_d_bits_source = tileBus_io_in_0_d_bits_source;
  assign dcache_io_mem_0_d_bits_sink = tileBus_io_in_0_d_bits_sink;
  assign dcache_io_mem_0_d_bits_data = tileBus_io_in_0_d_bits_data;
  assign dcache_io_mem_0_e_ready = tileBus_io_in_0_e_ready;
  assign frontend_clock = clock;
  assign frontend_reset = reset;
  assign frontend_io_tl_out_0_a_ready = tileBus_io_in_1_a_ready;
  assign frontend_io_tl_out_0_d_valid = tileBus_io_in_1_d_valid;
  assign frontend_io_tl_out_0_d_bits_opcode = tileBus_io_in_1_d_bits_opcode;
  assign frontend_io_tl_out_0_d_bits_size = tileBus_io_in_1_d_bits_size;
  assign frontend_io_tl_out_0_d_bits_data = tileBus_io_in_1_d_bits_data;
  assign frontend_io_tl_out_0_d_bits_error = tileBus_io_in_1_d_bits_error;
  assign frontend_io_cpu_req_valid = core_io_imem_req_valid;
  assign frontend_io_cpu_req_bits_pc = core_io_imem_req_bits_pc;
  assign frontend_io_cpu_req_bits_speculative = core_io_imem_req_bits_speculative;
  assign frontend_io_cpu_resp_ready = core_io_imem_resp_ready;
  assign frontend_io_cpu_flush_icache = core_io_imem_flush_icache;
  assign frontend_io_ptw_status_prv = ptw_io_requestor_1_status_prv;
  assign frontend_io_resetVector = io_resetVector;
  assign fpuOpt_clock = clock;
  assign fpuOpt_reset = reset;
  assign fpuOpt_io_inst = core_io_fpu_inst;
  assign fpuOpt_io_fromint_data = core_io_fpu_fromint_data;
  assign fpuOpt_io_fcsr_rm = core_io_fpu_fcsr_rm;
  assign fpuOpt_io_dmem_resp_val = core_io_fpu_dmem_resp_val;
  assign fpuOpt_io_dmem_resp_tag = core_io_fpu_dmem_resp_tag;
  assign fpuOpt_io_dmem_resp_data = core_io_fpu_dmem_resp_data;
  assign fpuOpt_io_valid = core_io_fpu_valid;
  assign fpuOpt_io_killx = core_io_fpu_killx;
  assign fpuOpt_io_killm = core_io_fpu_killm;
  assign fpuOpt_io_cp_req_valid = 1'h0;
  assign fpuOpt_io_cp_req_bits_ren2 = 1'h0;
  assign fpuOpt_io_cp_req_bits_ren3 = 1'h0;
  assign fpuOpt_io_cp_req_bits_swap23 = 1'h0;
  assign fpuOpt_io_cp_req_bits_singleOut = 1'h0;
  assign fpuOpt_io_cp_req_bits_fromint = 1'h0;
  assign fpuOpt_io_cp_req_bits_toint = 1'h0;
  assign fpuOpt_io_cp_req_bits_fastpipe = 1'h0;
  assign fpuOpt_io_cp_req_bits_fma = 1'h0;
  assign fpuOpt_io_cp_req_bits_div = 1'h0;
  assign fpuOpt_io_cp_req_bits_sqrt = 1'h0;
  assign fpuOpt_io_cp_req_bits_wflags = 1'h0;
  assign fpuOpt_io_cp_req_bits_rm = 3'h0;
  assign fpuOpt_io_cp_req_bits_fmaCmd = 2'h0;
  assign fpuOpt_io_cp_req_bits_typ = 2'h0;
  assign fpuOpt_io_cp_req_bits_in1 = 33'h0;
  assign fpuOpt_io_cp_req_bits_in2 = 33'h0;
  assign fpuOpt_io_cp_req_bits_in3 = 33'h0;
  assign dcacheArb_io_requestor_0_req_valid = core_io_dmem_req_valid;
  assign dcacheArb_io_requestor_0_req_bits_addr = core_io_dmem_req_bits_addr;
  assign dcacheArb_io_requestor_0_req_bits_tag = core_io_dmem_req_bits_tag;
  assign dcacheArb_io_requestor_0_req_bits_cmd = core_io_dmem_req_bits_cmd;
  assign dcacheArb_io_requestor_0_req_bits_typ = core_io_dmem_req_bits_typ;
  assign dcacheArb_io_requestor_0_req_bits_phys = core_io_dmem_req_bits_phys;
  assign dcacheArb_io_requestor_0_s1_kill = core_io_dmem_s1_kill;
  assign dcacheArb_io_requestor_0_s1_data_data = core_io_dmem_s1_data_data;
  assign dcacheArb_io_requestor_0_s1_data_mask = core_io_dmem_s1_data_mask;
  assign dcacheArb_io_requestor_0_invalidate_lr = core_io_dmem_invalidate_lr;
  assign dcacheArb_io_mem_req_ready = dcache_io_cpu_req_ready;
  assign dcacheArb_io_mem_s2_nack = dcache_io_cpu_s2_nack;
  assign dcacheArb_io_mem_resp_valid = dcache_io_cpu_resp_valid;
  assign dcacheArb_io_mem_resp_bits_tag = dcache_io_cpu_resp_bits_tag;
  assign dcacheArb_io_mem_resp_bits_data = dcache_io_cpu_resp_bits_data;
  assign dcacheArb_io_mem_resp_bits_replay = dcache_io_cpu_resp_bits_replay;
  assign dcacheArb_io_mem_resp_bits_has_data = dcache_io_cpu_resp_bits_has_data;
  assign dcacheArb_io_mem_resp_bits_data_word_bypass = dcache_io_cpu_resp_bits_data_word_bypass;
  assign dcacheArb_io_mem_replay_next = dcache_io_cpu_replay_next;
  assign dcacheArb_io_mem_s2_xcpt_ma_ld = dcache_io_cpu_s2_xcpt_ma_ld;
  assign dcacheArb_io_mem_s2_xcpt_ma_st = dcache_io_cpu_s2_xcpt_ma_st;
  assign dcacheArb_io_mem_s2_xcpt_pf_ld = dcache_io_cpu_s2_xcpt_pf_ld;
  assign dcacheArb_io_mem_s2_xcpt_pf_st = dcache_io_cpu_s2_xcpt_pf_st;
  assign dcacheArb_io_mem_s2_xcpt_ae_ld = dcache_io_cpu_s2_xcpt_ae_ld;
  assign dcacheArb_io_mem_s2_xcpt_ae_st = dcache_io_cpu_s2_xcpt_ae_st;
  assign dcacheArb_io_mem_ordered = dcache_io_cpu_ordered;
  assign ptw_clock = clock;
  assign ptw_reset = reset;
  assign ptw_io_requestor_0_req_valid = dcache_io_ptw_req_valid;
  assign ptw_io_requestor_0_req_bits_addr = dcache_io_ptw_req_bits_addr;
  assign ptw_io_requestor_1_req_valid = frontend_io_ptw_req_valid;
  assign ptw_io_requestor_1_req_bits_addr = frontend_io_ptw_req_bits_addr;
  assign ptw_io_mem_req_ready = 1'h0;
  assign ptw_io_mem_s2_nack = 1'h0;
  assign ptw_io_mem_resp_valid = 1'h0;
  assign ptw_io_mem_resp_bits_data = 32'h0;
  assign ptw_io_mem_s2_xcpt_ae_ld = 1'h0;
  assign ptw_io_dpath_ptbr_ppn = core_io_ptw_ptbr_ppn;
  assign ptw_io_dpath_sfence_valid = core_io_ptw_sfence_valid;
  assign ptw_io_dpath_sfence_bits_rs1 = core_io_ptw_sfence_bits_rs1;
  assign ptw_io_dpath_status_dprv = core_io_ptw_status_dprv;
  assign ptw_io_dpath_status_prv = core_io_ptw_status_prv;
  assign ptw_io_dpath_status_mxr = core_io_ptw_status_mxr;
  assign ptw_io_dpath_status_sum = core_io_ptw_status_sum;
  assign core_clock = clock;
  assign core_reset = reset;
  assign core_io_hartid = io_hartid;
  assign core_io_interrupts_debug = io_interrupts_0_0;
  assign core_io_interrupts_mtip = io_interrupts_0_2;
  assign core_io_interrupts_msip = io_interrupts_0_1;
  assign core_io_interrupts_meip = io_interrupts_0_3;
  assign core_io_imem_resp_valid = frontend_io_cpu_resp_valid;
  assign core_io_imem_resp_bits_btb_valid = frontend_io_cpu_resp_bits_btb_valid;
  assign core_io_imem_resp_bits_btb_bits_taken = frontend_io_cpu_resp_bits_btb_bits_taken;
  assign core_io_imem_resp_bits_btb_bits_bridx = frontend_io_cpu_resp_bits_btb_bits_bridx;
  assign core_io_imem_resp_bits_pc = frontend_io_cpu_resp_bits_pc;
  assign core_io_imem_resp_bits_data = frontend_io_cpu_resp_bits_data;
  assign core_io_imem_resp_bits_xcpt_pf_inst = frontend_io_cpu_resp_bits_xcpt_pf_inst;
  assign core_io_imem_resp_bits_xcpt_ae_inst = frontend_io_cpu_resp_bits_xcpt_ae_inst;
  assign core_io_imem_resp_bits_replay = frontend_io_cpu_resp_bits_replay;
  assign core_io_dmem_req_ready = dcacheArb_io_requestor_0_req_ready;
  assign core_io_dmem_s2_nack = dcacheArb_io_requestor_0_s2_nack;
  assign core_io_dmem_resp_valid = dcacheArb_io_requestor_0_resp_valid;
  assign core_io_dmem_resp_bits_tag = dcacheArb_io_requestor_0_resp_bits_tag;
  assign core_io_dmem_resp_bits_data = dcacheArb_io_requestor_0_resp_bits_data;
  assign core_io_dmem_resp_bits_replay = dcacheArb_io_requestor_0_resp_bits_replay;
  assign core_io_dmem_resp_bits_has_data = dcacheArb_io_requestor_0_resp_bits_has_data;
  assign core_io_dmem_resp_bits_data_word_bypass = dcacheArb_io_requestor_0_resp_bits_data_word_bypass;
  assign core_io_dmem_replay_next = dcacheArb_io_requestor_0_replay_next;
  assign core_io_dmem_s2_xcpt_ma_ld = dcacheArb_io_requestor_0_s2_xcpt_ma_ld;
  assign core_io_dmem_s2_xcpt_ma_st = dcacheArb_io_requestor_0_s2_xcpt_ma_st;
  assign core_io_dmem_s2_xcpt_pf_ld = dcacheArb_io_requestor_0_s2_xcpt_pf_ld;
  assign core_io_dmem_s2_xcpt_pf_st = dcacheArb_io_requestor_0_s2_xcpt_pf_st;
  assign core_io_dmem_s2_xcpt_ae_ld = dcacheArb_io_requestor_0_s2_xcpt_ae_ld;
  assign core_io_dmem_s2_xcpt_ae_st = dcacheArb_io_requestor_0_s2_xcpt_ae_st;
  assign core_io_dmem_ordered = dcacheArb_io_requestor_0_ordered;
  assign core_io_fpu_fcsr_flags_valid = fpuOpt_io_fcsr_flags_valid;
  assign core_io_fpu_fcsr_flags_bits = fpuOpt_io_fcsr_flags_bits;
  assign core_io_fpu_store_data = fpuOpt_io_store_data;
  assign core_io_fpu_toint_data = fpuOpt_io_toint_data;
  assign core_io_fpu_fcsr_rdy = fpuOpt_io_fcsr_rdy;
  assign core_io_fpu_nack_mem = fpuOpt_io_nack_mem;
  assign core_io_fpu_illegal_rm = fpuOpt_io_illegal_rm;
  assign core_io_fpu_dec_wen = fpuOpt_io_dec_wen;
  assign core_io_fpu_dec_ren1 = fpuOpt_io_dec_ren1;
  assign core_io_fpu_dec_ren2 = fpuOpt_io_dec_ren2;
  assign core_io_fpu_dec_ren3 = fpuOpt_io_dec_ren3;
  assign core_io_fpu_sboard_set = fpuOpt_io_sboard_set;
  assign core_io_fpu_sboard_clr = fpuOpt_io_sboard_clr;
  assign core_io_fpu_sboard_clra = fpuOpt_io_sboard_clra;
  assign core_io_rocc_cmd_ready = 1'h0;
  assign core_io_rocc_interrupt = 1'h0;
endmodule
