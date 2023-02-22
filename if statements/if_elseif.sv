module if_elseif;
int a,b,c;
initial begin 
 a = 10;
 b = 12;
 c = 13;
 $display ("Assign the value of a = %0d , b= %0d , c =%0d  " ,a,b,c);
 if (a>b)begin 
   $display ("Value of a > b");
 end 
 else if (b<c)begin 
   $display ("value of b<c");
   end
   else if (c<0) begin 
     $display ("c is a negative number ");
   end 
   $display ("Out from ladder block");

 end 
 endmodule 
 
