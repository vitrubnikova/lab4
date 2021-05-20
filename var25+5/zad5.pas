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
a:=7.5;
b:=12.75;
x:=5.1;

if abs(3*b-a*x)<=1e-14 then
  begin y:=0.46*power(b, b/2.47/a) * cos(a-b+2.53*x) - power(arccos(0.52*a/b), 2.3);
  n:=2 end
else if abs(3*b-a*x)>0 then
  begin y:=0.45*abs(sqr(a)/4.82/b-x) * power(arcctg(a/power(b, 3)*1.81*x), 2.2) - tg(5.08*a-b);
  n:=1 end
else
  begin y:=0.38*sec(a/b-5.31*x) * power(sin(sqr(b)/x), 0.9) + 0.073*ln(6.09*a+x);
  n:=3 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.