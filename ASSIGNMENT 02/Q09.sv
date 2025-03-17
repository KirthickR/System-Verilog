module reverse_string;
  string a;
  string reversed_string;
  int len;
  
  initial begin
    a="SystemVerilog";
    len=a.len();
    
    for(int i=len-1;i>=0;i--)begin
      reversed_string={reversed_string, a[i]};
    end
    $display("Original String: %s", a);
    $display("Reversed String: %s", reversed_string);
  end
endmodule


# Original String: SystemVerilog
# Reversed String: golireVmetsyS
