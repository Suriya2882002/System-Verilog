module fork_join();
event e1;
int a=5,b=6,c,d;
  initial begin
    $display("[%0t] Thread_T1: Values of a= %0d,b= %0d, c= %0d,d= %0d",$time,a,b,c,d); 
     fork
      begin
        #1 a <= b;
        b <= 7;
        $monitor("[%0t] Thread-T2: Values of a= %0d,b= %0d, c= %0d,d= %0d",$time,a,b,c,d);
        #1 ->e1;
        c = b;
      end
 begin
        wait(e1.triggered);
        $display("[%0t] Event is triggered",$time);     
    begin
          #1 d = c;
          b <= 1;
        end
end

    join
    
    $display("[%0t] Thread_T3: value of a= %0d,b= %0d, c= %0d,d= %0d",$time,a,b,c,d);

   end

endmodule
