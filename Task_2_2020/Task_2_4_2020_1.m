%-----------Task_2_4_2020---------------
y=dsolve('D2y=-100*y-100000.001*Dy','Dy(0)=1','y(0)=0')

t=0:0.000001:0.0001;
y=((1000*exp(-t/1000))/99999999 - (1000*exp(-100000*t))/99999999);
subplot(2,2,1);
plot(t,y);
hold on

%€вный метод Ёйлера
p=@(t,y,yy) yy;
g=@(t,y,yy) -y*(100)-(100000.001)*yy;
t0=0;
tn=0.0001;
dt = 0.00005;
t = t0:dt:tn;
y = zeros(size(t));
yy = zeros(size(t));
y(1)= 0.0;
yy(1)= 1.0;
for k = 2:numel(y)
    yPrime = p(t(k-1),y(k-1),yy(k-1));
    y(k) = y(k-1) + dt*yPrime;
    yyPrime = g(t(k-1),y(k-1),yy(k-1));
    yy(k) = yy(k-1) + dt*yyPrime;
end

plot(t,y);

%не€вный метод Ёйлера
t0=0;
tn=0.0001;
dt = 0.00005;
t = t0:dt:tn;
y = zeros(size(t));
yy = zeros(size(t));
y(1)= 0.0;
yy(1)= 1.0;
a=100;
b=100000.001;
for k = 2:numel(y)
    yy(k)=(yy(k-1)-dt*a*y(k-1))/(1+dt*b+dt*dt*a);
    y(k)=y(k-1)+dt*yy(k);
end

plot(t,y);
grid on;
legend('dsolve','€вный','не€вный');

%-----------------------------------

t=0:0.000001:0.0001;
y=((1000*exp(-t/1000))/99999999 - (1000*exp(-100000*t))/99999999);
subplot(2,2,2);
plot(t,y);
hold on

%€вный метод Ёйлера
p=@(t,y,yy) yy;
g=@(t,y,yy) -y*(100)-(100000.001)*yy;
t0=0;
tn=0.0001;
dt = 0.00001;
t = t0:dt:tn;
y = zeros(size(t));
yy = zeros(size(t));
y(1)= 0.0;
yy(1)= 1.0;
for k = 2:numel(y)
    yPrime = p(t(k-1),y(k-1),yy(k-1));
    y(k) = y(k-1) + dt*yPrime;
    yyPrime = g(t(k-1),y(k-1),yy(k-1));
    yy(k) = yy(k-1) + dt*yyPrime;
end

plot(t,y);

%не€вный метод Ёйлера
t0=0;
tn=0.0001;
dt = 0.00001;
t = t0:dt:tn;
y = zeros(size(t));
yy = zeros(size(t));
y(1)= 0.0;
yy(1)= 1.0;
a=100;
b=100000.001;
for k = 2:numel(y)
    yy(k)=(yy(k-1)-dt*a*y(k-1))/(1+dt*b+dt*dt*a);
    y(k)=y(k-1)+dt*yy(k);
end

plot(t,y);
grid on;
legend('dsolve','€вный','не€вный');

%---------------------
t=0:0.000001:0.0001;
y=(1000*exp(-t/1000))/99999999 - (1000*exp(-100000*t))/99999999;
subplot(2,2,3);
plot(t,y);
hold on

%€вный метод Ёйлера
p=@(t,y,yy) yy;
g=@(t,y,yy) -y*(100)-(100000.001)*yy;
t0=0;
tn=0.0001;
dt = 0.000005;
t = t0:dt:tn;
y = zeros(size(t));
yy = zeros(size(t));
y(1)= 0.0;
yy(1)= 1.0;
for k = 2:numel(y)
    yPrime = p(t(k-1),y(k-1),yy(k-1));
    y(k) = y(k-1) + dt*yPrime;
    yyPrime = g(t(k-1),y(k-1),yy(k-1));
    yy(k) = yy(k-1) + dt*yyPrime;
end

plot(t,y);

%не€вный метод Ёйлера
t0=0;
tn=0.0001;
dt = 0.000005;
t = t0:dt:tn;
y = zeros(size(t));
yy = zeros(size(t));
y(1)= 0.0;
yy(1)= 1.0;
a=100;
b=100000.001;
for k = 2:numel(y)
    yy(k)=(yy(k-1)-dt*a*y(k-1))/(1+dt*b+dt*dt*a);
    y(k)=y(k-1)+dt*yy(k);
end

plot(t,y);
grid on;
%legend('dsolve','€вный','не€вный');

%---------------------------
t=0:0.000001:0.0001;
y=(1000*exp(-t/1000))/99999999 - (1000*exp(-100000*t))/99999999;
subplot(2,2,4);
plot(t,y);
hold on

%€вный метод Ёйлера
p=@(t,y,yy) yy;
g=@(t,y,yy) -y*(100)-(100000.001)*yy;
t0=0;
tn=0.0001;
dt = 0.000001;
t = t0:dt:tn;
y = zeros(size(t));
yy = zeros(size(t));
y(1)= 0.0;
yy(1)= 1.0;
for k = 2:numel(y)
    yPrime = p(t(k-1),y(k-1),yy(k-1));
    y(k) = y(k-1) + dt*yPrime;
    yyPrime = g(t(k-1),y(k-1),yy(k-1));
    yy(k) = yy(k-1) + dt*yyPrime;
end

plot(t,y);

%не€вный метод Ёйлера
t0=0;
tn=0.0001;
dt = 0.000001;
t = t0:dt:tn;
y = zeros(size(t));
yy = zeros(size(t));
y(1)= 0.0;
yy(1)= 1.0;
a=100;
b=100000.001;
for k = 2:numel(y)
    yy(k)=(yy(k-1)-dt*a*y(k-1))/(1+dt*b+dt*dt*a);
    y(k)=y(k-1)+dt*yy(k);
end

plot(t,y);
grid on;
%legend('dsolve','€вный','не€вный');

%∆Єсткой системой обыкновенных дифференциальных уравнений называетс€ 
%така€ система ќƒ”, численное решение которой €вными методами €вл€етс€ 
%неудовлетворительным из-за резкого увеличени€ числа вычислений 
%(при малом шаге интегрировани€) или из-за резкого возрастани€ погрешности 
%при недостаточно малом шаге. ƒл€ жЄстких систем характерно то, что дл€ 
%них не€вные методы дают лучший результат, обычно несравненно более 
%хороший, чем €вные методы.
%что можно нагл€дно увидеть с помощью полученных результатов.