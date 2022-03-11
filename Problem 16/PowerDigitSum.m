function [ PowerDigit_sum ] = PowerDigitSum( a,b )
%POWERDIGITSUM takes in element a, as the mantissa, and element b as the 
% power. It then finds the result and finds the sum of the digits of the
% number raised to the given power.

str = char(sym(a.^b));

vec = zeros(1,length(str));
for ii = 1:length(str)
    vec(ii) = str2double(str(ii));
end

PowerDigit_sum = sum(vec);

end

