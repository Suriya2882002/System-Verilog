module union_unpacked; 
union {
        int x;
        byte y;
    } datas;
initial begin
datas.x = 100;
        $display("\n x = %0d", datas.x );
        $display("\n y = %0d", datas.y );
datas.y = 56;
        $display("\n x = %0d", datas.x );
        $display("\n y = %0d", datas.y );
        $displayh("\n datas = %p", datas);
        $display("\n size of unpacked union :", $bits(datas));
end
endmodule