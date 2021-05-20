program lr4_5;

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
a:=0.8;
b:=1.5;
x:=3.5;

if abs(x-1.8*b-a)<=1e-14 then
  begin y:=abs(a*power(b, 4)*-2*x) + cosec(5.76*a-b-power(x, 3)) + power(arccos(a-0.95*b), 3);
  n:=2 end
else if abs(x-1.8*b-a)>0 then
  begin y:=0.296*power(a, a/x) - power(logN(8, sqr(b)), 2.5) + arcctg(7.37*a-b);
  n:=3 end
else
  begin y:=arctan(a/-0.93/sqr(x)) + 0.33*power(ctg(3.39*b), 1.3) * exp(a-b);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.