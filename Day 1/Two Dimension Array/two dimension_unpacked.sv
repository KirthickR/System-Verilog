module unpacked_array_example;
  logic [3:0] a [4] = '{4'b0000, 4'b0001, 4'b0010, 4'b0011};  // Unpacked array

  initial begin
    for (int i = 0; i < 4; i++) begin//using for loop
      $display("a[%0d] = %b", i, a[i]);  
    end
  end
endmodule

# KERNEL: a[0] = 0000
# KERNEL: a[1] = 0001
# KERNEL: a[2] = 0010
# KERNEL: a[3] = 0011
