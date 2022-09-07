x = [1930, 1940, 1950, 1960, 1970, 1980];
y = [123203, 131669, 150697, 179323, 203212, 226505];

X = [1955, 1995];
Y = fct_lagrange(x, y, X);
Y = round(Y);
Y

plot(X, Y, "ro");
hold on;
plot(x, y, "bx");
hold off;