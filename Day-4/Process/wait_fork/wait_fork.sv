
module wait_fork();
  
  event e1;
  string a = "Malpe";
  string b = "kudlu";
  string c;
  
  initial begin
    
    #1 $display("[%0t] Thread_T1: values of a = %0s,b = %0s,c = %0s",$time,a,b,c); 
    
   -

    fork
    
      #2 b <= "Delta";

      #0 $display("[%0t] Thread_T2: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
                
      begin
        #1 -> e1;
        c = "Hoode";
        #1 $display("[%0t] Thread_T3: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      end
      
      fork
        wait(e1.triggered);
        #2 $display("[%0t] Thread_T4: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      join
      
      #1 $display("[%0t] Thread_T5: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);

    join_none
    
    wait fork;
    #0 $monitor("[%0t] Thread_T6: values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
  
  end
endmodule
