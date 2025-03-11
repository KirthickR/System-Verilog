module assignment;

  longint assoc[int];  
  longint idx;
  longint temp;

  initial begin
   
    idx = 1;

    for (int i = 0; i < 64; i++) begin
      assoc[idx] = idx;  
      idx=idx<<1;
    end

    
    $display("sparse asso array:%p");
    foreach (assoc[j])
      $display("assoc[%0d] = %0d", j, assoc[j]);
    
    assoc.first(temp);
    $display(assoc[temp]);
    
    assoc.last(temp);
    $display(assoc[temp]);
    
    assoc.next(temp);
    $display(assoc[temp]);
    
    assoc.prev(temp);
    $display(assoc[temp]);
  end

endmodule
# KERNEL: sparse asso array:
# KERNEL: assoc[-2147483648] = 2147483648
# KERNEL: assoc[0] = -9223372036854775808
# KERNEL: assoc[1] = 1
# KERNEL: assoc[2] = 2
# KERNEL: assoc[4] = 4
# KERNEL: assoc[8] = 8
# KERNEL: assoc[16] = 16
# KERNEL: assoc[32] = 32
# KERNEL: assoc[64] = 64
# KERNEL: assoc[128] = 128
# KERNEL: assoc[256] = 256
# KERNEL: assoc[512] = 512
# KERNEL: assoc[1024] = 1024
# KERNEL: assoc[2048] = 2048
# KERNEL: assoc[4096] = 4096
# KERNEL: assoc[8192] = 8192
# KERNEL: assoc[16384] = 16384
# KERNEL: assoc[32768] = 32768
# KERNEL: assoc[65536] = 65536
# KERNEL: assoc[131072] = 131072
# KERNEL: assoc[262144] = 262144
# KERNEL: assoc[524288] = 524288
# KERNEL: assoc[1048576] = 1048576
# KERNEL: assoc[2097152] = 2097152
# KERNEL: assoc[4194304] = 4194304
# KERNEL: assoc[8388608] = 8388608
# KERNEL: assoc[16777216] = 16777216
# KERNEL: assoc[33554432] = 33554432
# KERNEL: assoc[67108864] = 67108864
# KERNEL: assoc[134217728] = 134217728
# KERNEL: assoc[268435456] = 268435456
# KERNEL: assoc[536870912] = 536870912
# KERNEL: assoc[1073741824] = 1073741824
# KERNEL:            2147483648
# KERNEL:            1073741824
# KERNEL:            1073741824
# KERNEL:             536870912
