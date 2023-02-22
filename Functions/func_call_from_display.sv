module func_call_from_display;
 initial
  begin
    $display("\n\t@ %0t ns, value of sum is %0d",$time,sum(5,6));
  end
  function int sum(input int var1,var2);
    $display("\n\tentered into function");
    return var1+var2;
  endfunction

endmodule 



