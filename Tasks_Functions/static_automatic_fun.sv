module static_automatic_fun;

	function static increment_static;
		static int count_A;
		automatic int count_B;
		int count_C;
	
		count_A++; count_B++; count_C++;

		$display("Static: count_A %0d | count_B %0d | count_C %0d",count_A,count_B,count_C);
	endfunction

	function automatic increment_automatic;
		static int count_A;
		automatic int count_B;
		int count_C;

		count_A++; count_B++; count_C++;
		
		$display("Automatic: count_A %0d | count_B %0d | count_C %0d",count_A,count_B,count_C);
	endfunction

	function increment;
		static int count_A;
		automatic int count_B;
		int count_C;
		
		count_A++; count_B++; count_C++;
		
		$display("normal: count_A %0d | count_B %0d | count_C %0d",count_A,count_B,count_C);
	endfunction

	initial begin
		repeat(3) increment_static();
		repeat(3) increment_automatic();
		repeat(3) increment();

		$display("Static: count_A %0d",increment_static.count_A);

	//	$display("Automatic: count_B %0d",increment_automatic.count_B);
//Hierarchical reference to automatic variable is not allowed
		$display("Normal : count_C %0d",increment_static.count_C);
	end
endmodule
			
//Arguments pass by value 
//if any changes to arguments with in the subroutine, those changes will not be visible outside the subroutine

module pass_by_value;
	int a,b,c;

	function int sum(int x,y);
		x=x+y;	//25+35=60
		y=x+y;	//60+35=95
		return x+y;	//60+95=135
	endfunction

	initial begin
		a=25;b=35;
		$display("x %0d | y %0d",a,b);		//25 35
	
		c=sum(a,b);
		$display("x %0d | y %0d | z %0d",a,b,c);	//25 35 135
	end
endmodule


//arguments pass by reference
//as the arguments with in a subroutine is pointing to an original arugments, any changes with in subroutine will be visible outside

module pass_by_ref;
	int a,b,c;

//the task or function sum with ref arguments x y must be automatic
	function automatic int sum(ref int x,y);
		x=x+y;	//20+30=50
		y=x+y;	//50+30=80
		return x+y;	//50+80=130
	endfunction

	initial begin
		a=20;b=30;
		$display("a %0d | b %0d",a,b);	//20 30

		c=sum(a,b);
		$display("a %0d | b %0d | c %0d",a,b,c);	//50 80 130
	end
endmodule

//arguments with default values

module default_values;
	
	function int sum(int x=5,y=10,z=15);
		x=x+y+z;
		return x+y;
	endfunction

	initial begin
		$display(sum());
	end
endmodule

//arguments pass by name

module pass_by_name;
	function void display(real x,string y);
		$display("x is %0f| y is %0s",x,y);
	endfunction

	initial begin
		display(.y("Welcome"),.x(57.34));
	end
endmodule


	



