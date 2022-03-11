%The prime factors of 13195 are 5, 7, 13 and 29.
%What is the largest prime factor of the number 600851475143 ?
clear; clc
tic
format longG
number=600851475143;

num = number;

%First we find the factors of the number.
prime_factor=0;
ii=0;
j = 1;
m = 1;

%if product of the prime factors is less than the number it continues.
while prod(prime_factor.^(m))<number
    ii=ii+1;
    if rem(num,ii)==0 && isprime(ii) == 1
        prime_factor(j)=ii;
        m(j) = 2;
        
        while rem(num,prime_factor(j)^m(j)) == 0
            m(j) = m(j)+1;
        end
                       
        m(j) = m(j)-1;
        num = num/prime_factor(j)^m(j);
        j = j +1;
        
        if isprime(num) == 1
            prime_factor(j) = num;
            m(j) = 1;
        end
    else        
    end 
end

disp('The prime factors are:')
disp(prime_factor)
disp('with multiplicity:')
disp(m)
toc