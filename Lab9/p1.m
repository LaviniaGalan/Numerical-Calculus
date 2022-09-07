f = @(x) (exp(-x.^2));

a = 1;
b = 1.5;

%a)
i_rectangle = (b-a) * f((a+b)/2)

%b)
x_plot = 1:0.01:1.5;
y_plot = f(x_plot);
plot(x_plot, y_plot);
hold on;

vf_x = [a, b, b, a, a];
vf_y = [f((a+b)/2), f((a+b)/2), 0, 0, f((a+b)/2)];

plot(vf_x, vf_y, 'LineWidth', 1);

%c)
function i = rep_rect_f(a, b, f, n)
  x1 = (b-a) / (2*n) + a;
  x = [x1];
  for i=2:n
    x(i) = x1 + (i-1) * (b-a)/n;
  endfor;
  
  i = (b-a)/n * sum(f(x));
endfunction;

n1 = 150;
i_150 = rep_rect_f(a, b, f, n1)

n2 = 500;
i_500 = rep_rect_f(a, b, f, n2)

