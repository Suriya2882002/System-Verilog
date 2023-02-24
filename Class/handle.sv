class home;
  bit light;
  int fan;
  string switch;
  
  task open_electricity();
    switch = "ON";
    $display("switch is %s so electricity is open", switch);
  endtask : open_electricity
  
endclass : home

module tb;
  home h1;
  
  initial begin
    $display("Let's declare handle");
    $display("Check whether the object is created or not");
    
    if (h1 == null)
      $display("object is empty");
    else
      $display("object is not empty");
  end
endmodule : tb
