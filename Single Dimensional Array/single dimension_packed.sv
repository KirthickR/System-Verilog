module Single_dimensional_array;
  reg [5]array = '{1, 2, 3, 0,4 };

  initial begin
    for (int i = 0; i < $size(array); i++) begin
      $display("array[%0d] = %0d",i,array[i]);
    end
  end
endmodule 
