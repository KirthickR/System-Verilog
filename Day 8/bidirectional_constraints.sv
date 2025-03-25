module tb;
  class bidirectional;
    
  rand logic [15:0] a;
  rand logic [7:0] b;
  randc logic [7:0] c;
  
    constraint c1{c==a+b;b<50; c>60;c<80;}
  endclass
  
  initial begin
    bidirectional bd;
    bd=new();
     
    repeat(7)begin
      bd.randomize();
      $display("a=%0d,b=%0d,c=%0d",bd.a,bd.b,bd.c);
    end
  end
endmodule

// # a=65,b=7,c=72
// # a=43,b=25,c=68
// # a=59,b=14,c=73
// # a=39,b=35,c=74
// # a=39,b=25,c=64
// # a=45,b=31,c=76
// # a=35,b=43,c=78
