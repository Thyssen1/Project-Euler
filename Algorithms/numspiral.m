function [A,D] = numspiral(n)

k = 1;

% Check if n is odd
if rem(n,2) == 1
    % Remainder is 1 => n is odd.
    
    % Set boolean variable to true
    n_odd = true;
else
    % Remainder is not 1 => If n is a positive integer, then n is even.
    % Add 1 to n
    n = n+1;
    
    % Set boolean variable to false
    n_odd = false;
end

% Create temporary matrix of zeros
A = zeros(n,n);

% Find middle of matrix
x = ceil(n/2);
y = ceil(n/2);

% Create spiral of numbers in even (nxn) matrix
for i = 1:2:n-1
    % Add numbers in right direction
    A(x,y:y+i)      = k:k+i;
    
    % Add numbers in upward direction
    A(x:-1:x-i,y+i) = k+i:k+2*i;
    
    % Update k
    k = k+2*i;
    
    % Add numbers in left direction
    A(x-i,y+i:-1:y-1) = k:k+i+1;
    
    % Add numbers in downward direction
    A(x-i:1:x+1,y-1) = k+i+1:k+2*(i+1);
    
    % Update k for next iteration
    k = k+2*(i+1);
    
    % Update start coordinate for next iteration
    x = x+1;
    y = y-1;
end

% Add remaining numbers in rigt direction
A(x,y:y+1+i) = k:k+i+1;

% Delete entries if n was originally even
if n_odd == true
    % Do nothing. The matrix is complete.
else
    % Remove the last row and first column.
    A(end,:) = [];
    A(:,1)   = [];
    
    % Subtract 1 from n
    n = n-1;
end

% Store diagonals in a vector
D = diag(A);
D = [D;diag(fliplr(A))];
D = unique(D);

end