module str_data_tb;
  string a;
  int ascii_val; 
	string upper;
  int size;
  string concatenate;
  
  initial begin
    a = "SystemVerilog";

    ascii_val = a.getc(0);
    $display("ASCII value of first letter = %0d",  ascii_val);
    
    upper=a.toupper();
    $display("Uppercase of string a = %p",  upper);
    
    concatenate={"SystemVerilog","3.1a"};
    $display("After conatenation=%s",concatenate);
    
    a.putc(a.len() - 1, "b");
    $display("modified String (last char replaced)= %s", a);
    
    $display("substring 2nd to 5th char=%s", a.substr(1, 4));
    
  end
endmodule

# KERNEL: ASCII value of first letter = 83
# KERNEL: Uppercase of string a = "SYSTEMVERILOG"
# KERNEL: After conatenation=SystemVerilog3.1a
# KERNEL: modified String (last char replaced)= SystemVerilob
# KERNEL: substring 2nd to 5th char=yste
