module priorityif_3;
int bill;
initial begin 
  bill = 6000;
  $display ("Total bill = %0d",bill);
  priority if (bill < 1000)begin  
    $display ("No discount");
  end 
  else if (bill ==8000)begin 
    $display ("10% discount available ");
  end 
  else if (bill >8000)begin  
    $display ("15% discount available");
  end 
    $display ("Out from the conditional block");

end 
endmodule 
