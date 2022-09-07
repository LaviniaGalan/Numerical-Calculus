x = [1 2 3 4 5];
y = [22 23 25 30 28];

%a)
X = [2.5];
Y = newton(x, y, X)

%b)
plot(x, y, 'rx');
hold on;

X = 1:0.1:5;
Y = newton(x, y, X);
plot(X, Y);

