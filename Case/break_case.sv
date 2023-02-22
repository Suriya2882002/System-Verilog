module case_sv;
bit [1:0] x;

initial begin
  x = 2'b01;
    case(x)
      00 : $display("Value of x = %0b", x);
      01 :begin
          $display("Value of x = %0b",x);
         
           end
      10 : $display("Value of x = %0b",x);
      11 : $display("Value of x = %0b" ,x);
      default : $display("Value of x is not find");
    endcase
  end
  endmodule