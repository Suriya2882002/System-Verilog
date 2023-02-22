module nested_loop;
  initial 
  begin
for (int i=1;i<=3;i++)
      begin
        for(int j=1;j<=3;j++)
        begin
          if(i==2)
          
          $display("\t i= %0d , j= %0d ",i,j);
    
   
  end

  
      end
    endtask
endmodule:nested_loop
