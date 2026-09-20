module queues;
	int que[$];
//	int res[$];

	initial begin
		repeat(15) begin
			que.push_front($urandom_range(0,49));
		end
		$display("que is %0p",que);
		$display("size of the que is %0d",que.size);

//standard methods queue.size queue.delete

//order based methods push_front push_back pop_front pop_back


	//	res=que.pop_front;

	//can not assign a packed type int to a unpacked type int $[$];

	//	$display("res is %0p",res);

	//pop front returns the poped value from the queue;

		$display("value of the que is %0d",que.pop_front());
		$display("que is %0p",que);
		$display("size of the que is %0d",que.size);	
	//pop back returns the poped value from the queue;

		$display("value of the que is %0d",que.pop_back());
		$display("que is %0p",que);
		$display("size of the que is %0d",que.size);	
	//push front used insert the value in front of the queue;

		que.push_front(55);
		$display("que is %0p",que);
		$display("size of the que is %0d",que.size);	
	//push back used to insert the value at the end of the queue;

		que.push_back(100);
		$display("que is %0p",que);
		$display("size of the que is %0d",que.size);	

//inorder based method by considering the index value insert(index,value) delete(index);
//index start with 0 1 2 3 4 ....

		que.insert(10,120);
		$display("que is %0p",que);
		$display("size of the que is %0d",que.size);

		que.delete(5);
		$display("que is %0p",que);
		$display("size of the que is %0d",que.size);

		que.delete();
//delete returns empty 
//after deleting size is 0
		$display("que is %0p",que);
		$display("size of the que is %0d",que.size);	
	end

endmodule

module queue_with_range;
	int q[$];

	initial begin
		q='{1,2,3,4,5,6};
		$display("q is %p",q);
//push front inserting a element in fornt by using concatnation
		q={10,q};
		$display("q is %p",q);
//push back inserting a element in back by using concatnation
		q={q,20};
		$display("q is %p",q);
//insering in middle 
		q={q[0:2],55,q[3:$]};
		$display("q is %p",q);
//q[index:$] here $ referes to the last index of the queue;
		
		q={q[0:2],55,q[$]};
//q[$] it resturns the last value
		$display("q is %p",q);
		q={q[$:5]};
		$display("q is %p",q);
		
	end
endmodule
