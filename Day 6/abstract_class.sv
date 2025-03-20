virtual class bike;
  pure virtual function void display();
    endclass
    
    class superbike extends bike;
      int a;
      int b;
      
//       function  new(int a, int b );
//         this.a=a;
//        this.b=b;
//       endfunction
      
      
      
      function void display();
        $display("cc of bike models a=%0d, b=%0d",a,b);
      endfunction
    endclass
      
     module tb;
       bike b;
       superbike s;
       initial begin
         s=new();
         s.a=1102;
         s.b=999;
        b=s;
         
         b.display();
       end
         endmodule
    # cc of bike models a=1102, b=999
