module union_exam;
  
   union {
      int a;
      byte b;
      bit [15:0] c;
   } data;
  
  initial begin
      data.a = 32'hFFF;
      $display("data.a = %h", data.a); 

      data.b = 8'b10001111;
      $display("data.b = %h", data.b); 

      data.c = 16'hF;
      $display("data.c = %h", data.c); 
  end 
endmodule
//or
module union_exam;
  
   union {
      int a;
      byte b;
      bit [15:0] c;
   } data;
  
  initial begin
      data.a = 32'hFFF;
      data.b = 8'b10001111;
      data.c = 16'hF;

      $display("data.a = %h", data.a);
      $display("data.b = %h", data.b);
      $display("data.c = %h", data.c);
  end 
endmodule
//xcelium> run
//data.a = 0000000f
//data.b = 0f
//data.c = 000f
//xmsim: *W,RNQUIE: Simulation is complete.
