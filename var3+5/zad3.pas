program lr4_3;

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
b:=1.2;
x:=74.3;

if abs(8.5*a+b-x)<=1e-14 then
  begin y:=exp(b/a) - cosec(b-a) + power(a, -0.33*a+b/x);
  n:=2 end
else if abs(8.5*a+b-x)>0 then
  begin y:=0.156*tg(2.75*a/power(b, 4)) * power(arcctg(a/2.91/b/sqr(x)), 0.2) + ln(4.59*a/sqr(b))/ln(8);
  n:=3 end
else
  begin y:=arccos(b/x) * power(b, 2.98*a/b/x) - ctg(-0.73*a*power(b, 3));
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.