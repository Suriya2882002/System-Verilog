class base_class;
  string fan = "OFF";
  string switch = "OFF";
  function void open_electricity();
    string fan = "ON";
    string switch = "ON";
    this.fan = fan;
    this.switch = switch;
    $display("Inside class method : -switch is %0s that's why fan is %0s",switch,fan);
  endfunction
endclass
module this_example;
  base_class b1;
  initial begin
    b1 = new();
    b1.open_electricity;
    $display("Outside class ",b1.switch,b1.fan);
  end
endmodule
    
