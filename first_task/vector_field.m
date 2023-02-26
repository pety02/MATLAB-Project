% Векторно поле, допирателно до интегралните криви на уравнението:
% y' = (y - 2) * (y + 3) * (x - 1)
[x, y] = meshgrid(-5:0.5:5);
u = ones(size(x));
v = (y-2).*(y+3).*(x-1);
quiver(x, y, u, v);
axis([-5,5,-5,5]);

% Интегралните криви на уравнението:
% y' = (y - 2) * (y + 3) * (x - 1)
hold on;
axis([-5,5,-5,5]);
[a, b] = ginput(1);
syms x y(x)

% общо решение
eq1 = diff(y, x) == (y-2).*(y+3).*(x-1);
S = dsolve(eq1);
disp(S);

while a >= -5 && a <= 5 && b >= -5 && b <= 5
ic1 = y(a) == b;
sol1 = dsolve(eq1, ic1);
xx = -5:0.5:5;
yy = double(subs(sol1, 'x', xx));
plot(xx, yy, 'k');
[a,b] = ginput(1);
end