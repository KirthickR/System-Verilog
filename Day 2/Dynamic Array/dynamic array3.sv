module dynamic_array_swap;//reversing dynamic array
  int src[];
  int dst[];
  int i;
  
  initial begin
    src=new[6];
    src='{10,7,3,8,9,0};
    
    foreach(src[i])
      $display("src[0%d]=%d",i,src[i]);
    $display("size of src=%d",src.size());
    
    dst=new[6];
    for(i=0;k<6;k++)begin
      dst[i]=src[6-1-i];
    end
    $display("dst[0%d]=%d",k,dst[k]);
    $display("size of dst=%d",dst.size());
  end
endmodule


KERNEL: src[0          0]=         10
# KERNEL: src[0          1]=          7
# KERNEL: src[0          2]=          3
# KERNEL: src[0          3]=          8
# KERNEL: src[0          4]=          9
# KERNEL: src[0          5]=          0
# KERNEL: size of src=          6
