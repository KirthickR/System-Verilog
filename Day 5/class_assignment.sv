class my_class;
  
  typedef struct {
    logic [31:0] addr;
    logic [31:0] data;
    bit [1:0] e;
    string pkt_type;
  } packet_t;  
  packet_t pkt; 

  function new();
    this.pkt.addr = 32'h5A5A5A5A;
    this.pkt.data = 32'hA5A5A5A5;
    this.pkt.e = 1;
    this.pkt.pkt_type = "bad";
//     $display("pkt: addr=%h, data=%h, e=%b, pkt_type=%s", pkt.addr, pkt.data, pkt.e, pkt.pkt_type);
  endfunction

  task fetch();
    my_class classs1, classs2; 
    classs1 = new();
    classs1.display();

    classs2 = new();
    classs2.pkt.addr = 32'h7C7C7C7C;
    classs2.pkt.data = 32'h5BFFFFFF;
    classs2.pkt.e = 0;
    classs2.pkt.pkt_type = "good";
    classs2.display();
  endtask

  function void display();
$display("pkt: addr=%h, data=%h, e=%b, pkt_type=%s", pkt.addr, pkt.data, pkt.e, pkt.pkt_type);
  endfunction
  
endclass

module testbench;

  my_class obj;
  initial begin
    obj = new(); 
    obj.fetch();
  end

endmodule
# KERNEL: pkt: addr=5a5a5a5a, data=a5a5a5a5, e=01, pkt_type=bad
# KERNEL: pkt: addr=7c7c7c7c, data=5bffffff, e=00, pkt_type=good
