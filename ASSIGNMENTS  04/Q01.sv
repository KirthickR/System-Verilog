
  class packet;
  rand bit[31:0]addr;
  rand bit[31:0]write;
  
    constraint addr_value {addr inside {[0:20]};}
    constraint write_value {write inside {[4020:4070]};}
  endclass

  module tb;
          packet pkt;

  initial begin

    pkt=new();
    for(int i=0;i<5;i++)begin
      pkt.randomize();
      $display("addr=%0d,write=%0d",pkt.addr,pkt.write);
    end
  end
endmodule
