module fork_join_example;

  initial begin
    fork
      repeat(2)begin
        $display("Process A started at time = %0t", $time);
        $display("Process A completed at time = %0t", $time);
    
        $display("Process B started at time = %0t", $time);
        #30;
        $display("Process B completed at time = %0t", $time);
      
        $display("Process C started at time = %0t", $time);
        $display("Process C completed at time = %0t", $time);
      end
    join_any
    #20;
      $display("fork-join completed at time = %0t", $time);
     
  end
endmodule


Process A started at time = 0
Process A completed at time = 0
Process B started at time = 0
Process B completed at time = 30
Process C started at time = 30
Process C completed at time = 30
Process A started at time = 30
Process A completed at time = 30
Process B started at time = 30
Process B completed at time = 60
Process C started at time = 60
Process C completed at time = 60
fork-join completed at time = 80
