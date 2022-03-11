function D = diagnumspiral(n)

% Create array of zeros
NE = zeros(1,(n-1)/2);
NW = zeros(1,(n-1)/2);
SW = zeros(1,(n-1)/2);
SE = zeros(1,(n-1)/2);

% Define first value for bidiagonals
NE(1,1) = 3;
NW(1,1) = 5;
SW(1,1) = 7;
SE(1,1) = 9;

for i = 2:(n-1)/2
    NE(1,i) = NE(1,i-1) + 2 + 8*(i-1);  
    NW(1,i) = NW(1,i-1) + 4 + 8*(i-1);
    SW(1,i) = SW(1,i-1) + 6 + 8*(i-1);
    SE(1,i) = SE(1,i-1) + 8 + 8*(i-1);
end

D = sort(transpose([1 NE NW SW SE]));

end