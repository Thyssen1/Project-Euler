%% Initialization
clear; close all; clc

%%
tic
% Initial n value (Do not change)
n = 3;

% Start ratio
R = 1;

% Define first values for bidiagonals
NE = 3;
NW = 5;
SW = 7;

% Store the number of primes 
P = sum(isprime([NE;NW;SW]));

% Compute 
while R >= 0.1
    % Update n
    n = n+2;
    
    % Compute new diagonal values
    i = (n-1)/2;
    
    NE = NE + 2 + 8*(i-1);  
    NW = NW + 4 + 8*(i-1);
    SW = SW + 6 + 8*(i-1);
    
    % Update D and P
    P = P + sum(isprime([NE;NW;SW]));
    
    % Compute ratio of primes and composites in the diagonals
    R = P / (2*n-1);
end
toc


