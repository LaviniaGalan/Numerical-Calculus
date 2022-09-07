x = linspace(0, 6, 13);
y = exp(sin(x));

plot(x, y, 'rx', 'DisplayName', 'Interpolation Points');
hold on;

x_f = 0:0.1:6;
y_f = exp(sin(x_f));
plot(x_f, y_f, 'DisplayName', 'f');

X = 0:0.1:6;
Y = newton(x, y, X);
plot(X, Y, 'DisplayName', 'N12f');

legend;