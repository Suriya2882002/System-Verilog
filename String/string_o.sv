module string_o;
string str1 ="Manipal";
string str2 ="Udupi";

initial begin
$display("\nstr1 = Manipal");
$display("str2 = Udupi");
$display("\n// str1 == str2, Equality operator");
$display("// Output of equality operator");
if(str1==str2)
$display("string1 and string2 are equal");
else
$display("string1 and string2 are not equal");
$display("\n// str1 != str2, Inequality operator");
$display("// Output of inequality operator");
if(str1!= str2)
$display("string1 and string2 are not equal");
else
$display("string1 and string2 are equal");
$display("\n// Comparision operator ( > => < <= ), compares ascii value");
$display("// Output of comparision operator");
if(str1 < str2)
$display("String1 < String2 ");
if(str1 <= str2)
$display("String1 <= String2 ");
if(str1 > str2)
$display("String1 > String2");
if(str1 >= str2)
$display("String1 >= String2");
$display("\n// Concatenation of str1 and str2,{str1,str2}");
 $display("// Output of concatenation operator");
$display("%s", {str1,str2});
$display("\n// Replication of str1,{2{str1}}");
 $display("// Output of replication operator");
 $display("%s",{2{str1}});
$display("\n// Displaying index letter of a string,str1[i]");
$display("// Output");
for(int i =0 ;i <7 ; i++)
$display("%s ",str1[i]);
 $display("");

end

endmodule : string_o
