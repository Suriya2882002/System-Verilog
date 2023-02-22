module queue_array;
int queue1[$];
initial 
begin
queue1 = {2,7,1,9,9,7};
queue1.size();
$display("\n // size()-The size of queue1: \n\t\t%p", queue1.size());
queue1.delete(0);
$display("\n // delete()-After Deleting the int type value '7' from the queue1: \n\t%p", queue1);
queue1.insert(0, 2);
$display("\n // insert()-After insert the array element '2' at zeroth index position of queue1: \n\t%p", queue1);
$display("");
$display("\n // pop_front()-pop front the array element at first index position of queue1: \n\t %p",queue1.pop_front());
$display(" // push_front()-After push front the elements of the  queue1 is :\n\t %p", queue1);
queue1.push_back(1);
$display(" // push_back()-After push back the elements of the queue1 is :\n\t %p", queue1);
$display("");

end
endmodule


