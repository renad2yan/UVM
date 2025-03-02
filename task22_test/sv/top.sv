`include "uvm_macros.svh"
import uvm_pkg::*;
import router_test::*;

module top;

    initial begin
        run_test("router_test");
    end

endmodule
