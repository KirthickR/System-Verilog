module testbench;
  struct {
    bit [4:0] a;   // 5-bit wide
    logic b;       // 1-bit logic type
    logic [7:0] c; // Use logic instead of byte
    string name;   // SystemVerilog feature
  } item;
  
  initial begin
    item.a = 5'h1F;         // 5-bit assignment
    item.b = 1'b1;          // Single-bit logic
    item.c = 8'b10101010;   // 8-bit value
    item.name = "car";      // String assignment
    
    $display(" a = %h ", item.a);
    $display(" b = %h ", item.b);
    $display(" c = %h ", item.c);
    $display(" name = %s ", item.name);
    $display(" item = %p ", item);
    //or we give the below form also
   //item={5'h1F,1'b1,8'b10101010,"car"}; 
    
  end  
endmodule
