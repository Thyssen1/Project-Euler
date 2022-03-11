clear; clc;
tic

chain_size = 0;

for ii = 500001:999999
    
    if length(Collatz(ii)) > chain_size
        
        chain_size = length(Collatz(ii));
        n = ii;
        
    end
    
end
toc







