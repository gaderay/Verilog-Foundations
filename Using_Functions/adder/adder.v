module adder_module;
function [7:0] add_func;
  input [7:0] a, b;
  begin
    add_func = a + b;
  end
endfunction

// Task - can include delay
task add_task;
  input  [7:0] a, b;
  output [7:0] sum;
  begin
    #5;              // allowed in task
    sum = a + b;
  end
endtask

endmodule