module multidecade
(
    input logic en, up, down, clock, reset,
    output logic [3:0] unit, zeci, sute, mii, zeci_de_mii
);

logic en_2, en_3, en_4, en_5;
bcd_counter bcd_counter_unit
    (
        .en(en),
        .up(up),
        .done(en_2), 
        .down(down), 
        .reset(reset), 
        .clock(clock),
        .numar(unit)
    );


bcd_counter bcd_counter_zeci
    (                       
        .en(en_2),              
        .up(up),              
        .done(en_3),            
        .down(down),            
        .reset(reset),           
        .clock(clock),           
        .numar(zeci)            
    );       



bcd_counter bcd_counter_sute              
    (                       
        .en(en_3),              
        .up(up),              
        .done(en_4),            
        .down(down),            
        .reset(reset),           
        .clock(clock),           
        .numar(sute)            
    );    

                  
bcd_counter bcd_counter_mii
    (                       
        .en(en_4),              
        .up(up),              
        .done(en_5),            
        .down(down),            
        .reset(reset),           
        .clock(clock),           
        .numar(mii)            
    );       


bcd_counter bcd_counter_zeci_de_mii
    (                       
        .en(en_5),              
        .up(up),              
        .done(),            
        .down(down),            
        .reset(reset),           
        .clock(clock),           
        .numar(zeci_de_mii)                           
    );    

                  
endmodule