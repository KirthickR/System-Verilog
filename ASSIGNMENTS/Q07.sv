module assignment;
  int j;
  int q[$];
  
  initial begin
    j=1;
    q={0,2,5};
    
    q.insert(1,j);
    $display("after inserting: %p ",q);
    
    q.delete(1);
    $display("after deleting:%p",q);
    
    q.push_front(7);
    $display("after push front:%p",q);
    
    q.push_back(9);
    $display("after push back:%p",q);
    
    q.pop_back();
    $display("after pop back:%p",q);
    
    q.pop_front();
    $display("after pop front:%p",q);
    
    q.reverse();
    $display("after reverse:%p",q);
    
    q.sort();
    $display("after sort:%p",q);
    
    q.rsort();
    $display("after reverse sort:%p",q);
    
    q.shuffle();
    $display("after shuffle:%p",q);
    
  end
endmodule

after inserting: '{0, 1, 2, 5} 
after deleting:'{0, 2, 5}
after push front:'{7, 0, 2, 5}
after push back:'{7, 0, 2, 5, 9}
after pop back:'{7, 0, 2, 5}
after pop front:'{0, 2, 5}
after reverse:'{5, 2, 0}
after sort:'{0, 2, 5}
after reverse sort:'{5, 2, 0}
after shuffle:'{0, 2, 5}
