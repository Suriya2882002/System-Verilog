struct{
    string name;
    bit[15:0] salary;
    byte id;
 }employee_s;

module struct1;
initial begin 
employee_s = '{ "sam",16897,123};
  $display("\n employee_s = %p" ,employee_s); //Display the values.
 end  
endmodule


