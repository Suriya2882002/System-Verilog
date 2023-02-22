module blocking_swap();
  initial
  begin
    $display("Inital : ");
    $display("Greater_number=%0d & Lesser_number=%0d",Greater_number,Lesser_number);
  end
  initial
  begin
    $display("swapping with Temporary variable : ");
    Temp_variable=Greater_number;
    Greater_number=Lesser_number;
    Lesser_number=Temp_variable;
    $display("Greater_number=%0d & Lesser_number=%0d",Greater_number,Lesser_number);
  end
  initial
  begin
    $display("swapping without Temporary variable : ");
    Greater_number=Lesser_number;
    Lesser_number=Greater_number;
    $display("Greater_number=%0d & Lesser_number=%0d",Greater_number,Lesser_number);
  end

endmodule 

