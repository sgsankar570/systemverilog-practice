//Enumeration type ranges

/*module enumeration;

	typedef enum	{a,b,c,d} alph1;		//a=0 b=1 c=2 d=3
	typedef enum bit[3:0] 	{i=3,j,k=9,l} alph2;	//i=3 j=4 k=9 l=10
	typedef enum logic[1:0]	 {e[4]} alph3;		//e0=0 e1=1 e2=2 e3=3
	typedef enum	{b[4]=5} alph4; 		//b0=5 b1=6 b2=7 b3=8
	typedef enum 	{c[3:6]} alph5;			//c3=0 c4=1 c5=2 c6=3
	typedef enum	{d[2:5]=3} alph6;		//d2=3 d3=4 d4=5 d5=6

	alph1 a1=b;
	alph2 a2=l;
	alph3 a3=e2;
	alph4 a4=b1;
	alph5 a5=c6;
	alph6 a6=d4;

	initial begin
		$display("a1 %0d| name %0s",a1,a1.name);
		$display("a2 %0d| name %0s",a2,a2.name);
		$display("a3 %0d| name %0s",a3,a3.name);
		$display("a4 %0d| name %0s",a4,a4.name);
		$display("a5 %0d| name %0s",a5,a5.name);
		$display("a6 %0d| name %0s",a6,a6.name);
	end
endmodule*/

//-------------------------------------------------------------------------------------------

//Enumeration type methods

module enumeration;
	typedef enum{a=5,b,c=8,d} alph;

	alph h;

	initial begin
		h=d;
		$display("name %0s \t value %0d",h.name,h);
		$display("no of elements present in enum %0d",h.num);
		$display("first element %0s \t value %0d",h.first.name,h.first);
		$display("last element %0s \t value %0d",h.last.name,h.last);
		$display("previous element of h %0s \t value %0d",h.prev.name,h.prev);
		$display("next element of h %0s \t value %0d",h.next.name,h.next);
	end
endmodule


















	
