class scoreboard;
  transaction trans;
  mailbox mon2scb;
  
  function new(mailbox mon2scb );
    this.mon2scb=mon2scb;
  endfunction 
  
  task main();
    trans=new();
    for(int i =0;i<6; i++)begin
      #3;
  mon2scb.get(trans);
      trans.display("SCOREBOARD CLASS SIGNALS");
      if((trans.d==trans.q)&&(trans.qbar==~trans.q)||(trans.rst)&&(trans.q==0)&&(trans.qbar==1))
        $display("Testcase Pass");
      else
        $display("Testcase fail");
      
   
    end
  endtask
endclass
