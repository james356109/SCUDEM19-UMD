%% SCUDEM PROBLEM 3 CODE
% Lily, Zifan, James

%%%%%%%%%%%%%%%%%
% Predator/Prey Model
%%%%%%%%%%%%%%%%%

% Variables
% B = Butterfly (t)
% W = Wasp (t)


% Parameters
% a1 == reproductive rate : (eggs/time * pheromone)
% d1 == rate at which predator and prey meet : (k * pheromone)
% a2 == growth rate of predator population (porportional to d1)
% d2 == loss due to natural death

% Equations:
% dB/dt = a1 B(t) - d1 B(t) W(t)
% dW/dt = a2 B(t) W(t) - d2 W(t)

% Parameter values:
p = 1;
a1 = 35/6.5*p;
d1 = p*0.001;
a2 = p*0.001;
d2 = (16/17);

% Time variable
Tmax = 100;
deltaT = 0.01;
time = (0:deltaT:Tmax);
Nt = length(time);

% Allocate space
B = zeros(Nt,1);
W = zeros(Nt,1);

% Initial conditions
B(1) = 200;
W(1) = 10;

% Implement Euler's scheme
for it = 2:Nt
    t = time(it);
    % First order update
    B(it) = B(it-1) + (a1*B(it-1)- (d1*B(it-1)*W(it-1)))*deltaT;
    W(it) = W(it-1) + (a2*B(it-1)*W(it-1) - d2 *W(it-1))*deltaT;
end


% Visualize solution
plot(time,B,'b',time,W,'r')
xlabel('time')
legend('Butterfly','Wasp')

% Collect statistics
% Max Infected time
[InfectMax, imax] = max(I);
tMaxInfected = time(imax);

% Report results
fprintf(1,'Max Outbreak at t=%f , Infected = %f\n',tMaxInfected,InfectMax);
