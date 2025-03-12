module test_array;
  bit [11:0] my_array [4];

  initial begin
    my_array[0] = 12'h012;
    my_array[1] = 12'h345;
    my_array[2] = 12'h678;
    my_array[3] = 12'h9AB;

    $display("Traversing using for loop:");
    for (int i = 0; i < 4; i++) begin
      $display("my_array[%0d][5:4] = %b", i, my_array[i][5:4]);
    end

    $display("Traversing using foreach loop:");
    foreach (my_array[i]) begin
      $display("my_array[%0d][5:4] = %b", i, my_array[i][5:4]);
    end
  end
endmodule


KERNEL: Traversing using for loop:
# KERNEL: my_array[0][5:4] = 01
# KERNEL: my_array[1][5:4] = 00
# KERNEL: my_array[2][5:4] = 11
# KERNEL: my_array[3][5:4] = 10
# KERNEL: Traversing using foreach loop:
# KERNEL: my_array[0][5:4] = 01
# KERNEL: my_array[1][5:4] = 00
# KERNEL: my_array[2][5:4] = 11
# KERNEL: my_array[3][5:4] = 10
