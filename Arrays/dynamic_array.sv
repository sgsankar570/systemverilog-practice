module dynamic_array;
	int array[];

	initial begin
		array=new[5];
		array='{10,34,76,85,123};

		$display("array is %0p",array);
		$display("the size of the array %0d",array.size());

		array=new[15](array);
		$display("the new size of array %0d",array.size());
		array[13]=34;
		array[14]=98;
		$display("the array is %0p",array);
		
		array.delete();
		$display("the size after delete method %0d",array.size());
		$display("the array is %0p",array);

	end
endmodule
