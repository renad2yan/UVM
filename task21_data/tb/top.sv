initial begin
    yapp_packet pkt1, pkt2;
    
    pkt1 = new("packet1");
    pkt2 = new("packet2");
    
    if (pkt1.randomize()) begin
        pkt2.copy(pkt1); 
        pkt1.print(uvm_default_table_printer);
        pkt2.print(uvm_default_tree_printer);

        if (pkt1.compare(pkt2))
            $display("Packets are identical.");
        else
            $display("Packets are different.");
    end else begin
        $display("Randomization failed!");
    end
end
