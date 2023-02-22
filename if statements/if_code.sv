module if_code;
bit[3:0]a;
initial
begin
a=10;
if (a==10)begin 
$display ( "a is equal to 10 " );
end
$display("out of if block");
end
endmodule

