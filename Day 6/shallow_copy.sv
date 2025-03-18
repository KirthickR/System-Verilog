

module scopy_tb;
  class shallow_copy;
    static int a; 
    int b;        

    function new();
      a = 1; 
    endfunction
  endclass

  shallow_copy shcopy; 
  initial begin
    shcopy = new(); 
    

    

    shcopy.b = 25;

    $display("before modification a = %0d", shcopy.a); 
    $display("before modification b = %0d", shcopy.b);
    shcopy.b = shcopy.a;
    
    $display("after  modification a = %0d", shcopy.a); 
    $display("after  modification b = %0d", shcopy.b);
  end
endmodule


before modification a = 1
# before modification b = 25
# after  modification a = 1
# after  modification b = 1
