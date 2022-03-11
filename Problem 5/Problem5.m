%2520 is the smallest number that can be divided by each of the numbers 
%from 1 to 10 without any remainder.

%What is the smallest positive number that is evenly divisible by all of
%the numbers from 1 to 20?
clear; close all; clc

tic
v=50;
n=1;
for ii=v:-1:2
    n=lcm(n,ii-1);
end
toc

disp(n)







