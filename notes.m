% Focus on male-female butterfly interaction after rest of model is
% complete (Thursday night or later)

% 1 female butterfly lays between 20-50 eggs on a leaf
    % use random variable
    
% percentage of eggs eaten if wasp egg is present: 95%


%% Lotka-Volterra Equations

% x = prep population
% y = predator population

% dx/dt = alpha*x   - beta*x*y
% dy/dt = delta*x*y - gamma*y


%% 1923 06Nov
% Assumptions made:
% 1. alpha and beta are both positively correlated to pheromone concentration
% 2. concentration of pheromone is linear relation to B(t)

%% Parameter Meanings

% alpha is the overall reproductive rate of the prey (butterfly)
    % Rate is 20-50 eggs/leaf or 20-50 eggs per butterfly
    % alpha is proportional to 
    % 

% beta is the the rate at which predators and prey meet (predation)
    % this is dependent on:
        % pheromone concentration
        % constant c

% delta is the growth rate of the predator population
    % this is directly proportional to the reproductive rate of the prey
    % we can assume a 0% mortality rate (all predator eggs survive
        % to reach adulthood)
    % delta = beta

% gamma is the loss rate of predators due to either natural death or
% emigration
    % probability that the bug dies on each day
    % geometric distribution
    % lifespan = 17 days
    
% pheromone concentration
    % female anti-aphrodesiac (MeSA/ARG) concentration is ~1ng/gland greater
    % than that for unmated females
    % https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2797620/

%% Assumptions
% 1. prey have an unlimited food supply and reproduce exponentially
    % in article, prey only ate up to 40% of crop yield, so carrying
    % capacity was not reached/is defined by predation

% 2. all prey eggs laid on leaf grow to become adults unless parisitized by
    % predator (then 95% egg mortality rate)
        % this is a per leaf basis, not for entire population
        
% 2a. 

%   wasp can only reproduce by laying an egg on butterfly egg

%   each female carries a constant amount of pheromone

% 3. female and male butterflies are born at a 50:50 ratio

% 4. predator and prey are only species present in system (all predator
     % eggs laid on prey)
        % there are no other sources of predation in the system

% 5. females have a non-constant chance of reproducing per unit time
     % dependant on pheromone concentration

%* 7. females have a refractory time after egg laying where they cannot get
    % pregnant again (find in paper?)
    % see 10

% 8. predator and prey death rate is inversely proportional to lifespan?
    % prey: 30-60 days total (larvae stage is ~20 days)
    % predator: 17 days total (larvae stage is 7 days)
        % https://greenmethods.com/trichogramma/
        % include in agent-based model
        
% 10. How many times can they mate?
    % How long for female to lay one brood of eggs? James will find
    % Butterflies: 6 days to lay eggs, mate every 4 days
    % Add to model later down the line