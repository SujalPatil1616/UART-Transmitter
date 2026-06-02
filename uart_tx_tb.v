`timescale 1ns/1ps

module uart_tx_tb;

reg clk;
reg rst;
reg tx_start;
reg [7:0] data_in;

wire tx;
wire tx_busy;

uart_tx uut (
    .clk(clk),
    .rst(rst),
    .tx_start(tx_start),
    .data_in(data_in),
    .tx(tx),
    .tx_busy(tx_busy)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    rst = 1;
    tx_start = 0;
    data_in = 8'b10101010;

    #20;
    rst = 0;

    #20;
    tx_start = 1;

    #10;
    tx_start = 0;

    #200;
    $finish;
end

initial begin
    $dumpfile("uart.vcd");
    $dumpvars(0, uart_tx_tb);
end

endmodule
