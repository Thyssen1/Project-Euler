clear; close all; clc

bool = false;

n = 0;


while ~bool
    % Increment n 
    n = n+1;
    
    Pn = pentanum(n);
    k = 1;
    
    % Compute n'th Pentagonal number
    while (k < n-1 && ~bool)
        k = k + 1;
        
        % Compute 
        Pk = pentanum(k);
        
        bool = is_pentagonal(Pn+Pk);
        if is_pentagonal(Pn+Pk)
            bool = is_pentagonal(Pn-Pk);
        else
            bool = false;
        end
    end
end

% Pn = pentanum(7);
% Pk = pentanum(4);

is_pentagonal(Pn+Pk)


function P = pentanum(n)
P = n*(3*n-1)/2;
end

function bool = is_pentagonal(m)

% Compute its order
n = ( 1 + sqrt(1+24*m) ) / 6;

bool = (round(n)-n) == 0;
end