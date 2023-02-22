module non_blocking();
int greatest_number = 10;
int smallest_number = 5;

initial
begin
$display("Greatest_number = %0d & lesser_number = %0d,greatest_number,smallest_number);
end
initial 
begin
$display("swapping");
smallest_number <= greatest_number;
greatest_number <= smallest_number;
$display(" Greater_number=%0d & Lesser_number=%0d",greater_number,smallest_number); 
end
endmodule

