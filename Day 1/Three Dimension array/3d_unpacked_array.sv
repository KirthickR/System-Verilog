module threed_unpacked_array;
  int a[5][2][2] = '{
    '{'{20, 10}, '{19, 53}}, 
    '{'{87, 64}, '{56, 43}},  
    '{'{63, 37}, '{87, 35}},  
    '{'{76, 32}, '{647, 89}}, 
    '{'{545, 747}, '{47, 74}} 
  };

  initial begin
    foreach (a[i, j, k]) begin
      $display("a[%0d][%0d][%0d] = %d", i, j, k, a[i][j][k]);
    end
  end
endmodule


# KERNEL: a[0][0][0] =          20
# KERNEL: a[0][0][1] =          10
# KERNEL: a[0][1][0] =          19
# KERNEL: a[0][1][1] =          53
# KERNEL: a[1][0][0] =          87
# KERNEL: a[1][0][1] =          64
# KERNEL: a[1][1][0] =          56
# KERNEL: a[1][1][1] =          43
# KERNEL: a[2][0][0] =          63
# KERNEL: a[2][0][1] =          37
# KERNEL: a[2][1][0] =          87
# KERNEL: a[2][1][1] =          35
# KERNEL: a[3][0][0] =          76
# KERNEL: a[3][0][1] =          32
# KERNEL: a[3][1][0] =         647
# KERNEL: a[3][1][1] =          89
# KERNEL: a[4][0][0] =         545
# KERNEL: a[4][0][1] =         747
# KERNEL: a[4][1][0] =          47
# KERNEL: a[4][1][1] =          74
