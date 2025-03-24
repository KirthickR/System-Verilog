module random;
  
class packet;
    rand logic[15:0] data;
    randc logic [3:0] addr;
    bit   [1:0] control;
    
    function void progress();
      if(control==1)begin
        addr.rand_mode(1);
        data.rand_mode(1);
      end
      else
              addr.rand_mode(0);
              data.rand_mode(0);
    endfunction
    
  endclass
  
  packet pkt;
  initial
    begin
      pkt=new();
      repeat(5)begin
        pkt.control=1;
        pkt.randomize();
        pkt.progress();
        $display("addr=%0h,data=%0h,control=%b",pkt.addr,pkt.data,pkt.control);
      end
    end
endmodule
        
