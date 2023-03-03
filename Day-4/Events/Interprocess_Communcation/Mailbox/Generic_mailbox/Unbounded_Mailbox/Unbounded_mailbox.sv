
class A;

  int a;
  int i;
  mailbox m;

  function new(mailbox m1);
    this.m = m1;
  endfunction

  task tra_data();

    for(i =0;i<3;i++)begin:BEGIN_MAIN

      a++;
      m.put(a);
      $display("[%0t] 1. Transmitter: value of a = %0d",$time,a);

    end

  endtask

endclass
class B;

  int a;
  int i;
  mailbox m;
       
  function new(mailbox m2);
    this.m = m2;
  endfunction
               
  task rec_data();

    begin

      m.get(a);
      $display("[%0t] 2. Receiver: value of a = %0d",$time,a);

    end
    

  endtask

endclass

                                      
module unbounded_mailbox();
                                            
  A a1;
  B b1;
  mailbox main = new();  
                                         
  initial begin
    a1 = new(main);  
    b1 = new(main);
                                                                  
    repeat(2)
    begin

      a1.tra_data();
      $display("...............................................");
      b1.rec_data(); 

    end

  end

endmodule:tb  
