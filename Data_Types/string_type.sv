module string_type;
	reg[15*8-1:0] str;
	string s;
	bit[31:0] b;

	initial begin
		str="Good morning";
		$display("string %0s",str);
		str="Hello world";
		$display("string %0s",str);
		$display("string s %0s",s);
		s="Hello world i'm comming";
		$display("string s %0s",s);
		s={"Hi",","," ",str};
		$display("string s %0s",s);
		b=128;
		str=b;
		$display("str %0d \t bit %0d",str,b);
		s="Welcome to VLSI. Practice at the end of the session All the best";
		$display("string s %0s",s);
	end
endmodule

//--------------------------------------------------------------------------------------------------------

//String operators

module string_type;
	string s1="He Everyone";
	string s2="Hi Everyone";

	string s3;

	initial begin
		if(s1==s2)
			$display("s1 %0s equal to s2 %0s",s1,s2);
		else
			$display("s1 %0s not equal to s2 %0s",s1,s2);
		if(s1>s2)
			$display("s1 %0s is greater than s2 %0s",s1,s2);
		else
			$display("s1 %0s is not greater than s2 %0s",s1,s2);
		s3={s1,"Welcome",s2};
		$display("string s3 %0s",s3);
		s3={3{"VLSI "}};
		$display("string s3 %0s",s3);
		$display("s3 %0d s3 %0s",s3[5],s3[5]);
	end
endmodule

//-----------------------------------------------------------------------------------------------------------

//String methods

module string_type;
	string s1="He Everyone";
	string s2="Hi Everyone";

	initial begin
		$display("s1 %0d",s1.len());
		s1.putc(2,"a");
		$display("s1 %0s",s1);
		$display("s1 %0s ASIC value of the char %0d",s1.getc(2),s1.getc(2));
		
		s1="ENGINEERING";
		$display("s1 %0s",s1.tolower());
		$display("s1 %0s",s1.toupper());

		s2="Engineering";	
		$display("s1 %0s and s2 %0s difference %0d",s1,s2,s1.compare(s2));
		$display("s1 %0s and s2 %0s difference %0d",s1,s2,s1.icompare(s2));
	end
endmodule













