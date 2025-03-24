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
    
  
// # rand values of address=196,start_addr=152,end_addr=215
// # rand values of address=56,start_addr= 31,end_addr=64
// # rand values of address=93,start_addr= 89,end_addr=231
// # rand values of address=236,start_addr=  0,end_addr=242
// # rand values of address=135,start_addr=112,end_addr=228
