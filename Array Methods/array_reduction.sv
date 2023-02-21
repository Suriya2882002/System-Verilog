//start of module array_reduction
module array_reduction;
int array[4] = {2,7,0,6};

int res;
initial begin

  $display("\n array[4] ={2,7,0,6}");

  $display("\n OUTPUT : ");

  res = array.sum(); 
  $display("\n // sum()-sum of all element of array: \n\t%0d", res);

  res = array.product(); 
  $display("\n // product()-product of all element of array: \n\t%0d", res);

  res = array.and(); 
  $display("\n // and()-Bitwise AND operation of all element of array: \n\t%b", res);

  res = array.or(); 
  $display("\n // or()-Bitwise OR operation of all element of array: \n\t%b", res);

  res = array.xor(); 
  $display("\n // xor()-Bitwise XOR operation of all element of array: \n\t%b", res);
  $display("");
end



endmodule :array_reduction
