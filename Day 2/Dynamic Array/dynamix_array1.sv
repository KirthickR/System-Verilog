module array_copy;
  int carray[];
  //int oarray[];
  initial begin
    carray=new[5];
    carray='{1,3,5,7,9};
     
    
    foreach(carray[i])
      $display("carray[%0d]=%d",i,carray[i]);
      $dsiplay("size of the array int=%0d",carray.size());
    //carray=new[5];
    carray=new[5](carray);
    foreach(carray[i])
      $display("oarray[%0d]=%d",i,carray[i]);
    $display("size of array after copied int=%0d",carray.size());
    
    
  end
endmodule


# KERNEL: carray[0]=          1
# KERNEL: carray[1]=          3
# KERNEL: carray[2]=          5
# KERNEL: carray[3]=          7
# KERNEL: carray[4]=          9
# KERNEL: oarray[0]=          1
# KERNEL: oarray[1]=          3
# KERNEL: oarray[2]=          5
# KERNEL: oarray[3]=          7
# KERNEL: oarray[4]=          9
# KERNEL: size of array after copied int=5
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
# VSIM: Simulation has finished
