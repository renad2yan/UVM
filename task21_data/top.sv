

module top; 

	yapp_packet pkt; 

	for (int i =0; i < 5; i++)begin 
		pkt =new("packet");
		if(pkt.randomize())
			pkt.print();
		else 
			$display("error: randomization failed");
	end 
end 
endmodule 

