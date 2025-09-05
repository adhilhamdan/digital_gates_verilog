/// NAND Gate verilog design code

module nand_gate(input a, b, output y);

assign y = ~(a & b);

endmodule 
