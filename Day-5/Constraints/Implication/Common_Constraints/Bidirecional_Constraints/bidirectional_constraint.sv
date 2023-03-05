class items;
 rand bit [3:0] value1;
  constraint addr_mode1 { value1 > 5;

                         value1 <12;}

  constraint addr_mode2 {value1>6;}

endclass
module bidirectional_constraint;
initial begin

    int i;
   items  item;
  item = new();

  $display(" -----Output for bidirectional constraint-----");

  $display(" -----constraint 1 & 2 limits the value to 7,8,9,10 and 11-----");
  $display("----------------------------------------------------------------");
  for (int i =1;i<10;i++) begin
   void'(item.randomize());
    $display("[%0t] @ iteration %0d -----> value1 = %0d",$time, i, item.value1);
  
  end
  $display("----------------------------------------------------------------");
end
endmodule
