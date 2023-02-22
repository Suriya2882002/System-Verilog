module if_else;
byte a;
initial begin
  a = -1;
  if(a>0)begin
    $display ("a is a postive number");
  end 
  else 
    $display ("Number is negative");
end 
endmodule 
