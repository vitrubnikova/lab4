program lr4_4;

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
a:=5.5;
b:=7.6;
x:=25.2;

if abs(3.2*a+b-x)<=1e-14 then
  begin y:=power(ctg(0.17*a/x), 1.7) * 0.255*abs(b/-0.58/x) * power(x, a/b);
  n:=2 end
else if abs(3.2*a+b-x)>0 then
  begin y:= 0.528*power(b, 0.58*x/a) + power(sin(0.92*a/power(b, 4)/x), 1.5) + 0.134*tg(0.84*b/x) ;
  n:=3 end
else
  begin y:=logN(3, x) + power(arcsin(1.04*sqr(a)/b/x), 2.2) * 0.056*arctan(-2.39*x-power(a, 3));
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.