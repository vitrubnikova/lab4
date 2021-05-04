program lr4_2;

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
a:=188.1;
b:=5;
x:=6.6;

if abs(a-x*5.7*b)<=1e-10 then
  begin y:=power(tg(x/4.65/b), 1.8) * 0.873*sin(-0.51*a+b*x) - abs(-1.31*a*b/power(x, 4));
  n:=2 end
else if abs(a-x*5.7*b)>0 then
  begin y:=0.93*arcctg(a*sqr(b)*-0.1*x) + power(arcsin(b/0.54/a), 2.7) * 0.15*sec(x/sqr(b));
  n:=1 end
else
  begin y:=0.686*arctan(a+power(b, 3)-2.81*x) - power(cosec(x-b), 1.1) - ctg(b);
  n:=3 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.