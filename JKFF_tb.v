`timescale 1ns / 1ps

module JKFF_tb;

    reg clk,J,K;
    wire Q;
    
    JKFF uut(
        .clk(clk),
        .J(J),
        .K(K),
        .Q(Q)
        );
        
    always #5 clk=~clk;
    
    initial begin
        clk=0;
        J=0;K=0;
    
        #30 {J,k}=2'b00;
        #30 {J,k}=2'b01;
        #30 {J,k}=2'b00;
        #30 {J,k}=2'b10;
        #30 {J,k}=2'b00;
        #30 {J,k}=2'b11;
        #30 {J,k}=2'b00;
        
        #50 $finish;
    end

endmodule
