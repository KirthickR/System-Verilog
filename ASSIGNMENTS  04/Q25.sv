class packet;
  rand bit [61:0] a;

  constraint range { 
    a[31:0] == '1; 
    a[61:32] == '0; 
  }

endclass

module tb;
  packet pkt;

  initial begin
    pkt = new(); 
    repeat(7) begin
      pkt.randomize();
      
               $display("a[61:32]=%b a[31:0]=%b", pkt.a[61:32], pkt.a[31:0]);

    end
  end
endmodule



a[61:32]=000000000000000000000000000000 a[31:0]=11111111111111111111111111111111
a[61:32]=000000000000000000000000000000 a[31:0]=11111111111111111111111111111111
