module if_elseif_else;
int a , b,c ;
initial begin 
 a = -12;
 b = 12;
 c = 10;
 if (a>0) 
 begin 
 $display ("a is a negative number");
 end 
 else if (a==0) begin  
   $display ("a is a negative number ");
 end 
   else if (b<c)begin 
     $display ("b is less than c ");
   end 
   else begin 
     $display ("None of the conditon is true in if-elseif blocks ");
     
   end 
   
 end 
 endmodule 




