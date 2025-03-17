class Animal;
 virtual function void speak();
    $display("The animal makes a sound.");
  endfunction
endclass

class Dog extends Animal;
  function void speak();
    $display("The dog barks.");
  endfunction
endclass

module test_virtual;
      
    Animal a; 
    Dog d;
  initial begin
    d = new();
    a=d;
    a.speak();
  end
endmodule


# The dog barks.
