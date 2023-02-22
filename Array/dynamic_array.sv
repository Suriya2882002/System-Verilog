module dynamic_array;
int abc[];
initial begin
abc = new[7];
abc = {11,12,13,14,15,16,17};
foreach(abc[i])
begin
$display("value of abc[%0d]=%0d",i,abc[i]);
end
$display("%0d",abc.size());
abc.delete();
$display("%0d",abc.size());


end
endmodule

