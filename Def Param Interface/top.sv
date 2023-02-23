
module top();
  count_if intf();
  defparam intf.N=1;
  up_counter u1(intf);
  upcounter_testbench u2(intf);

endmodule:top
