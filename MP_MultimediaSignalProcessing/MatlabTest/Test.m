
clear;

v = [1, 4, 7, 2, 19];

maximum = v(1);

for i = 1:length(v)
    element = v(i);
    
    if element > maximum
        maximum = element; 
    end
end

disp('The maximum is: ');
disp(maximum);