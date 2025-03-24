module tb;
   int a;
   int b;
        bit control;
  
 initial begin
   
   repeat(5)begin
     control=1;
   if(control)begin
     std::randomize(a) with {a>10 &&a <50;};
     std::randomize(b) with {b>25 && b<40;};
     $display("rand valus of a=%0h,b=%0h", a,b);
   end
   else
   a=0;
   b=0;
 end
 end
endmodule

  
