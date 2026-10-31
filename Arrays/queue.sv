module queue_ex;
	int q[$:7];

	initial begin
		q='{5,80,9,14,70};
		$display("q is %p",q);

		$display("the size of the queue %0d",q.size());
		q.insert(5,500);
		$display("the queue is %p",q);
		q.delete(4);
		$display("the queue is %p",q);

		q.push_front(40);
		$display("the queue is %p",q);
		q.push_back(46);
		$display("the queue is %p",q);

		$display("poped value is %0d",q.pop_front());

		$display("poped value is %0d",q.pop_back());
		q.insert(4,90);
		$display("the queue is %p",q);
		q='{78,95,78,24};
		$display("the queue is %p",q);
	end
endmodule
