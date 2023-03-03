`include "svlib.svh"

module wait_order_event();
  event a,b;

  initial begin
    #10 ->a;
    #10 ->b;
  end

  initial begin
    if ($wait_order(a, b))
      $display("Correct order");
    else
      $display("Incorrect order");
  end
endmodule
