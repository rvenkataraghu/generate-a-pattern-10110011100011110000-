
class temp;

  rand bit b[];

  constraint c1 {
    b.size() inside {[15:20]};
    foreach(b[i]) {      
      b[i] == {b[i], {(i){0}}, {(i+1){1}}};
    }
  }

  function void print_array();
    //foreach(b[i]) begin
    $display(" b: %0p;", b);
    //end
  endfunction
endclass

module top;
  temp t1;
  
  initial begin
    t1 = new();
    
    t1.randomize();
    t1.print_array();    
    
  end
endmodule