class packet;
  rand int a;
  
  constraint range{a inside{[0:40]};
  a!=10;
  a!=20;
  a!=30;
  a!=40;       }
endclass

module tb;
  initial begin
    packet pkt;
    pkt=new();
    for(int i=0;i<7;i++)begin
      pkt.randomize();
      
      $display("values of a=%0d",pkt.a);
    end
  end
endmodule
      
