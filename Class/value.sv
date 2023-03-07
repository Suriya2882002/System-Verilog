class mirafra #(parameter branch,employes);
  bit [branch-1:0]b1;
  bit [employes-1:0]b2;
 
   function new();
    b1=13;
    b2=9;
   endfunction

   function void disp();
    $display("b1=%0d,b2=%0d",b1,b2);
   endfunction

endclass
 
mirafra#(3,2) m;
module value;
  initial begin
    m=new();
    $display("");
    $display("contents of m ");
    m.disp();
    $display("");
  end

endmodule
