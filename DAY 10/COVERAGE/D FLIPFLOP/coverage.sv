class coverage;
  transaction trans;
  mailbox gen2cov;
  event my_event;
  
  covergroup dff_cg;
    cp1:coverpoint trans.d;
    cp2:coverpoint trans.rst;
    cross cp1,cp2;
  endgroup
  
  function new(mailbox gen2cov);
    this.gen2cov = gen2cov;
    dff_cg = new();
    trans=new();
  endfunction 
  
  task main();
    trans=new();
    for(int i =0;i<6; i++)begin   
  gen2cov.get(trans);
      
      #3;
      dff_cg.sample();
      trans.display("COVERAGE SIGNALS");
      
      $display("Coverage = %0.2f%%",dff_cg.get_coverage());
       trans.display_l();
    
//       #1;

     ->my_event;
      
    end
      
  endtask
endclass
