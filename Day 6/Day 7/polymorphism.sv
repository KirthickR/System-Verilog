module poly;
  
 class cars;
   virtual function void cartype();
     $display("cartype is a classic car");
   endfunction
   
 endclass
  
  class hatchback extends cars;
    string a;
    string b;
    function new(string c, string d);
      a=c;
      b=d;
    endfunction
    
    function void cartype();
      $display("cartype is hatchback");
    endfunction
  endclass
  
  class sedan  extends cars;
    string a;
    string b;
    function new(string a, string b);
      this.a=a;
      this.b=b;
    endfunction
    
    function void cartype();
      $display("cartype is sedan");
    endfunction
  endclass
  
  
 
  
  initial begin
    cars c;
     hatchback h;
  sedan s;
    
    h=new("polo","i20");
    
    h.a="polo";
    h.b="i20";
    s=new("verna","elantra");
    s.a="verna";
    s.b="elantra";
    
    c=h;
    c.cartype();
    c=s;
    c.cartype();
  end
endmodule
    
    
   
