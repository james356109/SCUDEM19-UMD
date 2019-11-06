% 1 female butterfly lays between 20-50 eggs on a leaf
    % use random variable
    
% percentage of eggs eaten if wasp egg is present: 95%

%% Lotka-Volterra Equations

% x = prep population
% y = predator population

% dx/dt = alpha*x   - beta*x*y
% dy/dt = delta*x*y - gamma*y

%% Parameter Meanings

% alpha is the reproductive rate of the prey (butterfly)
    % Rate is 20-50 eggs/leaf or 20-50 eggs per butterfly
    % we can use random variable distribution to model alpha
    % this factor is independent of pheromone concentration
   
    % if egg batch is not parisitized:  alpha = [20, 50]
    % if egg batch is parisitized:      alpha = 0.05*[20, 50]

% beta is the the rate at which predators and prey meet (predation)
    % this is dependent on:
        % pheromone concentration (fluctuates)
        % pheromone
        % current population of female butterflies
        % if predator and prey meet, female survives but reproductive rate
        % becomes 0

% delta is the growth rate of the predator population
    % this is directly proportional to the reproductive rate of the prey
    % we can assume a 0% mortality rate for now (all predator eggs survive
        % to reach adulthood)
    % dependent on:
        % beta

% gamma is the loss rate of predators due to either natural death or
% emigration
    % this should inversely proportional to predator lifespan (assume no
        % emmigration or other factors)
    % gamma = (17 days)^(-1)
    
% pheromone concentration
    % female anti-aphrodesiac (MeSA/ARG) concentration is ~1ng/gland greater
    % than that for unmated females
    % https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2797620/

%% Assumptions
% 1. prey have an unlimited food supply and reproduce exponentially

% 2. all prey eggs laid on leaf grow to become adults unless parisitized by
    % predator (then 95% egg mortality rate)

% 3. female and male butterflies are born at a 50:50 ratio

% 4. there are no other sources of predation in the system

% 5. food is not a factor

% 6. females have a constant chance of reproducing per unit time

% 7. females have a refractory time after egg laying where they cannot get
    % pregnant again (find in paper?)

% 8. predator and prey death rate is inversely proportional to lifespan
    % prey: 30-60 days total (larvae stage is ~20 days)
    % predator: 17 days total (larvae stage is 7 days)
        % https://greenmethods.com/trichogramma/

% 9. predator and prey are only species present in system (all predator
    % eggs laid on prey)
    
% 10. females are monogamous? How many times can they mate?