module queue;

string cars_q[$];

initial begin
	$display("size: cars_q=0%d", cars_q.size());

	cars_q={"BMW", "PORSCHE","BENZ","ASTONMARTIN"};
	$display("size: cars_q=%0d",cars_q.size());
	$display("xxxx");


	cars_q.insert(2,"VOLKSWAGEN");
	cars_q.insert(3,"NISSAN");
	cars_q.insert(6,"PAGANI");
	$display("size:cars_q=%0d", cars_q.size());

	foreach(cars_q[i])begin
		$display("cars_q[%0d]=%s",i, cars_q[i]);
		end
	$display("xxxxxxxxx");

	$dispaly("The second element of cars_q=%s",cars_q[3]);
	
	cars_q.delete(1);
	foreach(cars_q[i])
	begin
		$display("size:cars_q[%0d]=%s",cars_q[i]);

		end
	end
	endmodule

# vsim queue 
# Start time: 15:25:22 on Mar 05,2025
# ** Note: (vsim-3813) Design is being optimized due to module recompilation...
# Loading sv_std.std
# Loading work.queue(fast)
run
# size: cars_q=0          0
# size: cars_q=4
# xxxx
# size:cars_q=7
# cars_q[0]=BMW
# cars_q[1]=PORSCHE
# cars_q[2]=VOLKSWAGEN
# cars_q[3]=NISSAN
# cars_q[4]=BENZ
# cars_q[5]=ASTONMARTIN
# cars_q[6]=PAGANI
