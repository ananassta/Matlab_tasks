global t;
global mdl;
global e1g;
global e2g;

step = 0.01;
t = 0:step:10;

mdl = get_param('robot_wheels','ModelWorkspace'); %�������� ��������� �� ���������� (�� simout)
x_ = -2; y_ = -2; %������� �����
mdl.assignin('x_', x_); %����������� ��������� xk � ��������� �������� xk
mdl.assignin('y_', y_);

e1g = zeros(2,length(t)); %������ 2*t %������ �
e2g = zeros(2,length(t)); %������ �

for i=1:length(t)
    if t(i)<5
        e1g(1,i)=x_; e1g(2,i)=0; %����������� � � � ������� � ������ ���������� �������� ��� ����� t
        e2g(1,i)=y_; e2g(2,i)=0;
    else
        e1g(2,i)=x_*0.095; e1g(1,i)=x_*1.005;
        e2g(2,i)=y_*0.095; e2g(1,i)=y_*1.005;
    end
end

k = fminsearch(@(k) alpha(k), [0.5 0.5]) %����� ����������� �������������

function a = alpha(h)
    global t;
    global mdl;
    global e1g;
    global e2g;
    
    lambda = 0.5;
    %h - ������� ������������
    mdl.assignin('Kv', h(1)); %����������� ��������� Kv � ��������� �������� h(1)
    mdl.assignin('Kt', h(2));
    
    model = sim('robot_wheels.slx',t); %�������� ������ �� tspan = t
    md = model.simout.data;
    e1 = md(:,1);
    e2 = md(:,2);
    al = zeros(2,1); %0
                     %0
    
    for i=1:length(t)
        if e1(i)<e1g(1,i)
            al(1)= al(1)+e1g(1,i)-e1(i);
        elseif e1(i)>e1g(2,i)
            al(1)= al(1)+e1(i)-e1g(2,i);
        end
        
        if e2(i)<e2g(1,i)
            al(2)=al(2)+e2g(1,i)-e2(i);
        elseif e2(i)>e2g(2,i)
            al(2)=al(2)+e2(i)-e2g(2,i);
        end
    end
    
    a = lambda*al(1)+(1-lambda)*al(2);
end