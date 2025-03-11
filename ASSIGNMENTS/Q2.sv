module queue;
  
  int q1[$] = {1,2,3};
  int q2[$] = {4,5,6};
  
  initial begin
    q1 = {q1, q2};
    foreach(q1[i])
      $display("After Merging[%0d]: %0d", i, q1[i]);
     $display("xxxxxxxxxxxxxxx");
  end

 
  initial begin
    foreach(q2[i])
      q1.push_back(q2[i]);

    foreach(q1[i])
      $display("After push_back Merging[%0d]: %0d", i, q1[i]);
  end
endmodule

After Merging[0]: 1
After Merging[1]: 2
After Merging[2]: 3
After Merging[3]: 4
After Merging[4]: 5
After Merging[5]: 6
xxxxxxxxxxxxxxx
After push_back Merging[0]: 1
After push_back Merging[1]: 2
After push_back Merging[2]: 3
After push_back Merging[3]: 4
After push_back Merging[4]: 5
After push_back Merging[5]: 6
