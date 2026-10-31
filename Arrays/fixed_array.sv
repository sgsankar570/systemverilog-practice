//fixed size array single dimentional array

module fixed_single_dimentional;
	int array[5];

	initial begin
		array='{100,200,300,400,500};
		
		$display("array[4] is %0d",array[4]);

		foreach(array[i])
			$display("array[%0d] is %0d",i,array[i]);
	end
endmodule

//fixed size array two dimentional array

module fixed_two_dimentional;
	int array[5][2]='{'{10,20},'{40,80},'{100,140},'{5,7},'{8,9}};

	initial begin
		$display("array[3][1] is %0d",array[3][1]);
		
		foreach(array[i,j])
			$display("array[%0d][%0d] is %0d",i,j,array[i][j]);
	end
endmodule

//fixed size array multi dimentional array

module fixed_multi_dimentional;
	int array[4][3][2]='{'{'{1,2},'{3,4},'{5,6}},'{'{7,8},'{9,10},'{11,12}},'{'{13,14},'{15,16},'{17,18}},'{{19,20},'{21,22},'{23,24}}};

	initial begin
		$display("array[2][2][1] is %0d",array[2][2][1]);

		foreach(array[i,j,k])
			$display("array[%0d][%0d][%0d] is %0d",i,j,k,array[i][j][k]);
	end
endmodule

//packed array

module packed_array;
	bit [2:0][3:0] array='{4'ha,4'hf,4'h5};

	bit [11:0] arr='{12'haf5};

	initial begin
		$display("arr is %0h",arr);

		$display("array[2] is %0h",array[2]);
		$display("array[2][2] is %0h",array[2][2]);

		foreach(array[i])
			$display("array[%0h] is %0h",i,array[i]);

		foreach(array[i,j])
			$display("array[%0d][%0d] is %0d",i,j,array[i][j]);
	end
endmodule

//unpacked array

module unpacked_array;
	int array[3][4]='{{1,2,3,4},{5,6,7,8},{9,10,11,12}};

	initial begin
		$display("array[2][3] is %0d",array[2][3]);
		
		foreach(array[i,j])
			$display("array[%0d][%0d] is %0d",i,j,array[i][j]);
	end
endmodule
		
//combination of packed and unpacked array

module array_ex;
	bit [3:0] array [0:3][0:1]='{{10,13},{12,8},{9,5},{15,9}};

	initial begin
		foreach(array[i,j])
			$display("array[%0d][%0d] is %0d",i,j,array[i][j]);
	end
endmodule











