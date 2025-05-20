`include "interface.sv"
`include "test.sv"
module testbench;
  intf intff();
    test tst(intff);
    
    initial intff.clk = 0;
    always #2 intff.clk = ~intff.clk;
    
    dff dut(.q(intff.q),
            .qbar(intff.qbar),
            .clk(intff.clk),
            .rst(intff.rst),
            .d(intff.d));
  
  initial begin
    #300;
  $finish;
  end
    
    endmodule






























































































// https://edaplayground.com/x/Wzrk
