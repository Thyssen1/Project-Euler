%By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
%that the 6th prime is 13.

%What is the 10 001st prime number?
%1 is not a prime.
%All primes except 2 are odd.
%Every prime number over 3 lies next to a number divisible by six.
%Take any integer n greater than 3, and divide it by 6. That is:
%n=6*q+r

clear; clc
tic
primez=find(isprime(1:200000)==1);
disp(primez(10001))
toc
