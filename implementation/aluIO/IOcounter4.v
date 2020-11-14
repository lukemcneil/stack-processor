////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.87xd
//  \   \         Application: netgen
//  /   /         Filename: IOcounter4.v
// /___/   /\     Timestamp: Thu Sep 26 20:55:47 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/mellor/ProfessionalArchives/Teaching/Class/csse232_csse_svn/trunk/xilinx-projects/rotaryInputHexOpHex/ipcore_dir/tmp/_cg/IOcounter4.ngc /home/mellor/ProfessionalArchives/Teaching/Class/csse232_csse_svn/trunk/xilinx-projects/rotaryInputHexOpHex/ipcore_dir/tmp/_cg/IOcounter4.v 
// Device	: 3s500efg320-4
// Input file	: /home/mellor/ProfessionalArchives/Teaching/Class/csse232_csse_svn/trunk/xilinx-projects/rotaryInputHexOpHex/ipcore_dir/tmp/_cg/IOcounter4.ngc
// Output file	: /home/mellor/ProfessionalArchives/Teaching/Class/csse232_csse_svn/trunk/xilinx-projects/rotaryInputHexOpHex/ipcore_dir/tmp/_cg/IOcounter4.v
// # of Modules	: 1
// Design Name	: IOcounter4
// Xilinx        : /opt/Xilinx/13.4/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module IOcounter4 (
  clk, ce, up, sclr, q
)/* synthesis syn_black_box syn_noprune=1 */;
  input clk;
  input ce;
  input up;
  input sclr;
  output [3 : 0] q;
  
  // synthesis translate_off
  
  wire [1 : 1] \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/b_or_not_b ;
  wire [2 : 0] \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple ;
  wire [3 : 0] \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum ;
  wire [4 : 1] \NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output ;
  wire [3 : 0] \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/sum_simple ;
  assign
    q[3] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [4],
    q[2] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [3],
    q[1] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [2],
    q[0] = 
\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [1];
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[2].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [1]),
    .LI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [2]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/sum_simple [2])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[2].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [1]),
    .DI
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [3]),
    .S(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [2]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [2])
  );
  XORCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[1].carryxor  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [0]),
    .LI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [1]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/sum_simple [1])
  );
  MUXCY 
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carrychaingen[1].carrymux  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [0]),
    .DI
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [2]),
    .S(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [1]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [1])
  );
  XORCY   \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_gt_1.carryxortop  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [2]),
    .LI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [3]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/sum_simple [3])
  );
  XORCY   \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.carryxor0  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/b_or_not_b [1]),
    .LI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [0]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/sum_simple [0])
  );
  MUXCY   \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_simple_model.i_need_mux.carrymux0  (
    .CI(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/b_or_not_b [1]),
    .DI
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [1]),
    .S(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [0]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/carry_simple [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_4  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/sum_simple [3]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_3  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/sum_simple [2]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_2  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/sum_simple [1]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output_1  (
    .C(clk),
    .CE(ce),
    .D(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/sum_simple [0]),
    .R(sclr),
    .Q
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_halfsum_Result<3>1  (
    .I0(up),
    .I1
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [4]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_halfsum_Result<2>1  (
    .I0(up),
    .I1
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [3]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_halfsum_Result<1>1  (
    .I0(up),
    .I1
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [2]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/Mxor_halfsum_Result<0>1  (
    .I0(up),
    .I1
(\NlwRenamedSig_OI_U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/i_q.i_simple.qreg/fd/output [1]),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/halfsum [0])
  );
  INV   \U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/c_in_i1_INV_0  (
    .I(up),
    .O(\U0/i_synth/i_baseblox.i_baseblox_counter/the_addsub/no_pipelining.the_addsub/i_lut4.i_lut4_addsub/b_or_not_b [1])
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
