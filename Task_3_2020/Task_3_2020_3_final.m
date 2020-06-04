global T0;
global m;
global b;
global z_;
global g;
global w;
global w_max;
global u_gran1;
global u_gran2;

g = 9.8;
b = 5;
m = 2;
w = sqrt((m*g)/(4*b)); %w0
w_max = 1.3; 
T0 =m*g; %4*b*w*w; 
z_ = 100;
u_gran1 = 0;
u_gran2 = 4 * b * w_max * w_max; 


S = fminsearch(@(K)(schet_integ(K)),[0.1 9.1]); %поиск min
Kp = S(1) %искомое
Kd = S(2) %искомое

plot_drawer(Kp,Kd,m,z_,T0,u_gran1,u_gran2);

integ_u_gran(Kp,Kd,m,z_,T0,u_gran1, u_gran2)


function res = schet_integ(K)
    global m;
	global z_;
    global T0;
    global u_gran1;
    global u_gran2;

	Kp = K(1);
	Kd = K(2);

    integRes = integ_u_gran(Kp,Kd,m,z_,T0,u_gran1, u_gran2); %интеграл J(u)
    res=integRes;
end

function []=plot_drawer(Kp,Kd,m,z_,T0,u_gran1,u_gran2)
        [z,dz] = solut(Kp,Kd,m,z_,T0,u_gran1,u_gran2);
		t = 0:0.01:50;
        figure()
		plot(t,z); 
end

function res = integ_u_gran(Kp,Kd,m,z_,T0,u_gran1,u_gran2)
	[z,dz] = solut(Kp,Kd,m,z_,T0,u_gran1,u_gran2); %значения z и z'
    t = 0:0.01:50;
    J=zeros(size(t));
    for i=1:numel(J)
        u = U(Kp,Kd,z(i),dz(i),z_,T0,u_gran1,u_gran2);
        J(i) = (z(i) - z_) ^ 2 + dz(i) ^ 2 + u^2;    
    end
    integRes = cumtrapz(t,J);
    res = integRes(5001)-integRes(1);
end

function [z, zz] = solut(Kp,Kd,m,z_,T0,u_gran1,u_gran2)
    global g;
    t0=0;
    tn=50;
    n=5000;
    h=(tn-t0)/n;
    t=t0:h:tn;
    z = zeros(size(t));
    zz = zeros(size(t));
    z(1)=0.0;
    zz(1)=0.0; 
    
    p = @(t,z,zz) g-U(Kp,Kd,z,zz,z_,T0,u_gran1,u_gran2)/m;
    
    for i=2:length(t)
        k11 = h*p(t(i-1),z(i-1),zz(i-1));
        k21 = h*zz(i-1);
        k12 = h*p(t(i-1)+h/2,z(i-1)+k21/2,zz(i-1)+k11/2);
        k22 = h*(zz(i-1)+k11/2);
        k13 = h*p(t(i-1)+h/2,z(i-1)+k22/2,zz(i-1)+k12/2);
        k23 = h*(zz(i-1)+k12/2);
        k14 = h*p(t(i-1)+h,z(i-1)+k23,zz(i-1)+k13);
        k24 = h*(zz(i-1)+k13);
        z(i) = z(i-1) + (k21 + 2*k22 + 2*k23 + k24)/6;
        zz(i) = zz(i-1) + (k11 + 2*k12 + 2*k13 + k14)/6;
    end
end

function res = U(Kp,Kd,z,zz,z_,T0,u_gran1,u_gran2)
    u = Kp*(z-z_) + Kd*zz + T0;
    if u > u_gran2
        res = u_gran2;
    else if u < u_gran1
            res = u_gran1;
        else
            res = u;
        end
    end
end
