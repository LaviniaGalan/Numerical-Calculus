xlim([0 3])
ylim([0 5])
[x, f] = ginput(10)

p_2 = polyfit(x, f, 2);

plot(x, f, 'o');
hold on;

x_plot = 0:0.1:3;
plot(x_plot, polyval(p_2, x_plot));