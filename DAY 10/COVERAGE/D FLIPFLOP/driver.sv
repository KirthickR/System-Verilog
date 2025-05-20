class driver;
  transaction trans;
  mailbox gen2drv;
  virtual intf vif;
  
  
  function new(virtual intf vif,mailbox gen2drv);
    this.gen2drv=gen2drv;
    this.vif=vif;
  endfunction
  
  task main();

    trans=new();
    for(int i =0;i<6; i++)begin
        #1;
      
      gen2drv.get(trans);
      
//       @(posedge vif.clk)
//       #2;
      
      vif.d   = trans.d;
      vif.rst = trans.rst;
      
      trans.display("DRIVER CLASS SIGNALS");
    end
  endtask
endclass
