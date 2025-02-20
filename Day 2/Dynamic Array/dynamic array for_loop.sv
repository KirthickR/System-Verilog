module array;
  int src[];
  int dst[];
  int i,j;
  
  initial 
    begin
      src=new[6];
      src='{0,2,4,6,8,19};
      foreach(src[i])
        $display("src[%0d]=%0d",src[i],i);
      $display("src =%0d",src.size());
      dst=new[9];
      for(j=0;j<9;j++)begin
        dst[j]=src[j];
      end
        foreach(dst[i])
          $display("dst[0%d]=%d",i,dst[i]);
      $display("dst after resize=%0d",dst.size());
    end
endmodule




# KERNEL: src[0]=0
# KERNEL: src[2]=1
# KERNEL: src[4]=2
# KERNEL: src[6]=3
# KERNEL: src[8]=4
# KERNEL: src[19]=5
# KERNEL: src =6




//After swap        
# KERNEL: dst[0          0]=          0
# KERNEL: dst[0          1]=          2
# KERNEL: dst[0          2]=          4
# KERNEL: dst[0          3]=          6
# KERNEL: dst[0          4]=          8
# KERNEL: dst[0          5]=         19
# KERNEL: dst[0          6]=          0
# KERNEL: dst[0          7]=          0
# KERNEL: dst[0          8]=          0
# KERNEL: dst after resize=9
