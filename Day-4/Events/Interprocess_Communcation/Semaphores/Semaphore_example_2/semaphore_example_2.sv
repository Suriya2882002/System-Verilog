
module semaphore_example_2;

   semaphore sem=new(6);  

   initial begin 
      $display("In first initial block At time=[%0t]",$time);
      sem.get(4);    
      $display("Thread 1:Accessing 4 keys from semaphore  At time=[%0t]",$time);
      #5;
      sem.put(2);       
      $display("Thread 1:Done using 2 keys  At time=[%0t]",$time);
      #20;
      $display("Thread 1:Still using the remainig 2 keys  At time=[%0t]",$time);
   end 

   initial begin 
      $display("In second initial block  At time=[%0t]",$time);
      sem.get(5);   
      $display("Thread 2:Accessing 5 keys from semaphore  At time=[%0t]",$time);
      #10;
      sem.put(5);
      $display("Thread 2:Done using 5 keys  At time=[%0t]",$time);
  end 
endmodule 
