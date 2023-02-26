% Главната функция, която решава задачата - огледлен образ на струната
function res = phi(x)
    for k=1:length(x)
        if x(k) >= 0 && x(k) <= 8
            res(k) = phi_mirror(x(k));
        else if x(k) < 0
            res(k) = -phi(-x(k));
        else
            res(k) = -phi(16-x(k));
        end
    end
end