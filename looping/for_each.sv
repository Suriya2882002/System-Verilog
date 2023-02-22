module foreach_loop();

  int array[5];

  initial 
  begin 

   

    foreach(array[i])
    begin 
      array[i]=i;
      $display("\tarray[%0d]=%0d",i,array[i]);
    end 

     
  end 

endmodule 

