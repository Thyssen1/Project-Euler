%% Problem 42 - Project Euler
%% Init
close all; clear; clc
% Sets the current working directory
cd 'C:\Users\Christian Thyssen\OneDrive\Project Euler\Problem 42'

%% Importing data
A = importdata('words.txt');
A = char(A);

% Finds the positions of the quotation marks in the A string.
QuoPos =  find(A == '"');

j = 0;
for i = 1:2:3572
    
    j = j+1;
    Words{j} = A(1+QuoPos(i):QuoPos(i+1)-1);
    
end

% The command double() can be used to retrieve the number of a letter
% double(A) returns 65. Thus we have to negate the result by 64.

%% 
% A triangle number can be constructed by using an integer, n, in the
% equation t_n = 1/2*n(n+1).
% This equation can be solved for n as a 2nd degree equation:
% n = -1/2 + sqrt(1+8*t_n)/2
% If the result returns an integer, we have a triangle number.

for i = 1:1786

% The loop adds the sum of the letters to a vector, wordnumbers.
wordnumbers(i,1) = sum(double(char(Words(i))) - 64);

% The vector ns stores the calculation of the value n using the above
% given formula.
ns(i,1) = -1/2 + sqrt(1+8*wordnumbers(i))/2;
% Finally, it is tested logically which numbers of ns are actually
% integers.
triangles(i,1) = ns(i,1) == uint64(ns(i,1));

end

% The sum of the triangles vector finally gives the number of triangle
% numbers.
fprintf('There are %.d triangle numbers in the data set. \n', sum(triangles))



















