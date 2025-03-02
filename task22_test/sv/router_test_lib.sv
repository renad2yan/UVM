`ifndef ROUTER_TEST_SV
`define ROUTER_TEST_SV

`include "uvm_macros.svh"
import uvm_pkg::*;
import router_tb::*;

class router_test extends uvm_test;
    // Register component with UVM factory
    `uvm_component_utils(router_test)

    // Handle for testbench
    router_tb tb;

    // Constructor
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    // Build phase
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        tb = router_tb::type_id::create("tb", this);
        `uvm_info("ROUTER_TEST", "Build phase executed for router_test", UVM_HIGH)
    endfunction

    // Elaboration phase
    function void end_of_elaboration_phase(uvm_phase phase);
        uvm_top.print_topology();
    endfunction

endclass

`endif
