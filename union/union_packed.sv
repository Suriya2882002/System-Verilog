typedef union packed {
  bit [7:0] var1;
  logic [7:0] var2 ;
} obj;
module union_packed; 
  obj obj1; 
  initial begin 
    obj1.var1 = 20;
    $display("\n obj1.var1 = %0d" ,obj1.var1);
    obj1.var2 = 30;
    $display("\n obj1.var2 = %0d" ,obj1.var2); 
    $display("\n size is:",$bits(obj));
  end 
endmodule