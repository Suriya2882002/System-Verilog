module priorityif_2;
int a,b,c;
initial begin 
  a = 10;
  b =20;
  c = 30;
$display ( "The value of a =%0d  b = %0d  c = %0d ", a,b,c);
priority if (a>b)begin
  $display (" a <b");
end 
else if ( b <c )begin //true 
  $display ("b<c");
end 
else if (a <c )begin //true
  $display ( "a < c ");
end 
$display ("Out from the conditional block ");
end 
endmodule 