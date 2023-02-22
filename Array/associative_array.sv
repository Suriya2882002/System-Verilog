module associative_array;
int abc[string];
string variable;
string val1;
initial begin
abc = '{ "vadodara" : 10 , "ahmedabad" : 25 , "surendranagar" : 38 , "rajkot" : 55 ,"surat":48};
$display("abc = %p",abc);
$display("%0d",abc.num());
$display("%0d",abc.size());
if(abc.exists ("vadodara")) 
begin
$display("index vadodara exists in array");
end
else 
begin
$display("index vadodara not exists in array");
end
if(abc.first(variable))
begin
$display("abc[%s]=%0d",variable,abc[variable]);
end
if(abc.last(variable))
begin
$display("abc[%s]=%0d",variable,abc[variable]);
end
if(abc.next(val1)) 
begin
$display("abc[%s]=%0d",val1,abc[val1]);
end
abc.delete("surendranagar");
$display("%p",abc);
$display("");
end
endmodule


