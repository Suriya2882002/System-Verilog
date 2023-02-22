module continue_sv;
int array[5];
initial 
begin
foreach(array[i])
begin 
if(i == 2)begin
$display("calling continue");
continue;
end
else
array[i]=i;
$display("array[%0d] = %0d",i,array[i]);
end
end
endmodule