module dynamic_array;
  int array[]={10,20,30,40,58};
  initial begin
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
    array=new[8](array);
    $display("size of int after resize=0%d",array.size);
    foreach(array[i])
      $display("array[0%d]=0%d",i,array[i]);
    array.delete();
    $display("size of int after resize=0%d",array.size);
    
  end
endmodule


# KERNEL: array[0]=10
# KERNEL: array[1]=20
# KERNEL: array[2]=30
# KERNEL: array[3]=40
# KERNEL: array[4]=58
# KERNEL: size of int after resize=0          8
# KERNEL: array[0          0]=0         10
# KERNEL: array[0          1]=0         20
# KERNEL: array[0          2]=0         30
# KERNEL: array[0          3]=0         40
# KERNEL: array[0          4]=0         58
# KERNEL: array[0          5]=0          0
# KERNEL: array[0          6]=0          0
# KERNEL: array[0          7]=0          0
# KERNEL: size of int after resize=0          0
