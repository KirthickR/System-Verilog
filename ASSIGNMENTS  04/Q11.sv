class packet;
  randc int a;
  randc int b;

  constraint range {a>0;
                    b>0;}

endclass

module tb;
  initial
 begin
    packet pkt;
    pkt = new();

    for (int i = 0; i < 7; i++) begin
      pkt.randomize();
    
      while (pkt.a<pkt.b)begin
      pkt.randomize();
      end
      $display("a = %0d, b = %0d", pkt.a, pkt.b);
    end
  end
endmodule
