module up_counter (count_if intf);
  always @(posedge intf.clk or posedge intf.rst)
   begin
    if(intf.rst)
      intf.counter_up <= 3'd0;
    else
      intf.counter_up <= intf.counter_up + 3'd1;
   end
  assign intf.counter = intf.counter_up;
endmodule
