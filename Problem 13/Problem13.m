clear; clc;
a = fileread('largesum.txt');

sums = num2str(sum(str2num(a)));
fprintf('The first ten digits are %s\n',sums(1:11))
