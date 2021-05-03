program lr4_5;

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
a:=4.6;
b:=1.2;
x:=4;

if abs(a-x-0.5*b)<=1e-14 then
  begin y:=power(sin(b/x), 0.1) * 0.129*cos(b/-1.92/a) - power(cosec(b/x), 0.2);
  n:=2 end
else if abs(a-x-0.5*b)>0 then
  begin y:=power(8.284, -0.38*a-x) - power(ln(a*5.57*b/x), 2.9) * log10(x-b);
  n:=3 end
else
  begin y:=power(a, b/0.51/a) * 0.237*ln(a+b*1.52*power(x, 4))/ln(6) * arcsin(-1.88*x/power(a, 4));
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.