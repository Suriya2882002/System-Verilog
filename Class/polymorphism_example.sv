class parent; 
  int a; 
  int b;
  virtual function void display();

     a = 1;
     b = 2;
     $display("This is parent class");
     $display("a = %0d, b= %0d",a,b);
  endfunction
endclass

class child1 extends parent;
  int c,d,e; 
  function void display();
    a = 3;
    b = 4;
    e = a+b;
    $display("This is child class");
    $display("a = %0d, b = %0d,e = %0d",a,b,e);
  endfunction
endclass

class child2 extends parent;
  int f;
  function void display();
    f= a*b;
    $display("f = %0d",f);
    endfunction
  endclass

module poly_ex();

  parent p1[1:0]; 
  child1 c;
  child2 c2;

  initial begin
    c = new();
    p1[0] = c; 
    p1[1] = new(); 
    
    p1[0].display(); 
    p1[1].display();

  end

endmodule
