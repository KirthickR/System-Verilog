class bike;
  int cc;
  int hp;
  string name;
  string colour;
  real kW;
  
  function new(int c, int h, string n, string clr);
    cc = c;
    hp = h;
    name = n;
    colour = clr;
    kW = hp * 0.7457; 
  endfunction
  
  task display();
    $display("bike: name=%s, cc=%0d, hp=%0d, volour=%s", name, cc, hp, colour);
    $display("Bike: %s, hp = %0d, equivalent power in kW = %0.2f", name, hp, kW);
  endtask
endclass

module tb;
  bike bike1, bike2;

  initial begin
    bike1 = new(765, 120, "Street Triple", "Red");
    bike2 = new(900, 120, "Z900", "Green");
    
    bike1.display();
    bike2.display();

    $display("Bike1 Power in kW: %0.2f", bike1.kW);
    $display("Bike2 Power in kW: %0.2f", bike2.kW);
  end
endmodule
