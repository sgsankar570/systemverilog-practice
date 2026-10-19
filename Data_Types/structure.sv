//Unpacked structure

module structure;
	struct{ string name;
		bit [31:0] salary;
		integer id;
		}empoly;

	initial begin
		empoly.name="AJAY KUMAR";
		empoly.salary=25000;
		empoly.id=570;
		$display("empoly %p",empoly);
		$display("empoly: name %s| salary %0d| id %0d",empoly.name,empoly.salary,empoly.id);
	end

endmodule

//----------------------------------------------------------------------------------------------------

//Unpacked structure with typedef

module structure;
	typedef struct{ string name;
		bit[31:0] salary;
		int id;
		}empoly;

	empoly e1,e2;

	initial begin
		e1.name="RAMESH";
		e1.salary=25000;
		e1.id=570;
		$display("empoly e1: %p",e1);

		e2.name="SURESH";
		e2.salary=35000;
		e2.id=904;
		$display("empoly e2: %p",e2);
	end
endmodule

//----------------------------------------------------------------------------------------------------

//Packed structure

module structure;
	typedef struct packed { bit[31:0] salary;
			int id;
			}empoly;

	empoly e1,e2;
	
	initial begin
		e1.salary=5000;
		e1.id=456;
		$display("empoly e1: %p",e1);
		
		e2.salary=7000;
		e2.id=432;
		$display("empoly e2: %p",e2);
	end
endmodule

//------------------------------------------------------------------------------------------------------

//Passing structure in a function / task

module structure;
	typedef struct{ string name;
			bit[31:0] salary;
			int id;	
			}empoly;

	function void display_struct(empoly emp);
		$display("empoly %p",emp);
	endfunction

	function empoly struct_function(string name,bit[31:0] salary,int id);
		empoly emp;
		
		emp.name=name;
		emp.salary=salary;
		emp.id=id;
		return emp;
	endfunction

	initial begin
		empoly emp1,emp2;
		emp1=struct_function("RAJU",25000,345);
		emp2=struct_function("RANI",30000,432);
		display_struct(emp1);
		display_struct(emp2);
	end
endmodule
