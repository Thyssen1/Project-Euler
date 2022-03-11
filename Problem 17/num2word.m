function [ word ] = num2word( num )
%num2word Converts a number to a word.
%   If the number is greater than 1000, the function does not work.
if num <= 1000
    
else
    return
end

numbers_1 = {'One','Two','Three','Four','Five','Six','Seven','Eight'...
    'Nine','Ten','Eleven','Twelve','Thirteen','Fourteen','Fifteen'...
    'Sixteen','Seventeen','Eighteen','Nineteen'};
numbers_2 = {'Ten','Twenty','Thirty','Forty','Fifty','Sixty','Seventy'...
    'Eighty','Ninety','Hundred'};

str = num2str(num);
wordstr_1 = '';
wordstr_2 = '';
wordstr_3 = '';

if num >= 100
    
    wordstr_1 = [char(numbers_1(str2double(str(1)))) 'Hundred'];
    
    if str2double(str(2)) ~= 0
    
        if str2double(str([2 3])) > 19
        
            wordstr_2 = ['And' char(numbers_2(str2double(str(2))))];
        
            if str2double(str(3)) == 0
                % If the third indices equals 0, then no more additions are
                % made.
     
            else
            
                wordstr_3 = char(numbers_1(str2double(str(3))));
            
            end
        else
            %Now we have the following information: 
            % The second indices is not a 0 and the number is below 19.
            
            wordstr_2 = ['And' char(numbers_1(str2double(str([2 3]))))];       
           
        end
    elseif str2double(str(3)) == 0
        % If this returns as true, there are 2 zeroes in the word.
        % No further additions to the string.
    else
        
        wordstr_2 = ['And' char(numbers_1(str2double(str(3))))];
        
    end  
end

if num < 100
   if num > 19
       if str2double(str(2)) == 0
           
           wordstr_1 = char(numbers_2(str2double(str(1))));
           
       else
           
           wordstr_1 = [char(numbers_2(str2double(str(1))))...
               char(numbers_1(str2double(str(2))))];
           
       end
       
   else
       
       wordstr_1 = char(numbers_1(str2double(str)));
       
   end
    
else
    
end

if num == 1000
   
    wordstr_1 = 'OneThousand';
    
end

word = [wordstr_1 wordstr_2 wordstr_3];



end

