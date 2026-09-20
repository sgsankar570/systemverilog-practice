module associative_array;
	bit [7:0] array [int];
	int index;

	initial begin
	array[5]=2;
	array[10]=4;
	array[7]=6;
	array[9]=8;
	array[20]=8;
	array[13]=12;
	
	foreach(array[i])
		$display("array[%0d]=%0d",i,array[i]);
	
//array size and no.of elements
	$display("size %0d no.of elements %0d",array.size,array.num);

//exist method
	if(array.exists(7))
		$display("An element exists at index 7");
	else
		$display("no element is there at index 7");

//first, last, prev, next methods
	array.first(index);
	$display("First index of the array %0d",index);

	array.last(index);
	$display("Last index of the array %0d",index);
	
	index=9;
	
	array.prev(index);
	$display("Prev index of 9 is %0d",index);
	
	array.next(index);
	$display("Next index of is %0d",index);
	
	array.delete(7);
	
	foreach(array[i])
		$display("array[%0d] %0d",i,array[i]);
	
	array.delete();
	$display("array size is %0d",array.size());
	
	end
endmodule
