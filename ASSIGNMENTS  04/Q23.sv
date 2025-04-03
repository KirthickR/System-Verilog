class packet;
  rand bit[8:0]a;
  
  constraint range {a inside {[1:34],127,[129:156],[192:202],[257:260]}; }
  
endclass

module tb;
  packet pkt;

  initial begin
      pkt=new();
    repeat(7)begin
      pkt.randomize;
      $display("a=%0d",pkt.a);
    end
  end
endmodule
