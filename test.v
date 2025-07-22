module test;
reg d,clk;
wire q,qbar;
dff_negedge dut(d,clk,q,qbar);

initial
clk=0;
always #5 clk=~clk;

initial 
begin
d=0;
$monitor($time,"clk=%b,d=%b,q=%b,qbar=%b",clk,d,q,qbar);
#4 d=1;
#10 d=0;
#10 $stop;
end
endmodule
