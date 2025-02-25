// Code your design here
module array_locator;
  string bike[6]={"panigale","streetfighter","superleggera","daytona","streettriples","speedtriples"};
  string ques[$];
  int intE[int];
  int quei[$];
  int x;
  int y;
  initial begin
    intE[1]=7;
    intE[2]=6;
    intE[3]=5;
    intE[4]=4;
    intE[5]=5;
    intE[6]=1;
    quei = intE.find( x ) with ( x > 5 );
    $display("find(x)::quei=%0p",quei);
    
    quei = intE.find(x) with (x<2);
    $display("find(x)::quei=0%p",quei);
    
    quei = intE.find(x) with (x==6);
    $display("find(x)::quei=0%p",quei);
    
    quei= intE.find(y) with (y>4);
    $display("find(y)::quei=0%p",quei);
  end
    endmodule



# KERNEL: find(x)::quei=7 6
# KERNEL: find(x)::quei=0'{1}
# KERNEL: find(x)::quei=0'{6}
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished.
