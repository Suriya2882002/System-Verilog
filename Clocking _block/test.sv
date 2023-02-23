
module test(dff.tb intf);
  task drv;
    repeat(10)
    begin
    @(posedge intf.clk )
      intf.d <= $random;
      $display("test side[%0t] = d data is :%d and q data is :%d",$time,intf.d, intf.q);
    end
    $finish;
  endtask 
  initial begin
    drv();
  end 
endmodule 
