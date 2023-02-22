module while_simple;
 
     int x = 2; 
  initial begin 
   while ( x<5)begin 
   int a;  
    $display ("The size of a = %0d",$size(a));
  x++;    
  end
while (x<8)begin
  $display ("x is a global varaible ");
  $display ( "The value of x = %0d",x);
  
 x++;
end 
 end 
 endmodule
