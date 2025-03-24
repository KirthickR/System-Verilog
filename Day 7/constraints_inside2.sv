module tb;
  class transaction;
  rand bit [7:0] a;
  rand bit  b;
    constraint contains { (a inside {[0:3]}) -> (b == 1); }
  endclass:transaction
  
 transaction t1;
  initial begin
    t1=new();
    repeat(20)begin
      t1.randomize();
      $display("rand values of a=%0d, b=%0d", t1.a, t1.b);

               end
               end
               endmodule
