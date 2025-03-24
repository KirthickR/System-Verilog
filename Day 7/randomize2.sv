module random;
  class packet;
    randc bit [7:0] data;
    rand  bit[2:0] addr;
  endclass
  

    initial begin
      packet pkt;
      pkt=new();
      repeat(9)begin
              pkt.randomize();
//         pkt.addr;
//         pkt.data;
        $display("addr=%0h,data=%0d",pkt.addr,pkt.data);
      end
    end
  endmodule
