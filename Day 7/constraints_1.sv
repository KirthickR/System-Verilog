module tb;
  class packet;
    randc logic [7:0] addr;
    randc bit [1:0] data;
    
    constraint addr_range { addr > 5; }
  endclass
  
  initial begin
    packet pkt;
    pkt = new();  
    repeat(5) begin
      pkt.randomize();  
      $display("addr=%0d, data=%0d", pkt.addr, pkt.data);
    end
  end
endmodule
