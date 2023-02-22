module unpacked_array;
byte a[8];
initial begin
a = {4,5,6,2,3,7,9,10};
$display("Displaying values of unpacked arrays");
foreach(a[i])
begin
$display("values of a[%0d] = %0d",i,a[i]);
end
end
endmodule
