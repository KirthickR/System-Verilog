module tb;
  bit [7:0] a;
  bit[2:0] b;
 
  initial begin
    repeat(10)begin
      std::randomize(a);
      std::randomize(b);
      $display("a=%b,b=%b",a,b);
    end
  end
    endmodule
