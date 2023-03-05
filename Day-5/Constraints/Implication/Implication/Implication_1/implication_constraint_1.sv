


class ABC;
  rand bit [2:0] value1;
  rand bit [3:0] value2;
constraint c_mode { (value1 inside {[1:5]}) -> (value2 <8);}
endclass 


module implication_constraints;
initial begin 
  int i;
    ABC abc;
   abc = new();

   $display("-----Output for implication constraint-----");
   $display("-------------------------------------------");
  for(int i = 0; i< 10 ; i++) begin
   void'(abc.randomize());
    $display("[%0t] @ iteration %0d -----> value1=%0d , value2=%0d" ,$time,i, abc.value1, abc.value2);
  end 
  $display("--------------------------------------------");
end
endmodule
