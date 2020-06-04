global t;
global mdl;
global e1g;
global e2g;

step = 0.01;
t = 0:step:10;

mdl = get_param('robot_wheels','ModelWorkspace'); %получаем параметры из воркспейса (из simout)
x_ = -2; y_ = -2; %целевая точка
mdl.assignin('x_', x_); %присваиваем константе xk в симулинке значение xk
mdl.assignin('y_', y_);

e1g = zeros(2,length(t)); %массив 2*t %массив х
e2g = zeros(2,length(t)); %массив у

for i=1:length(t)
    if t(i)<5
        e1g(1,i)=x_; e1g(2,i)=0; %присваиваем х и у верхние и нижние допустимые значения при разны t
        e2g(1,i)=y_; e2g(2,i)=0;
    else
        e1g(2,i)=x_*0.095; e1g(1,i)=x_*1.005;
        e2g(2,i)=y_*0.095; e2g(1,i)=y_*1.005;
    end
end

k = fminsearch(@(k) alpha(k), [0.5 0.5]) %поиск оптимальных коэффициентов

function a = alpha(h)
    global t;
    global mdl;
    global e1g;
    global e2g;
    
    lambda = 0.5;
    %h - текущие коэффициенты
    mdl.assignin('Kv', h(1)); %присваиваем константе Kv в симулинке значение h(1)
    mdl.assignin('Kt', h(2));
    
    model = sim('robot_wheels.slx',t); %вызываем модель на tspan = t
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