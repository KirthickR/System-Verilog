module deepcopy_tb;

  class example;
    bit [31:0] data;
    bit [31:0] addr;
    
    function new();
      this.data = 0;
      this.addr = 0;
    endfunction

    function example copy();
      example obj1 = new(); /
      obj1.data = this.data;
      obj1.addr = this.addr;
      
      $display("original data and addr=%0d, data=%0d", obj1.data, obj1.addr); 

      return obj1;
    endfunction

  endclass
  
  example ex1, ex2;

  initial begin
    ex1 = new();
    ex1.data = 32'hA5A5;
    ex1.addr = 32'hABC;

    ex2 = ex1.copy(); 

    $display("After copy, ex1 = data: %h, addr: %h", ex1.data, ex1.addr);
    $display("After copy, ex2 = data: %h, addr: %h", ex2.data, ex2.addr);

    ex1.data = 32'hFFFF;
    ex1.addr = 32'h1234;

    $display("After modifying ex1:");
    $display("ex1 = data: %h, addr: %h", ex1.data, ex1.addr);
    $display("ex2 = data: %h, addr: %h", ex2.data, ex2.addr);
  end
endmodule
