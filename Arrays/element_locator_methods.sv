module element_locator_method;
	int array[9]='{2,1,7,3,10,8,5,9,6};
	int res[$];

	initial begin
		res=array.find(x) with (x>4);
		$display("find(x) %p",res);

		res=array.find_first with (item>3 & item<6);
		$display("find_first %p",res);

		res=array.find_last with (item<7 & item >=1);
		$display("find_last %p",res);

	//optional with clause
		res=array.min();
		$display("min %p",res);
		res=array.max();
		$display("max %p",res);
		res=array.unique();
		$display("unique %p",res);
	end
endmodule
