//Sort the contents of a dynamic array which contains 10 elements in it.

module tb;
  int dyn_arr[];
  
  initial begin
    dyn_arr = new[10];

    // Initialize dynamic array with correct values
    dyn_arr = '{1, 24, 25, 78, 94, 332, 65, 4, 6, 999}; 

    $display("Size of the array: %0d", dyn_arr.size());

    $display("Before Sorting:");
    foreach (dyn_arr[i]) 
      $display("dyn_arr[%0d] = %0d", i, dyn_arr[i]);

    // Sorting the array
    dyn_arr.sort(); 

    $display("After Sorting:");
    foreach (dyn_arr[i]) 
      $display("dyn_arr[%0d] = %0d", i, dyn_arr[i]);
  end
endmodule



# KERNEL: dyn_arr[0] = 1
# KERNEL: dyn_arr[1] = 24
# KERNEL: dyn_arr[2] = 25
# KERNEL: dyn_arr[3] = 78
# KERNEL: dyn_arr[4] = 94
# KERNEL: dyn_arr[5] = 332
# KERNEL: dyn_arr[6] = 65
# KERNEL: dyn_arr[7] = 4
# KERNEL: dyn_arr[8] = 6
# KERNEL: dyn_arr[9] = 999
# KERNEL: After Sorting:
# KERNEL: dyn_arr[0] = 1
# KERNEL: dyn_arr[1] = 4
# KERNEL: dyn_arr[2] = 6
# KERNEL: dyn_arr[3] = 24
# KERNEL: dyn_arr[4] = 25
# KERNEL: dyn_arr[5] = 65
# KERNEL: dyn_arr[6] = 78
# KERNEL: dyn_arr[7] = 94
# KERNEL: dyn_arr[8] = 332
# KERNEL: dyn_arr[9] = 999
