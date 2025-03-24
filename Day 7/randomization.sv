class randomization;
  rand int a;
  randc int  b;
  int c;
  int d;
 
  function void display();
    c=a+b;
    d=a-b;
    $display("addition of two random number c=%0d", c);
    $display("subtraction  of two random number c=%0d", d);
  endfunction  
endclass

module tb;
  initial begin
    randomization rd;
    rd=new();
    repeat(7)begin
      rd.randomize();
      rd.display();
    end
  end
endmodule
    
