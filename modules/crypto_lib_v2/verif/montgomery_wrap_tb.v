`timescale 1 ns/1 ps

module montgomery_wrap_tb (
);

//---------------------------------
//Local param reg/wire declaration
//---------------------------------

localparam  CLK_PERIOD   = 4.167;   //24 Mhz

localparam  NBITS    = 2048;


reg              CLK; 
reg              nRESET; 
reg [NBITS-1 :0] a; 
reg [NBITS-1 :0] b; 
reg [NBITS-1 :0] m; 
reg [10      :0] m_size; 
reg [NBITS-1 :0] r_red; 
reg              enable_p; 

wire [NBITS-1 :0] y; 

integer no_of_clocks; 


//------------------------------
//Clock and Reset generation
//------------------------------

initial begin
  CLK      = 1'b0; 
end

always begin
  #(CLK_PERIOD/2) CLK = ~CLK; 
end



initial begin
   nRESET   = 1'b1;
   enable_p = 1'b0;
   m        = 2048'd0;
   a        = 2048'd0;
   b        = 2048'd0;
   m_size   = 11'd2047;
   r_red    = 2048'd0;
  repeat (2) begin
    @(posedge CLK);
  end
   nRESET    = 1'b0;

  repeat (2) begin
    @(posedge CLK);
  end
  nRESET   = 1'b1;

  repeat (2) begin
    @(posedge CLK);
  end
  #1
  enable_p = 1'b1;
  m        = 2048'd72639;
  a        = 2048'd5792;
  b        = 2048'd1229;
  m_size   = 11'd17;
  r_red    = 2048'd58433;
  @(posedge CLK);
  #1
  enable_p = 1'b0;

end



//------------------------------
//DUT
//------------------------------
montgomery_wrap #(
  .NBITS (NBITS)
 ) u_dut_inst   (
  .clk           (CLK),
  .rst_n         (nRESET),
  .enable_p      (enable_p),
  .a             (a),
  .b             (b),
  .m             (m),
  .m_size        (m_size),
  .r_red         (r_red),
  .y             (y),
  .done_irq_p    (done_irq_p)
);


//------------------------------
//Track number of clocks
//------------------------------
initial begin
  no_of_clocks = 0; 
end
always@(posedge CLK)  begin
  no_of_clocks = no_of_clocks +1 ; 
  //$display($time, " << Number of Clocks value         %d", no_of_clocks);
  //$display($time, " << htrans_m[0] value              %b", ccs0001_tb.u_dut_inst.u_chip_core_inst.u_ahb_ic_inst.htrans_m[0][1]);
  //$display($time, " << vlaid_trans_s_by_m[s][0] value %b", ccs0001_tb.u_dut_inst.u_chip_core_inst.u_ahb_ic_inst.vlaid_trans_s_by_m[0][0]);
  //$display($time, " << vlaid_trans_s_by_m[s][1] value %b", ccs0001_tb.u_dut_inst.u_chip_core_inst.u_ahb_ic_inst.vlaid_trans_s_by_m[1][0]);
  //$display($time, " << SLAVE_BASE[0] value            %h", ccs0001_tb.u_dut_inst.u_chip_core_inst.u_ahb_ic_inst.SLAVE_BASE[0][31:16]);
  //$display($time, " << SLAVE_BASE[1] value            %h", ccs0001_tb.u_dut_inst.u_chip_core_inst.u_ahb_ic_inst.SLAVE_BASE[1][31:16]);
  //$display($time, " << haddr_m[0]  value              %h", ccs0001_tb.u_dut_inst.u_chip_core_inst.u_ahb_ic_inst.haddr_m[0][31:16]);
  //$display($time, " << memory dump              %h", ccs0001_tb.u_dut_inst.u_chip_core_inst.u_sram_wrap_inst.u_sram_inst.mem[0]);
end

endmodule