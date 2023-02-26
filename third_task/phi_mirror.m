% Главната функция, която решава задачата
function res = phi_mirror(x)
    for k = 1:length(x)
        if x(k) >= 3/2 && x(k) <= 7/2
                res(k) = cos(pi * x(k))^2;
            else 
                res(k) = 0;
        end
    end
end