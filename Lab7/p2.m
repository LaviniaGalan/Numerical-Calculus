t = [0 10 20 30 40 60 80 100];
p = [0.0061 0.0123 0.0234 0.0424 0.0738 0.1992 0.4736 1.0133];

% a)
deg_1 = 7;
deg_2 = 3;

p_1 = polyfit(t, p, deg_1);
p_2 = polyfit(t, p, deg_2);

x = 45;

p_1_val = polyval(p_1, x)
p_2_val = polyval(p_2, x)

actual_val = 0.095848;
err_1 = abs(p_1_val - actual_val)
err_2 = abs(p_2_val - actual_val)

% b)
plot(t, p, 'o');
hold on;

x_plot = 0:0.1:100;
plot(x_plot, polyval(p_1, x_plot), 'DisplayName', strcat('n = ', num2str(deg_1)));
plot(x_plot, polyval(p_2, x_plot), 'b--', 'DisplayName', strcat('n = ', num2str(deg_2)));
plot([x, x], [p_1_val, p_2_val], 'x', 'DisplayName', 'Approximations')
legend;