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
a:=6;
b:=5.7;
x:=6.9;

if abs(b+x-2.1*a)<=1e-14 then
  begin y:=0.14*power(a, a/0.39/x) - arccos(a-b) * power(sin(-0.83*b-a), 2.3);
  n:=2 end
else if abs(b+x-2.1*a)>0 then
  begin y:=log10(2*power(a, 4)-b/x) * 0.522*power(logN(4, a+sqr(b)-0.24*x), 2.2) * ctg(a-1.06*b+x) ;
  n:=3 end
else
  begin y:=abs(a-b-3.24*power(x, 4)) + power(arcsin(x/a), 2.5) - 0.522*cos(-1.24*sqr(a)/b/x);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.