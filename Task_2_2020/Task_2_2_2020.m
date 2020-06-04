%----------Task_2_2_2020--------
%---------1---------
t_span=[0 30];
x0 = [0 0]'; %��������� �������
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
figure
subplot(5,2,1)
plot(t, X)
legend('y','dy')
title('dy(0)=0')
grid on

t_span=[0 30];
x0 = [0 0.5]'; %��������� �������
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
subplot(5,2,3)
plot(t, X)
legend('y','dy')
title('dy(0)=0.5')
grid on

t_span=[0 30];
x0 = [0 1]'; %��������� �������
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
subplot(5,2,5)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=1')

t_span=[0 30];
x0 = [0 2]'; %��������� �������
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
subplot(5,2,7)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=2')

t_span=[0 30];
x0 = [0 3]'; %��������� �������
[t, X] = ode45('vdpol_2_2_1', t_span, x0);
subplot(5,2,9)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=3')

%----------2-----------
y=dsolve('D2y=-y','Dy(0)=0','y(0)=0')
t_span=[0 30];
x0 = [0 0]'; %��������� �������
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,2)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=0')

y=dsolve('D2y=-y','Dy(0)=0.5','y(0)=0')
t_span=[0 30];
x0 = [0 0.5]'; %��������� �������
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,4)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=0.5')

y=dsolve('D2y=-y','Dy(0)=1','y(0)=0')
t_span=[0 30];
x0 = [0 1]'; %��������� �������
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,6)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=1')

y=dsolve('D2y=-y','Dy(0)=2','y(0)=0')
t_span=[0 30];
x0 = [0 2]'; %��������� �������
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,8)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=2')

y=dsolve('D2y=-y','Dy(0)=3','y(0)=0')
t_span=[0 30];
x0 = [0 3]'; %��������� �������
[t, X] = ode45('vdpol_2_2_2', t_span, x0);
subplot(5,2,10)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=3')

%�������� ������ ����� ��������� ��� const*sin(t), ������ ����� ��������, ��� ���
%���������� ��������� ������ const*sin(t) �������� �������� ������ ��� dy(0)=(0 2),
%����� �� 2 ������� ������ �� +�������������.
%� �� ����� ��� � �������� ������ ������� ��� ��� ������� sin(t)*Const.

%-------3----------
figure
t_span=[0 30];
x0 = [0 0]'; %��������� �������
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,1)
plot(t, X)
legend('y','dy')
title('dy(0)=0')
grid on

t_span=[0 30];
x0 = [0 0.5]'; %��������� �������
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,3)
plot(t, X)
legend('y','dy')
title('dy(0)=0.5')
grid on

t_span=[0 30];
x0 = [0 1]'; %��������� �������
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,5)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=1')

t_span=[0 30];
x0 = [0 2]'; %��������� �������
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,7)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=2')

t_span=[0 30];
x0 = [0 3]'; %��������� �������
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,9)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=3')

t_span=[0 30];
x0 = [0 5]'; %��������� �������
[t, X] = ode45('vdpol_2_2_3', t_span, x0);
subplot(6,2,11)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=5')

%----------4-----------
y=dsolve('D2y=-y-0.5*Dy','Dy(0)=0','y(0)=0')
t_span=[0 30];
x0 = [0 0]'; %��������� �������
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,2)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=0')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=0.5','y(0)=0')
t_span=[0 30];
x0 = [0 0.5]'; %��������� �������
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,4)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=0.5')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=1','y(0)=0')
t_span=[0 30];
x0 = [0 1]'; %��������� �������
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,6)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=1')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=2','y(0)=0')
t_span=[0 30];
x0 = [0 2]'; %��������� �������
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,8)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=2')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=3','y(0)=0')
t_span=[0 30];
x0 = [0 3]'; %��������� �������
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,10)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=3')

y=dsolve('D2y=-y-0.5*Dy','Dy(0)=5','y(0)=0')
t_span=[0 30];
x0 = [0 5]'; %��������� �������
[t, X] = ode45('vdpol_2_2_4', t_span, x0);
subplot(6,2,12)
plot(t, X)
legend('y','dy')
grid on
title('dy(0)=5')

%� ��������� ���� ���������� �� ����� ������� ����, ����� ����� �����
%����������� ������ � �������, ������� � ����� ���� �� �������� �����
%������������� (0.5), ����� � �������� ��� � ������� �������������� (� 0.1
%� 1) � �������� ��������� ����������:
%��� ������ v, ��� ���� ���������� ��������� � ��� �� ������. 
%��� 0.5 ��������� ������, ��� ��� 0.1, � ��� ������� ��������
%��� 1 ��������� ����� ��� (1-2 ���������)

%� ������ ������ �������� �������� ������� ��������� � �����������
%��������� ��������� ��� dy(0)=[0 3). � ����� ���� ����������� � ��������
%��������� � ������������� ������� ���������, �� ,��������� � ������, ���
%��� ����� �������� �����������.

%����� ����� ��������, ��� ������� ������ �������� � ���������� ����������,
%� �� ����� ��� ��� ���� ��� ����� ������������. 