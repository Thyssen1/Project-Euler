function [ chain ] = Collatz( n )
% Takes a number, n, and performs the Collatz sequence on it producing a
% chain which ends at 1.
chain = n;
while n ~= 1
   
   if rem(n,2) == 0
       % Proceeds if the number is even.
       n = n/2;
       chain(end+1) = n;
       
   else
       % If rem(n,2) == 0 the number is uneven.
       n = 3*n+1;
       chain(end+1) = n;
       
   end
end

end

