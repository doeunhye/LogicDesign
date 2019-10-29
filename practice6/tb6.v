`timescale 1ns/1ns

module tb_digital_watch;

parameter 	tck = 1000/50;	//50MHz Clock

reg		clk	;
reg		rst_n	;
	
wire	[6:0]	o_seg		;
wire		o_seg_dp	;
wire	[5:0]	o_seg_enb	;

initial		clk = 1'b0	;
always	#(100)	clk = ~clk	;


top_nco_cnt_disp	dut_tncd(	.o_seg_enb(o_seg_enb),
					.o_seg_dp(o_seg_dp),
					.o_seg(o_seg),
					.clk(clk),
					.rst_n(rst_n));

initial begin
	#(0*tck)	rst_n = 1'b0	;
	#(1*tck)	rst_n = 1'b1	;
	#(100000000*tck)	$finish	;
end
endmodule
