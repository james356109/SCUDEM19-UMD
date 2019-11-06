%% SCUDEM PROBLEM 3 CODE
% Lily, Zifan, James

% odeModels
% This script implements one (ore more) dynamical models and plots results;
% to be compared with the Agent Based Modeling (e.g., NetLogo)



%%%%%%%%%%%%%%%%%
% SIR Model
%%%%%%%%%%%%%%%%%

% Variables
% S = susceptible(t)
% I = infected(t)
% Assume they are in the [0,1] interval

% Parameters
% b == fraction of contacts susceptible-infected that produce infection
% k == recovery rate

% Equations:
% dS/dt = - b S(t) I(t)
% dI/dt = b S(t) I(t) - k I(t)

% Parameter values:
a1 = 1.1-0.4;
a2 = 0.1-0.4
b = 0.0001;
k = 1/100;

% Time variable
Tmax = 100;
deltaT = 0.01;
time = (0:deltaT:Tmax);
Nt = length(time);

% Allocate space
S = zeros(Nt,1);
I = zeros(Nt,1);

% Initial conditions
S(1) = 10;
I(1) = S(1);

% Implement Euler's scheme
for it = 2:Nt
    t = time(it);
    % First order update
    S(it) = S(it-1) + (a1*S(it-1)- (b*S(it-1)*I(it-1)))*deltaT;
    I(it) = I(it-1) + (b*S(it-1)*I(it-1) +a2 *I(it-1))*deltaT;
end


% Visualize solution
plot(time,S,'b',time,I,'r')
xlabel('time')
legend('Prey','Predator')

% Collect statistics
% Max Infected time
[InfectMax, imax] = max(I);
tMaxInfected = time(imax);

% Report results
fprintf(1,'Max Outbreak at t=%f , Infected = %f\n',tMaxInfected,InfectMax);
