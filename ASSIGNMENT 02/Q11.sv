module dynamic_array;
  int d[][];

  initial begin
    d = new[5]; 
    foreach (d[i]) begin
      d[i] = new[2]; 
      foreach (d[i, j]) begin
        d[i][j] = $urandom_range(0, 50);
      end
    end

    foreach (d[i]) begin
      $display("Size of the array[%0d] = %0d", i, d[i].size());
      foreach (d[i, j]) begin
        $display("Elements of d[%0d][%0d] = %0d", i, j, d[i][j]);
      end
      d[i].sort(); 
      foreach (d[i, j]) begin
        $display("After sorting d[%0d][%0d] = %0d", i, j, d[i][j]);
      end
    end
  end
endmodule
