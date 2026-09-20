module array_ordering_methods;
	int array[8]='{2,1,7,1,3,8,9,6};
//illegal assignment pattern if the size and the elements are not same
	initial begin
		$display("before sort %p",array);
		array.sort();
		$display("after sort %p",array);
		array.shuffle();
		$display("after shuffle %p",array);
		array.rsort();
		$display("after rsort %p",array);
		array.reverse();
		$display("after reverse %p",array);
	end
endmodule
