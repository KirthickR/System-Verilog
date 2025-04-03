
module fork_join_example;

  initial begin
    fork
      
        $display("Process A started at time = %0t", $time);
        $display("Process A completed at time = %0t", $time);
    
        $display("Process B started at time = %0t", $time);
        #30;
        $display("Process B completed at time = %0t", $time);
      
        $display("Process C started at time = %0t", $time);
        $display("Process C completed at time = %0t", $time);
     
    join_none
    disable fork;
    #40;
      $display("fork-join completed at time = %0t", $time);
     
  end
endmodule


      fork-join completed at time = 40
