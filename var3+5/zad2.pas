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
a:=5.5;
b:=23.05;
x:=7.2;

if abs(5.5*a-x-b)<=1e-14 then
  begin y:=0.301*power(arcsin(1.1*b/sqr(a)), 0.6) + power(x, 2.24*a-x) * 0.028*power(arcctg(x-a), 2.1);
  n:=2 end
else if abs(5.5*a-x-b)>0 then
  begin y:=cosec(a+1.88*x) - power(arccos(b-x), 2.1) - ln(a+b-1.13*x)/ln(7);
  n:=3 end
else
  begin y:=0.048*ln(a+b) - 0.02*power(log10(a*b), 2.9) - tg(x/4.48/b);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.