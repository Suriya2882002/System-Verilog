class data;
  const int a;
  string b;
  
  function new();
    a=5;
    b="bhavana";
  endfunction
  
  function void display();
    $display("a=%0d,b=%0d",a,b);
  endfunction

endclass

module instance_class;
  data t1;

 
  initial begin
    t1=new();
    t1.b="bjt";
    $display("");
    t1.display();
    $display("");
  end

endmodule

