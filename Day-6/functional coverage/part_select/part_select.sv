module part_select();
bit [2:0] a;

covergroup cg; 
  a1:coverpoint a[1:0]; 
  a2:coverpoint a[0];
  a3:coverpoint a[2:1]; 
endgroup

cg cg_inst; 
initial begin
  cg_inst=new();
  for(int i=0;i<5;i++) begin
    a=$random; 
    cg_inst.sample();
    $display("a=%d a1=%b a2=%b a3=%b",a,a[1:0],a[0],a[2:1]);
    $display("\tcoverage %%=%0.2f",cg_inst.get_coverage());
  end
end
endmodule
