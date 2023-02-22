module unique0_if;
int  age ; 
initial begin 
  age = 17;
  $display ("The age of the person = %0d ",age);
  $display ("----------------------------------");
unique0 if(age >18)begin   
    $display ("Eligible for voting");
  end 
  else if(age>30) begin 
    $display ("Eligible as candidate for PM election in India ");
  end 
  else if(age ==10)begin 
    $display ("Wait for 8 years more. ");
end 
$display ("Out from the conditional block ");

end 
endmodule 


