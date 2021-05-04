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
a:=6.6;
b:=66.1;
x:=8.5;

if abs(b-7*x-a)<=1e-10 then
  begin y:=exp(a/x) * arcctg(2.14*a) * sqr(tg(b));
  n:=2 end
else if abs(b-7*x-a)>0 then
  begin y:=0.248*abs(a-0.18*b*x) - 0.9*power(arcsin(1.21*a/b), 0.2) * 0.084*power(b, -0.81*a/b);
  n:=1 end
else
  begin y:=0.14*sec(a) * 0.351*power(log10(2.97*power(a, 4)*b/x), 2.5) * ln(power(a, 4)/b/0.64/x)/ln(6);
  n:=3 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.