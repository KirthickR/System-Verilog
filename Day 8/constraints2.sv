module tb;
  class unique_dist;
    randc int a;
    rand int b;
    rand int c;
    
    constraint range { (a == 1) -> (b!=c); } //instead of unique{b,c} the operator (b!=c) achieves the same behaviour
    
  endclass:unique_dist
  
  initial begin
    unique_dist ud;
    
    ud=new();
    repeat(10)begin
      if(ud.randomize())begin
      $display("a=%0d,b=%0d,c=%0d",ud.a,ud.b,ud.c);
      end
      else
        $display("failed");
    end
  end
endmodule
