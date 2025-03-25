module tb;
  class dist_constrain;
    rand bit[7:0] a;
    rand bit[15:0] b;
    
    constraint c {a dist{1:=5,23:=6,50:=7};}
    constraint d {b dist {8:/7, 16:/10, 15:/5};}
    
  endclass:dist_constrain
  
  dist_constrain dc;
  initial begin
    dc=new();
    repeat(10)begin
      dc.randomize();
      $display(" a=%0d,b=%0d",dc.a,dc.b);
    end
  end
    endmodule 
