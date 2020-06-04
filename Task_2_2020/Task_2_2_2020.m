%----------Task_2_2_2020--------
%---------1---------
t_span=[0 30];
x0 = [0 0]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
figure
subplot(5,2,1)
plot(t, X)
legend('y','dy')
title('dy(0)=0')
grid on

t_span=[0 30];
x0 = [0 0.5]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
subplot(5,2,3)
plot(t, X)
legend('y','dy')
title('dy(0)=0.5')
grid on

t_span=[0 30];
x0 = [0 1]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
subplot(5,2,5)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=1')

t_span=[0 30];
x0 = [0 2]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
subplot(5,2,7)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=2')

t_span=[0 30];
x0 = [0 3]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
subplot(5,2,9)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=3')

%----------2-----------
y=dsolve('D2y=-y','Dy(0)=0','y(0)=0')
t_span=[0 30];
x0 = [0 0]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,2)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=0')

y=dsolve('D2y=-y','Dy(0)=0.5','y(0)=0')
t_span=[0 30];
x0 = [0 0.5]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,4)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=0.5')

y=dsolve('D2y=-y','Dy(0)=1','y(0)=0')
t_span=[0 30];
x0 = [0 1]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,6)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=1')

y=dsolve('D2y=-y','Dy(0)=2','y(0)=0')
t_span=[0 30];
x0 = [0 2]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,8)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=2')

y=dsolve('D2y=-y','Dy(0)=3','y(0)=0')
t_span=[0 30];
x0 = [0 3]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,10)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=3')

%основна€ модель таких колебаний это const*sin(t), однако можно заметить, что при
%нелинейном уравнении график const*sin(t) €вл€етс€ решением только при dy(0)=(0 2),
%после же 2 решение уходит на +бесконечность.
%в то врем€ как в линейном случае решение все еще остетс€ sin(t)*Const.

%-------3----------
figure
t_span=[0 30];
x0 = [0 0]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,1)
plot(t, X)
legend('y','dy')
title('dy(0)=0')
grid on

t_span=[0 30];
x0 = [0 0.5]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,3)
plot(t, X)
legend('y','dy')
title('dy(0)=0.5')
grid on

t_span=[0 30];
x0 = [0 1]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,5)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=1')

t_span=[0 30];
x0 = [0 2]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,7)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=2')

t_span=[0 30];
x0 = [0 3]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,9)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=3')

t_span=[0 30];
x0 = [0 5]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,11)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=5')

%----------4-----------
y=dsolve('D2y=-y-0.5*Dy','Dy(0)=0','y(0)=0')
t_span=[0 30];
x0 = [0 0]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,2)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=0')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=0.5','y(0)=0')
t_span=[0 30];
x0 = [0 0.5]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,4)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=0.5')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=1','y(0)=0')
t_span=[0 30];
x0 = [0 1]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,6)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=1')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=2','y(0)=0')
t_span=[0 30];
x0 = [0 2]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,8)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=2')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=3','y(0)=0')
t_span=[0 30];
x0 = [0 3]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,10)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=3')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=5','y(0)=0')
t_span=[0 30];
x0 = [0 5]'; %Ќачальные услови€
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,12)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=5')

%в последних двух уравнени€х не очень пон€тно было, какой лучше вз€ть
%коэффициент трени€ в шарнире, поэтому € вз€ла один из наиболее часто
%встречающихс€ (0.5), также € сравнила его с другими коэффициентами (с 0.1
%и 1) и получила следующие результаты:
%чем меньше v, тем чаще происход€т колебани€ и тем их больше. 
%при 0.5 колебаний меньше, чем при 0.1, и они быстрее проход€т
%при 1 колебаний почти нет (1-2 колебани€)

%в данной модели движени€ ма€тника решени€ линейного и нелинейного
%уравнени€ совпадают при dy(0)=[0 3). ј далее идет расхождение в решени€х
%св€занное с нелинейностью второго уравнени€, но ,насколько € пон€ла, они
%все также €вл€ютс€ затухающими.

%также можно заметить, что наличие трени€ приводит к затухающим колебани€м,
%в то врме€ как без него они будут бесконечными. 