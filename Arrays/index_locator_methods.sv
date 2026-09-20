module index_locator_method;
	int array[9]='{2,1,7,3,1,8,9,6,4};
	int res[$];
	
	initial begin

//with clause with local variable x where item is a key word without local variable
		res=array.find_index(x) with (x>4);
		$display("find_index %p",res);

		res=array.find_first_index with (item >7 & item<9);
		$display("find_first_index %p",res);

		res=array.find_last_index with (item>6);
		$display("find_last_index %p",res);

	//optional with clause
		res=array.unique_index();
		$display("unique_index %p",res);

//array iterator index quering. method shall operate on both index and element.it returns index value of the satisfied condition

		res=array.find with(item==item.index);
		$display("element whose value is equal to the index value is %p",res);
		
		res=array.find with(item>item.index);
		$display("element whose value is greater than the index value is %p",res);
	end
endmodule
