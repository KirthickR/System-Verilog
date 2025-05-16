module half_adder_tb;
  
  logic a,b,sum,carry;
  logic clk = 0;
  
  half_adder dut(.a(a),.b(b),.sum(sum),.carry(carry));
  
  
  initial clk = 0;
  always #5 clk = ~clk;
  
  covergroup ha_cov @(posedge clk);
    coverpoint a;
    coverpoint b;
    cross a,b;
    endgroup
  
    ha_cov cov = new();

  
  
  initial begin
    a = 0; b = 0; #10;
    $display("a=%b,b=%b,sum=%b,carry=%b", a,b,sum,carry);
    $display("Coverage = %0.2f%%", cov.get_inst_coverage());
    a = 0; b = 1; #10;
    $display("a=%b,b=%b,sum=%b,carry=%b", a,b,sum,carry);
    $display("Coverage = %0.2f%%", cov.get_inst_coverage());
    a = 1; b = 0; #10;
    $display("a=%b,b=%b,sum=%b,carry=%b", a,b,sum,carry);
    $display("Coverage = %0.2f%%", cov.get_inst_coverage());
    a = 1; b = 1; #10;
    $display("a=%b,b=%b,sum=%b,carry=%b", a,b,sum,carry);
    $display("Coverage = %0.2f%%", cov.get_inst_coverage());
    $finish;
  end

endmodule
























# a=0,b=0,sum=0,carry=0
# Coverage = 41.67%
# a=0,b=1,sum=1,carry=0
# Coverage = 66.67%
# a=1,b=0,sum=1,carry=0
# Coverage = 91.67%
# a=1,b=1,sum=0,carry=1
# Coverage = 100.00%
