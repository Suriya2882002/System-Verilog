module cover_point();
bit [3:0] a;
bit [3:0] arr[4]='{2,5,0,12};

covergroup cg; 
  a1:coverpoint a;
endgroup

cg cg_inst; 

initial begin
  cg_inst = new();
  foreach(arr[i]) begin
    a=arr[i]; 
    cg_inst.sample(); 
    $display("a=%d coverage %%=%0.2f",a,cg_inst.get_inst_coverage());
  end
end
endmodule
