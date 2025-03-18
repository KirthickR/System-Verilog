class box;
  bit[31:0] a;
  bit[31:0] b;
  
  function new();
    a=32'hA5A5A;
    b=32'hFFFF;
  endfunction
  
  function void display();
    $display("box of a=%0h,b=%0h",a,b);
  endfunction
endclass

class outerbox extends box;
  bit [7:0] addr;
  bit [7:0] data;
  
  function new();
//     super.new();
    addr=8'b1;
    data=8'b0;
  endfunction
 
  function void display();
    $display("addr=%0b,data=%0b",addr,data);
    super.display();
  endfunction
endclass

module tb;
  outerbox b1;
  initial begin
    b1=new();
    b1.display();
  end
endmodule

# addr=1,data=0
# box of a=a5a5a,b=ffff
