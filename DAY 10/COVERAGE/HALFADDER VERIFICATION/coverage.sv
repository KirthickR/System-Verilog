class coverage;
  transaction trans;
  mailbox gen2cov;
  event my_event;
  
  
  covergroup half_adder_cg;
    cp1: coverpoint trans.a;
    cp2: coverpoint trans.b;
    cross cp1, cp2;
  endgroup
  
  function new(mailbox gen2cov);
    this.gen2cov = gen2cov;
    half_adder_cg = new(); 
    
  endfunction
  
  task main();
    trans=new();
    for(int i = 0; i < 4; i++) begin
      gen2cov.get(trans);
      #1;
      
      half_adder_cg.sample();
      trans.display("COVERAGE SIGNALS");
      $display("Coverage=%0.2f%%",half_adder_cg.get_coverage());
      
      
      
      #1;
      trans.display_l();
      ->my_event;
      
   end
  endtask
endclass
