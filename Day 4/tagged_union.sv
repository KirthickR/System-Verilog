module tagged_union_tb;
  
    union tagged {
    int a;
    bit [10:0]b;
    byte c;
    int d;
   }data;
 
  initial begin
    data =tagged a 32'hFF;
    data =tagged b 10'h1;
    
    $display("data.a=%0d",data.a);
    $display("data.b=%0d",data.b);
  end
endmodule
    
