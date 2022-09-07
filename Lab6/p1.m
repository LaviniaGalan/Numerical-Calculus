% a)

x = [0 pi/2 pi 3*pi/2 2*pi]
f_x = sin(x)

pol_nat_spline = spline(x, f_x);
% pol_nat_spline = csape(x, f_x, 'variational');
nat_spline = ppval(pol_nat_spline, pi/4)

pol_clamped_spline = spline(x, [cos(x(1)) f_x cos(x(length(x)))]);
clamped_spline = ppval(pol_clamped_spline, pi/4)
actual_f = sin(pi/4)

% b)

x_plot = 0:0.01:2*pi;

f_plot = sin(x_plot);
nat_spline_plot = ppval(pol_nat_spline, x_plot);
clamped_spline_plot = ppval(pol_clamped_spline, x_plot);

plot(x, f_x, 'o');
hold on;
plot(x_plot, f_plot, 'DisplayName', 'f(x)');

plot(x_plot, nat_spline_plot, 'DisplayName', 'Natural spline');
plot(x_plot, clamped_spline_plot, 'DisplayName', 'Clamped spline');
legend;