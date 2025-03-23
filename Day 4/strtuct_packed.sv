module struct_packed_tb;
  
  struct packed{
   byte a;
    byte b;
    
  }arrange;
  
  initial begin
    
  arrange.a=8'b10011001;
    arrange.b=8'd12;
    
    $display("a=%d",arrange.a);
    $display("b=%d",arrange.b);
    
    arrange='{'hFF,'hAB};
    $display("arrange=%b",arrange);
    
    arrange='{a:'h0C,b:'h9B};
    $display("arrange=%b",arrange);
    
    
  end 
endmodule
