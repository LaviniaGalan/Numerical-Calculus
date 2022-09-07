pkg load splines

[x, f_x] = ginput(5)

x_plot = min(x) : 0.001 : max(x);

nat_spline = spline(x, f_x, x_plot);
##nat_spline_pol = csape(x, f_x, 'variational');
##nat_spline = fnval(nat_spline_pol, x_plot);

plot(x, f_x, 'o', 'DisplayName', 'The Points');
hold on;
plot(x_plot, nat_spline, 'DisplayName', 'Natural Spline');
legend;