module poly;
  
  class german;
virtual function void germanbreed();
      $display("cars from germany");
    endfunction
  endclass 
  
  class skoda extends german;
   
  virtual function void germanbreed();
      $display("skoda from germany");
    endfunction
      endclass
      
  class volkswagen extends german;
function void germanbreed();
      $display("volkswagen from german");
    endfunction
  endclass
      
  german g;
  skoda s;
  volkswagen v;
  
  initial begin
    g=new();
    s=new();
    
    
    g=s;
    g.germanbreed();
    
    v=new();
    g=v;
    g.germanbreed();
    
  end
endmodule
    
    
  
  
