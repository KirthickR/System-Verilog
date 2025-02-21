// Code your testbench here
// or browse Examples
module associative_array; //array methods
  int car[int];
	int item;	
  int bike[int];
  initial
    begin
      
      car[501]=10000;
      car[601]=20000;
      car[701]=32000;
      car[901]=100000;
       bike[505]=10000;
      bike.first(item);
      $display("first index of array=%d",item);
      foreach(car[i])
        $display("car[%0d]=%d",i,car[i]);
     // $display("list of the car=%d ",car.size(),car.num());
        
      if(car.exists(109))
        $display("car 109 exist with price");
      else $display("An element does not exist at key 109");
      

      
    end
endmodule




first index of array=        505
car[501]=      10000
car[601]=      20000
car[701]=      32000
car[901]=     100000
