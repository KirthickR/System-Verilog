module associative_array;
  int bmw[int];      
  string model[string]; 
  
  initial begin
    bmw = {1:2, 3:4, 5:6};  
    model = {"xone": "xfive", "threetd": "threeti", "gt6": "gt3"};
   
    $display("bmw = %p", bmw);
    $display("model = %p", model);
  end
endmodule
