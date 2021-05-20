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
a:=8.4;
b:=4.8;
x:=3.2;

if abs(5.6*b/x-a)<=1e-14 then
  begin y:=power(cosec(a*b), 1.8) - ln(sqr(a)+b-3.84*x) - power(8.776, x-b);
  n:=2 end
else if abs(5.6*b/x-a)>0 then
  begin y:=0.4*ctg(b*x) - 0.399*power(log10(a+4.75*power(b, 3)-x), 2.2) * arcsin(-0.33*x);
  n:=3 end
else
  begin y:=0.032*tg(a+0.87*b) + power(cos(a-2.08*b-x), 0.5) + sin(a-6.82*b/sqr(x));
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.