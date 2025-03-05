module array_ordering;

  string str[5]= '{"kabila","sri","valan","nithish","gijo"};
  int inta[4]='{1,3,9,5};

	initial 
	begin

		$display("Before 'str reverse : str=%p",str); 

		str.reverse;
 		$display("AFTER 'str' reverse: str=%p", str);

 		$display("BEFORE 'intA' sort: intA=%p", inta);
 		//intA.sort (x) with (x > 6); //OK – 'with' clause is ok
 		inta.sort;
 		$display("AFTER 'intA' sort: intA=%p",inta);

 		$display("BEFORE 'intA' rsort: intA=%p",inta);
		 //intA.rsort (x) with (x > 3); //OK – 'with' clause is ok

		 inta.rsort;
		 $display("AFTER 'intA' rsort: intA=%p",inta);

		 $display("BEFORE 'intA' shuffe: intA=%p",inta);
		 //intA.shuffe (x) with (x < 5); //Compile ERROR –
		 //cannot use 'with' clause
		 
		 inta.shuffle;
		 $display("AFTER 'intA' shuffe: intA=%p",inta);
		 end

endmodule

# KERNEL: Before 'str reverse : str='{"kabila", "sri", "valan", "nithish", "gijo"}
# KERNEL: AFTER 'str' reverse: str='{"gijo", "nithish", "valan", "sri", "kabila"}
# KERNEL: BEFORE 'intA' sort: intA='{1, 3, 9, 5}
# KERNEL: AFTER 'intA' sort: intA='{1, 3, 5, 9}
# KERNEL: BEFORE 'intA' rsort: intA='{1, 3, 5, 9}
# KERNEL: AFTER 'intA' rsort: intA='{9, 5, 3, 1}
# KERNEL: BEFORE 'intA' shuffe: intA='{9, 5, 3, 1}
# KERNEL: AFTER 'intA' shuffe: intA='{1, 5, 9, 3}
