program lr4_3;

var a,b,x,y:real;
  n:integer;

function sec(x:real):real; begin sec:=1/cos(x) end;
function cosec(x:real):real; begin cosec:=1/sin(x) end;
function tg(x:real):real; begin tg:=sin(x)/cos(x) end;
function ctg(x:real):real; begin ctg:=cos(x)/sin(x) end;
function sh(x:real):real; begin sh:=(exp(x)-exp(-x))/2 end;
function sech(x:real):real; begin sech:=2/(exp(x)+exp(-x)) end;
function cosech(x:real):real; begin cosech:=2/(exp(x)-exp(-x)) end;
function ch(x:real):real; begin ch:=(exp(x)+exp(-x))/2 end;
function th(x:real):real; begin th:=(exp(x)-exp(-x))/(exp(x)+exp(-x)) end;
function cth(x:real):real; begin cth:=(exp(x)+exp(-x))/(exp(x)-exp(-x)) end;
function arsh(x:real):real; begin arsh:=ln(x+sqrt(x*x+1)) end;
function arch(x:real):real; begin arch:=ln(x+sqrt(x*x-1)) end;
function arth(x:real):real; begin arth:=0.5*ln((x+1)/(1-x)) end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;
function arcsin(x:real):real; begin
if x=1 then arcsin:=Pi/2
else if x=-1 then arcsin:=-Pi/2
else arcsin:=arctan(x/sqrt(1-x*x)) end;
function arccos(x:real):real; begin
if x=1 then arccos:=0
else if x=-1 then arccos:=Pi
else arccos:=Pi/2-arctan(x/sqrt(1-x*x)) end;

begin
a:=7.3;
b:=0.3;
x:=7.21;

if abs(a-0.3*b-x)<=1e-14 then
  begin y:=0.075*power(log10(b+4.51*power(x, 3)), 1.1) * ctg(a+3.65*b*x) + 0.208*power(ln(a+power(b, 3)+0.32*x), 1.9);
  n:=2 end
else if abs(a-0.3*b-x)>0 then
  begin y:=abs(1.45*a-b*power(x, 3)) * arctan(4.64*a+b) + tg(a*sqr(b)-1.89*x);
  n:=3 end
else
  begin y:=0.495*arcsin(-1.49*a/x) * power(cosec(a*sqr(b)/0.65/x), 1.5) * cos(b/x);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.