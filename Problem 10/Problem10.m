% The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
% 
% Find the sum of all the primes below two million.

% Prompts the user for a number n for which to find the sum of all the 
% primes below n.
n=input('Choose a number n for which to find the sum of all the primes below n:\n');

% Prints the solution
fprintf('The sum of all the primes below %.f is %.f.\n',n,sum(primes(n)))
clear