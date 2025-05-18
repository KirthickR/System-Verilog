class random_array;
  rand int a[][];  // 2D dynamic array

  // Constraint: Outer array size = 5, inner array size = 2
  constraint c1 { a.size() == 5; }
  constraint c2 { foreach (a[i]) a[i].size() == 2; }

  // Constraint: Each element is i + j
  constraint c3 {
    foreach (a[i]) 
      foreach (a[i][j])
        a[i][j] == i + j;
  }

  function void post_randomize();
    foreach (a[i]) begin
      foreach (a[i][j])
        $display("a[%0d][%0d] = %0d", i, j, a[i][j]);
    end
  endfunction
endclass

module tb;
  random_array rc;
  initial begin
    rc = new();
    rc.randomize();
  end
endmodule















a[0][0] = 0
a[0][1] = 1
a[1][0] = 1
a[1][1] = 2
a[2][0] = 2
a[2][1] = 3
a[3][0] = 3
a[3][1] = 4
a[4][0] = 4
a[4][1] = 5
