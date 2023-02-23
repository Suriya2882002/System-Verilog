module and_gate(and_intr inf);
   assign inf.DUT_MP.r = (inf.DUT_MP.p) & (inf.DUT_MP.q);
endmodule : and_gate
