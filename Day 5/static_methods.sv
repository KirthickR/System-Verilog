module tb;
  
  class grow;
    static int age;
    static int height;
    real weight=70.5 ;
    static logic [31:0][4] a = '{default: 32'h1}; 
    
     static function void increament(); // Removed 'static' so it can be called via object
      height = height + 1;
      foreach(a[i])
        a[i] = a[i] + 1;
      age = age + 2;
    endfunction
    
    function void display();
  
      $display("age=%p, height=%p, weight=%p, a[i]=[%0h]", age, height, weight, a);
    endfunction
  endclass
    
  initial begin
    grow grow1 = new();
    
    grow1.display();
    grow1.display();
    grow1.display();
    grow1.display();
    grow1.display();
    
    // Call increament() using the object
    grow1.increament();
    grow1.increament();
    grow1.increament();
    grow1.increament();
    grow1.increament();
    
    // Call display() again to check updated values
    grow1.display();
  end
endmodule



# age=0, height=0, weight=70.5, a[i]=[11111111111111111111111111111111]
# age=0, height=0, weight=70.5, a[i]=[11111111111111111111111111111111]
# age=0, height=0, weight=70.5, a[i]=[11111111111111111111111111111111]
# age=0, height=0, weight=70.5, a[i]=[11111111111111111111111111111111]
# age=0, height=0, weight=70.5, a[i]=[11111111111111111111111111111111]
# age=10, height=5, weight=70.5, a[i]=[66666666666666666666666666666666]
