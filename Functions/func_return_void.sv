
module func_return_void;
  
  initial
  begin
  end
  function void display(string str);
    $display("%s",str);
  endfunction : display

endmodule : func_return_void
