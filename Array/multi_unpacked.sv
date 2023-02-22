module multi_unpacked;
int abc[2][3];
initial begin
foreach(abc[i]) begin
foreach(abc[i][j]) begin
abc[i][j] = $urandom_range(10,50);
end
end 

foreach(abc[i])
begin
foreach(abc[i][j])
begin
$display("values of abc[%0d][%0d] = %0d",i,j,abc[i][j]);
end
end
end
endmodule
