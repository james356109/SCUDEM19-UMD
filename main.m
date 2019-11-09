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
p = 0.01;            % pheromone
a1 = 0.5*35/8*p;      % alpha
t = 0.1;            % constant in d1 and a2
d1 = p*t;           % beta
a2 = p*t;           % delta
d2 = 1/17;        % gamma, death rate of wasp
c1 = 1/44.5;        % death rate of butterfly

% Time variable
Tmax = 1000;
deltaT = 0.0001;
time = (0:deltaT:Tmax);
Nt = length(time);

% Allocate space
B = zeros(Nt,1);
W = zeros(Nt,1);

% Initial conditions
B(1) = 100;
W(1) = 10;
V = a2*B(1)-d2*log(B(1))+d1*W(1)-a1*log(W(1))
% Implement Euler's scheme
for it = 2:Nt
    t = time(it);
    % First order update
    B(it) = B(it-1) + (a1*B(it-1)- (d1*B(it-1)*W(it-1)) - c1*B(it-1))*deltaT;
    W(it) = W(it-1) + (a2*B(it-1)*W(it-1) - d2 *W(it-1))*deltaT;
end

V2=a2*B(it)-d2*log(B(it))+d1*W(it)-a1*log(W(it))

% Visualize solution
plot(time,B,'b',time,W,'r')
xlabel('time')
legend('Butterfly','Wasp')

% Collect statistics
% Max Infected time
%[InfectMax, imax] = max(I);
%tMaxInfected = time(imax);

% Report results
%fprintf(1,'Max Outbreak at t=%f , Infected = %f\n',tMaxInfected,InfectMax);
