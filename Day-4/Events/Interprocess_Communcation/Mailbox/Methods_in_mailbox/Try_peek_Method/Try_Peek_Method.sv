
class A;
    
  int a;
  int i;
  mailbox m;
          
  function new(mailbox m1);
    this.m = m1;
  endfunction
                    
  task tra_data();

    for(i=0;i<1;i++)begin:BEGIN_MAIN

      a++;
      m.put(a);
      $display("[%0t] 1. Transmitter: value of a = %0d",$time,a);

    end
    $display("put successful");
    $display("Messages in mailbox = %0d",m.num());
                                                                    
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

    for(i =0;i<2;i++)begin
     if( m.try_peek(a)) begin
      $display("[%0t] Peeking value of a = %0d",$time,a);
      $display("Peek successful");
    end
     else
     begin
      $display("Peek failed as mailbox is empty");
      return;
    end
    end

    m.get(a);
    $display("Receiver: value of a = %0d",a);
    $display("get successful");

  endtask

endclass


module Try_Peek_Method();
    
  A a1;
  B b1;
  mailbox main = new(2);  
        
  initial begin=

    a1 = new(main);
    b1 = new(main);
    a1.tra_data();
    $display("...............................................");
    b1.rec_data();
    $display("...............................................");
    b1.rec_data();
    $display("End of program");

  end

endmodule
