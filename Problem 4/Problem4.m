%A palindromic number reads the same both ways. 
%The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
%Find the largest palindrome made from the product of two 3-digit numbers.
tic
m=999;
n=999;
palindromes=[];

for ii=900:999
    for iii=900:999
        if str2double(flip(num2str(n*m)))==n*m
            palindromes=[palindromes n*m];
           
        end
        n=n-1;
    end
    n=999;
    m=m-1;
end
disp(max(palindromes))
toc