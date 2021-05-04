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
a:=3.2;
b:=100.8;
x:=7;

if abs(b-4.5*x*a)<=1e-10 then
  begin y:=power(sin(-1.84*sqr(a)+b/x), 1.4) * ln(a/6.28/b*x) + power(a, x/-0.22/a);
  n:=2 end
else if abs(b-4.5*x*a)>0 then
  begin y:=ln(a/0.64/b+power(x, 4))/ln(7) - exp(x/5.07/b) * log10(7.23*a+x);
  n:=1 end
else
  begin y:=abs(-1.55*a-x) - power(ctg(5.24*a/b), 1.3) * arccos(0.33*x/a);
  n:=3 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.