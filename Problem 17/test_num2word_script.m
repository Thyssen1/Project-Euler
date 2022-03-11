%We make use of the function num2word to find the total amount of letters
%from 1 to 1000.

str = '';
for ii = 1:1000
   
    str = [str num2word(ii)];
       
end

fprintf('The total amount of letters is: %.f.\n',length(str))