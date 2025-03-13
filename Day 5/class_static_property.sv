class my_class;
  static real mycar;
  static bit [7:0] data [4]='{default:8'hA1}; 
  logic a[31:0] = '{default:0}; 
  
  
    function new(); 
        mycar++; 
      foreach(data[i])
        data[i]++; 
        foreach (a[i]) 
            a[i]++; 
    endfunction
endclass

module tb;
  my_class myc[5];
  initial begin
    foreach(myc[i])begin
      myc[i]=new();
      $display("value of mycar=%p,data=%0h,a=%p",myc[i].mycar,myc[i].data[i],myc[i].a);
    end
  end
endmodule



# value of mycar=1, data=a2, a='{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
# value of mycar=2, data=a3, a='{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
# value of mycar=3, data=a4, a='{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
# value of mycar=4, data=a5, a='{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
# value of mycar=5, data=0,  a='{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
