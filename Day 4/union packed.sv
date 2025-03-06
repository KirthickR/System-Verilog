module union_packed;
  
  union {
    logic [31:0]in;
   struct packed 
    {
      logic [7:0]a;
      logic [7:0]b;
      logic [7:0]c;
      logic [7:0]d;
    }data;
  }mem;
  
  initial begin
    
    mem.data.a=8'hff;
    mem.data.b=8'hfb;
    mem.data.c=8'hfc;
    mem.data.d=8'h1f;
    
    $display("mem=%h",mem.data.a);
    $display("mem=%h",mem.data.b);
    $display("mem=%h",mem.data.c);
    $display("mem=%h",mem.data.d);
  end
endmodule
  
