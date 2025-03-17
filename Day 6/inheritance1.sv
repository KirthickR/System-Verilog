class cars;
  string brand;
  string model;
  
  function void carmodels(string brandname, string modelname);
    brand = brandname;
    model = modelname;
  endfunction
  
  function void display_model();
    $display("Brand=%s, Model=%s", brand, model);
  endfunction
endclass

class modern_cars extends cars;
  string derivedname;
  
  function new(string brand_name, string base_model, string derived_model);
    brand = brand_name;
    model = base_model;
    derivedname = derived_model;
  endfunction
  
  function void display_model();
    $display("Brand=%s, Base model=%s, Derived model=%s", brand, model, derivedname);
  endfunction
endclass

module cars_tb;
  cars vento, passat;
  modern_cars virtus, jetta;

  initial begin
    vento = new();
    passat = new();
   
    vento.carmodels("Volkswagen", "Vento");
    passat.carmodels("Volkswagen", "Passat");

    vento.display_model();
    passat.display_model();

    virtus = new("Volkswagen", "Vento", "Virtus");
    jetta = new("Volkswagen", "Passat", "Jetta");

    virtus.display_model();
    jetta.display_model();
  end
endmodule


 # Brand=Volkswagen, Model=Vento
 # Brand=Volkswagen, Model=Passat
 # Brand=Volkswagen, Base model=Vento, Derived model=Virtus
 # Brand=Volkswagen, Base model=Passat, Derived model=Jetta
