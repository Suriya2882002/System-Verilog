class home;
  string switch;
  string fan = "OFF";
  extern function void display();
endclass
function void home::display();
  string switch="OFF";
  $display("The switch is %0s that's why fan is %0s",fan,switch);
endfunction

module extern_example;
  home h;

  initial begin
    h=new();
    $display("Using extern keyword we are creating prototype for our function in the class");
    $display("Then we are declaring the function outside the class");
    h.display;
  end

endmodule
