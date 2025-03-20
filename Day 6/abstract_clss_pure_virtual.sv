module virtual_tb;
  virtual class parent;
    pure virtual function void display();
    
    function void display1();
      $display("display1 from parent");
    endfunction
    
    virtual function void display2();
      $display("display2 from parent");
    endfunction
  endclass
      
   class child extends parent;
    virtual function void display();
          $display("display from child");
        endfunction
        
        function void display1();
          $display("display1 from child");
        endfunction
        
         function void display2();
           $display("display2 from child");
        endfunction
      endclass 
        
  class child1 extends  child;
    virtual function void display();
      $display("display from child1");
        endfunction
        
        function void display1();
          $display("display1 from child1");
        endfunction
        
//          function void display2();
//            $display("display2 from child1");
//         endfunction
      endclass 
  
  parent p;
  child c;
  child1 c1;
  
  initial begin
//     p=new();
    c=new();
    c1=new();
    p=c1;
    p.display();
    p.display1();
    p.display2();
  end
endmodule
