module priorityif_1;
int a; 
byte b;
initial begin 
 $display ("The default size of a = ",$bits(a));
 $display ("The default size of b = ",$bits(b));
 a = 20;  
 b= 12;   
 priority if (a == $bits(a))begin 
 $display ("Here , value assign to a = default size of a ");
 end 
 else if(a>b)begin 
   $display ("value of a is greater than b ");
 end 
end 
endmodule 