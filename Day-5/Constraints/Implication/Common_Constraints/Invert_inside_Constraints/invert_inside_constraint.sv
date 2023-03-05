
class PQR; 
  rand bit [3:0] var2;
  constraint C1 {!(var2 inside {[3:9]});}

endclass
  
module invert_inside_constraint;
initial begin

int i;
  PQR pqr;
  pqr=new();
  $display("-----Output for invert inside constraint-----");
  $display("---------------------------------------------");
  for(int i =1; i<7;i++)
  
  begin
    void'(pqr.randomize());
    $display("[%0t] @ iteration: %0d -----> var2=%0d",$time,i,pqr.var2);
  end
  $display("---------------------------------------------");
end
endmodule
