program lr4_1;

var a,b,x,y:real;
  n:integer;

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
a:=5.7;
b:=38;
x:=4;

if abs(a*x-0.6*b)<=1e-14 then
  begin y:=abs(b-power(x, 3)) * tg(b-1.22*sqr(x)) * 0.18*power(b, x/5.69/a);
  n:=2 end
else if abs(a*x-0.6*b)>0 then
  begin y:= 0.048*cos(1.03*x-b) + power(10.629, b-3.65*x) + 0.325*ln(3.45*a/b+sqr(x));
  n:=3 end
else
  begin y:=arccos(a/sqr(b)/3.08/x) * power(ctg(6.19*a+b-x), 0.3) * exp(7.08*a-b+x);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.