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
a:=3.5;
b:=10.25;
x:=6.4;

if abs(b-x-1.1*a)<=1e-10 then
  begin y:=power(log10(a*sqr(b)+4.47*x), 1.6) + 0.21*arccos(sqr(a)/1.58/b) * power(sin(power(a, 3)*1.22*b/x), 0.2);
  n:=2 end
else if abs(b-x-1.1*a)>0 then
  begin y:=power(x, 1.07*a/b*x) - 0.038*power(b, b/7.25/a) - arcctg(a-2.09*b*x);
  n:=1 end
else
  begin y:=ln(0.06*b*sqr(x))/ln(2) * 0.55*power(ln(a+1.72*power(b, 4)+x), 0.8) - 0.632*arcsin(b/sqr(a));
  n:=3 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.