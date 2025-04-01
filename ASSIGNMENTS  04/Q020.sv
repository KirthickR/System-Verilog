class packet;
  randc int s;
  static int used_values[$];
  
  constraint range{s inside {[1000:2000]};
                  !(s inside {used_values});}
endclass

module tb;
  initial begin
    packet pkt;
    pkt=new();
    for(int i=0;i<9;i++)begin
      pkt.randomize();
      
      $display("values of s=%0d",pkt.s);
    end
  end
endmodule
      
