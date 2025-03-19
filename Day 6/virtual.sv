class Base;
    virtual function void display(); 
        $display("Base class display");
    endfunction
endclass

class Derived extends Base;
    function void display();
        $display("Derived class display");
    endfunction
endclass

module test;
    Base b;       
    Derived d;    

    initial begin
        d = new();     
        b = d;        
        b.display();     
    end
endmodule


# Derived class display
