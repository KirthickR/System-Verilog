module tb;
  class packet;
   rand bit[7:0] addr;
    rand bit[7:0]start_addr;
    rand bit[7:0]end_addr;
  
    constraint addr_l_range{addr inside{[start_addr:end_addr]};}
  
  endclass
  
  packet pkt;
  initial begin
    pkt=new();
    repeat(5)begin
    pkt.randomize();
      $display("rand values of address=%p,start_addr=%d,end_addr=%0d",pkt.addr,pkt.start_addr,pkt.end_addr);
    end
    end
    endmodule
    
  
