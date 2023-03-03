
class A;
  
  int a;
  int i;
  mailbox  m;

  function new(mailbox m1);

    this.m = m1;

  endfunction
 
  function void check();
   
    if(m == null)begin:BEGIN_1
        $display("Mailbox is not created");
      end

  

      else
        $display("Mailbox is created");

        $display("............................................");

  endfunction

  task tra_data();

    for(i=0;i<5;i++)begin
          m.put(a);
          a++;
          $display("Value of a =%0d",a);

        end
      
      $display("No of messages in mailbox=%0d",m.num());
  endtask

endclass


module Unbounded_New_Mailbox();

  A a1;
  mailbox main = new();
  initial begin


    a1= new(main);

    $display("");
    $display("");
    a1.check();
    repeat(2)begin=

      $display("............................................");
      a1.tra_data();

    end

  end=

  endmodule


