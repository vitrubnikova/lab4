program lr4_4;

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
a:=0.3;
b:=1.9;
x:=15.5;

if abs(x-8*b-a)<=1e-14 then
  begin y:=power(a, a+b) + 0.063*cosec(a+0.17*x) * power(b, a-1.91*b-x);
  n:=2 end
else if abs(x-8*b-a)>0 then
  begin y:=ln(-1.02*a/b+power(x, 4))/ln(4) * power(arcctg(b-sqr(a)), 0.7) + 0.328*log10(2.6*x/b);
  n:=1 end
else
  begin y:=ln(power(a, 4)-b+5.55*x) - power(ctg(a-x), 2.2) - tg(a/x);
  n:=3 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.