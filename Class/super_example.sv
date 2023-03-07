class base_class;
  string fan,switch;
  function void display();
    switch = "ON";
    $display("Here using super keyword we can get both display() methods");
    $write("switch is %s" ,switch);
  endfunction
endclass


class sub_class extends base_class;
  string fan = "ON";
  
  function void display();
    super.display;
    $write("that's why fan is %s \n" ,fan);
  endfunction
endclass

sub_class s1;

module super_example;
  initial 
  begin
    s1 = new();
    s1.display();
  end
endmodule
