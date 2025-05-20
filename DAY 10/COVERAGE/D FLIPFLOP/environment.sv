`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"
`include "coverage.sv"
class environment;
  
  transaction trans;
  generator gen;
  driver drv;
  monitor mon;
  scoreboard scb;
  coverage cg;
  
  virtual intf vif;
  mailbox gen2drv;
  mailbox mon2scb;
  mailbox gen2cov;
  event myevent;
  
  function new(virtual intf vif);
    gen2drv= new();
    mon2scb= new();
    gen2cov = new();
    
    gen = new(gen2drv,gen2cov);
    drv = new(vif, gen2drv);
    mon = new(vif, mon2scb);
    scb = new(mon2scb);
    cg  = new(gen2cov);
    
    gen.my_event = myevent;
    cg.my_event = myevent;
  endfunction 
  
  task test_run();
    fork 
      gen.main();
      drv.main();
      mon.main();
      scb.main();
      cg.main();
    join
  endtask 
endclass
