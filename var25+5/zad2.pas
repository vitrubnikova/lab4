program lr4_2;

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
a:=8.6;
b:=7;
x:=2.6;

if abs(1.6*b-x-a)<=1e-14 then
  begin y:=power(x, -0.32*x-a) * 0.161*cosec(a/sqr(b)-2.23*x) - power(arcsin(a/5.75/x), 1.3);
  n:=2 end
else if abs(1.6*b-x-a)>0 then
  begin y:=ctg(-0.65*a*b/power(x, 4)) - 0.672*power(cos(x/2.66/a), 0.8) + sin(a-b/-3.76/power(x, 4));
  n:=3 end
else
  begin y:=ln(a/1.82/b+power(x, 3)) * abs(5.34*x-sqr(b)) - arctan(a*-0.59*b/sqr(x));
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.