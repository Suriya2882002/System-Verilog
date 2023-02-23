
module top;
  bit clk=1;
  initial
    forever #5 clk = ~clk;
    dff intf(clk);
    d_flipflop t1(intf);  
    test t2(intf);

  initial
    $monitor("DUT side [%0t] = d data is: %d and q data is: %d",$time,intf.cb.d, intf.cb.q);
endmodule : top
