module packed_array;
  logic [7:0]a[8]='{8'b00000000,8'b00000101,8'b00010010,8'b11000111,8'b00000000,8'b00000101,8'b00010010,8'b11000111};
  initial begin
    foreach(a[i])begin //foreach loop
      $display("a[%0d]=%0b",i,a[i]);
    end
  end
endmodule
