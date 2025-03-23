package pack;
class bikes;
  string b;
  string a;
  
  function new(string a,string b);
   this. a=a;
   this. b=b;
     $display("brand of a=%s,b=%s",a,b);
  endfunction
endclass
  
  function void display();
    $display("outside the class");
  endfunction
endpackage
  
import pack::*;
module tb;

  initial begin
    bikes b=new("ducati","triumph");
    display();
  end 
endmodule
    

