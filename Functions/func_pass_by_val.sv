
module func_pass_by_val;
  
  int result;
  initial
  begin
    $display("\t ----output for function passing by values directly-----");
    $display("\t calling the function");
    result=sum(5,6);
    $display("\n\t@ %0t ns, value of sum is %0d",$time,result);
  end
  function int sum(input int var1,var2);
    return var1+var2;
  endfunction : sum

endmodule 



