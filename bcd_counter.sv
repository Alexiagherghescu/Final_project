module bcd_counter
(
    input logic up, down, reset, clock, en,
    output logic done,
    output logic [3:0] numar
);

always_ff @(posedge clock)
begin

 if(reset==1)
  numar<= 4'b0;
 else 
    begin
    if (en==1)
           begin
             if(up==1 && down==0)begin
             if (numar == 4'd9)
                numar <= 4'd0;
              else numar<=numar+1;
              end
             else begin
                  if(up==0 && down==1)
                   begin
                   if (numar == 4'd0)
                      numar <= 4'd9;
                   else numar<= numar-1;
                   end
                  end
           end
    else numar<=numar;
    end
    
end

assign done=(en==1 && numar==4'd9 && up==1 && down==0)||( en==1 && numar==4'd0 && down==1 && up==0);

endmodule