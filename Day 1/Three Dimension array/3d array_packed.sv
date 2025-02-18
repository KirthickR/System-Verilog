module packed_array_3d;
  reg [15:0][4:0][1:0] a;

  initial begin
    
    for ( int i = 0; i < 16; i++) begin  
      for ( int j = 0; j < 5; j++) begin 
        a[i][j] = $random % 4;  
        $display("a[%0d][%0d] = %b", i, j, a[i][j]);  
      end
    end
  end
endmodule


# KERNEL: a[0][0] = 00
# KERNEL: a[0][1] = 01
# KERNEL: a[0][2] = 01
# KERNEL: a[0][3] = 11
# KERNEL: a[0][4] = 01
# KERNEL: a[1][0] = 01
# KERNEL: a[1][1] = 01
# KERNEL: a[1][2] = 10
# KERNEL: a[1][3] = 01
# KERNEL: a[1][4] = 01
# KERNEL: a[2][0] = 10
# KERNEL: a[2][1] = 01
# KERNEL: a[2][2] = 01
# KERNEL: a[2][3] = 00
# KERNEL: a[2][4] = 01
# KERNEL: a[3][0] = 10
# KERNEL: a[3][1] = 01
# KERNEL: a[3][2] = 10
# KERNEL: a[3][3] = 01
# KERNEL: a[3][4] = 11
# KERNEL: a[4][0] = 10
# KERNEL: a[4][1] = 11
# KERNEL: a[4][2] = 10
# KERNEL: a[4][3] = 10
# KERNEL: a[4][4] = 00
# KERNEL: a[5][0] = 01
# KERNEL: a[5][1] = 00
# KERNEL: a[5][2] = 01
# KERNEL: a[5][3] = 01
# KERNEL: a[5][4] = 01
# KERNEL: a[6][0] = 11
# KERNEL: a[6][1] = 10
# KERNEL: a[6][2] = 00
# KERNEL: a[6][3] = 00
# KERNEL: a[6][4] = 10
# KERNEL: a[7][0] = 01
# KERNEL: a[7][1] = 10
# KERNEL: a[7][2] = 11
# KERNEL: a[7][3] = 01
# KERNEL: a[7][4] = 11
# KERNEL: a[8][0] = 11
# KERNEL: a[8][1] = 01
# KERNEL: a[8][2] = 10
# KERNEL: a[8][3] = 10
# KERNEL: a[8][4] = 01
# KERNEL: a[9][0] = 11
# KERNEL: a[9][1] = 11
# KERNEL: a[9][2] = 10
# KERNEL: a[9][3] = 10
# KERNEL: a[9][4] = 00
# KERNEL: a[10][0] = 10
# KERNEL: a[10][1] = 10
# KERNEL: a[10][2] = 01
# KERNEL: a[10][3] = 00
# KERNEL: a[10][4] = 00
# KERNEL: a[11][0] = 01
# KERNEL: a[11][1] = 11
# KERNEL: a[11][2] = 10
# KERNEL: a[11][3] = 10
# KERNEL: a[11][4] = 10
# KERNEL: a[12][0] = 00
# KERNEL: a[12][1] = 10
# KERNEL: a[12][2] = 11
# KERNEL: a[12][3] = 01
# KERNEL: a[12][4] = 01
# KERNEL: a[13][0] = 11
# KERNEL: a[13][1] = 11
# KERNEL: a[13][2] = 10
# KERNEL: a[13][3] = 10
# KERNEL: a[13][4] = 01
# KERNEL: a[14][0] = 01
# KERNEL: a[14][1] = 01
# KERNEL: a[14][2] = 10
# KERNEL: a[14][3] = 00
# KERNEL: a[14][4] = 11
# KERNEL: a[15][0] = 11
# KERNEL: a[15][1] = 00
# KERNEL: a[15][2] = 11
# KERNEL: a[15][3] = 11
# KERNEL: a[15][4] = 00
