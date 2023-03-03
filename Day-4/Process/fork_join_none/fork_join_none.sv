
module fork_join_none();

  event e1;
  string a,b,c,d;
  
  initial begin
    
    $display("[%0t] Thread_T1: Starting of fork_join_none",$time); 
    a = "Kapu";
    c = "Malpe";
    
    
    fork
      
      begin
        #1 $display("[%0t] Thread_T2: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);    
        b <= a;
        #1 $display("[%0t] Thread_T3: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
      end
      
      fork
        #2 -> e1;
        $display("[%0t] Thread_T4: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
      join
      
    join_none

    #1 $display("[%0t] Thread_T5: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
    wait(e1.triggered);
    d = "Kodi";
    $monitor("[%0t] Thread_T6: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
  
  end

endmodule
