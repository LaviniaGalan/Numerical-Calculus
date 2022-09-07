x = [121, 100, 144];
y = [11, 10, 12];
X = [115];

Y = fct_lagrange(x, y, X);
Y

plot(X, Y, "ro");
hold on;
plot(x, y, "bx");
hold off;