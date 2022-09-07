% a)

a = 0;
b = 1;
f = @(x) (2 ./ (1 + x.^2));

i_approx_trapezium = (b - a) / 2 * (f(a) + f(b))

% b)
x_plot = a:0.01:b;
f_plot = f(x_plot);

plot(x_plot, f_plot);
hold on;
plot([0, 0], [0, f(0)], 'r', 'LineWidth', 1);
plot([0, 1], [f(0), f(1)], 'r', 'LineWidth', 1);
plot([1, 1], [f(1), 0], 'r', 'LineWidth', 1);
plot([0, 1], [0, 0], 'r', 'LineWidth', 1);

% c)
i_approx_simpson = (b - a) / 6 * (f(a) + f(b) + 4*f((a + b)/2))