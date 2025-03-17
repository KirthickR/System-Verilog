//snippet of inserting one queue to another with arrray method 
module queue;
  int q1[$];
  int q2[$];
  
  initial begin

    q1={q1,q2};
    $display("After insertion:%p",q1);
  end
endmodule

//snippet of inserting one queue to another without arrray method 
module queue;
  int q1[$];
  int q2[$];

  initial begin
    foreach(q2[i])begin
      q1.push_back(q2[i]);
    end
    $display("After inserting:%s"q1);
  end
endmodule
