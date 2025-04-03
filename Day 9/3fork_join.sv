module fork_join_example;

  initial begin
    fork
      repeat(2)begin
        $display("Process A started at time = %0t", $time);
        #40;
        $display("Process A completed at time = %0t", $time);
      end
      
        $display("Process B started at time = %0t", $time);
       
        #15; $display("Process B completed at time = %0t", $time);
   
    #5;
        $display("Process C started at time = %0t", $time);
//         #30;
        $display("Process C completed at time = %0t", $time);
      
    join
    #20;
      $display("fork-join completed at time = %0t", $time);
     
  end
endmodule

Process A started at time = 0
Process B started at time = 0
Process B completed at time = 0
Process C started at time = 0
Process C completed at time = 0
Process A completed at time = 40
Process A started at time = 40
Process A completed at time = 80
fork-join completed at time = 100
