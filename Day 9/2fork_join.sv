module fork_join_example;

  initial begin
    fork
      repeat(2)begin
        $display("Process A started at time = %0t", $time);
        #10;
        $display("Process A completed at time = %0t", $time);
   
      
        $display("Process B started at time = %0t", $time);
        #15;
        $display("Process B completed at time = %0t", $time);
   
      
        $display("Process C started at time = %0t", $time);
//         #30;
        $display("Process C completed at time = %0t", $time);
      end
    join
    #20;
      $display("fork-join completed at time = %0t", $time);
     
  end
endmodule



Process A started at time = 0
Process A completed at time = 10
Process B started at time = 10
Process B completed at time = 25
Process C started at time = 25
Process C completed at time = 25
Process A started at time = 25
Process A completed at time = 35
Process B started at time = 35
Process B completed at time = 50
Process C started at time = 50
Process C completed at time = 50
fork-join completed at time = 70
