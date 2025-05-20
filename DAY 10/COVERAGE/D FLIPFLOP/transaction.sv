class transaction;

  randc bit d;
  bit clk;
  bit q;
  bit qbar;
  rand bit rst;

  static bit [1:0] rst_times =0;
  
constraint rst_constraint {
  if (rst_times<2)
      rst == 1;
    else 
      rst ==0;
  }
  
   function void post_randomize();
     if(rst==1)
      rst_times++;
  endfunction
      


  function void display(string name);
    $display("class=", name);
    $display("Time = %0t , rst = %b ,  d = %b , q = %b , qbar = %b",
              $time, rst,  d, q, qbar);
  endfunction
  
  function display_l();
    $display("####################################");
  endfunction

endclass
