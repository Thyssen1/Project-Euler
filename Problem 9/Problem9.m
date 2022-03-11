%% Problem 9 - Project Euler
% Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

% a^2 + b^2 = c^2
%For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

%There exists exactly one Pythagorean triplet for which a + b + c = 1000.
%Find the product abc

clear

m = 1;
n = 0;
triplets = [0 0 0];

% We have that:
% a = m^2-n^2
% b = 2*m*n
% c = m^2+n^2
% Where n and m are integers and (m>n>0).

% We use a while loop to find Pythagorean triplets.
% Once the sum of a triplet equals 1000 the loop is closed.
while sum(triplets) ~= 1000
    % m and n are set to 2 and 1 respectively.
    % m cannot be less than 2 and n cannot be less than 1.
    % They are both integers.
    m=m+1;
    n=n+1;
    
    % The current value of m is multiplied by each element from 1 to the
    % current value of n. 
    for ii=1:n
        if sum([m.^2-ii.^2 2.*m.*ii m.^2+ii.^2]) == 1000
            triplets = [m.^2-ii.^2 2.*m.*ii m.^2+ii.^2];
            break
        else
        end
    end
end

fprintf('The sum of the Pythagorean triplet [%.f %.f %.f] is equal to %.f.\n',triplets(1:3),1000)
fprintf('The product is %.f.\n',prod(triplets))

















