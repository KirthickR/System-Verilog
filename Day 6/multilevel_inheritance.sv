class bikes;
  function void biketypes();
    $display("biketype");
  endfunction 
endclass

class adv_bikes extends bikes;
  string a="desertx";
  string b="1250gs";
 
  
  function void displayadv();
    $display("adventure bikes a=%s,b=%s",a,b);
  endfunction
endclass

class sportbike extends bikes;
  string a;
  string b;
  
  function new();
    a="panigalev4";
    b="s1000rr";
  endfunction
    
  function void displaysports();
    $display("sports model a=%s,b=%s",a,b);
  endfunction
endclass
    
class sports_tourer extends sportbike;
 string a="ninja1000";
 string  b="africatwin";
  
  function void displaysports_tourer();
    $display("sports_tourer model a=%s,b=%s",a,b);
  endfunction
endclass
    
class adv_sports extends adv_bikes;
  string a="multistradav4";
  string b="s1000xr";
  
  function void displayadvsports();
    $display("advsports model a=%s,b=%s",a,b);
  endfunction 
endclass
    
   module tb;
     initial begin
       adv_sports obj =new();
       obj.biketypes();
       obj.displayadvsports();
      
       
     end
   endmodule
  
# biketype
# advsports model a=multistradav4,b=s1000xr
