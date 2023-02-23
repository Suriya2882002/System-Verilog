interface dff(input clk);    
  logic d;   
  logic q;       
  clocking cb @(posedge clk);   
    default input #1step output #0;   
    output q;   
    input d;    
  endclocking      
  modport dut(clocking cb);         
  modport tb(input q, output d, input clk);   

endinterface   
