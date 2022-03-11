function [ paths ] = LatticePaths( grid_size )
%LATTICEPATHS takes in a number, grid_size, and puts out the number of
%lattice paths in the grid.

% Creating the grid. An n by n grid has (n+1)*(n+1) points.
mat = zeros(grid_size+1,grid_size+1);

% Filling in ones at the edges to show the number of paths to the outer 
% points in the lattice.

mat(1,:) = 1;
mat(:,1) = 1;

for ii = 2:grid_size+1
    for aa = 2:grid_size+1
        mat(ii,aa) = mat(ii-1,aa) + mat(ii,aa-1);
    end
end

paths = mat(end);

end
