class Mirafra;
  byte teams;
  static byte BJT;
  function new();
    BJT++;
    teams=BJT;
  endfunction
function void disp();
    $display("teams=%0d",teams);
  endfunction

endclass

module static_properties;
  Mirafra m[4];

  initial begin
  
    foreach(m[i]) begin:BEGIN_LOOP
      m[i] = new();
      $display("contents of teams");
      m[i].disp();
    end

  end

endmodule

