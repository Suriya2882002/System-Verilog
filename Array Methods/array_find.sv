
module array_find;
string array[5] = {"bangalore", "yelahanka", "maruthinagar", "oldtown", "newtown"};
string result[$];
string check;
int a[$];
//int a;
initial
begin


  $display("\narray[5] = ['bangalore', 'yelahanka', 'maruthinagar', 'oldtown', 'newtown']");

  $display("\nASCII character and its values \n b=098; \n y=121; \n m=109; \n o=111; \n n=110;");

  $display("\n OUTPUT:");
  result = array.find(check) with (check >="oldtown");
  $display("\n // find()-Returns all elements satisfying (check >='oldtown'):\n\t %p", result);

  a = array.find_index(check) with (check =="yelahanka");
  $display("\n // find_index()-Returns the indices of all elements satisfying(check =='yelahanka'):\n\t %p",a);

  result = array.find_first(check) with (check < "yelahanka" & check >= "newton" );
  $display("\n // find_first()-Returns the first element satisfying(check < 'yelahanka' & check >= 'newton' ): \n\t %p",result);

  a = array.find_first_index(check) with (check < "yelahanka");
  $display("\n // find_first_index()-Returns the index of the first element satisfying(check < 'yelahanka'): \n\t %p",a);

  result = array.find_last(check) with (check <"oldtown");
  $display("\n // find_last()- Returns the last element satisfying(check <'oldtown'): \n\t %p", result);

  a = array.find_last_index(check) with (check < "oldtown");
  $display("\n // find_last_index()-Returns the index of the last element satisfying (check < 'oldtown'): \n\t %p", a);
$display("");
end
endmodule: array_find
