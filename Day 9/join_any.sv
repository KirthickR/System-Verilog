module fork_join_example;

  initial begin
    fork
      begin
        $display("Process A started at time = %0t", $time);
      
        $display("Process A completed at time = %0t", $time);
      end
      begin
        
        $display("Process B started at time = %0t", $time);
        #30;
        $display("Process B completed at time = %0t", $time);
      end
   begin
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
Process C started at time = 0
Process C completed at time = 0
fork-join completed at time = 20
Process B completed at time = 30
