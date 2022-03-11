%% Initialization
clear; close all; clc;
% Sets the current working directory
cd 'C:\Users\Christian Thyssen\OneDrive\Programming Projects\Project Euler\Problem 1'

%% Problem 1
%If we list all the natural numbers below 10 that are multiples of 3 or 5, 
%we get 3, 5, 6 and 9. The sum of these multiples is 23.
%Find the sum of all the multiples of 3 or 5 below 1000.

%We create a vector with all the natural numbers from 1 to 9.
n=1000;
v=1:(n-1);

%We use a for loop and an if-else statement to find the multiples of 3 and
%5.
tic
a=zeros(size(v));
for ii=1:length(v)
    if rem(ii,3)==0
        a(ii)=v(ii);
    elseif rem(ii,5)==0
        a(ii)=v(ii);
    end      
end
a=a(a~=0);
fprintf('The sum of all the multiples of 3 or 5 is below %.f is %.f.\n',n,sum(a));
toc

%% Another way to do it
tic
n=1000;
v=1:n-1;
multiples=v(rem(v,3)==0);
v(multiples)=[];
multiples=[multiples v(rem(v,5)==0)];
fprintf('The sum of all the multiples of 3 and 5 below %.f is %.f.\n',n,sum(multiples));
toc

%% A more efficient way to do it
clear
tic
x = 1:999;
Fsum = sum(x(find(mod(x,3) == 0)));
x(x(find(mod(x,3) == 0))) = [];

Fsum = Fsum + sum(x(find(mod(x,5) == 0)));

disp(Fsum)
toc

%%
tic
% Generate list of multiples of 3
a = 3*(1:334);
b = 5*(1:200);

% Remove numbers from lists that are greater or equal to 1000
a(a >= 1000) = [];
b(b >= 1000) = [];

% Define list with all multiples of 3 and 5 below 1000
G = a;

% Remove intersection of a and b from the list
G(ismember(a,intersect(a,b))) = [];

% Add remaining numbers from b
G = [G b];

% Compute sum of G
S = sum(G);
toc













