module table_for_loop;

  initial 
  begin

    for (int i=1;i<=2;i++)
    begin
      $display("\n\t%0d Table:\n",i);
      for(int j=1,k=0;j<=10;j++)
      begin
        k=i*j;
        $display("\t %0d X %0d = %0d",i,j,k);
      end
    end
  end

endmodule
