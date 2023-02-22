
module packed_array;
bit [3:0]abc;
initial begin
abc = 4'b0110;
$display("displaying the bit data type values");
foreach(abc[i])
begin
$display("data of abc[%0d] = %b",i,abc[i]);
end
end
endmodule