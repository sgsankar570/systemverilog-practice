//function returns a value through it's function name without considering the output port inside

module fun_sum;
	int a,b,out;
// can't have packed array of integer type int [2:0] variable

	function int sum;
//number of actuals and formals does not match in functional call int x,y .we have to mention direction

		input int x,y;
		
		sum=a+b;
	endfunction

	initial begin
		a=1;b=5;
		out=sum(a,b);

		$display("The sum of %0d and %0d is %0d",a,b,out);

		#2 a=7;b=7;
		out=sum(a,b);
		
		$display("The sum of %0d and %0d is %0d",a,b,out);
	end
endmodule

//task can work by considering the global ports or by internal ports like input output inout ports

module task_sum;
	int a,b,out;

	task sum;
		input int x,y;
		output int z;
		z=x+y;
	endtask
	
	initial begin
		a=10;b=5;
		sum(a,b,out);
		$display("The sum of %0d and %0d is",a,b,out);
	end
endmodule

//void function no return value. just simple execute the operation present in side the function

module fun_void;

	function void display;
		$display("Current simulation time is %0t",$time);
	endfunction

	initial begin
		display();
		#10 display();
		#50 display();
	end
endmodule

//function can accept arguments input output inout in system verilog

module fun_output_arg;
	int a,b,out;
	
	function int summation;
		input int x,y;
		output int sum;

		sum=x+y;
	endfunction

	initial begin
		a=10;b=7;
		summation(a,b,out);
//Warning: treating stand alone use of function summation as an void cast
//Warning: function summation has no return value assignment
		$display("the sum of %0d and %0d is %0d",a,b,out);
	end
endmodule

//funtion with the return statement 

module fun_return;
	int a,b,out;

	function int sum;
		input int x,y;	
		output int s;

		s=x+y;
		return s;
//return value is required with in the function return variable;
		$display("the sum of x and y is %0d",s);
	endfunction

	initial begin
		a=10;b=9;
		$display("the sum of %0d and %0d is %0d",a,b,sum(a,b,out));
	end
endmodule

//return statement with no expression

module task_return;
	int a,b,out;

	task task_ret;
		input int x,y;
		output int sum;
	
		sum=x+y;
		return;
		$display("the result sum is %0d",sum);
	endtask

	initial begin
		a=25;b=57;
		task_ret(a,b,out);
		$display("the resule of %0d and %0d is %0d",a,b,out);
	end
endmodule
		


	
	















