 module timer #(parameter limit=17'd99999)
(
    input logic clock,
    output logic [2:0] sel=3'b0
);

logic [16:0] registru= 17'b0;



always_ff @(posedge clock)
begin
if(registru==limit) 
begin
   registru<=17'b0;
   if(sel==3'd7)
        sel<=3'd0;
    else 
        sel<=sel+1;
 end
else 
     registru<=registru+1;
end



endmodule
