module struct_packed;

  struct packed {
    logic [31:0] model;  
    bit [31:0] price;
    logic [3:0] cc;
    byte d;
  } information;

  initial begin
    information.d = 8'b10101010; //take as signed number

    information = {32'h000000cc, 32'h000000ff, 4'b0110, information.d};

    $display("model=%h",information.model);
    $display("price=%h",information.price);
    $display("model=%h",information.cc);
    $display("model=%h",information.d);
    $display("information=%p",information);
  end
endmodule
