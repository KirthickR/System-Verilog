class packet;
  rand int r;
  randc int s;
  randc int t;
  
  constraint range{r<t;s==r;t>30;s>25;}
endclass

module tb;
  initial begin
    packet pkt;
    pkt=new();
    for(int i=0;i<7;i++)begin
      pkt.randomize();
      
      $display("values of r=%0d,s=%0d, t=%0d",pkt.r,pkt.s,pkt.t);
    end
  end
endmodule
      
