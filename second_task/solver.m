function res = solver(t, x)
res = [x(2)^3 - 5*x(2) - x(1);
    - x(1) - x(2)];
end