class parent;
  int a,b;
  local int c;
  local int d = 5;

  function int sum(int val1,val2);
    c = val1 + val2;
    return c;
  endfunction:sum

  function void display();
    $display("sum = %0d",c);
    $display("d = %0d",d);
  endfunction
endclass

class child extends parent;

  function void disp();
    
  endfunction

endclass


module encap();

  parent p;
  child c1;
  int e;

  initial begin
    p = new();
    c1 = new();
    e = p.sum(5,10);
    p.display();
  end

endmodule


