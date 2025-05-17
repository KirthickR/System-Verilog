class generator;
  transaction trans;
  mailbox gen2drv;
  mailbox gen2cov;
  event my_event;
  
  function new(mailbox gen2drv,mailbox gen2cov);
    this.gen2cov=gen2cov;
    this.gen2drv=gen2drv;
  endfunction
  
  task main();
      trans=new();
    for(int i=0;i<4;i++)begin
        trans.randomize();
        gen2drv.put(trans);
      gen2cov.put(trans);
      trans.display("GENERATOR SIGNALS");
      @(my_event);
      end
    
  endtask
  
endclass
