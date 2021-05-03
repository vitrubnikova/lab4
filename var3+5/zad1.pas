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
function arccos(x:real):real; begin
if x=1 then arccos:=0
else if x=-1 then arccos:=Pi
else arccos:=Pi/2-arctan(x/sqrt(1-x*x)) end;

begin
a:=7.5;
b:=59.2;
x:=3.8;

if abs(8.4*a-x-b)<=1e-14 then
  begin y:=power(arctan(power(a, 3)/x), 1.3) + 0.025*log10(x/a) - power(ctg(a-b/-3.77/power(x, 4)), 1.7);
  n:=2 end
else if abs(8.4*a-x-b)>0 then
  begin y:=0.765*sin(x) + power(cosec(a+5.17*x), 1.3) + ln(1.46*a+b/power(x, 4))/ln(5);
  n:=3 end
else
  begin y:=arcsin(-0.84*power(a, 3)/b/x) + abs(a-b+0.21*x) + arccos(a/1.01/b);
  n:=1 end;
  
writeln('Ответ ',y:12:6);
writeln('Формула ', n);
end.