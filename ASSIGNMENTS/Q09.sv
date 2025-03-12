module array_locator;
  
  int q[$];
  int d[];
  int f[6];
  int temp;
  initial
    begin
      q='{1,3,5,7};
      d=new[6];
      d='{9,1,8,3,4,4};
      f='{1,6,2,6,8,6};
      
      $display("Sum of queue elements=%0d", q.sum());
      $display("product of queue elements=%0d",q.product());
      
      $display("min value of queue =%p ",q.min());
      $display("max value of queue=%p",q.max());
   
 
      $display("unique element=%p",f.unique());
      

      $display("elements in d grt 3 = %p",d.find with (item > 3));
      
      $display("Indexes of elements in d greater than 3: %p", d.find_index with (item > 3));
      
      $display("elements in d grt 99 = %p",d.find with (item > 99));
               
      $display("first index in array d equals to 8=%p", d.find_first_index with (item == 8));
      
      $display("last element in array d matches with condition item equals to 8=%p",d.find_last_index with (item==4));
      
      $display("sum of elements in array d item grt 7=%p", d.sum() with (item > 7 ? item : 0));
      
      $display("sum of elements in d array (item grt 7)*item=%p",d.sum() with ((item > 7) * item));
      
      $display("sum of elements in array d with condiution item grt 8=%p", d.sum() with (item<8));
      
      $display("sum of elements in array d with condition item lst 8=%p", d.sum() with ((item<8)?item:0));
      
    end
endmodule

# KERNEL: Sum of queue elements=16
# KERNEL: product of queue elements=105
# KERNEL: min value of queue ='{1} 
# KERNEL: max value of queue='{7}
# KERNEL: unique element='{1, 2, 6, 8}
# KERNEL: elements in d grt 3 = '{9, 8, 4, 4}
# KERNEL: Indexes of elements in d greater than 3: '{0, 2, 4, 5}
# KERNEL: elements in d grt 99 = '{}
# KERNEL: first index in array d equals to 8='{2}
# KERNEL: last element in array d matches with condition item equals to 8='{5}
# KERNEL: sum of elements in array d item grt 7=17
# KERNEL: sum of elements in d array (item grt 7)*item=17
# KERNEL: sum of elements in array d with condiution item grt 8=0
# KERNEL: sum of elements in array d with condition item lst 8=12
