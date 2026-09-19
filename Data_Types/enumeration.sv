module enumeration;
	enum bit [0:2]{a=1,b,c,d} alpha;
//outside the reprasentation of the enum range 0:2 we can reprasent 0 to 7 any other value is outof bound a=10;
	enum {apple=5,bat,cat=7,dog} nam;
//	enum {apple=5,bat,cat=7,2dog} nam;
//cat don't have any unique value named constants should have unique values cat=6;
//unexpected integer number in side the enum , name not start with numericals 2dog;
//	enum {3,4,5,8} numerical;
//unexpected integer number expected identifier type identifier and nettype identifier;
	initial begin
		alpha=a;
		$display("name of the element %0s value is %b",alpha.name,alpha); 
		alpha=c;
		$display("name of the element %0s value is %b",alpha.name,alpha);

		nam=bat;
		$display("name of the element %0s value is %0d",nam.name,nam);
	//	numerical=3;
	//	$display("name of the element %0s value is %0d",numerical.name,numerical);
	end
endmodule

module enumeration_typedef;
	typedef enum {true,false} status; //status is enum data type
	status s1,s2; //s1,s2 are enum variables, we can assign values to variables not to data type

	typedef union {int i; byte value;} un;
	un un_var;
// dynamic types not allowed in side in non taged union
	initial begin
		s1=true;
		s2=false;
		$display("name is %0s value is %0d",s1.name,s1);
		$display("name is %0s value is %0d",s2.name,s2);
		un_var.i=456;
		un_var.value=8'd120;
		$display("value of i is %0d",un_var.i);
		$display("value of value id %0d",un_var.value);
	end
endmodule



module alias_example(a,b);
	inout integer a,b;
//variables are should be wire or inout and both variables having same size.
//alias is the named referrence to the identifiers
	alias b=a;

	assign b=24;
	
	initial begin
		$display("a is %0d, b is %0d",a,b);
	end

endmodule


module enum_range;
//	logic [3:0] e[4];
	typedef enum {a,b,c,d} alph1;
	alph1 a1;
	
	typedef enum bit [3:0]{i=3,j,k=9,l} alph2;
	alph2 a2;

	typedef enum logic [1:0] {e[4]} alph3;
	alph3 a3;	
// e0 0 e1 1 e2 2 e3 3

	typedef enum {b[4]=35} alph4;
	alph4 a4;

	typedef enum {c[3:6]} alph5;
	alph5 a5;

	typedef enum {d[3:6]=38} alph6;
	alph6 a6;

	initial begin
		a1=c;
		$display("name is %0s value is %0d",a1.name,a1);
		a2=l;
		$display("name is %0s value is %0d",a2.name,a2);
		a2=j;
		$display("name is %0s value is %0d",a2.name,a2);
		a3=e1;
		$display("name is %0s value is %0d",a3.name,a3);
		a4=b2;
		$display("name is %0s value is %0d",a4.name,a4);
		a5=c5;
		$display("name is %0s value is %0d",a5.name,a5);
		a6=d4;
		$display("name is %0s value is %0d",a6.name,a6);
	end
endmodule


module enum_type_methods;
	typedef enum {a=5,b,c=8,d} alpha8;
	alpha8 a8;
	
	initial begin
		a8=c;
		$display("name is %0s value is %0d",a8.name,a8);
		$display("name is %0d value is %0s",a8.first,a8.first.name);
		$display("name is %0d value is %0s",a8.last,a8.last.name);
		$display("name is %0d value is %0s",a8.prev,a8.prev.name);
		$display("name is %0d value is %0s",a8.next,a8.next.name);
		$display("no.of elements is %0d",a8.num);
	end
endmodule

module num_value_enum;
	typedef enum {a,b,c,d,e,f} alpha;
	alpha a1,a2,a3;
	initial begin
		a1=c;
		$display("name is %0s value is %0d",a1.name,a1);
	//	alpha=3;
	//alpha is a enum type variable may only be assigned the same enum type veriables or one of its values present in the list. vlaue 3 required an explict cast;
		a2=alpha'(3);
		$display("name is %0s value is %0d",a2.name,a2);
		a3=alpha'(6);
	//if we give the outof bound value in enum by using static casting it won't show any error.it takes the value and returns but there is named constant to that value it return nothing for the name;
		$display("name is %0s value is %0d",a3.name,a3);
	//	$cast(a3,7);
	//error :$cast to type enum int from bit signed[31:0] failed
		$cast(a3,4);
		$display("name is %0s value is %0d",a3.name,a3);
	end
endmodule

module last_next_enum;
	enum {app,bat,car,dog,egg} alphabet;
//enum having cyclic behaviour

	initial begin
		alphabet=car;
		$display("name is %0s value is %0d",alphabet.name,alphabet);
		alphabet=app;
		$display("name is %0s value is %0d",alphabet.name,alphabet);
	//previous value of the first value is the last value present in the list;
		$display("name is %0s value is %0d",alphabet.prev.name,alphabet.prev);
		alphabet=egg;
		$display("name is %0s value is %0d",alphabet.name,alphabet);
	//next value of the last value is the first value of the list;
		$display("name is %0s value is %0d",alphabet.next.name,alphabet.next);
	end
endmodule















