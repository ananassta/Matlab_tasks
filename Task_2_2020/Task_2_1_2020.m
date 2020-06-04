%-------Task_2_1_2020----------

%-------первое уравнение----------
%точное решние
y=dsolve('D2y=16.81*y','Dy(0)=-4.1','y(0)=1.0')
x=0:0.01:9;
yz=zeros(size(x));
for i=1:numel(yz)
    yz(i)=exp(-(41*x(i))/10);
end
subplot(1,2,1);
plot(x,yz); hold on;

%пусть w=y', a v=y. тогда w'=16.81v, a v'=w. => v(0)=1.0 , w(0)=-4.1

%t_span=[0 3];
%x0 = [1.0 -4.1]'; %Начальные условия
%[t, X] = ode45('vdpol', t_span, x0);
%plot(t, X), grid, hold on

%Рунге-Кута 4 порядка
p=@(t,y,yy) yy;
g=@(t,y,yy) y*(16.81);
t0=0;
tn=9;
n=500;
h=(tn-t0)/n;
t=t0:h:tn;
y = zeros(size(t));
yy = zeros(size(t));
y(1)=1.0;
yy(1)=-4.1;
for i=1:n
    k11=h*p(t(i),y(i),yy(i));
    k12=h*g(t(i),y(i),yy(i));
    k21=h*p(t(i)+0.5*h,y(i)+0.5*k11,yy(i)+k12*0.5);
    k22=h*g(t(i)+0.5*h,y(i)+0.5*k11,yy(i)+k12*0.5);
    k31=h*p(t(i)+0.5*h,y(i)+0.5*k21,yy(i)+k22*0.5);
    k32=h*g(t(i)+0.5*h,y(i)+0.5*k21,yy(i)+k22*0.5);
    k41=h*p(t(i)+h,y(i)+k31,yy(i)+k32);
    k42=h*g(t(i)+h,y(i)+k31,yy(i)+k32);
    y(i+1)=y(i)+(k11+2*k21+2*k31+k41)*(1/6);
    yy(i+1)=yy(i)+(k12+2*k22+2*k32+k42)*(1/6);
end

plot(t,y);
%plot(t,yy);

%Эйлера
p=@(t,y,yy) yy;
g=@(t,y,yy) y*(16.81);
t0=0;
tn=9;
dt = 0.02;
t = t0:dt:tn;
y = zeros(size(t));
yy = zeros(size(t));
y(1) = 1.0;
yy(1)=-4.1;
for k = 2:numel(y)
    yPrime = p(t(k-1),y(k-1),yy(k-1));
    y(k) = y(k-1) + dt*yPrime;
    yyPrime = g(t(k-1),y(k-1),yy(k-1));
    yy(k) = yy(k-1) + dt*yyPrime;
end


plot(t,y);
%plot(t,yy);
%legend('точное','y','dy/dt','y(4)','dy/dt(4)','y(1)','dy/dt(1)');
legend('точное','рунге-кута','эйлер');

%можно заметить, что после x=7 в методе Эйлера и Рунге-Кута 4 порядка
%начинает происходить ошибка, причем чем выше порядок метода, тем выше
%погрешность ошибки. Это вызвано тем, что в уравнении отсутствует первая
%производная. Не смотря на отсутсвие ее влияня на конечный результат с
%данными начальными данными, который мы получаем из dsolve, на численные
%методы ее отсутсвие влияет, так как там она активно фигурирует, 
%в следствии чего накопилась ошибка.
%далее можно убедиться, что в случае, когда первая производная входит в
%состав уравнения, такой проблемы нет.

%-------второе уравнение--------
%точное решение
y=dsolve('D2y+16.81*y+8.2*Dy=0','Dy(0)=-4.1','y(0)=1.0')
x=0:0.1:10;
yz=zeros(size(x));
for i=1:numel(yz)
    yz(i)=exp(-(41*x(i))/10);
end
subplot(1,2,2);
plot(x,yz); hold on

%пусть w=y', a v=y. тогда w'=16.81v, a v'=w. => v(0)=1.0 , w(0)=-4.1

%t_span=[0 10];
%x0 = [1.0 -4.1]'; %Начальные условия
%[t, X] = ode45('vdpol1', t_span, x0);
%plot(t, X), grid, hold on

%Рунге-Кута 4 порядка
p=@(t,y,yy) yy;
g=@(t,y,yy) -y*(16.81)-yy*(8.2);
t0=0;
tn=10;
n=500;
h=(tn-t0)/n;
t=t0:h:tn;
y = zeros(size(t));
yy = zeros(size(t));
y(1)=1.0;
yy(1)=-4.1;
for i=1:n
     k11=h*p(t(i),y(i),yy(i));
     k12=h*g(t(i),y(i),yy(i));
     k21=h*p(t(i)+0.5*h,y(i)+0.5*k11,yy(i)+k12*0.5);
     k22=h*g(t(i)+0.5*h,y(i)+0.5*k11,yy(i)+k12*0.5);
     k31=h*p(t(i)+0.5*h,y(i)+0.5*k21,yy(i)+k22*0.5);
     k32=h*g(t(i)+0.5*h,y(i)+0.5*k21,yy(i)+k22*0.5);
     k41=h*p(t(i)+h,y(i)+k31,yy(i)+k32);
     k42=h*g(t(i)+h,y(i)+k31,yy(i)+k32);
     y(i+1)=y(i)+(k11+2*k21+2*k31+k41)*(1/6);
     yy(i+1)=yy(i)+(k12+2*k22+2*k32+k42)*(1/6);
end

plot(t,y);
%plot(t,yy);

%Эйлера
p=@(t,y,yy) yy;
g=@(t,y,yy) -y*(16.81)-yy*(8.2);
t0=0;
tn=10;
dt = 0.02;
t = t0:dt:tn;
y = zeros(size(t));
yy = zeros(size(t));
y(1) = 1.0;
yy(1)=-4.1;
for k = 2:numel(y)
    yPrime = p(t(k-1),y(k-1),yy(k-1));
    y(k) = y(k-1) + dt*yPrime;
    yyPrime = g(t(k-1),y(k-1),yy(k-1));
    yy(k) = yy(k-1) + dt*yyPrime;
end

plot(t,y);
%plot(t,yy);
%legend('y','dy/dt','y(4)','dy/dt(4)','y(1)','dy/dt(1)');
legend('точное','рунге-кута','эйлер');

y=dsolve('D2y=16.81*y')
y=dsolve('D2y+16.81*y+8.2*Dy=0')


y=zeros(size(t));
yy=zeros(size(t));
for i=1:numel(y)
    y(i)=1*exp(-(41*t(i))/10) + 2*exp((41*t(i))/10);
    yy(i) = 1*exp(-(41*t(i))/10) + 1*t(i)*exp(-(41*t(i))/10);
end
figure
plot(t,y); hold on
plot(t,yy);
legend('y','yy');