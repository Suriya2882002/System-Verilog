module priority_case;
bit [2:0] pqr;

initial begin
  pqr = 5;

  priority case (pqr)
5 : $display ("Found to be 5");
5 : $display ("Again found to be 5");
7 : $display ("Found to be 7");
endcase
end
endmodule
