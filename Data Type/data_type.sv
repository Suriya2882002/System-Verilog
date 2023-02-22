module data_type;
bit single_bit_data;
bit [3:0] multi_bit_data;
byte byte_data; 
int int_data;
logic [2:0]logic_data_type;
longint longint_data;
real real_data; 
shortint shortint_data;
time time_data; 
enum {MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY,SATURDAY,SUNDAY }days;
initial begin
$display("\nBefore initialization Default value of single bit data = %0b", single_bit_data);
$display("Before initialization Default value of 4 bit data = %0b", multi_bit_data);
$display("\nBefore initialization Default value of byte data = %0b", byte_data);
$display("\nBefore initialization Default value of int = %0b",int_data);
$display("\nDefault value of logic data type =%b",logic_data_type);
$display("\nBefore initialization Default value of longint = %0b",longint_data);
$display("\nBefore initialization Default value of real = %0d",real_data);
$display("\nBefore initialization Default value of shortint = %0b",shortint_data);
$display("\nBefore initialization initial value of time = %0t",time_data);
single_bit_data =1;
multi_bit_data = 4'b1100;
byte_data = 8'b10101101; 
int_data = 32'b110100101010; 
logic_data_type=3'b101;
longint_data = 64'b11x01xz001x01010;
real_data =4.43;
shortint_data = 16'b1101001010101001;
time_data = $time;
days = days.first; 
for(int i=0;i<7;i++) begin
$display("Days name = %0s  and its default value is = %0d",days.name,days);
days = days.next; // assign next day in variable
end
$display("\nAfter initialization value of single bit data = %0b", single_bit_data);
$display("After initialization value of 4 bit data = %0b", multi_bit_data);
$display("\nAfter initialization value of byte data in binary format = %0b", byte_data);
$display("\nAfter initialization maximum value of int = %0b\n", int_data);
$display("\nValue of logic data type  after initialization =%b",logic_data_type);
$display("\nAfter initialization value of longint = %0b\n", longint_data);
$display("\nAfter initialization value of real = %f\n", real_data);
$display("\nAfter initialization value of shortint = %0b", shortint_data);
$display("\nAfter initialization value of time = %0t\n", time_data);



end
endmodule