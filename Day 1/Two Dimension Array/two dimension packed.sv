module two_dimensional_array;
  logic [3:0][3:0]a = '{4'b0000,4'b0001,4'b0010,4'b0011};
  initial begin
    for(int i=0;i<$size(a);i++)begin
      $display("a[%0d] = %0b",a[i],i);
    end
  end
endmodule
/*if$display("a[%0d] = %b",a[i],i); comes the output is 
      # KERNEL: a[3] = 00000000000000000000000000000000
# KERNEL: a[2] = 00000000000000000000000000000001
# KERNEL: a[1] = 00000000000000000000000000000010
# KERNEL: a[0] = 00000000000000000000000000000011*/
      
# KERNEL: a[3] = 0
# KERNEL: a[2] = 1
# KERNEL: a[1] = 10
# KERNEL: a[0] = 11
