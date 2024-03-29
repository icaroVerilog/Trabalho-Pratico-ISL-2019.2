`include "ModuloDisp.v"

module Simulacao ();

    // registradores(reg) para sinal de entrada e saidas

    reg TOM;
    reg [2:0] nota;
    wire [6:0] Saida;

    // associa as entradas no modulo "module" às entradas neste arquivo principal

    ModuloDisp Display1 (.TOM_module(TOM), .NOTAS(nota), .SAIDA(Saida)); 


    initial begin
    
        $dumpfile("SIM.vcd");       // comando que irá gerar o arquivo para o GTKwave    
        $monitor("%b%b Saida = %b", TOM, nota, Saida);
        
        // Definindo o funcionamento das entradas.
        // Elas irão se alterar a cada intervalo 2 de tempo.
       
            TOM = 1'b0; nota = 3'b000;
        #2; TOM = 1'b0; nota = 3'b001;   
        #2; TOM = 1'b0; nota = 3'b010;     
        #2; TOM = 1'b0; nota = 3'b011;        
        #2; TOM = 1'b0; nota = 3'b100;    
        #2; TOM = 1'b0; nota = 3'b101;     
        #2; TOM = 1'b0; nota = 3'b110;      
        #2; TOM = 1'b0; nota = 3'b111;      
        #2; TOM = 1'b1; nota = 3'b000;      
        #2; TOM = 1'b1; nota = 3'b001;      
        #2; TOM = 1'b1; nota = 3'b010;           
        #2; TOM = 1'b1; nota = 3'b011;         
        #2; TOM = 1'b1; nota = 3'b100;        
        #2; TOM = 1'b1; nota = 3'b101;
        #2; TOM = 1'b1; nota = 3'b110;
        #2; TOM = 1'b1; nota = 3'b111;
        #2;
     
        $finish;
        
    end

endmodule