module dff(q,qbar,clk,d,rst);
  input clk,rst;
  input d;
  output reg q,qbar;
  
  always@(posedge clk)begin
    if(rst)
      q<=1'b0;
  else
    q<=d;
  end
  
  assign qbar=~q;
endmodule
