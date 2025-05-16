module half_subtractor_tb;

  logic a, b, diff, borrow;
  logic clk = 0;

  half_subtractor dut (
    .a(a), .b(b), .diff(diff), .borrow(borrow)
  );

  always #5 clk = ~clk;

  covergroup ha_cov @(posedge clk);
    cp1: coverpoint a;
    cp2: coverpoint b;
    cross cp1, cp2; 
  endgroup
  ha_cov cov = new();

  initial begin
    $display("Starting Half Subtractor Coverage Test...");

    repeat (10) begin
      {a, b} = $urandom_range(0, 3);  
      @(posedge clk);
      
      cov.sample();
      
      $display("a=%b, b=%b, diff=%b, borrow=%b", a, b, diff, borrow);
      $display("Functional Coverage = %0.2f%%", cov.get_coverage());
    end

    $display("Test Completed.");
    $finish;
  end

endmodule
