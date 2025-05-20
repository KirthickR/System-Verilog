class generator;
  transaction trans;
  mailbox gen2drv;
  mailbox gen2cov;
  event my_event;
  
  function new(mailbox gen2drv,mailbox gen2cov);
    this.gen2drv=gen2drv;
    this.gen2cov=gen2cov;
  endfunction
  
  task main();
    trans=new();
    for(int i =0;i<6; i++)begin
      trans.randomize();
      trans.display("GENERATOR CLASS SIGNALS");
      gen2drv.put(trans);
      gen2cov.put(trans);
      @(my_event);
    end
    
  endtask
endclass
      
