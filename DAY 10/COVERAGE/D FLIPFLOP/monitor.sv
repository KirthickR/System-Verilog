class monitor;
  
  transaction trans;
  virtual intf vif;
  mailbox mon2scb;
  
  function new(virtual intf vif,mailbox mon2scb);
    this.vif=vif;
    this.mon2scb=mon2scb;
  endfunction
  
  task main();
    trans=new();
    for(int i =0;i<6; i++)begin
      #3;
//       @(posedge vif.clk);
      
      trans.d    =vif.d;
      trans.rst  =vif.rst;
      trans.q    =vif.q;
      trans.qbar =vif.qbar;
      
//       #1;
      
      mon2scb.put(trans);
      trans.display("MONITOR CLASS SIGNALS");
    end
  endtask
endclass
