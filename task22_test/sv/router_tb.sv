`ifndef ROUTER_TB_SV
`define ROUTER_TB_SV

`include "uvm_macros.svh"
import uvm_pkg::*;

class router_tb extends uvm_env;
    // Register component with UVM factory
    `uvm_component_utils(router_tb)

    // Constructor
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    // Build phase
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("ROUTER_TB", "Build phase executed for router_tb", UVM_HIGH)
    endfunction

endclass

`endif
