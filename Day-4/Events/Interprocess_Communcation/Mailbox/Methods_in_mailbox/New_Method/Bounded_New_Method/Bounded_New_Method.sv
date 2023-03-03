
class A;
  
  int a;
  int i;
  mailbox  m;

  function new(mailbox m1);

    this.m = m1;

  endfunction

  task check();

      if(m == null)begin:BEGIN_1
        $display("Mailbox is not created");
      end

      else
        $display("Mailbox is created");

        for(i=0;i<3;i++)begin

          a++;
          m.put(a);
          $display("Value of a = %0d",a);

        end
  endtask

endclass


module Bounded_New_Method();

  A a1;
  mailbox main = new(3);
  initial begin


    a1= new(main);

    $display("");
    $display("");
    a1.check();

  end

  endmodule


