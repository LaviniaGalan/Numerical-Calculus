pkg load symbolic

x = linspace(-5, 5, 15);
f_x = sin(2*x);
f_x_deriv = 2 * cos(2*x);

x_plot = -5:0.1:5;
f_x_plot = sin(2*x_plot);

X = -5:0.1:5;

hermite_approx = hermite(x, f_x, f_x_deriv, X);


plot(x, f_x, 'o', 'DisplayName', 'Interpolation Points')
hold on;
plot(x_plot, f_x_plot, 'DisplayName', 'f')
plot(x_plot, hermite_approx, 'b--', 'DisplayName', 'Hermite')
legend