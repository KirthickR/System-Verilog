module assignment;
  
  int d1[];
  int d[];
  initial begin
    d=new[6];
    d='{9,1,8,3,4,4};
    d1=new[6];
    d1=d;
  foreach(d1[i])
    $display("d1[%0d]=%p",i,d1[i]);
      $display("Size of the array:%0d",d1.size());
    $display("xxxxxxx");
    d1.delete();
    $display("size of the array after delete:0%d",d1.size);
    $display("xxxxxx");
    d.reverse();
    $display("reversing the array:%p",d);
    d.sort();
    $display("sorting the array:%p",d);
    d.rsort();
    $display("reverse sorting the array:%p",d);
    d.shuffle();
    $display("shuffling the array:%p",d);
    
    
    
   
  end
endmodule
    
d1[0]=9
d1[1]=1
d1[2]=8
d1[3]=3
d1[4]=4
d1[5]=4
Size of the array:6
xxxxxxx
size of the array after delete:0          0
xxxxxx
reversing the array:'{4, 4, 3, 8, 1, 9}
sorting the array:'{1, 3, 4, 4, 8, 9}
reverse sorting the array:'{9, 8, 4, 4, 3, 1}
shuffling the array:'{4, 9, 1, 3, 8, 4}    
    
      
   
