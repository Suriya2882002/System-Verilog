module d_flipflop(dff.dut intf);  
  always @(intf.cb)    
  intf.cb.q <= intf.cb.d;  

endmodule : d_flipflop   
