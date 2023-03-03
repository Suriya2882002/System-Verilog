
module disable_fork();

  event e1;
  string a = "Malpe";
  string b = "Kudlu";
  string c;
  initial begin
    #0 $display("[%0t] Thread_T1: Values of a = %0s,b = %0s,c = %0s",$time,a,b,c); 
      fork
      #3 b <= "Delta";
      #4 $display("[%0t] Thread_T2: Values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
     begin
        #1 -> e1;
        c = "Hoode";
        #1 $display("[%0t] Thread_T3: Values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      end
      
      fork
          @(e1.triggered);
          #1 $display("[%0t] Thread_T4: Values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      join
      
      #1 $display("[%0t] Thread_T5: Values of a = %0s,b = %0s,c = %0s",$time,a,b,c);
      
    join_any

    disable fork;
    #1 $display("[%0t] Thread_T6: ending of fork-join",$time);
  
  end

endmodule
