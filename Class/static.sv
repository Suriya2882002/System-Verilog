class Mirafra;
  static int  team ;
  
  function new();
    
    team ++;
  endfunction
  
  
  static function void disp();
    $display("\t team=%0d",team);
  endfunction

endclass:Mirafra

module static_method;
  Mirafra m[3];

  initial begin
    $display("");
    foreach(m[i])begin:BEGIN_LOOP
      m[i]=new;
    end

    $display("\t contents of team");
    m[2].disp();
    $display("");
  end

endmodule


