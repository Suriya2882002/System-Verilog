class packet;
  string a;
  int b;

  function new();
    a="Team";
    b=4;
  endfunction

  virtual function void display();
    $display("a=%0d",a);
    $display("b=%0d",b);
  endfunction

endclass:packet

class pack extends packet;
  string c;
  int d;

  function new();
    c="BJT";
    d=8;
  endfunction

  function void display();
    // super.display();
    $display("c = %0d",c);
    $display("d = %0d",d);
  endfunction:display

endclass:pack

class pack1 extends packet;
  string e;

  function new();
    e="Manipal";
  endfunction:new
  
  function void display();
    $display("e = %0d",e);
  endfunction

endclass
packet pp0,pp1;
pack p2;
pack1 p3;

module virt_fun;

  initial begin
    p2=new();
    p3=new();
    pp0=p2;
    pp1=new p3;
    pp0.display();
    pp1.display();
  end

endmodule

