module array_reduction_method;
	int array[8]='{2,1,7,3,1,8,9,6};
	
	initial begin
		$display("array sum %0d",array.sum);
		$display("array product %0d",array.product);
		$display("array and %0d",array.and);
		$display("array or %0d",array.or);
		$display("array xor %0d",array.xor);
	end
endmodule
