
module fork_join_any();

  event e1;
  string a,b,c,d;
  
  initial begin
    
    $display("[%0t] Thread_T1: Starting of fork_join_any",$time);
    a = "Kapu";
    c = "Malpe";
    
    fork
      
      begin
        #0 $display("[%0t] Thread_T2: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);    
        
        begin
          b <= a;
          #1 $display("[%0t] Thread_T3: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
        end
      
      end
      
      fork
        
        begin
          #3 -> e1;
          $display("[%0t] Thread_T4: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
        end
          
      join
      
    join_any

    #1 $display("[%0t] Thread_T5: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
    
    begin
      wait(e1.triggered);
      d = "Kodi";
      $monitor("[%0t] Thread_T6: Values of a =%0s,b =%0s,c =%0s,d =%0s",$time,a,b,c,d);
    end
  
  end

endmodule
