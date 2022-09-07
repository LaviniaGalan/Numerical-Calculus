x = linspace(0, 10, 21);
x
y = (1 + cos(pi * x))./(1 + x);

X = 0:0.01:10;
Y = fct_lagrange(x, y, X);

Y_f = (1 + cos(pi * X))./(1 + X);

plot(X, Y, 'DisplayName', 'Lmf');
hold on;
plot(X, Y_f, 'DisplayName', 'f(x)');
legend;
hold off;