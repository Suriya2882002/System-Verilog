module func_array_from_display;
  typedef int array[5];
  array array_hndl;
  initial
  begin
    $display("\n\t@ %0t ns, Array elements = %0p",$time,fun_arr(array_hndl));
  end
  function array fun_arr(int arr[5]);
    foreach(arr[i])begin
      arr[i]=i+1;
    end
      $display("\tvalues assigned to array elements starts from 1");
      array_hndl=arr;
      return array_hndl;
    endfunction
endmodule
