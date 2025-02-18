module single_dimension_array;
  int array[6]='{11,12,34,17,34,27};
  int i;
  initial
    begin
      for(i=0;i<$size(array);i++)begin
        $display("array[%0d]=%0d",i,array[i]);
      end
      end
      endmodule
  
