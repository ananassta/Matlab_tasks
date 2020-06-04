%----------Task_2_2_2020--------
%---------1---------
t_span=[0 30];
x0 = [3.14 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
figure
subplot(5,2,1)
plot(t, X)
legend('y','dy')
title('dy(0)=0')
grid on

t_span=[0 30];
x0 = [3.14*3 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
subplot(5,2,3)
plot(t, X)
legend('y','dy')
title('dy(0)=0.5')
grid on

t_span=[0 30];
x0 = [3.14*5 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
subplot(5,2,5)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=1')

t_span=[0 30];
x0 = [3.14*7 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
subplot(5,2,7)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=2')

t_span=[0 30];
x0 = [3.14*9 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
subplot(5,2,9)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=3')

%----------2-----------
y=dsolve('D2y=-y','Dy(0)=0','y(0)=3.14')
t_span=[0 30];
x0 = [3.14 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,2)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=0')

y=dsolve('D2y=-y','Dy(0)=0','y(0)=3.14*3')
t_span=[0 30];
x0 = [3.14*3 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,4)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=0.5')

y=dsolve('D2y=-y','Dy(0)=0','y(0)=3.14*5')
t_span=[0 30];
x0 = [3.14*5 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,6)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=1')

y=dsolve('D2y=-y','Dy(0)=0','y(0)=3.14*7')
t_span=[0 30];
x0 = [3.14*7 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,8)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=2')

y=dsolve('D2y=-y','Dy(0)=0','y(0)=3.14*9')
t_span=[0 30];
x0 = [3.14*9 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,10)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=3')

%-------3----------
figure
t_span=[0 30];
x0 = [3.14 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,1)
plot(t, X)
legend('y','dy')
title('dy(0)=0')
grid on

t_span=[0 30];
x0 = [3.14*3 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,3)
plot(t, X)
legend('y','dy')
title('dy(0)=0.5')
grid on

t_span=[0 30];
x0 = [3.14*5 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,5)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=1')

t_span=[0 30];
x0 = [3.14*7 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,7)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=2')

t_span=[0 30];
x0 = [3.14*9 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,9)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=3')

%----------4-----------
y=dsolve('D2y=-y-0.5*Dy','Dy(0)=0','y(0)=3.14')
t_span=[0 30];
x0 = [3.14 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,2)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=0')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=0','y(0)=3.14*3')
t_span=[0 30];
x0 = [3.14*3 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,4)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=0.5')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=0','y(0)=3.14*5')
t_span=[0 30];
x0 = [3.14*5 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,6)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=1')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=0','y(0)=3.14*7')
t_span=[0 30];
x0 = [3.14*7 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,8)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=2')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=0','y(0)=3.14*9')
t_span=[0 30];
x0 = [3.14*9 0]'; %Начальные условия
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,10)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=3')



