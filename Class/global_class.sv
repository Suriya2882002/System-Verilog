
class data;
  string a;
  const int b=1;
  
  function new();
    a="team";
  endfunction
  
  function void display();
    $display("a=%0d,b=%0d",a,b);
  endfunction

endclass

module global_class;
  data p1;

  initial begin:BEGIN_I
    p1=new();
    $display(""); 
    p1.display();

    $display("");
  end

endmodule
