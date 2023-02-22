module func_pass_by_variables;
  
  int result,addend,augend;
  initial
  begin
    addend=5;
    augend=6;
    $display("\tcalling the function");
    result=sum(addend,augend);
    $display("\n\t@ %0t ns, value of sum is %0d",$time,result);
  end
  function int sum(input int var1,var2);
    return var1+var2;
  endfunction : sum

endmodule 